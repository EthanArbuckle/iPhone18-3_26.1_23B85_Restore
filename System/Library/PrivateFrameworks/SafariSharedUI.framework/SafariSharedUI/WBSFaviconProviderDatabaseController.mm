@interface WBSFaviconProviderDatabaseController
- (BOOL)_deleteRejectedResourceForPageURLString:(id)a3 iconURLString:(id)a4;
- (BOOL)_hasPageURLsForIconUUID:(id)a3;
- (BOOL)_setRejectedResourceForPageURL:(id)a3 iconURLString:(id)a4;
- (id)_fetchAllPageURLStrings;
- (id)_fetchIconInfoForIconURLString:(id)a3;
- (id)_fetchIconInfoForIconUUID:(id)a3;
- (id)_fetchIconInfosForRejectedResourcesWithPageURLString:(id)a3 iconURLString:(id)a4;
- (id)_fetchIconUUIDForPageURLString:(id)a3;
- (id)_fetchIconUUIDsForPageURLStrings:(id)a3;
- (id)_fetchPageURLStringsWithPredicate:(id)a3;
- (id)_findOrphansFromIconUUIDs:(id)a3;
- (id)_setIconUUID:(id)a3 forIconURLString:(id)a4 size:(CGSize)a5 hasGeneratedResolutions:(BOOL)a6;
- (id)_setTimestampToNowForIconUUID:(id)a3;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToSchemaVersion:(int)a3;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (void)_deleteAllPageAndIconEntries;
- (void)_deleteIconWithUUIDFromIconInfo:(id)a3;
- (void)_deleteIconsWithUUIDsFromIconInfo:(id)a3;
- (void)_deletePageURL:(id)a3;
- (void)_deletePageURLs:(id)a3;
- (void)_deletePageURLsWithUUIDFromPageInfo:(id)a3;
- (void)_deleteRejectedResourceForPageURLString:(id)a3;
- (void)_deleteRejectedResourceForPageURLStrings:(id)a3;
- (void)_firstIconUUIDForPageURLStrings:(id)a3 completionHandler:(id)a4;
- (void)_generateStatementsForQuery:(id)a3 arguments:(id)a4 statementCallback:(id)a5;
- (void)_setPageURL:(id)a3 toIconUUID:(id)a4;
- (void)fetchAllIconUUIDsWithCompletionHandler:(id)a3;
- (void)fetchAllKnownPageURLStringsWithCompletionHandler:(id)a3;
- (void)fetchPageURLStringsWithPrefixesIn:(id)a3 completionHandler:(id)a4;
- (void)firstIconInfoMatchingIconURLStringIn:(id)a3 completionHandler:(id)a4;
- (void)firstIconInfoMatchingPageURLStringIn:(id)a3 completionHandler:(id)a4;
- (void)firstIconUUIDMatchingPageURLStringIn:(id)a3 completionHandler:(id)a4;
- (void)iconInfoForIconURLString:(id)a3 completionHandler:(id)a4;
- (void)iconInfoForPageURLString:(id)a3 completionHandler:(id)a4;
- (void)linkAndUpdateTimestampForIconWithPageURLString:(id)a3 iconURLString:(id)a4 iconSize:(CGSize)a5 iconHasGeneratedResolutions:(BOOL)a6 completionHandler:(id)a7;
- (void)linkPageURLString:(id)a3 toExistingIconURLString:(id)a4 completionHandler:(id)a5;
- (void)markRejectedIconAtPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5;
- (void)markValidIconAtPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5;
- (void)rejectedResourceIconInfosForPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5;
- (void)removeAllDataForIconUUID:(id)a3 completionHandler:(id)a4;
- (void)removeAllPageURLStringsWithCompletionHandler:(id)a3;
- (void)removePageURLString:(id)a3 completionHandler:(id)a4;
- (void)removePageURLStrings:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSFaviconProviderDatabaseController

- (int)_createFreshDatabaseSchema
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(WBSSQLiteStore *)self database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__WBSFaviconProviderDatabaseController__createFreshDatabaseSchema__block_invoke;
  v5[3] = &unk_1E8283618;
  v5[4] = self;
  v5[5] = &v6;
  [v3 tryToPerformTransactionInBlock:v5];

  LODWORD(v3) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL __66__WBSFaviconProviderDatabaseController__createFreshDatabaseSchema__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"CREATE TABLE page_url (url TEXT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,uuid TEXT NOT NULL ON CONFLICT FAIL)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v3 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"CREATE INDEX PageURLIndex ON page_url (url)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v4 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v4, 0, @"CREATE TABLE icon_info (uuid TEXT PRIMARY KEY NOT NULL,url TEXT NOT NULL,timestamp INTEGER)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v5 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"CREATE TABLE database_info (key TEXT PRIMARY KEY NOT NULL,value TEXT NOT NULL)");

  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion:(int)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(WBSSQLiteStore *)self database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__WBSFaviconProviderDatabaseController__migrateToSchemaVersion___block_invoke;
  v7[3] = &unk_1E8283640;
  v8 = a3;
  v7[4] = self;
  v7[5] = &v9;
  [v5 tryToPerformTransactionInBlock:v7];

  LODWORD(v5) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

BOOL __64__WBSFaviconProviderDatabaseController__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 4 || v2 == 3 || v2 == 2)
  {
    v3 = [*(a1 + 32) _migrateToSchemaVersion];
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"ALTER TABLE icon_info ADD width INTEGER DEFAULT 0");

  if (v4 == 101)
  {
    v5 = [(WBSSQLiteStore *)self database];
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"ALTER TABLE icon_info ADD height INTEGER DEFAULT 0");
  }

  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  v2 = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"ALTER TABLE icon_info ADD has_generated_representations INTEGER DEFAULT 0");

  return v3;
}

- (int)_migrateToSchemaVersion_4
{
  v2 = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"CREATE TABLE rejected_resources (page_url TEXT NOT NULL ON CONFLICT FAIL,icon_url TEXT NOT NULL ON CONFLICT FAIL,timestamp INTEGER,UNIQUE(page_url, icon_url))");

  return v3;
}

- (void)linkAndUpdateTimestampForIconWithPageURLString:(id)a3 iconURLString:(id)a4 iconSize:(CGSize)a5 iconHasGeneratedResolutions:(BOOL)a6 completionHandler:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __156__WBSFaviconProviderDatabaseController_linkAndUpdateTimestampForIconWithPageURLString_iconURLString_iconSize_iconHasGeneratedResolutions_completionHandler___block_invoke;
  block[3] = &unk_1E8284658;
  block[4] = self;
  v21 = v13;
  v24 = width;
  v25 = height;
  v26 = a6;
  v22 = v14;
  v23 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  dispatch_async(v16, block);
}

void __156__WBSFaviconProviderDatabaseController_linkAndUpdateTimestampForIconWithPageURLString_iconURLString_iconSize_iconHasGeneratedResolutions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchIconUUIDForPageURLString:*(a1 + 40)];
  v3 = [*(a1 + 32) _fetchIconInfoForIconURLString:*(a1 + 48)];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = [v3 UUIDString];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = [v3 hasGeneratedResolutions];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v4 = [*(a1 + 32) database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __156__WBSFaviconProviderDatabaseController_linkAndUpdateTimestampForIconWithPageURLString_iconURLString_iconSize_iconHasGeneratedResolutions_completionHandler___block_invoke_23;
  v10[3] = &unk_1E8284630;
  v14 = &v36;
  v15 = &v26;
  v10[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v11 = v5;
  v16 = &v32;
  v6 = v2;
  v12 = v6;
  v13 = *(a1 + 40);
  v17 = &v20;
  [v4 tryToPerformTransactionInBlock:v10];

  v7 = *(a1 + 56);
  v8 = [WBSFaviconProviderIconInfo alloc];
  v9 = [(WBSFaviconProviderIconInfo *)v8 initWithPageURLString:*(a1 + 40) iconURLString:*(a1 + 48) UUIDString:v37[5] dateAdded:v27[5] size:*(v33 + 24) hasGeneratedResolutions:0 isRejectedResource:*(a1 + 64), *(a1 + 72)];
  (*(v7 + 16))(v7, v9, v21[5]);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

uint64_t __156__WBSFaviconProviderDatabaseController_linkAndUpdateTimestampForIconWithPageURLString_iconURLString_iconSize_iconHasGeneratedResolutions_completionHandler___block_invoke_23(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setTimestampToNowForIconUUID:?];
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if ([*(a1 + 48) isEqualToString:*(*(*(a1 + 64) + 8) + 40)])
    {
      return 1;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) _setIconUUID:*(*(*(a1 + 64) + 8) + 40) forIconURLString:*(a1 + 40) size:*(a1 + 112) hasGeneratedResolutions:{*(a1 + 96), *(a1 + 104)}];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 80) + 8) + 24) = *(a1 + 112);
  }

  [*(a1 + 32) _deletePageURL:*(a1 + 56)];
  if (*(a1 + 48) && ([*(a1 + 32) _hasPageURLsForIconUUID:?] & 1) == 0)
  {
    [*(a1 + 32) _deleteIconWithUUIDFromIconInfo:*(a1 + 48)];
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 48));
  }

  [*(a1 + 32) _setPageURL:*(a1 + 56) toIconUUID:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 32) _deleteRejectedResourceForPageURLString:*(a1 + 56) iconURLString:*(a1 + 40)];
  return 1;
}

- (void)linkPageURLString:(id)a3 toExistingIconURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82836E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchIconUUIDForPageURLString:*(a1 + 40)];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = [*(a1 + 32) _fetchIconInfoForIconURLString:*(a1 + 48)];
  if (!v21[5])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke_cold_1(v9);
    }

    v10 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  if (!v2)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [v21[5] UUIDString];
    [v11 _setPageURL:v12 toIconUUID:v13];

    goto LABEL_10;
  }

  v3 = [v21[5] UUIDString];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
LABEL_10:
    (*(*(a1 + 56) + 16))();
    goto LABEL_11;
  }

  v5 = [*(a1 + 32) database];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke_26;
  v14[3] = &unk_1E8284680;
  v6 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v6;
  v16 = v2;
  v18 = &v26;
  v19 = &v20;
  v17 = *(a1 + 48);
  [v5 tryToPerformTransactionInBlock:v14];

  (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v27[5], v7, v8);
LABEL_11:
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

uint64_t __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke_26(uint64_t a1)
{
  [*(a1 + 32) _deletePageURL:*(a1 + 40)];
  if (([*(a1 + 32) _hasPageURLsForIconUUID:*(a1 + 48)] & 1) == 0)
  {
    [*(a1 + 32) _deleteIconWithUUIDFromIconInfo:*(a1 + 48)];
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 72) + 8) + 40) UUIDString];
  [v2 _setPageURL:v3 toIconUUID:v4];

  [*(a1 + 32) _deleteRejectedResourceForPageURLString:*(a1 + 40) iconURLString:*(a1 + 56)];
  return 1;
}

- (void)removePageURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSFaviconProviderDatabaseController_removePageURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __78__WBSFaviconProviderDatabaseController_removePageURLString_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__3;
  v7[4] = __Block_byref_object_dispose__3;
  v8 = 0;
  v2 = [*(a1 + 32) database];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__WBSFaviconProviderDatabaseController_removePageURLString_completionHandler___block_invoke_2;
  v4[3] = &unk_1E82846A8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = v7;
  [v2 tryToPerformTransactionInBlock:v4];

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v7, 8);
}

uint64_t __78__WBSFaviconProviderDatabaseController_removePageURLString_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _deleteRejectedResourceForPageURLString:*(a1 + 40)];
  v2 = [*(a1 + 32) _fetchIconUUIDForPageURLString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) _deletePageURL:*(a1 + 40)];
    if ([*(a1 + 32) _hasPageURLsForIconUUID:*(*(*(a1 + 48) + 8) + 40)])
    {
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;
    }

    else
    {
      [*(a1 + 32) _deleteIconWithUUIDFromIconInfo:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  return 1;
}

- (void)removePageURLStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = objc_opt_new();
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [*(a1 + 32) database];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_2;
  v8[3] = &unk_1E82846A8;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v10 = &v11;
  [v3 tryToPerformTransactionInBlock:v8];

  v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [v2 timeIntervalSinceNow];
    __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_cold_1(buf, v5, v6);
  }

  v7 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_cold_2(v17, [v12[5] count], objc_msgSend(*(a1 + 40), "count"), v7);
  }

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v11, 8);
}

uint64_t __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  [v2 _deleteRejectedResourceForPageURLStrings:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allObjects];
  v6 = [v4 _fetchIconUUIDsForPageURLStrings:v5];

  if ([v6 count])
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) allObjects];
    [v7 _deletePageURLs:v8];

    v9 = *(a1 + 32);
    v10 = [v6 allObjects];
    v11 = [v9 _findOrphansFromIconUUIDs:v10];

    if ([v11 count])
    {
      [*(a1 + 32) _deleteIconsWithUUIDsFromIconInfo:v11];
      [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v11];
    }
  }

  return 1;
}

- (void)removeAllDataForIconUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSFaviconProviderDatabaseController_removeAllDataForIconUUID_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __83__WBSFaviconProviderDatabaseController_removeAllDataForIconUUID_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deletePageURLsWithUUIDFromPageInfo:*(a1 + 40)];
  [*(a1 + 32) _deleteIconWithUUIDFromIconInfo:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)removeAllPageURLStringsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__WBSFaviconProviderDatabaseController_removeAllPageURLStringsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __85__WBSFaviconProviderDatabaseController_removeAllPageURLStringsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteAllPageAndIconEntries];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchAllKnownPageURLStringsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__WBSFaviconProviderDatabaseController_fetchAllKnownPageURLStringsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82837D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __89__WBSFaviconProviderDatabaseController_fetchAllKnownPageURLStringsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchAllPageURLStrings];
  (*(v1 + 16))(v1);
}

- (void)iconInfoForPageURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSFaviconProviderDatabaseController_iconInfoForPageURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __83__WBSFaviconProviderDatabaseController_iconInfoForPageURLString_completionHandler___block_invoke(uint64_t a1)
{
  v3 = a1;
  v4 = [*(a1 + 32) _fetchIconUUIDForPageURLString:*(a1 + 40)];
  v12 = v4;
  if (v4)
  {
    v5 = [*(v3 + 32) _fetchIconInfoForIconUUID:v4];
    v6 = *(v3 + 48);
    if (v5)
    {
      v7 = [WBSFaviconProviderIconInfo alloc];
      v8 = *(v3 + 40);
      v3 = [v5 iconURLString];
      v1 = [v5 UUIDString];
      v2 = [v5 dateAdded];
      [v5 size];
      v11 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v7, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", v8, v3, v1, v2, [v5 hasGeneratedResolutions], objc_msgSend(v5, "isRejectedResource"), v9, v10);
    }

    else
    {
      v11 = 0;
    }

    (*(v6 + 16))(v6, v11);
    if (v5)
    {
    }
  }

  else
  {
    (*(*(v3 + 48) + 16))();
  }
}

- (void)iconInfoForIconURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSFaviconProviderDatabaseController_iconInfoForIconURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283708;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __83__WBSFaviconProviderDatabaseController_iconInfoForIconURLString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _fetchIconInfoForIconURLString:*(a1 + 40)];
  (*(v1 + 16))(v1);
}

- (void)markRejectedIconAtPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__WBSFaviconProviderDatabaseController_markRejectedIconAtPageURLString_iconURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82836E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

uint64_t __104__WBSFaviconProviderDatabaseController_markRejectedIconAtPageURLString_iconURLString_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteRejectedResourceForPageURLString:*(a1 + 40) iconURLString:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) _setRejectedResourceForPageURL:*(a1 + 40) iconURLString:*(a1 + 48)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)markValidIconAtPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__WBSFaviconProviderDatabaseController_markValidIconAtPageURLString_iconURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82846D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

uint64_t __101__WBSFaviconProviderDatabaseController_markValidIconAtPageURLString_iconURLString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _deleteRejectedResourceForPageURLString:*(a1 + 40) iconURLString:*(a1 + 48)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)rejectedResourceIconInfosForPageURLString:(id)a3 iconURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __114__WBSFaviconProviderDatabaseController_rejectedResourceIconInfosForPageURLString_iconURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82846D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __114__WBSFaviconProviderDatabaseController_rejectedResourceIconInfosForPageURLString_iconURLString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _fetchIconInfosForRejectedResourcesWithPageURLString:*(a1 + 40) iconURLString:*(a1 + 48)];
  (*(v1 + 16))(v1);
}

- (void)firstIconUUIDMatchingPageURLStringIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSFaviconProviderDatabaseController_firstIconUUIDMatchingPageURLStringIn_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)firstIconInfoMatchingPageURLStringIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingPageURLStringIn_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingPageURLStringIn_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingPageURLStringIn_completionHandler___block_invoke_2;
  v5[3] = &unk_1E82846F8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _firstIconUUIDForPageURLStrings:v3 completionHandler:v5];
}

void __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingPageURLStringIn_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [*(a1 + 32) _fetchIconInfoForIconUUID:v7];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = [WBSFaviconProviderIconInfo alloc];
      a1 = [v8 iconURLString];
      v3 = [v8 UUIDString];
      v4 = [v8 dateAdded];
      [v8 size];
      v13 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v10, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", v14, a1, v3, v4, [v8 hasGeneratedResolutions], objc_msgSend(v8, "isRejectedResource"), v11, v12);
    }

    else
    {
      v13 = 0;
    }

    (*(v9 + 16))(v9, v13);
    if (v8)
    {
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_firstIconUUIDForPageURLStrings:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [(WBSFaviconProviderDatabaseController *)self _fetchIconUUIDForPageURLString:v12, v14];
        if (v13)
        {
          v7[2](v7, v12, v13);

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7[2](v7, 0, 0);
LABEL_11:
}

- (void)firstIconInfoMatchingIconURLStringIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingIconURLStringIn_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __95__WBSFaviconProviderDatabaseController_firstIconInfoMatchingIconURLStringIn_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(a1 + 40) _fetchIconInfoForIconURLString:{*(*(&v7 + 1) + 8 * i), v7}];
        if (v6)
        {
          (*(*(a1 + 48) + 16))();

          return;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllIconUUIDsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSFaviconProviderDatabaseController_fetchAllIconUUIDsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__WBSFaviconProviderDatabaseController_fetchAllIconUUIDsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [*(a1 + 32) database];
  v4 = SafariShared::WBSSQLiteDatabaseFetch<>(v3, @"SELECT uuid FROM page_url");

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 stringAtIndex:0];
        if ([v10 length])
        {
          v11 = [v9 stringAtIndex:0];
          [v2 addObject:v11];
        }

        else
        {
          v12 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __79__WBSFaviconProviderDatabaseController_fetchAllIconUUIDsWithCompletionHandler___block_invoke_cold_1(&v16, v17, v12);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [v5 statement];
  [v13 invalidate];

  v14 = *(a1 + 40);
  v15 = [v2 copy];
  (*(v14 + 16))(v14, v15);
}

- (void)fetchPageURLStringsWithPrefixesIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__WBSFaviconProviderDatabaseController_fetchPageURLStringsWithPrefixesIn_completionHandler___block_invoke;
  block[3] = &unk_1E8284740;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __92__WBSFaviconProviderDatabaseController_fetchPageURLStringsWithPrefixesIn_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_mapObjectsUsingBlock:&__block_literal_global_10];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v7 = v2;
  v5 = [v2 componentsJoinedByString:@" OR "];
  v6 = [v4 _fetchPageURLStringsWithPredicate:v5];
  (*(v3 + 16))(v3, v6);
}

id __92__WBSFaviconProviderDatabaseController_fetchPageURLStringsWithPrefixesIn_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"url LIKE %@%%", a2];

  return v2;
}

- (id)_fetchIconUUIDForPageURLString:(id)a3
{
  v10 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT uuid FROM page_url WHERE url = ?", &v10);

  v6 = [v5 nextObject];
  v7 = [v6 stringAtIndex:0];

  v8 = [v5 statement];
  [v8 invalidate];

  return v7;
}

- (id)_fetchIconUUIDsForPageURLStrings:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__WBSFaviconProviderDatabaseController__fetchIconUUIDsForPageURLStrings___block_invoke;
  v8[3] = &unk_1E8284768;
  v6 = v5;
  v9 = v6;
  [(WBSFaviconProviderDatabaseController *)self _generateStatementsForQuery:@"SELECT uuid FROM page_url WHERE url IN" arguments:v4 statementCallback:v8];

  return v6;
}

void __73__WBSFaviconProviderDatabaseController__fetchIconUUIDsForPageURLStrings___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 fetch];
  while (1)
  {
    v4 = [v3 nextObject];
    v5 = v4;
    if (!v4)
    {
      break;
    }

    v6 = *(a1 + 32);
    v7 = [v4 stringAtIndex:0];
    [v6 addObject:v7];
  }

  [v8 invalidate];
}

- (id)_fetchIconInfoForIconURLString:(id)a3
{
  v17 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT uuid, timestamp, width, height, has_generated_representations FROM icon_info WHERE url = ?", &v17);

  v6 = [v5 nextObject];
  v7 = [v6 stringAtIndex:0];
  v8 = MEMORY[0x1E695DF00];
  [v6 doubleAtIndex:1];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v6 intAtIndex:2];
  v11 = [v6 intAtIndex:3];
  v12 = [v6 BOOLAtIndex:4];
  v13 = [v5 statement];
  [v13 invalidate];

  if (v7)
  {
    v14 = [WBSFaviconProviderIconInfo alloc];
    v15 = [(WBSFaviconProviderIconInfo *)v14 initWithPageURLString:0 iconURLString:v17 UUIDString:v7 dateAdded:v9 size:v12 hasGeneratedResolutions:0 isRejectedResource:v10, v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_fetchIconInfoForIconUUID:(id)a3
{
  v17 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT url, timestamp, width, height, has_generated_representations FROM icon_info WHERE uuid = ?", &v17);

  v6 = [v5 nextObject];
  v7 = [v6 stringAtIndex:0];
  v8 = MEMORY[0x1E695DF00];
  [v6 doubleAtIndex:1];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v6 intAtIndex:2];
  v11 = [v6 intAtIndex:3];
  v12 = [v6 BOOLAtIndex:4];
  v13 = [v5 statement];
  [v13 invalidate];

  if (v7)
  {
    v14 = [WBSFaviconProviderIconInfo alloc];
    v15 = [(WBSFaviconProviderIconInfo *)v14 initWithPageURLString:0 iconURLString:v7 UUIDString:v17 dateAdded:v9 size:v12 hasGeneratedResolutions:0 isRejectedResource:v10, v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_fetchIconInfosForRejectedResourcesWithPageURLString:(id)a3 iconURLString:(id)a4
{
  v18 = a3;
  v17 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(v6, @"SELECT timestamp FROM rejected_resources WHERE icon_url = ? OR page_url = ?", &v17, &v18);

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = MEMORY[0x1E695F060];
  while (1)
  {
    v10 = [v7 nextObject];
    v11 = v10;
    if (!v10)
    {
      break;
    }

    [v10 doubleAtIndex:0];
    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v13 = [WBSFaviconProviderIconInfo alloc];
    v14 = [(WBSFaviconProviderIconInfo *)v13 initWithPageURLString:v18 iconURLString:v17 UUIDString:0 dateAdded:v12 size:0 hasGeneratedResolutions:1 isRejectedResource:*v9, v9[1]];
    [v8 addObject:v14];
  }

  v15 = [v7 statement];
  [v15 invalidate];

  return v8;
}

- (id)_fetchAllPageURLStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(v2, @"SELECT url FROM page_url");

  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) stringAtIndex:{0, v12}];
        if (v9)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v5 statement];
  [v10 invalidate];

  return v4;
}

- (id)_fetchPageURLStringsWithPredicate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(WBSSQLiteStore *)self database];
  v7 = [@"SELECT url FROM page_url WHERE " stringByAppendingString:v4];
  v8 = SafariShared::WBSSQLiteDatabaseFetch<>(v6, v7);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) stringAtIndex:{0, v16}];
        [v5 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v9 statement];
  [v14 invalidate];

  return v5;
}

- (id)_findOrphansFromIconUUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__WBSFaviconProviderDatabaseController__findOrphansFromIconUUIDs___block_invoke;
  v10[3] = &unk_1E8284768;
  v6 = v5;
  v11 = v6;
  [(WBSFaviconProviderDatabaseController *)self _generateStatementsForQuery:@"SELECT uuid FROM page_url WHERE uuid IN" arguments:v4 statementCallback:v10];
  v7 = [MEMORY[0x1E695DFA8] setWithArray:v4];
  [v7 minusSet:v6];
  v8 = [v7 allObjects];

  return v8;
}

void __66__WBSFaviconProviderDatabaseController__findOrphansFromIconUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 fetch];
  while (1)
  {
    v4 = [v3 nextObject];
    v5 = v4;
    if (!v4)
    {
      break;
    }

    v6 = *(a1 + 32);
    v7 = [v4 stringAtIndex:0];
    [v6 addObject:v7];
  }

  [v8 invalidate];
}

- (void)_setPageURL:(id)a3 toIconUUID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v10 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(v6, 0, @"INSERT INTO page_url (url, uuid) VALUES (?, ?)", &v11, &v10);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _setPageURL:toIconUUID:];
    }

    v9 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      v13 = v11;
      v14 = 2113;
      v15 = v10;
      v16 = 1024;
      v17 = v7;
      _os_log_debug_impl(&dword_1C6968000, v9, OS_LOG_TYPE_DEBUG, "Failed to set page url: %{private}@ to icon UUID: %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }
}

- (id)_setIconUUID:(id)a3 forIconURLString:(id)a4 size:(CGSize)a5 hasGeneratedResolutions:(BOOL)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a5;
  v18 = a3;
  v17 = a4;
  v16 = a6;
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [(WBSSQLiteStore *)self database];
  [v9 timeIntervalSinceReferenceDate];
  *buf = v11;
  v12 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,double,double &,double &,BOOL &>(v10, 0, @"REPLACE INTO icon_info (uuid, url, timestamp, width, height, has_generated_representations) VALUES (?, ?, ?, ?, ?, ?)", &v18, &v17, buf, &v19.width, &v19.height, &v16);

  if (v12 != 101)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _setIconUUID:forIconURLString:size:hasGeneratedResolutions:];
    }

    v14 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      *&buf[4] = v18;
      v21 = 2113;
      v22 = v17;
      v23 = 1024;
      v24 = v12;
      _os_log_debug_impl(&dword_1C6968000, v14, OS_LOG_TYPE_DEBUG, "Failed to set icon UUID: %{private}@ for icon url: %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }

  return v9;
}

- (id)_setTimestampToNowForIconUUID:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(WBSSQLiteStore *)self database];
  [v4 timeIntervalSinceReferenceDate];
  v9 = v6;
  LODWORD(self) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,NSString * {__strong}&>(v5, 0, @"UPDATE icon_info SET timestamp=? WHERE uuid=?", &v9, &v10);

  if (self != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _setTimestampToNowForIconUUID:];
    }
  }

  return v4;
}

- (BOOL)_setRejectedResourceForPageURL:(id)a3 iconURLString:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v13 = a4;
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(WBSSQLiteStore *)self database];
  [v6 timeIntervalSinceReferenceDate];
  *buf = v8;
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&,double>(v7, 0, @"REPLACE INTO rejected_resources (page_url, icon_url, timestamp) VALUES (?, ?, ?)", &v14, &v13, buf);

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _setRejectedResourceForPageURL:iconURLString:];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      *&buf[4] = v14;
      v16 = 2113;
      v17 = v13;
      v18 = 1024;
      v19 = v9;
      _os_log_debug_impl(&dword_1C6968000, v11, OS_LOG_TYPE_DEBUG, "Failed to set rejected resource for page url %{private}@ and icon url %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }

  return v9 == 101;
}

- (void)_deletePageURL:(id)a3
{
  v7 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  LODWORD(self) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v4, 0, @"DELETE FROM page_url WHERE url = ?", &v7);

  if (self != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deletePageURL:];
    }

    v6 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [WBSFaviconProviderDatabaseController _deletePageURL:];
    }
  }
}

- (void)_deletePageURLs:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSFaviconProviderDatabaseController__deletePageURLs___block_invoke;
  v6[3] = &unk_1E8284768;
  v7 = v4;
  v5 = v4;
  [(WBSFaviconProviderDatabaseController *)self _generateStatementsForQuery:@"DELETE FROM page_url WHERE url IN" arguments:v5 statementCallback:v6];
}

void __56__WBSFaviconProviderDatabaseController__deletePageURLs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 execute] != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__WBSFaviconProviderDatabaseController__deletePageURLs___block_invoke_cold_1();
    }

    v4 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __56__WBSFaviconProviderDatabaseController__deletePageURLs___block_invoke_cold_2();
    }
  }

  [v2 invalidate];
}

- (BOOL)_deleteRejectedResourceForPageURLString:(id)a3 iconURLString:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v11 = a4;
  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(v6, 0, @"DELETE FROM rejected_resources WHERE page_url = ? AND icon_url = ?", &v12, &v11);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteRejectedResourceForPageURLString:iconURLString:];
    }

    v9 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      v14 = v12;
      v15 = 2113;
      v16 = v11;
      v17 = 1024;
      v18 = v7;
      _os_log_debug_impl(&dword_1C6968000, v9, OS_LOG_TYPE_DEBUG, "Failed to reset rejected resource for page url %{private}@, icon url %{private}@. Error code: %d", buf, 0x1Cu);
    }
  }

  return v7 == 101;
}

- (void)_deleteRejectedResourceForPageURLString:(id)a3
{
  v7 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  LODWORD(self) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v4, 0, @"DELETE FROM rejected_resources WHERE page_url = ?", &v7);

  if (self != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteRejectedResourceForPageURLString:];
    }

    v6 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [WBSFaviconProviderDatabaseController _deleteRejectedResourceForPageURLString:];
    }
  }
}

- (void)_deleteRejectedResourceForPageURLStrings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__WBSFaviconProviderDatabaseController__deleteRejectedResourceForPageURLStrings___block_invoke;
  v6[3] = &unk_1E8284768;
  v7 = v4;
  v5 = v4;
  [(WBSFaviconProviderDatabaseController *)self _generateStatementsForQuery:@"DELETE FROM rejected_resources WHERE page_url IN" arguments:v5 statementCallback:v6];
}

void __81__WBSFaviconProviderDatabaseController__deleteRejectedResourceForPageURLStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 execute] != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__WBSFaviconProviderDatabaseController__deleteRejectedResourceForPageURLStrings___block_invoke_cold_1();
    }

    v4 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__WBSFaviconProviderDatabaseController__deleteRejectedResourceForPageURLStrings___block_invoke_cold_2();
    }
  }

  [v2 invalidate];
}

- (BOOL)_hasPageURLsForIconUUID:(id)a3
{
  v8 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT EXISTS(SELECT 1 FROM page_url WHERE uuid = ?)", &v8);
  v6 = [v5 nextObject];

  LOBYTE(v4) = [v6 int64AtIndex:0] == 1;
  return v4;
}

- (void)_deletePageURLsWithUUIDFromPageInfo:(id)a3
{
  v6 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  LODWORD(self) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v4, 0, @"DELETE FROM page_url WHERE uuid = ?", &v6);

  if (self != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deletePageURLsWithUUIDFromPageInfo:];
    }
  }
}

- (void)_deleteIconWithUUIDFromIconInfo:(id)a3
{
  v6 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  LODWORD(self) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v4, 0, @"DELETE FROM icon_info WHERE uuid = ?", &v6);

  if (self != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteIconWithUUIDFromIconInfo:];
    }
  }
}

- (void)_deleteIconsWithUUIDsFromIconInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__WBSFaviconProviderDatabaseController__deleteIconsWithUUIDsFromIconInfo___block_invoke;
  v6[3] = &unk_1E8284768;
  v7 = v4;
  v5 = v4;
  [(WBSFaviconProviderDatabaseController *)self _generateStatementsForQuery:@"DELETE FROM icon_info WHERE uuid IN" arguments:v5 statementCallback:v6];
}

void __74__WBSFaviconProviderDatabaseController__deleteIconsWithUUIDsFromIconInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 execute] != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__WBSFaviconProviderDatabaseController__deleteIconsWithUUIDsFromIconInfo___block_invoke_cold_1();
    }
  }

  [v2 invalidate];
}

- (void)_deleteAllPageAndIconEntries
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"DELETE FROM page_url");

  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteAllPageAndIconEntries];
    }
  }

  v6 = [(WBSSQLiteStore *)self database];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"DELETE FROM icon_info");

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteAllPageAndIconEntries];
    }
  }

  v9 = [(WBSSQLiteStore *)self database];
  v10 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v9, 0, @"DELETE FROM rejected_resources");

  if (v10 != 101)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXFaviconDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProviderDatabaseController _deleteAllPageAndIconEntries];
    }
  }
}

- (void)_generateStatementsForQuery:(id)a3 arguments:(id)a4 statementCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v9 count];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__WBSFaviconProviderDatabaseController__generateStatementsForQuery_arguments_statementCallback___block_invoke;
  v16[3] = &unk_1E82847B8;
  v13 = v11;
  v17 = v13;
  v21 = v12;
  v14 = v8;
  v18 = v14;
  v19 = self;
  v15 = v10;
  v20 = v15;
  [v9 enumerateObjectsUsingBlock:v16];
}

void __96__WBSFaviconProviderDatabaseController__generateStatementsForQuery_arguments_statementCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  if (__ROR8__(0x1CAC083126E978D5 * (a3 - 499), 2) < 0x83126E978D4FDFuLL || *(a1 + 64) - 1 == a3)
  {
    v5 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"%@ ("), *(a1 + 40);
    v6 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__WBSFaviconProviderDatabaseController__generateStatementsForQuery_arguments_statementCallback___block_invoke_2;
    v15[3] = &unk_1E8284790;
    v7 = v5;
    v16 = v7;
    [v6 enumerateObjectsUsingBlock:v15];
    [v7 replaceCharactersInRange:objc_msgSend(v7 withString:{"length") - 1, 1, @""}]);
    v8 = objc_alloc(MEMORY[0x1E69C89F0]);
    v9 = [*(a1 + 48) database];
    v10 = [v8 initWithDatabase:v9 query:v7];

    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96__WBSFaviconProviderDatabaseController__generateStatementsForQuery_arguments_statementCallback___block_invoke_3;
    v13[3] = &unk_1E8284790;
    v12 = v10;
    v14 = v12;
    [v11 enumerateObjectsUsingBlock:v13];
    [*(a1 + 32) removeAllObjects];
    (*(*(a1 + 56) + 16))();
  }
}

void __100__WBSFaviconProviderDatabaseController_linkPageURLString_toExistingIconURLString_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_cold_1(uint8_t *buf, NSObject *a2, double a3)
{
  *buf = 136446466;
  *(buf + 4) = "remove_pageurls";
  *(buf + 6) = 2048;
  *(buf + 14) = -a3;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "#perf - %{public}s: %f", buf, 0x16u);
}

void __79__WBSFaviconProviderDatabaseController_removePageURLStrings_completionHandler___block_invoke_cold_2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "Removed %lu orphaned uuids for %lu url strings", buf, 0x16u);
}

void __79__WBSFaviconProviderDatabaseController_fetchAllIconUUIDsWithCompletionHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Empty UUID found in page_url table", buf, 2u);
}

- (void)_setPageURL:toIconUUID:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1C6968000, v0, v1, "Failed to set page url to icon UUID: %{private}@. Error code: %d");
}

- (void)_setIconUUID:forIconURLString:size:hasGeneratedResolutions:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1C6968000, v0, v1, "Failed to set icon UUID: %{private}@ for icon url, error code: %d");
}

- (void)_setTimestampToNowForIconUUID:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1C6968000, v0, v1, "Failed to update timestamp for icon UUID: %{private}@. Error code: %d");
}

- (void)_deletePageURL:.cold.2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __56__WBSFaviconProviderDatabaseController__deletePageURLs___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_deleteRejectedResourceForPageURLString:.cold.2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __81__WBSFaviconProviderDatabaseController__deleteRejectedResourceForPageURLStrings___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_deletePageURLsWithUUIDFromPageInfo:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1C6968000, v0, v1, "Failed to delete page urls with with uuid: %@. Error code: %d");
}

- (void)_deleteIconWithUUIDFromIconInfo:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1C6968000, v0, v1, "Failed to delete icon with uuid: %{private}@. Error code: %d");
}

@end