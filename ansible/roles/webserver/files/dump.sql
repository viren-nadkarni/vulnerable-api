-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2015 at 02:25 PM
-- Server version: 10.0.16-MariaDB-1~trusty-log
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE IF NOT EXISTS `tracking` (
  `id` varchar(255) NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `service` varchar(255) NOT NULL,
  `interface` varchar(255) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `note` text,
  `correlation_id` varchar(255) NOT NULL,
  `namespace` varchar(1000) NOT NULL,
  `user` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `in` text NOT NULL,
  `out` mediumtext,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `server` varchar(255) NOT NULL,
  `original_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_tracking_service_operation` (`service`,`operation`),
  KEY `IX_tracking_clientid` (`client_id`),
  KEY `IX_tracking_status` (`status`),
  KEY `IX_tracking_created` (`created`),
  KEY `IX_tracking_correlation_id` (`correlation_id`),
  KEY `IX_tracking_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`id`, `parent_id`, `operation`, `service`, `interface`, `status`, `note`, `correlation_id`, `namespace`, `user`, `client_id`, `in`, `out`, `created`, `updated`, `server`, `original_id`) VALUES
('7266bac3-b19c-11e4-8f2b-080027207994', '7266c2e5-b19c-11e4-8f2b-080027207994', 'test', 'online apply', 'Test', 'Test', 'You need to ensure that all user supplied input sent back to the browser is verified to be safe (via input validation), and that user input is properly escaped before it is included in the output page. Proper output encoding ensures that such input is always treated as text in the browser, rather than active content that might get executed.\r\n\r\nBoth static and dynamic tools can find some XSS problems automatically. However, each application builds output pages differently and uses different browser side interpreters such as JavaScript, ActiveX, Flash, and Silverlight, which makes automated detection difficult. Therefore, complete coverage requires a combination of manual code review and manual penetration testing, in addition to any automated approaches in use.\r\n\r\nWeb 2.0 technologies, such as AJAX, make XSS much more difficult to detect via automated tools.', '7266c9c8-b19c-11e4-8f2b-080027207994', 'How Do I Prevent ''Cross-Site Scripting (XSS)''?\r\nPreventing XSS requires keeping untrusted data separate from active browser content.', 'michael', '123', 'Attacker sends text-based attack scripts that exploit the interpreter in the browser. Almost any source of data can be an attack vector, including internal sources such as data from the database.	XSS is the most prevalent web application security flaw. XSS flaws occur when an application includes user supplied data in a page sent to the browser without properly validating or escaping that content. There are three known types of XSS flaws: 1) Stored, 2) Reflected, and 3) DOM based XSS.\r\n\r\nDetection of most XSS flaws is fairly easy via testing or code analysis.', 'Attackers can execute scripts in a victim’s browser to hijack user sessions, deface web sites, insert hostile content, redirect users, hijack the user’s browser using malware, etc.	Consider the business value of the affected system and all the data it processes.\r\n\r\nAlso consider the business impact of public exposure of the vulnerability.', '2015-02-11 03:17:02', '2015-02-11 03:17:02', '127.0.0.1', '7266d3e7-b19c-11e4-8f2b-080027207994'),
('7266bac3-b19c-11e4-8f2b-080127207994', '7266c2e5-b19c-11e4-8f2b-080027207994', 'test', 'online apply', 'Test', 'Test', 'You need to ensure that all user supplied input sent back to the browser is verified to be safe (via input validation), and that user input is properly escaped before it is included in the output page. Proper output encoding ensures that such input is always treated as text in the browser, rather than active content that might get executed.\r\n\r\nBoth static and dynamic tools can find some XSS problems automatically. However, each application builds output pages differently and uses different browser side interpreters such as JavaScript, ActiveX, Flash, and Silverlight, which makes automated detection difficult. Therefore, complete coverage requires a combination of manual code review and manual penetration testing, in addition to any automated approaches in use.\r\n\r\nWeb 2.0 technologies, such as AJAX, make XSS much more difficult to detect via automated tools.', '7266c9c8-b19c-11e4-8f2b-080027207994', 'How Do I Prevent ''Cross-Site Scripting (XSS)''?\r\nPreventing XSS requires keeping untrusted data separate from active browser content.', 'brady', '2123', 'Attacker sends text-based attack scripts that exploit the interpreter in the browser. Almost any source of data can be an attack vector, including internal sources such as data from the database.	XSS is the most prevalent web application security flaw. XSS flaws occur when an application includes user supplied data in a page sent to the browser without properly validating or escaping that content. There are three known types of XSS flaws: 1) Stored, 2) Reflected, and 3) DOM based XSS.\r\n\r\nDetection of most XSS flaws is fairly easy via testing or code analysis.', 'Attackers can execute scripts in a victim’s browser to hijack user sessions, deface web sites, insert hostile content, redirect users, hijack the user’s browser using malware, etc.	Consider the business value of the affected system and all the data it processes.\r\n\r\nAlso consider the business impact of public exposure of the vulnerability.', '2015-02-11 03:17:02', '2015-02-11 03:17:02', '127.0.0.1', '7266d3e7-b19c-11e4-8f2b-080027207994'),
('c03b92c2-b19d-11e4-8f2b-080027207994', 'c03b9852-b19d-11e4-8f2b-080027207994', 'add a test', 'Online apply', 'mytest', 'failed', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', 'c03b9ea1-b19d-11e4-8f2b-080027207994', 'security.rackspace.com', 'charles', 'c03ba34d-b19d-11e4-8f2b-080027207994', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', '2015-02-11 03:26:22', '2015-02-11 03:26:22', '10.2.3.4', 'c03ba991-b19d-11e4-8f2b-080027207994'),
('c03b92c2-b19d-11e4-8f2b-080027207995', 'c03b9852-b19d-11e4-8f2b-080027207994', 'add a test', 'Online apply', 'mytest', 'failed', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', 'c03b9ea1-b19d-11e4-8f2b-080027207994', 'security.rackspace.com', 'charles', 'c03ba34d-b19d-11e4-8f2b-080027207994', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', 'Example Attack Scenarios\r\nComponent vulnerabilities can cause almost any type of risk imaginable, ranging from the trivial to sophisticated malware designed to target a specific organization. Components almost always run with the full privilege of the application, so flaws in any component can be serious, The following two vulnerable components were downloaded 22m times in 2011.\r\n\r\nApache CXF Authentication Bypass – By failing to provide an identity token, attackers could invoke any web service with full permission. (Apache CXF is a services framework, not to be confused with the Apache Application Server.)\r\nSpring Remote Code Execution – Abuse of the Expression Language implementation in Spring allowed attackers to execute arbitrary code, effectively taking over the server.\r\nEvery application using either of these vulnerable libraries is vulnerable to attack as both of these components are directly accessible by application users. Other vulnerable libraries, used deeper in an application, may be harder to exploit.', '2015-02-11 03:26:44', '2015-02-11 03:26:44', '10.2.3.4', 'c03ba991-b19d-11e4-8f2b-080027207994'),
('fd57a261-b19c-11e4-8f2b-080027207994', 'fd57a801-b19c-11e4-8f2b-080027207994', 'copy', 'reach', 'demo interface', 'error', 'Am I Vulnerable To ''Injection''?\r\nThe best way to find out if an application is vulnerable to injection is to verify that all use of interpreters clearly separates untrusted data from the command or query. For SQL calls, this means using bind variables in all prepared statements and stored procedures, and avoiding dynamic queries.\r\n\r\nChecking the code is a fast and accurate way to see if the application uses interpreters safely. Code analysis tools can help a security analyst find the use of interpreters and trace the data flow through the application. Penetration testers can validate these issues by crafting exploits that confirm the vulnerability.\r\n\r\nAutomated dynamic scanning which exercises the application may provide insight into whether some exploitable injection flaws exist. Scanners cannot always reach interpreters and have difficulty detecting whether an attack was successful. Poor error handling makes injection flaws easier to discover', 'fd57ae70-b19c-11e4-8f2b-080027207994', 'com.rackspace', 'Jim', 'fd57b32a-b19c-11e4-8f2b-080027207994', 'How Do I Prevent ''Injection''?\r\nPreventing injection requires keeping untrusted data separate from commands and queries.\r\n\r\nThe preferred option is to use a safe API which avoids the use of the interpreter entirely or provides a parameterized interface. Be careful with APIs, such as stored procedures, that are parameterized, but can still introduce injection under the hood.\r\nIf a parameterized API is not available, you should carefully escape special characters using the specific escape syntax for that interpreter. OWASP’s ESAPI provides many of these escaping routines.\r\nPositive or “white list” input validation is also recommended, but is not a complete defense as many applications require special characters in their input. If special characters are required, only approaches 1. and 2. above will make their use safe. OWASP’s ESAPI has an extensible library of white list input validation routines.', 'How Do I Prevent ''Injection''?\r\nPreventing injection requires keeping untrusted data separate from commands and queries.\r\n\r\nThe preferred option is to use a safe API which avoids the use of the interpreter entirely or provides a parameterized interface. Be careful with APIs, such as stored procedures, that are parameterized, but can still introduce injection under the hood.\r\nIf a parameterized API is not available, you should carefully escape special characters using the specific escape syntax for that interpreter. OWASP’s ESAPI provides many of these escaping routines.\r\nPositive or “white list” input validation is also recommended, but is not a complete defense as many applications require special characters in their input. If special characters are required, only approaches 1. and 2. above will make their use safe. OWASP’s ESAPI has an extensible library of white list input validation routines.', '2015-02-11 03:20:55', '2015-02-11 03:20:55', '10.10.10.1', 'fd57b9a6-b19c-11e4-8f2b-080027207994');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

REATE TABLE IF NOT EXISTS `tracking_error` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tracking_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` text,
  `stack` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_TRACKING_ID` (`tracking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tracking_error`
--

INSERT INTO `tracking_error` (`id`, `tracking_id`, `type`, `message`, `stack`, `created`) VALUES
(1, '30d238b2-b1a6-11e4-8e6f-080027207994', 'test', '    {\r\n            LogTable log = new LogTable( 4 );\r\n\r\n            Console.WriteLine( \r\n                "This example of \\n   Exception.Message, \\n" +\r\n                "   Exception.HelpLink, \\n   Exception.Source, \\n" +\r\n                "   Exception.StackTrace, and \\n   Exception." +\r\n                "TargetSite \\ngenerates the following output." );\r\n\r\n            try\r\n            {\r\n                for( int count = 1; ; count++ )\r\n                {\r\n                    log.AddRecord( \r\n                        String.Format( \r\n                            "Log record number {0}", count ) );\r\n                }\r\n            }\r\n            catch( Exception ex )\r\n            {\r\n                Console.WriteLine( "\\nMessage ---\\n{0}", ex.Message );\r\n                Console.WriteLine( \r\n                    "\\nHelpLink ---\\n{0}", ex.HelpLink );\r\n                Console.WriteLine( "\\nSource ---\\n{0}", ex.Source );\r\n                Console.WriteLine( \r\n                    "\\nStackTrace ---\\n{0}", ex.StackTrace );\r\n                Console.WriteLine( \r\n                    "\\nTargetSite ---\\n{0}", ex.TargetSite );\r\n            }\r\n        }\r\n    }\r\n}', '    {\r\n            LogTable log = new LogTable( 4 );\r\n\r\n            Console.WriteLine( \r\n                "This example of \\n   Exception.Message, \\n" +\r\n                "   Exception.HelpLink, \\n   Exception.Source, \\n" +\r\n                "   Exception.StackTrace, and \\n   Exception." +\r\n                "TargetSite \\ngenerates the following output." );\r\n\r\n            try\r\n            {\r\n                for( int count = 1; ; count++ )\r\n                {\r\n                    log.AddRecord( \r\n                        String.Format( \r\n                            "Log record number {0}", count ) );\r\n                }\r\n            }\r\n            catch( Exception ex )\r\n            {\r\n                Console.WriteLine( "\\nMessage ---\\n{0}", ex.Message );\r\n                Console.WriteLine( \r\n                    "\\nHelpLink ---\\n{0}", ex.HelpLink );\r\n                Console.WriteLine( "\\nSource ---\\n{0}", ex.Source );\r\n                Console.WriteLine( \r\n                    "\\nStackTrace ---\\n{0}", ex.StackTrace );\r\n                Console.WriteLine( \r\n                    "\\nTargetSite ---\\n{0}", ex.TargetSite );\r\n            }\r\n        }\r\n    }\r\n}', '2015-02-11 14:33:00'),
(2, '6a0ec264-b1a6-11e4-8e6f-080027207994', 'System Error', 'System error messages begin with a percent sign (%) and are structured as follows:\r\n\r\n %FACILITY-SEVERITY-MNEMONIC: Message-text\r\n\r\nFACILITY is a code consisting of two or more uppercase letters that indicate the facility to which the message refers. A facility can be a hardware device, a protocol, or a module of the system software. The error messages in this appendix describe the DIRECTOR and DRP facilities.\r\n\r\nSEVERITY is a single-digit code from 0 to 7 that reflects the severity of the condition. The lower the number, the more serious the situation. lists the severity levels.\r\n\r\nMNEMONIC is a code that uniquely identifies the error message.\r\n\r\nMessage-text is a text string describing the condition. This portion of the message sometimes contains detailed information about the event, including terminal port numbers, network addresses, or addresses that correspond to locations in the system memory address space. Because the information in these variable fields changes from message to message, it is represented here by short strings enclosed in square brackets ( [] ). A decimal number, for example, is represented as [dec] . lists the representations of variable fields and the type of information in them.\r\n\r\nThe following is a sample system error message:\r\n\r\n %DIRECTOR-3-NOWRITE:[chars] unable to write to socket ', 'System error messages begin with a percent sign (%) and are structured as follows:\r\n\r\n %FACILITY-SEVERITY-MNEMONIC: Message-text\r\n\r\nFACILITY is a code consisting of two or more uppercase letters that indicate the facility to which the message refers. A facility can be a hardware device, a protocol, or a module of the system software. The error messages in this appendix describe the DIRECTOR and DRP facilities.\r\n\r\nSEVERITY is a single-digit code from 0 to 7 that reflects the severity of the condition. The lower the number, the more serious the situation. lists the severity levels.\r\n\r\nMNEMONIC is a code that uniquely identifies the error message.\r\n\r\nMessage-text is a text string describing the condition. This portion of the message sometimes contains detailed information about the event, including terminal port numbers, network addresses, or addresses that correspond to locations in the system memory address space. Because the information in these variable fields changes from message to message, it is represented here by short strings enclosed in square brackets ( [] ). A decimal number, for example, is represented as [dec] . lists the representations of variable fields and the type of information in them.\r\n\r\nThe following is a sample system error message:\r\n\r\n %DIRECTOR-3-NOWRITE:[chars] unable to write to socket ', '2015-02-11 14:34:36'),
(3, '84fd129a-b1a6-11e4-8e6f-080027207994', 'System Warning', 'By adding a comment, you accept our IBM Knowledge Center Terms of Use. Your comments entered on this IBM Knowledge Center site do not represent the views or opinions of IBM. IBM, in its sole discretion, reserves the right to remove any comments from this site. IBM is not responsible for, and does not validate or confirm, the correctness or accuracy of any comments you post. IBM does not endorse any of your comments. All IBM comments are provided "AS IS" and are not warranted by IBM in any way.', 'By adding a comment, you accept our IBM Knowledge Center Terms of Use. Your comments entered on this IBM Knowledge Center site do not represent the views or opinions of IBM. IBM, in its sole discretion, reserves the right to remove any comments from this site. IBM is not responsible for, and does not validate or confirm, the correctness or accuracy of any comments you post. IBM does not endorse any of your comments. All IBM comments are provided "AS IS" and are not warranted by IBM in any way.', '2015-02-11 14:35:22'),
(4, '99135b97-b1a6-11e4-8e6f-080027207994', 'system error', 'By adding a comment, you accept our IBM Knowledge Center Terms of Use. Your comments entered on this IBM Knowledge Center site do not represent the views or opinions of IBM. IBM, in its sole discretion, reserves the right to remove any comments from this site. IBM is not responsible for, and does not validate or confirm, the correctness or accuracy of any comments you post. IBM does not endorse any of your comments. All IBM comments are provided "AS IS" and are not warranted by IBM in any way.', 'By adding a comment, you accept our IBM Knowledge Center Terms of Use. Your comments entered on this IBM Knowledge Center site do not represent the views or opinions of IBM. IBM, in its sole discretion, reserves the right to remove any comments from this site. IBM is not responsible for, and does not validate or confirm, the correctness or accuracy of any comments you post. IBM does not endorse any of your comments. All IBM comments are provided "AS IS" and are not warranted by IBM in any way.', '2015-02-11 14:35:55');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

