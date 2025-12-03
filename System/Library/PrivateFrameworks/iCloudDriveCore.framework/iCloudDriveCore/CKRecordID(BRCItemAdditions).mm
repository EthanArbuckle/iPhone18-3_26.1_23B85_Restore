@interface CKRecordID(BRCItemAdditions)
+ (uint64_t)newFromSqliteStatement:()BRCItemAdditions atIndex:;
+ (uint64_t)newFromSqliteValue:()BRCItemAdditions;
- (BOOL)brc_isZoneRootRecordID;
- (BRCItemID)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:;
- (id)brc_appLibraryDocumentsZoneName;
- (id)brc_appLibraryRootZoneName;
- (id)brc_itemIDWithZoneAppRetriever:()BRCItemAdditions;
- (uint64_t)brc_isAppLibraryDocumentsRecordID;
- (uint64_t)brc_isAppLibraryRootRecordID;
- (uint64_t)brc_isDocumentsFolderRecordID;
- (uint64_t)brc_itemType;
- (uint64_t)locateSideCarServerZone:()BRCItemAdditions sessionContext:;
- (void)brc_appLibraryDocumentsZoneName;
- (void)brc_appLibraryRootZoneName;
- (void)brc_itemIDWithZoneAppRetriever:()BRCItemAdditions error:;
- (void)brc_itemType;
- (void)sqliteBind:()BRCItemAdditions index:;
@end

@implementation CKRecordID(BRCItemAdditions)

- (BOOL)brc_isZoneRootRecordID
{
  recordName = [self recordName];
  v4 = 0;
  if ([recordName hasPrefix:@"directory/"])
  {
    v2 = [recordName substringFromIndex:{objc_msgSend(@"directory/", "length")}];
    v3 = [v2 isEqualToString:@"root"];

    if (v3)
    {
      v4 = 1;
    }
  }

  return v4;
}

- (uint64_t)brc_isAppLibraryRootRecordID
{
  recordName = [self recordName];
  v2 = [recordName hasPrefix:@"directory/appData_"];

  return v2;
}

- (uint64_t)brc_isAppLibraryDocumentsRecordID
{
  recordName = [self recordName];
  v2 = [recordName hasPrefix:@"directory/appDocuments_"];

  return v2;
}

- (void)sqliteBind:()BRCItemAdditions index:
{
  sqliteRepresentation = [self sqliteRepresentation];
  v6 = sqliteRepresentation;
  sqlite3_bind_text(a3, a4, [sqliteRepresentation UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

+ (uint64_t)newFromSqliteValue:()BRCItemAdditions
{
  if (sqlite3_value_type(a3) == 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(a3)];
    v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithSqliteRepresentation:v4];

    return v5;
  }

  else
  {
    if (sqlite3_value_type(a3) != 5)
    {
      +[CKRecordID(BRCItemAdditions) newFromSqliteValue:];
    }

    return 0;
  }
}

+ (uint64_t)newFromSqliteStatement:()BRCItemAdditions atIndex:
{
  if (sqlite3_column_type(a3, iCol) == 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(a3, iCol)}];
    v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithSqliteRepresentation:v6];

    return v7;
  }

  else
  {
    if (sqlite3_column_type(a3, iCol) != 5)
    {
      +[CKRecordID(BRCItemAdditions) newFromSqliteStatement:atIndex:];
    }

    return 0;
  }
}

- (id)brc_appLibraryRootZoneName
{
  if (([self brc_isAppLibraryRootRecordID] & 1) == 0)
  {
    [CKRecordID(BRCItemAdditions) brc_appLibraryRootZoneName];
  }

  recordName = [self recordName];
  v3 = [recordName substringFromIndex:{objc_msgSend(@"directory/appData_", "length")}];

  return v3;
}

- (id)brc_appLibraryDocumentsZoneName
{
  if (([self brc_isAppLibraryDocumentsRecordID] & 1) == 0)
  {
    [CKRecordID(BRCItemAdditions) brc_appLibraryDocumentsZoneName];
  }

  recordName = [self recordName];
  v3 = [recordName substringFromIndex:{objc_msgSend(@"directory/appDocuments_", "length")}];

  return v3;
}

- (uint64_t)brc_isDocumentsFolderRecordID
{
  if ([self brc_isAppLibraryDocumentsRecordID])
  {
    return 1;
  }

  recordName = [self recordName];
  v4 = [@"directory/" stringByAppendingString:@"documents"];
  v5 = [recordName hasPrefix:v4];

  return v5;
}

- (BRCItemID)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:
{
  v6 = a3;
  v7 = a4;
  recordName = [self recordName];
  if ([recordName hasPrefix:@"directory/appDocuments_"])
  {
    v9 = [recordName substringFromIndex:{objc_msgSend(@"directory/appDocuments_", "length")}];
    v10 = [v7 appLibraryByID:v9];
    dbRowID = [v10 dbRowID];

    if (dbRowID)
    {
      v12 = [[BRCItemID alloc] initAsDocumentsWithAppLibraryRowID:dbRowID];
    }

    else
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
      v12 = 0;
    }

    v6 = dbRowID;
    goto LABEL_26;
  }

  if ([recordName hasPrefix:@"directory/appData_"])
  {
    zoneID = [recordName substringFromIndex:{objc_msgSend(@"directory/appData_", "length")}];
    lastObject = [v7 appLibraryByID:zoneID];
    if (!lastObject)
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    rootItemID = [lastObject rootItemID];
LABEL_9:
    v12 = rootItemID;
LABEL_20:

LABEL_25:
    goto LABEL_26;
  }

  if ([recordName hasPrefix:@"directory/"])
  {
    zoneID = [self zoneID];
    lastObject = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:zoneID];
    if ([lastObject isShared])
    {
      v16 = [v7 clientZoneByMangledID:lastObject];
      dbRowID2 = [v16 dbRowID];
    }

    else
    {
      dbRowID2 = 0;
    }

    v19 = [recordName substringFromIndex:{objc_msgSend(@"directory/", "length")}];
    v20 = v19;
    if (!(v6 | dbRowID2) && (([v19 isEqualToString:BRCItemIDZoneRoot] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", BRCItemIDDocuments)))
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    v12 = [[BRCItemID alloc] initWithString:v20 libraryRowID:v6 sharedZoneRowID:dbRowID2];

    goto LABEL_20;
  }

  if ([recordName hasPrefix:@"documentStructure/"])
  {
    v18 = @"documentStructure/";
LABEL_23:
    zoneID = [recordName substringFromIndex:{-[__CFString length](v18, "length")}];
    v21 = [[BRCItemID alloc] initWithUUIDString:zoneID];
LABEL_24:
    v12 = v21;
    goto LABEL_25;
  }

  if ([recordName hasPrefix:@"documentContent/"])
  {
    v18 = @"documentContent/";
    goto LABEL_23;
  }

  if ([recordName hasPrefix:@"alias/"])
  {
    zoneID = [recordName substringFromIndex:{objc_msgSend(@"alias/", "length")}];
    if (!v6)
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    goto LABEL_34;
  }

  if ([recordName hasPrefix:@"shareAlias/"])
  {
    zoneID = [recordName substringFromIndex:{objc_msgSend(@"shareAlias/", "length")}];
LABEL_34:
    v21 = [[BRCItemID alloc] initWithAliasUUID:zoneID];
    goto LABEL_24;
  }

  if ([recordName hasPrefix:@"symlink/"])
  {
    v18 = @"symlink/";
    goto LABEL_23;
  }

  if ([recordName hasPrefix:@"finderBookmark/"])
  {
    v18 = @"finderBookmark/";
    goto LABEL_23;
  }

  if ([recordName hasPrefix:@"ppm_"])
  {
    recordName2 = [self recordName];
    zoneID = [recordName2 componentsSeparatedByString:@"/"];

    if ([zoneID count] != 2)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
      }

      v12 = 0;
      goto LABEL_25;
    }

    lastObject = [zoneID lastObject];
    rootItemID = [[BRCItemID alloc] initWithUUIDString:lastObject];
    goto LABEL_9;
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (id)brc_itemIDWithZoneAppRetriever:()BRCItemAdditions
{
  v4 = a3;
  v10 = 0;
  v5 = [self brc_itemIDWithZoneAppRetriever:v4 error:&v10];
  if (!v5 && v10)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"brc_itemIDWithZoneAppRetriever: are not supposed to trigger an error: %@", v10];
    objc_claimAutoreleasedReturnValue();
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(BRCDatabaseManager) _startWatcher];
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[CKRecordID(BRCItemAdditions) brc_itemIDWithZoneAppRetriever:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/sync/records/CKRecord+BRCItemAdditions.m", 714, uTF8String);
  }

  return v5;
}

- (void)brc_itemIDWithZoneAppRetriever:()BRCItemAdditions error:
{
  v6 = a3;
  zoneID = [self zoneID];
  zoneName = [zoneID zoneName];
  if ([zoneName isEqualToString:*MEMORY[0x277CFB070]])
  {
    v9 = 0;
    goto LABEL_5;
  }

  ownerName = [zoneID ownerName];
  v11 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if (!v11)
  {
    v9 = 0;
    goto LABEL_7;
  }

  zoneName = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:zoneID];
  v9 = [v6 appLibraryByMangledID:zoneName];
  dbRowID = [v9 dbRowID];

  if (dbRowID)
  {
LABEL_5:

LABEL_7:
    zoneName = [v9 dbRowID];
    a4 = [self _itemIDWithLibraryRowID:zoneName zoneAppRetriever:v6];
    goto LABEL_8;
  }

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1004 description:{@"Can't find appLibrary corresponding to zoneID %@", zoneID, v16}];
    goto LABEL_14;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1004 description:{@"Found appLibrary %@ with invalid dbRowID for zoneID %@", v9, zoneID}];
    v14 = LABEL_14:;
    v15 = *a4;
    *a4 = v14;

    a4 = 0;
  }

LABEL_8:

  return a4;
}

- (uint64_t)brc_itemType
{
  recordName = [self recordName];
  if ([recordName hasPrefix:@"directory/"])
  {
    v2 = 0;
  }

  else if ([recordName hasPrefix:@"documentStructure/"] & 1) != 0 || (objc_msgSend(recordName, "hasPrefix:", @"documentContent/"))
  {
    v2 = 1;
  }

  else if ([recordName hasPrefix:@"alias/"] & 1) != 0 || (objc_msgSend(recordName, "hasPrefix:", @"shareAlias/"))
  {
    v2 = 3;
  }

  else if ([recordName hasPrefix:@"symlink/"])
  {
    v2 = 5;
  }

  else if ([recordName hasPrefix:@"finderBookmark/"])
  {
    v2 = 6;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CKRecordID(BRCItemAdditions) brc_itemType];
    }

    v2 = -1;
  }

  return v2;
}

- (uint64_t)locateSideCarServerZone:()BRCItemAdditions sessionContext:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  recordName = [self recordName];
  v8 = [recordName substringFromIndex:{objc_msgSend(@"ppm_", "length") - 1}];
  pathComponents = [v8 pathComponents];

  v10 = [pathComponents objectAtIndexedSubscript:0];
  v11 = [pathComponents objectAtIndexedSubscript:1];
  zoneAppRetriever = [v6 zoneAppRetriever];
  v13 = [zoneAppRetriever sharedServerZoneRowIDsByOwnerNamePrefix:v10];

  if ([v13 count])
  {
    v14 = [[BRCItemID alloc] initWithUUIDString:v11];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    serverReadWriteDatabaseFacade = [v6 serverReadWriteDatabaseFacade];
    v16 = [serverReadWriteDatabaseFacade zoneIDsEnumeratorForItemWithItemID:v14];

    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v29 = a3;
      v30 = v14;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          if ([v13 containsObject:{v21, v29}])
          {
            zoneAppRetriever2 = [v6 zoneAppRetriever];
            v24 = [zoneAppRetriever2 serverZoneByRowID:v21];
            asSharedZone = [v24 asSharedZone];

            v26 = asSharedZone;
            *v29 = asSharedZone;

            v22 = 1;
            goto LABEL_12;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_12:
      v14 = v30;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (void)newFromSqliteValue:()BRCItemAdditions .cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)newFromSqliteStatement:()BRCItemAdditions atIndex:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)brc_appLibraryRootZoneName
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)brc_appLibraryDocumentsZoneName
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: attempt to extract an itemID from '%s'%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Corrupt side car file%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.5()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:.cold.6()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)brc_itemType
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: attempt to extract an itemType from '%s'%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end