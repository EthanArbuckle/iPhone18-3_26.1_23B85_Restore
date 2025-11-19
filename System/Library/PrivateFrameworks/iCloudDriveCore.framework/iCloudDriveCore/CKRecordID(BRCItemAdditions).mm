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
  v1 = [a1 recordName];
  v4 = 0;
  if ([v1 hasPrefix:@"directory/"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"directory/", "length")}];
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
  v1 = [a1 recordName];
  v2 = [v1 hasPrefix:@"directory/appData_"];

  return v2;
}

- (uint64_t)brc_isAppLibraryDocumentsRecordID
{
  v1 = [a1 recordName];
  v2 = [v1 hasPrefix:@"directory/appDocuments_"];

  return v2;
}

- (void)sqliteBind:()BRCItemAdditions index:
{
  v7 = [a1 sqliteRepresentation];
  v6 = v7;
  sqlite3_bind_text(a3, a4, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
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
  if (([a1 brc_isAppLibraryRootRecordID] & 1) == 0)
  {
    [CKRecordID(BRCItemAdditions) brc_appLibraryRootZoneName];
  }

  v2 = [a1 recordName];
  v3 = [v2 substringFromIndex:{objc_msgSend(@"directory/appData_", "length")}];

  return v3;
}

- (id)brc_appLibraryDocumentsZoneName
{
  if (([a1 brc_isAppLibraryDocumentsRecordID] & 1) == 0)
  {
    [CKRecordID(BRCItemAdditions) brc_appLibraryDocumentsZoneName];
  }

  v2 = [a1 recordName];
  v3 = [v2 substringFromIndex:{objc_msgSend(@"directory/appDocuments_", "length")}];

  return v3;
}

- (uint64_t)brc_isDocumentsFolderRecordID
{
  if ([a1 brc_isAppLibraryDocumentsRecordID])
  {
    return 1;
  }

  v3 = [a1 recordName];
  v4 = [@"directory/" stringByAppendingString:@"documents"];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

- (BRCItemID)_itemIDWithLibraryRowID:()BRCItemAdditions zoneAppRetriever:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 recordName];
  if ([v8 hasPrefix:@"directory/appDocuments_"])
  {
    v9 = [v8 substringFromIndex:{objc_msgSend(@"directory/appDocuments_", "length")}];
    v10 = [v7 appLibraryByID:v9];
    v11 = [v10 dbRowID];

    if (v11)
    {
      v12 = [[BRCItemID alloc] initAsDocumentsWithAppLibraryRowID:v11];
    }

    else
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
      v12 = 0;
    }

    v6 = v11;
    goto LABEL_26;
  }

  if ([v8 hasPrefix:@"directory/appData_"])
  {
    v13 = [v8 substringFromIndex:{objc_msgSend(@"directory/appData_", "length")}];
    v14 = [v7 appLibraryByID:v13];
    if (!v14)
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    v15 = [v14 rootItemID];
LABEL_9:
    v12 = v15;
LABEL_20:

LABEL_25:
    goto LABEL_26;
  }

  if ([v8 hasPrefix:@"directory/"])
  {
    v13 = [a1 zoneID];
    v14 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v13];
    if ([v14 isShared])
    {
      v16 = [v7 clientZoneByMangledID:v14];
      v17 = [v16 dbRowID];
    }

    else
    {
      v17 = 0;
    }

    v19 = [v8 substringFromIndex:{objc_msgSend(@"directory/", "length")}];
    v20 = v19;
    if (!(v6 | v17) && (([v19 isEqualToString:BRCItemIDZoneRoot] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", BRCItemIDDocuments)))
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    v12 = [[BRCItemID alloc] initWithString:v20 libraryRowID:v6 sharedZoneRowID:v17];

    goto LABEL_20;
  }

  if ([v8 hasPrefix:@"documentStructure/"])
  {
    v18 = @"documentStructure/";
LABEL_23:
    v13 = [v8 substringFromIndex:{-[__CFString length](v18, "length")}];
    v21 = [[BRCItemID alloc] initWithUUIDString:v13];
LABEL_24:
    v12 = v21;
    goto LABEL_25;
  }

  if ([v8 hasPrefix:@"documentContent/"])
  {
    v18 = @"documentContent/";
    goto LABEL_23;
  }

  if ([v8 hasPrefix:@"alias/"])
  {
    v13 = [v8 substringFromIndex:{objc_msgSend(@"alias/", "length")}];
    if (!v6)
    {
      [CKRecordID(BRCItemAdditions) _itemIDWithLibraryRowID:zoneAppRetriever:];
    }

    goto LABEL_34;
  }

  if ([v8 hasPrefix:@"shareAlias/"])
  {
    v13 = [v8 substringFromIndex:{objc_msgSend(@"shareAlias/", "length")}];
LABEL_34:
    v21 = [[BRCItemID alloc] initWithAliasUUID:v13];
    goto LABEL_24;
  }

  if ([v8 hasPrefix:@"symlink/"])
  {
    v18 = @"symlink/";
    goto LABEL_23;
  }

  if ([v8 hasPrefix:@"finderBookmark/"])
  {
    v18 = @"finderBookmark/";
    goto LABEL_23;
  }

  if ([v8 hasPrefix:@"ppm_"])
  {
    v23 = [a1 recordName];
    v13 = [v23 componentsSeparatedByString:@"/"];

    if ([v13 count] != 2)
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

    v14 = [v13 lastObject];
    v15 = [[BRCItemID alloc] initWithUUIDString:v14];
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
  v5 = [a1 brc_itemIDWithZoneAppRetriever:v4 error:&v10];
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
    v9 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[CKRecordID(BRCItemAdditions) brc_itemIDWithZoneAppRetriever:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/sync/records/CKRecord+BRCItemAdditions.m", 714, v9);
  }

  return v5;
}

- (void)brc_itemIDWithZoneAppRetriever:()BRCItemAdditions error:
{
  v6 = a3;
  v7 = [a1 zoneID];
  v8 = [v7 zoneName];
  if ([v8 isEqualToString:*MEMORY[0x277CFB070]])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v10 = [v7 ownerName];
  v11 = [v10 isEqualToString:*MEMORY[0x277CBBF28]];

  if (!v11)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v7];
  v9 = [v6 appLibraryByMangledID:v8];
  v12 = [v9 dbRowID];

  if (v12)
  {
LABEL_5:

LABEL_7:
    v8 = [v9 dbRowID];
    a4 = [a1 _itemIDWithLibraryRowID:v8 zoneAppRetriever:v6];
    goto LABEL_8;
  }

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1004 description:{@"Can't find appLibrary corresponding to zoneID %@", v7, v16}];
    goto LABEL_14;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1004 description:{@"Found appLibrary %@ with invalid dbRowID for zoneID %@", v9, v7}];
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
  v1 = [a1 recordName];
  if ([v1 hasPrefix:@"directory/"])
  {
    v2 = 0;
  }

  else if ([v1 hasPrefix:@"documentStructure/"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"documentContent/"))
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"alias/"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"shareAlias/"))
  {
    v2 = 3;
  }

  else if ([v1 hasPrefix:@"symlink/"])
  {
    v2 = 5;
  }

  else if ([v1 hasPrefix:@"finderBookmark/"])
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
  v7 = [a1 recordName];
  v8 = [v7 substringFromIndex:{objc_msgSend(@"ppm_", "length") - 1}];
  v9 = [v8 pathComponents];

  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v9 objectAtIndexedSubscript:1];
  v12 = [v6 zoneAppRetriever];
  v13 = [v12 sharedServerZoneRowIDsByOwnerNamePrefix:v10];

  if ([v13 count])
  {
    v14 = [[BRCItemID alloc] initWithUUIDString:v11];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [v6 serverReadWriteDatabaseFacade];
    v16 = [v15 zoneIDsEnumeratorForItemWithItemID:v14];

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
            v23 = [v6 zoneAppRetriever];
            v24 = [v23 serverZoneByRowID:v21];
            v25 = [v24 asSharedZone];

            v26 = v25;
            *v29 = v25;

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