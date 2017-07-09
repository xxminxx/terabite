-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: tbcomputerrecorddb
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `tbladminlogin`
--

DROP TABLE IF EXISTS `tbladminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminlogin` (
  `varcharPassword` varchar(100) DEFAULT NULL,
  `varcharPasshint` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminlogin`
--

LOCK TABLES `tbladminlogin` WRITE;
/*!40000 ALTER TABLE `tbladminlogin` DISABLE KEYS */;
INSERT INTO `tbladminlogin` VALUES ('secret','secret');
/*!40000 ALTER TABLE `tbladminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloccupiedunit`
--

DROP TABLE IF EXISTS `tbloccupiedunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloccupiedunit` (
  `intPCNumber` int(11) NOT NULL,
  `timeStartTime` time DEFAULT NULL,
  `timeEndTime` time DEFAULT NULL,
  `intPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`intPCNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloccupiedunit`
--

LOCK TABLES `tbloccupiedunit` WRITE;
/*!40000 ALTER TABLE `tbloccupiedunit` DISABLE KEYS */;
INSERT INTO `tbloccupiedunit` VALUES (1,NULL,NULL,NULL),(2,'00:11:14','01:11:14',20),(3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,NULL,NULL),(7,NULL,NULL,NULL),(8,NULL,NULL,NULL),(9,NULL,NULL,NULL),(10,NULL,NULL,NULL),(11,NULL,NULL,NULL),(12,NULL,NULL,NULL),(13,NULL,NULL,NULL),(14,NULL,NULL,NULL),(15,NULL,NULL,NULL),(16,NULL,NULL,NULL),(17,NULL,NULL,NULL),(18,NULL,NULL,NULL),(19,NULL,NULL,NULL),(20,NULL,NULL,NULL),(21,NULL,NULL,NULL),(22,NULL,NULL,NULL),(23,NULL,NULL,NULL),(24,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbloccupiedunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpctotal`
--

DROP TABLE IF EXISTS `tblpctotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpctotal` (
  `intTotalPC` int(11) DEFAULT NULL,
  `intPCNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpctotal`
--

LOCK TABLES `tblpctotal` WRITE;
/*!40000 ALTER TABLE `tblpctotal` DISABLE KEYS */;
INSERT INTO `tblpctotal` VALUES (21,7);
/*!40000 ALTER TABLE `tblpctotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltime`
--

DROP TABLE IF EXISTS `tbltime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltime` (
  `thirty` int(11) DEFAULT NULL,
  `onehr` int(11) DEFAULT NULL,
  `twohr` int(11) DEFAULT NULL,
  `threehr` int(11) DEFAULT NULL,
  `fivehr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltime`
--

LOCK TABLES `tbltime` WRITE;
/*!40000 ALTER TABLE `tbltime` DISABLE KEYS */;
INSERT INTO `tbltime` VALUES (15,20,40,60,100);
/*!40000 ALTER TABLE `tbltime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransaction`
--

DROP TABLE IF EXISTS `tbltransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransaction` (
  `intID` int(20) NOT NULL AUTO_INCREMENT,
  `intPC` int(11) DEFAULT NULL,
  `timeStart` time DEFAULT NULL,
  `timeEnd` time DEFAULT NULL,
  `dateOccupy` date DEFAULT NULL,
  `intPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`intID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransaction`
--

LOCK TABLES `tbltransaction` WRITE;
/*!40000 ALTER TABLE `tbltransaction` DISABLE KEYS */;
INSERT INTO `tbltransaction` VALUES (1,9,'07:32:02','07:38:46','2016-03-18',42),(2,1,'07:31:50','07:38:52','2016-03-18',5),(3,14,'07:32:14','07:39:33','2016-03-18',5),(4,17,'07:32:08','07:40:39','2016-03-18',20),(5,7,'09:10:10','09:10:15','2016-03-18',5);
/*!40000 ALTER TABLE `tbltransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-18  9:11:59
