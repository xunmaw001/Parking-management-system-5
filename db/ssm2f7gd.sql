-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2f7gd
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611202173676 DEFAULT CHARSET=utf8 COMMENT='在线交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-21 03:35:27',1,1,'提问1','回复1',1),(82,'2021-01-21 03:35:27',2,2,'提问2','回复2',2),(83,'2021-01-21 03:35:27',3,3,'提问3','回复3',3),(84,'2021-01-21 03:35:27',4,4,'提问4','回复4',4),(85,'2021-01-21 03:35:27',5,5,'提问5','回复5',5),(86,'2021-01-21 03:35:27',6,6,'提问6','回复6',6),(1611201138600,'2021-01-21 03:52:18',31,NULL,'111',NULL,1),(1611201687097,'2021-01-21 04:01:26',1611201511189,NULL,'这里可以咨询',NULL,0),(1611201695462,'2021-01-21 04:01:35',1611201511189,NULL,'交流',NULL,0),(1611202173675,'2021-01-21 04:09:33',1611201511189,1,NULL,'这里可以回复用户咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweifenlei`
--

DROP TABLE IF EXISTS `cheweifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201906599 DEFAULT CHARSET=utf8 COMMENT='车位分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweifenlei`
--

LOCK TABLES `cheweifenlei` WRITE;
/*!40000 ALTER TABLE `cheweifenlei` DISABLE KEYS */;
INSERT INTO `cheweifenlei` VALUES (11,'2021-01-21 03:35:27','标准'),(12,'2021-01-21 03:35:27','子母'),(13,'2021-01-21 03:35:27','加大'),(14,'2021-01-21 03:35:27','车库'),(15,'2021-01-21 03:35:27','分类5'),(16,'2021-01-21 03:35:27','分类6'),(1611201906598,'2021-01-21 04:05:06','这里添加车位分类');
/*!40000 ALTER TABLE `cheweifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) NOT NULL COMMENT '车位名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `tingchejiage` int(11) NOT NULL COMMENT '停车价格',
  `cheweixiangqing` longtext COMMENT '车位详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (21,'2021-01-21 03:35:27','车位编号1','车位名称1','加大','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg','位置1','已停',5,'<p>车位详情1</p>','2021-01-21 12:06:20',13),(22,'2021-01-21 03:35:27','车位编号2','车位名称2','子母','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian2.jpg','位置2','已停',10,'<p>车位详情2</p>','2021-01-21 11:48:57',5),(24,'2021-01-21 03:35:27','车位编号4','车位名称4','标准','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian4.jpg','位置4','空闲',6,'<p>车位详情4</p>','2021-01-21 11:48:46',5),(25,'2021-01-21 03:35:27','车位编号5','车位名称5','分类5','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian5.jpg','位置5','空闲',5,'车位详情5','2021-01-21 11:35:27',5),(26,'2021-01-21 03:35:27','车位编号6','车位名称6','分类6','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian6.jpg','位置6','空闲',6,'车位详情6','2021-01-21 11:35:27',6);
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuchangjiaofei`
--

DROP TABLE IF EXISTS `chuchangjiaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuchangjiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tingchejiage` varchar(200) DEFAULT NULL COMMENT '停车价格',
  `ruchangshijian` varchar(200) DEFAULT NULL COMMENT '入场时间',
  `chuchangshijian` datetime NOT NULL COMMENT '出场时间',
  `tingcheshizhang` int(11) NOT NULL COMMENT '停车时长',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611202026052 DEFAULT CHARSET=utf8 COMMENT='出场缴费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuchangjiaofei`
--

LOCK TABLES `chuchangjiaofei` WRITE;
/*!40000 ALTER TABLE `chuchangjiaofei` DISABLE KEYS */;
INSERT INTO `chuchangjiaofei` VALUES (51,'2021-01-21 03:35:27','车位编号1','车位名称1','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian1.jpg','停车价格1','入场时间1','2021-01-21 11:35:27',1,1,'用户名1','手机1','车牌号码1','否','','未支付'),(52,'2021-01-21 03:35:27','车位编号2','车位名称2','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian2.jpg','停车价格2','入场时间2','2021-01-21 11:35:27',2,2,'用户名2','手机2','车牌号码2','否','','未支付'),(53,'2021-01-21 03:35:27','车位编号3','车位名称3','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian3.jpg','停车价格3','入场时间3','2021-01-21 11:35:27',3,3,'用户名3','手机3','车牌号码3','否','','未支付'),(54,'2021-01-21 03:35:27','车位编号4','车位名称4','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian4.jpg','停车价格4','入场时间4','2021-01-21 11:35:27',4,4,'用户名4','手机4','车牌号码4','否','','未支付'),(55,'2021-01-21 03:35:27','车位编号5','车位名称5','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian5.jpg','停车价格5','入场时间5','2021-01-21 11:35:27',5,5,'用户名5','手机5','车牌号码5','否','','未支付'),(56,'2021-01-21 03:35:27','车位编号6','车位名称6','http://localhost:8080/ssm2f7gd/upload/chuchangjiaofei_tupian6.jpg','停车价格6','入场时间6','2021-01-21 11:35:27',6,6,'用户名6','手机6','车牌号码6','否','','未支付'),(1611201165777,'2021-01-21 03:52:45','车位编号1','车位名称1','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg','5','2021-01-28 11:50:50','2021-01-28 13:52:40',2,10,'001','13823888881','湘A468965','否','','已支付'),(1611202026051,'2021-01-21 04:07:05','车位编号1','车位名称1','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg','5','2021-01-30 11:59:58','2021-01-30 13:06:50',2,10,'666','16459878984','闽A164598','是','1','已支付');
/*!40000 ALTER TABLE `chuchangjiaofei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm2f7gd/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2f7gd/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2f7gd/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscheweixinxi`
--

DROP TABLE IF EXISTS `discusscheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201580701 DEFAULT CHARSET=utf8 COMMENT='车位信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscheweixinxi`
--

LOCK TABLES `discusscheweixinxi` WRITE;
/*!40000 ALTER TABLE `discusscheweixinxi` DISABLE KEYS */;
INSERT INTO `discusscheweixinxi` VALUES (121,'2021-01-21 03:35:27',1,1,'评论内容1','回复内容1'),(122,'2021-01-21 03:35:27',2,2,'评论内容2','回复内容2'),(123,'2021-01-21 03:35:27',3,3,'评论内容3','回复内容3'),(124,'2021-01-21 03:35:27',4,4,'评论内容4','回复内容4'),(125,'2021-01-21 03:35:27',5,5,'评论内容5','回复内容5'),(126,'2021-01-21 03:35:27',6,6,'评论内容6','回复内容6'),(1611201580700,'2021-01-21 03:59:40',21,1611201511189,'登陆后可以收藏  评论  讨论  交流等操作','这里可以回复用户评论');
/*!40000 ALTER TABLE `discusscheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201643502 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1611201090326,'2021-01-21 03:51:29','111111','<p>111111111</p><p><br></p><p>这里可以管理用户帖子  对一些敏感话题帖子或者敏感字眼帖子  可以增删改查</p>',0,31,'001','开放'),(1611201616948,'2021-01-21 04:00:16',NULL,'这里可以回复帖子',1611201090326,1611201511189,'666',NULL),(1611201643501,'2021-01-21 04:00:42','这里可以发帖','<p>11111111</p>\n<p><img src=\"../../../upload/1611201636590.jpg\" />可以插入图片</p>',0,1611201511189,'666','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-21 03:35:27','沈阳一停车场停车57分钟却要按全天收费','停车场入口处的提示牌。辽沈晚报记者 李毅 摄','http://localhost:8080/ssm2f7gd/upload/news_picture1.jpg','<p class=\"ql-align-justify\">1月17日，沈阳一位市民在沈阳市于洪区依云首府南停车场停车57分钟，被收取7元停车费。该停车场白天停车3元，夜间停车4元，7元停车费相当于停了全天。</p><p class=\"ql-align-justify\">停车场工作人员对此解释称，17时是白天和夜间停车的分界线，该市民17时前停车、17时后离开，因此收费系统认为白天和夜间停车费都得交。</p><p class=\"ql-align-justify\">1月20日，负责管理该停车场的沈阳泊客停车场管理有限公司一位王姓负责人与记者通话时表示：“按次计费，不按时计费，跨过17时节点就计入夜间停车。”</p><p class=\"ql-align-justify\">市民：</p><p class=\"ql-align-justify\">停车场收费规则不合理</p><p class=\"ql-align-justify\">1月17日下午，一位沈阳市民在于洪区依云首府南停车场停车，离开时扫码支付停车费，手机显示入场时间为下午4时38分，停车57分钟，应付金额为7元。</p><p><br></p>'),(112,'2021-01-21 03:35:27','男子买25平米房霸占一层停车场','简介2','http://localhost:8080/ssm2f7gd/upload/news_picture2.jpg','<p>1月18日，浙江永康某小区里，一个男业主买了小区一套25平米的房子，当他看到房产证上面写着宗地面积5300平方米时，便说5000多平方米都是他的。于是他霸占了一层停车场，开始安装道闸，规划停车位，还要卖10到15万一个。有的业主停车时被拦下来，说不买车位不给停。甚至，这位老兄为了保住停车位，还将自家厨房搬到了停车场下面，并且用一把大锁把一层停车场锁住。</p>'),(113,'2021-01-21 03:35:27','小区免费停车场“变脸”居民不解','简介3','http://localhost:8080/ssm2f7gd/upload/news_picture3.jpg','<p class=\"ql-align-justify\">近日，城中区怡景苑小区居民致电晚报热线反映，原本供他们小区居民免费使用的停车场不知为何被改造成了公共临时停车场，使得居民无处停车，希望记者予以关注。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">居民反映</p><p class=\"ql-align-justify\">居民吴先生说，大部分居民是从2011年入住小区的，以前这个停车场小区居民可免费停车，外来车辆不允许停放。可是从2020年10月份开始，这个停车场被改造成了公共临时停车场，不仅收费标准高，白天还经常没有停车位，居民们的车辆无处停放。</p><p class=\"ql-align-justify\">记者调查</p><p class=\"ql-align-justify\">接到居民反映后，近日记者到小区进行现场调查。据了解，小区共有200多户居民。除了这个停车场外，居民们确实没有其他地方可以停车。自从这个停车场被改造成公共临时停车场后，小区居民每天停车都要交停车费，半小时到两小时之内5块钱，停一夜要30块钱。随后记者来到小区物业进行了解，物业工作人员说，这个停车场之前没有硬化路面，2020年10月根据相关建设部门的要求，元树村村委会将路面进行了硬化，并施划了正规的停车位，制定了收费标准。但小区居民们觉得，这块停车场的土地使用权应该归全体居民所有，元树村委不应该收停车费。而元树村村委相关负责人解释说，他们当时拿着相关资料去市自然资源和规划局确认土地所有权时，确认了这块土地的使用权归村委，所以村委才决定进行改造的。</p><p><br></p>'),(114,'2021-01-21 03:35:27','小区免费停车场“变脸”居民不解','简介4','http://localhost:8080/ssm2f7gd/upload/news_picture4.jpg','<p class=\"ql-align-justify\">近日，城中区怡景苑小区居民致电晚报热线反映，原本供他们小区居民免费使用的停车场不知为何被改造成了公共临时停车场，使得居民无处停车，希望记者予以关注。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">居民反映</p><p class=\"ql-align-justify\">居民吴先生说，大部分居民是从2011年入住小区的，以前这个停车场小区居民可免费停车，外来车辆不允许停放。可是从2020年10月份开始，这个停车场被改造成了公共临时停车场，不仅收费标准高，白天还经常没有停车位，居民们的车辆无处停放。</p><p class=\"ql-align-justify\">记者调查</p><p class=\"ql-align-justify\">接到居民反映后，近日记者到小区进行现场调查。据了解，小区共有200多户居民。除了这个停车场外，居民们确实没有其他地方可以停车。自从这个停车场被改造成公共临时停车场后，小区居民每天停车都要交停车费，半小时到两小时之内5块钱，停一夜要30块钱。随后记者来到小区物业进行了解，物业工作人员说，这个停车场之前没有硬化路面，2020年10月根据相关建设部门的要求，元树村村委会将路面进行了硬化，并施划了正规的停车位，制定了收费标准。但小区居民们觉得，这块停车场的土地使用权应该归全体居民所有，元树村委不应该收停车费。而元树村村委相关负责人解释说，他们当时拿着相关资料去市自然资源和规划局确认土地所有权时，确认了这块土地的使用权归村委，所以村委才决定进行改造的。</p><p><br></p>'),(115,'2021-01-21 03:35:27','标题5','简介5','http://localhost:8080/ssm2f7gd/upload/news_picture5.jpg','内容5'),(116,'2021-01-21 03:35:27','标题6','简介6','http://localhost:8080/ssm2f7gd/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruchangtingche`
--

DROP TABLE IF EXISTS `ruchangtingche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruchangtingche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `tingchejiage` varchar(200) DEFAULT NULL COMMENT '停车价格',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `ruchangbeizhu` varchar(200) DEFAULT NULL COMMENT '入场备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201599483 DEFAULT CHARSET=utf8 COMMENT='入场停车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruchangtingche`
--

LOCK TABLES `ruchangtingche` WRITE;
/*!40000 ALTER TABLE `ruchangtingche` DISABLE KEYS */;
INSERT INTO `ruchangtingche` VALUES (41,'2021-01-21 03:35:27','车位编号1','车位名称1','分类1','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian1.jpg','位置1','停车价格1','车位状态1','2021-01-21 11:35:27','入场备注1','用户名1','手机1','车牌号码1','否',''),(42,'2021-01-21 03:35:27','车位编号2','车位名称2','分类2','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian2.jpg','位置2','停车价格2','车位状态2','2021-01-21 11:35:27','入场备注2','用户名2','手机2','车牌号码2','否',''),(43,'2021-01-21 03:35:27','车位编号3','车位名称3','分类3','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian3.jpg','位置3','停车价格3','车位状态3','2021-01-21 11:35:27','入场备注3','用户名3','手机3','车牌号码3','否',''),(44,'2021-01-21 03:35:27','车位编号4','车位名称4','分类4','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian4.jpg','位置4','停车价格4','车位状态4','2021-01-21 11:35:27','入场备注4','用户名4','手机4','车牌号码4','否',''),(45,'2021-01-21 03:35:27','车位编号5','车位名称5','分类5','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian5.jpg','位置5','停车价格5','车位状态5','2021-01-21 11:35:27','入场备注5','用户名5','手机5','车牌号码5','否',''),(46,'2021-01-21 03:35:27','车位编号6','车位名称6','分类6','http://localhost:8080/ssm2f7gd/upload/ruchangtingche_tupian6.jpg','位置6','停车价格6','车位状态6','2021-01-21 11:35:27','入场备注6','用户名6','手机6','车牌号码6','否',''),(1611201051010,'2021-01-21 03:50:50','车位编号1','车位名称1','加大','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg','位置1','5','空闲','2021-01-28 11:50:50','11','001','13823888881','湘A468965','否',NULL),(1611201599482,'2021-01-21 03:59:58','车位编号1','车位名称1','加大','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg','位置1','5','空闲','2021-01-30 11:59:58','','666','16459878982','闽A164598','是','1');
/*!40000 ALTER TABLE `ruchangtingche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201663619 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611201663618,'2021-01-21 04:01:02',1611201511189,21,'cheweixinxi','车位名称1','http://localhost:8080/ssm2f7gd/upload/cheweixinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','kiuce6878dj6edy7wly2hcatlosw8yxx','2021-01-21 03:38:47','2021-01-21 05:07:27'),(2,31,'001','yonghu','用户','7y6b27ameo51i94qtehxkr17wluid0x5','2021-01-21 03:50:33','2021-01-21 04:55:37'),(3,1611201511189,'666','yonghu','用户','n6d44j4tocdn7toa1qu5uecqs0maddxp','2021-01-21 03:58:37','2021-01-21 05:10:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousujianyi`
--

DROP TABLE IF EXISTS `tousujianyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousujianyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) NOT NULL COMMENT '标题名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201874346 DEFAULT CHARSET=utf8 COMMENT='投诉建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousujianyi`
--

LOCK TABLES `tousujianyi` WRITE;
/*!40000 ALTER TABLE `tousujianyi` DISABLE KEYS */;
INSERT INTO `tousujianyi` VALUES (61,'2021-01-21 03:35:27','标题名称1','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian1.jpg','2021-01-21','内容详情1','用户名1','手机1','否',''),(62,'2021-01-21 03:35:27','标题名称2','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian2.jpg','2021-01-21','内容详情2','用户名2','手机2','否',''),(63,'2021-01-21 03:35:27','标题名称3','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian3.jpg','2021-01-21','内容详情3','用户名3','手机3','否',''),(64,'2021-01-21 03:35:27','标题名称4','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian4.jpg','2021-01-21','内容详情4','用户名4','手机4','否',''),(65,'2021-01-21 03:35:27','标题名称5','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian5.jpg','2021-01-21','内容详情5','用户名5','手机5','否',''),(66,'2021-01-21 03:35:27','标题名称6','http://localhost:8080/ssm2f7gd/upload/tousujianyi_tupian6.jpg','2021-01-21','内容详情6','用户名6','手机6','否',''),(1611201190434,'2021-01-21 03:53:09','111','http://localhost:8080/ssm2f7gd/upload/1611201188540.png','2021-01-28','<p>11111111</p>','001','13823888881','是','111'),(1611201874345,'2021-01-21 04:04:33','这里发布投诉建议','http://localhost:8080/ssm2f7gd/upload/1611201861617.jpg','2021-01-30','<p>11111<img src=\"http://localhost:8080/ssm2f7gd/upload/1611201867922.jpg\"></p>','666','16459878984','是','这里处理投诉建议');
/*!40000 ALTER TABLE `tousujianyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-21 03:35:27'),(2,'000','000','管理员','2021-01-21 04:09:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weiguichufa`
--

DROP TABLE IF EXISTS `weiguichufa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weiguichufa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) NOT NULL COMMENT '标题名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weiguineirong` varchar(200) NOT NULL COMMENT '违规内容',
  `chufaneirong` varchar(200) NOT NULL COMMENT '处罚内容',
  `chufajine` int(11) NOT NULL COMMENT '处罚金额',
  `tongzhiriqi` date DEFAULT NULL COMMENT '通知日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611202099781 DEFAULT CHARSET=utf8 COMMENT='违规处罚';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weiguichufa`
--

LOCK TABLES `weiguichufa` WRITE;
/*!40000 ALTER TABLE `weiguichufa` DISABLE KEYS */;
INSERT INTO `weiguichufa` VALUES (71,'2021-01-21 03:35:27','标题名称1','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian1.jpg','违规内容1','处罚内容1',1,'2021-01-21','用户名1','姓名1','手机1','车牌号码1','未支付'),(72,'2021-01-21 03:35:27','标题名称2','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian2.jpg','违规内容2','处罚内容2',2,'2021-01-21','用户名2','姓名2','手机2','车牌号码2','未支付'),(73,'2021-01-21 03:35:27','标题名称3','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian3.jpg','违规内容3','处罚内容3',3,'2021-01-21','用户名3','姓名3','手机3','车牌号码3','未支付'),(74,'2021-01-21 03:35:27','标题名称4','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian4.jpg','违规内容4','处罚内容4',4,'2021-01-21','用户名4','姓名4','手机4','车牌号码4','未支付'),(75,'2021-01-21 03:35:27','标题名称5','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian5.jpg','违规内容5','处罚内容5',5,'2021-01-21','用户名5','姓名5','手机5','车牌号码5','未支付'),(76,'2021-01-21 03:35:27','标题名称6','http://localhost:8080/ssm2f7gd/upload/weiguichufa_tupian6.jpg','违规内容6','处罚内容6',6,'2021-01-21','用户名6','姓名6','手机6','车牌号码6','未支付'),(1611201246097,'2021-01-21 03:54:05','111','http://localhost:8080/ssm2f7gd/upload/1611201238579.png','11','11',10,'2021-01-28','001','小吴','13823888881','湘A468965','已支付'),(1611202099780,'2021-01-21 04:08:18','这里添加违规处罚','http://localhost:8080/ssm2f7gd/upload/1611202086746.jpg','11','11',5,'2021-01-29','666','李生','16459878984','闽A164598','已支付');
/*!40000 ALTER TABLE `weiguichufa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611201511190 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-01-21 03:35:27','001','001','小吴','女','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang1.jpg','13823888881','湘A468965'),(32,'2021-01-21 03:35:27','用户2','123456','姓名2','男','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang2.jpg','13823888882','车牌号码2'),(33,'2021-01-21 03:35:27','用户3','123456','姓名3','男','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang3.jpg','13823888883','车牌号码3'),(34,'2021-01-21 03:35:27','用户4','123456','姓名4','男','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang4.jpg','13823888884','车牌号码4'),(35,'2021-01-21 03:35:27','用户5','123456','姓名5','男','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang5.jpg','13823888885','车牌号码5'),(36,'2021-01-21 03:35:27','用户6','123456','姓名6','男','http://localhost:8080/ssm2f7gd/upload/yonghu_touxiang6.jpg','13823888886','车牌号码6'),(1611201511189,'2021-01-21 03:58:31','666','666','李生','男','http://localhost:8080/ssm2f7gd/upload/1611201529070.jpg','16459878984','闽A164598');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 14:41:18
