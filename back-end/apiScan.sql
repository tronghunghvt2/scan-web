CREATE DATABASE apiScan
GO

USE [apiScan]
GO
/****** Object:  Table [dbo].[command]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[command](
	[idCommand] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[value] [text] NULL,
	[idType] [bigint] NULL,
 CONSTRAINT [PK_command] PRIMARY KEY CLUSTERED 
(
	[idCommand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[database]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[database](
	[idDb] [uniqueidentifier] NOT NULL,
	[value] [varchar](50) NULL,
	[idSqlmapScan] [uniqueidentifier] NULL,
 CONSTRAINT [PK_database] PRIMARY KEY CLUSTERED 
(
	[idDb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dump]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dump](
	[idDump] [bigint] IDENTITY(1,1) NOT NULL,
	[value] [text] NULL,
	[idTable] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dump] PRIMARY KEY CLUSTERED 
(
	[idDump] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nmapScan]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nmapScan](
	[idNmapScan] [uniqueidentifier] NOT NULL,
	[ipAddress] [varchar](250) NULL,
	[timeStart] [varchar](250) NULL,
	[location] [varchar](250) NULL,
	[coordinates] [varchar](250) NULL,
	[idCommand] [bigint] NULL,
 CONSTRAINT [PK_nmapScan] PRIMARY KEY CLUSTERED 
(
	[idNmapScan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[port]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[port](
	[idPort] [uniqueidentifier] NOT NULL,
	[value] [varchar](250) NULL,
	[idNmapScan] [uniqueidentifier] NULL,
	[idState] [bigint] NULL,
	[idService] [bigint] NULL,
 CONSTRAINT [PK_port] PRIMARY KEY CLUSTERED 
(
	[idPort] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[idService] [bigint] IDENTITY(1,1) NOT NULL,
	[value] [varchar](250) NULL,
 CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED 
(
	[idService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sqlmapScan]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sqlmapScan](
	[idSqlmapScan] [uniqueidentifier] NOT NULL,
	[value] [text] NULL,
	[message] [varchar](250) NULL,
	[timeStart] [varchar](50) NULL,
	[timeEnd] [varchar](50) NULL,
	[idCommand] [bigint] NULL,
 CONSTRAINT [PK_sqlmapScan] PRIMARY KEY CLUSTERED 
(
	[idSqlmapScan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[state]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[idState] [bigint] IDENTITY(1,1) NOT NULL,
	[value] [varchar](250) NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[idState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table](
	[idTable] [uniqueidentifier] NOT NULL,
	[value] [varchar](250) NULL,
	[idDb] [uniqueidentifier] NULL,
 CONSTRAINT [PK_table] PRIMARY KEY CLUSTERED 
(
	[idTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeScan]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeScan](
	[idType] [bigint] IDENTITY(1,1) NOT NULL,
	[value] [varchar](50) NULL,
 CONSTRAINT [PK_typeScan] PRIMARY KEY CLUSTERED 
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerability]    Script Date: 8/28/2022 6:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability](
	[idVul] [uniqueidentifier] NOT NULL,
	[value] [varchar](50) NULL,
	[idsqlmapScan] [uniqueidentifier] NULL,
 CONSTRAINT [PK_vulnerability] PRIMARY KEY CLUSTERED 
(
	[idVul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[command] ON 

INSERT [dbo].[command] ([idCommand], [name], [value], [idType]) VALUES (2, N'Scan Vulnerability', N'sqlmap - u url --batch', 2)
INSERT [dbo].[command] ([idCommand], [name], [value], [idType]) VALUES (3, N'Scan Database', N'sqlmap -u url --technique= --dbs --batch', 2)
INSERT [dbo].[command] ([idCommand], [name], [value], [idType]) VALUES (4, N'Scan Table', N'sqlmap -u url --technique= -D database --table --batch', 2)
INSERT [dbo].[command] ([idCommand], [name], [value], [idType]) VALUES (5, N'Scan Dump', N'sqlmap -u url --tecnique= -D database -T table --dump --batch', 2)
SET IDENTITY_INSERT [dbo].[command] OFF
GO
SET IDENTITY_INSERT [dbo].[typeScan] ON 

INSERT [dbo].[typeScan] ([idType], [value]) VALUES (1, N'Nmap Scan')
INSERT [dbo].[typeScan] ([idType], [value]) VALUES (2, N'Sqlmap Scan')
SET IDENTITY_INSERT [dbo].[typeScan] OFF
GO
ALTER TABLE [dbo].[command]  WITH CHECK ADD  CONSTRAINT [FK_command_typeScan] FOREIGN KEY([idType])
REFERENCES [dbo].[typeScan] ([idType])
GO
ALTER TABLE [dbo].[command] CHECK CONSTRAINT [FK_command_typeScan]
GO
ALTER TABLE [dbo].[database]  WITH CHECK ADD  CONSTRAINT [FK_database_sqlmapScan] FOREIGN KEY([idSqlmapScan])
REFERENCES [dbo].[sqlmapScan] ([idSqlmapScan])
GO
ALTER TABLE [dbo].[database] CHECK CONSTRAINT [FK_database_sqlmapScan]
GO
ALTER TABLE [dbo].[dump]  WITH CHECK ADD  CONSTRAINT [FK_dump_table] FOREIGN KEY([idTable])
REFERENCES [dbo].[table] ([idTable])
GO
ALTER TABLE [dbo].[dump] CHECK CONSTRAINT [FK_dump_table]
GO
ALTER TABLE [dbo].[nmapScan]  WITH CHECK ADD  CONSTRAINT [FK_nmapScan_command] FOREIGN KEY([idCommand])
REFERENCES [dbo].[command] ([idCommand])
GO
ALTER TABLE [dbo].[nmapScan] CHECK CONSTRAINT [FK_nmapScan_command]
GO
ALTER TABLE [dbo].[port]  WITH CHECK ADD  CONSTRAINT [FK_port_nmapScan] FOREIGN KEY([idNmapScan])
REFERENCES [dbo].[nmapScan] ([idNmapScan])
GO
ALTER TABLE [dbo].[port] CHECK CONSTRAINT [FK_port_nmapScan]
GO
ALTER TABLE [dbo].[port]  WITH CHECK ADD  CONSTRAINT [FK_port_service] FOREIGN KEY([idService])
REFERENCES [dbo].[service] ([idService])
GO
ALTER TABLE [dbo].[port] CHECK CONSTRAINT [FK_port_service]
GO
ALTER TABLE [dbo].[port]  WITH CHECK ADD  CONSTRAINT [FK_port_state] FOREIGN KEY([idState])
REFERENCES [dbo].[state] ([idState])
GO
ALTER TABLE [dbo].[port] CHECK CONSTRAINT [FK_port_state]
GO
ALTER TABLE [dbo].[sqlmapScan]  WITH CHECK ADD  CONSTRAINT [FK_sqlmapScan_command] FOREIGN KEY([idCommand])
REFERENCES [dbo].[command] ([idCommand])
GO
ALTER TABLE [dbo].[sqlmapScan] CHECK CONSTRAINT [FK_sqlmapScan_command]
GO
ALTER TABLE [dbo].[vulnerability]  WITH CHECK ADD  CONSTRAINT [FK_vulnerability_sqlmapScan] FOREIGN KEY([idsqlmapScan])
REFERENCES [dbo].[sqlmapScan] ([idSqlmapScan])
GO
ALTER TABLE [dbo].[vulnerability] CHECK CONSTRAINT [FK_vulnerability_sqlmapScan]
GO
