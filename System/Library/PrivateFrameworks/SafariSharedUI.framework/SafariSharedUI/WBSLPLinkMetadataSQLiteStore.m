@interface WBSLPLinkMetadataSQLiteStore
- (BOOL)_deleteAllMetadataInfo;
- (BOOL)_setMetadataInfo:(id)a3 forURLString:(id)a4;
- (id)_deleteMetadataInfoForURLStrings:(id)a3;
- (id)_deleteUUIDWithOldestTimestamp;
- (id)_fetchAllMetadataInfo;
- (id)_fetchAllMetadataInfoWithUUID:(id)a3;
- (id)_fetchMetadataInfoForURLString:(id)a3;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToSchemaVersion:(int)a3;
- (int)_migrateToSchemaVersion_2;
- (unint64_t)_uuidCount;
- (void)_deleteAllMetadataInfo;
- (void)_deleteMetadataInfoWithUUID:(id)a3;
- (void)getAllMetadataInfoWithCompletionHandler:(id)a3;
- (void)getMetadataInfoForURLString:(id)a3 completionHandler:(id)a4;
- (void)linkAndUpdateMetadataInfoForURLString:(id)a3 lastFetchDate:(id)a4 lastFetchDidSucceed:(BOOL)a5 metadataHasImage:(BOOL)a6 completionHandler:(id)a7;
- (void)linkURLString:(id)a3 withMetadataInfoForURLString:(id)a4 completionHandler:(id)a5;
- (void)performLRUEvictionIfNecessaryWithMaximumNumberOfEntries:(unint64_t)a3 completionHandler:(id)a4;
- (void)removeAllMetadataInfoWithCompletionHandler:(id)a3;
- (void)removeAllMetadataInfoWithUUID:(id)a3 completionHandler:(id)a4;
- (void)removeMetadataInfoForURLStrings:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSLPLinkMetadataSQLiteStore

- (id)_fetchAllMetadataInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(v2, @"SELECT * FROM page_url");

  v4 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [WBSLPLinkMetadataInfo alloc];
        v11 = [(WBSLPLinkMetadataInfo *)v10 initWithSQLiteRow:v9, v15];
        [v4 safari_addObjectUnlessNil:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v5 statement];
  [v12 invalidate];

  v13 = [v4 copy];

  return v13;
}

- (int)_createFreshDatabaseSchema
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(WBSSQLiteStore *)self database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__WBSLPLinkMetadataSQLiteStore__createFreshDatabaseSchema__block_invoke;
  v5[3] = &unk_1E8283618;
  v5[4] = self;
  v5[5] = &v6;
  [v3 tryToPerformTransactionInBlock:v5];

  LODWORD(v3) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL __58__WBSLPLinkMetadataSQLiteStore__createFreshDatabaseSchema__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"CREATE TABLE page_url (url TEXT PRIMARY KEY NOT NULL,uuid TEXT NOT NULL ON CONFLICT FAIL)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v3 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"CREATE INDEX UUIDIndex ON page_url (uuid)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v4 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v4, 0, @"CREATE TABLE uuid_info (uuid TEXT PRIMARY KEY NOT NULL,timestamp INTEGER)");

  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    return 0;
  }

  v5 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"CREATE INDEX TimestampIndex ON uuid_info (timestamp)");

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
  v7[2] = __56__WBSLPLinkMetadataSQLiteStore__migrateToSchemaVersion___block_invoke;
  v7[3] = &unk_1E8283640;
  v8 = a3;
  v7[4] = self;
  v7[5] = &v9;
  [v5 tryToPerformTransactionInBlock:v7];

  LODWORD(v5) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

BOOL __56__WBSLPLinkMetadataSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    v2 = [*(a1 + 32) _migrateToSchemaVersion];
  }

  else
  {
    v2 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  return *(*(*(a1 + 40) + 8) + 24) == 101;
}

- (int)_migrateToSchemaVersion_2
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"DROP INDEX IF EXISTS UUIDIndex");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [(WBSSQLiteStore *)self database];
      v16 = [v15 lastErrorMessage];
      v26 = 138543618;
      v27 = v16;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to drop index in paged_url table: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  v5 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"ALTER TABLE page_url RENAME TO page_url_old");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = [(WBSSQLiteStore *)self database];
      v18 = [v17 lastErrorMessage];
      v26 = 138543618;
      v27 = v18;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to rename table page_url to page_url_old: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  v6 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"CREATE TABLE page_url (url TEXT PRIMARY KEY NOT NULL,uuid TEXT,last_fetch_date REAL NOT NULL,last_fetch_did_succeed BOOLEAN NOT NULL DEFAULT 0,metadata_has_image BOOLEAN NOT NULL DEFAULT 0)");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = [(WBSSQLiteStore *)self database];
      v20 = [v19 lastErrorMessage];
      v26 = 138543618;
      v27 = v20;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to create page_url table during migration: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  v7 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v7, 0, @"CREATE INDEX UUIDIndex ON page_url (uuid)");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = [(WBSSQLiteStore *)self database];
      v23 = [v22 lastErrorMessage];
      v26 = 138543618;
      v27 = v23;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to create UUIDIndex on page_url table during migration: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  v8 = [(WBSSQLiteStore *)self database];
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v8, 0, @"INSERT INTO page_url (url, uuid, last_fetch_date, last_fetch_did_succeed, metadata_has_image)SELECT p.url, p.uuid, u.timestamp, 1, 1 FROM page_url_old p JOIN uuid_info u ON p.uuid = u.uuid");

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = [(WBSSQLiteStore *)self database];
      v25 = [v24 lastErrorMessage];
      v26 = 138543618;
      v27 = v25;
      v28 = 1024;
      v29 = v9;
      _os_log_error_impl(&dword_1C6968000, v10, OS_LOG_TYPE_ERROR, "Failed to move page_url_old data to page_url table: %{public}@ (%d)", &v26, 0x12u);
    }
  }

  v11 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v11, 0, @"DROP TABLE page_url_old");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WBSSQLiteStore *)self database];
      v14 = [v13 lastErrorMessage];
      v26 = 138543618;
      v27 = v14;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to drop page_url_old table: %{public}@ (%d)", &v26, 0x12u);
    }

LABEL_20:
  }

  return v4;
}

- (void)linkAndUpdateMetadataInfoForURLString:(id)a3 lastFetchDate:(id)a4 lastFetchDidSucceed:(BOOL)a5 metadataHasImage:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __139__WBSLPLinkMetadataSQLiteStore_linkAndUpdateMetadataInfoForURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_completionHandler___block_invoke;
  block[3] = &unk_1E8283690;
  block[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, block);
}

void __139__WBSLPLinkMetadataSQLiteStore_linkAndUpdateMetadataInfoForURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_completionHandler___block_invoke(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [*(a1 + 32) database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __139__WBSLPLinkMetadataSQLiteStore_linkAndUpdateMetadataInfoForURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_completionHandler___block_invoke_59;
  v5[3] = &unk_1E8283668;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v4 = v3;
  v9 = *(a1 + 64);
  v6 = v4;
  v8 = v11;
  v7 = *(a1 + 48);
  v10 = *(a1 + 65);
  [v2 tryToPerformTransactionInBlock:v5];

  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(v11, 8);
}

uint64_t __139__WBSLPLinkMetadataSQLiteStore_linkAndUpdateMetadataInfoForURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_completionHandler___block_invoke_59(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchMetadataInfoForURLString:*(a1 + 40)];
  v3 = [v2 uuidString];
  if (!v3)
  {
    if (*(a1 + 64) == 1)
    {
      v4 = [MEMORY[0x1E696AFB0] UUID];
      v3 = [v4 UUIDString];
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [[WBSLPLinkMetadataInfo alloc] initWithURLString:*(a1 + 40) uuidString:v3 lastFetchDate:*(a1 + 48) lastFetchDidSucceed:*(a1 + 64) metadataHasImage:*(a1 + 65)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (([*(a1 + 32) _setMetadataInfo:*(*(*(a1 + 56) + 8) + 40) forURLString:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v2);
  }

  return 1;
}

- (void)linkURLString:(id)a3 withMetadataInfoForURLString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__WBSLPLinkMetadataSQLiteStore_linkURLString_withMetadataInfoForURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82836E0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __93__WBSLPLinkMetadataSQLiteStore_linkURLString_withMetadataInfoForURLString_completionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v2 = [*(a1 + 32) database];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__WBSLPLinkMetadataSQLiteStore_linkURLString_withMetadataInfoForURLString_completionHandler___block_invoke_2;
  v8[3] = &unk_1E82836B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = &v12;
  v8[4] = v3;
  v9 = v4;
  v10 = *(a1 + 48);
  [v2 tryToPerformTransactionInBlock:v8];

  (*(*(a1 + 56) + 16))(*(a1 + 56), v13[5], v5, v6, v7);
  _Block_object_dispose(&v12, 8);
}

uint64_t __93__WBSLPLinkMetadataSQLiteStore_linkURLString_withMetadataInfoForURLString_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchMetadataInfoForURLString:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [WBSLPLinkMetadataInfo alloc];
    v6 = *(a1 + 48);
    v7 = [*(*(*(a1 + 56) + 8) + 40) uuidString];
    v8 = [*(*(*(a1 + 56) + 8) + 40) lastFetchDate];
    v9 = -[WBSLPLinkMetadataInfo initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:](v5, "initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:", v6, v7, v8, [*(*(*(a1 + 56) + 8) + 40) lastFetchDidSucceed], objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "metadataHasImage"));
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (([*(a1 + 32) _setMetadataInfo:*(*(*(a1 + 56) + 8) + 40) forURLString:*(a1 + 48)] & 1) == 0)
    {
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;
    }
  }

  return 1;
}

- (void)getMetadataInfoForURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSLPLinkMetadataSQLiteStore_getMetadataInfoForURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283708;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __78__WBSLPLinkMetadataSQLiteStore_getMetadataInfoForURLString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _fetchMetadataInfoForURLString:*(a1 + 40)];
  (*(v1 + 16))(v1);
}

- (void)removeMetadataInfoForURLStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSLPLinkMetadataSQLiteStore_removeMetadataInfoForURLStrings_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __82__WBSLPLinkMetadataSQLiteStore_removeMetadataInfoForURLStrings_completionHandler___block_invoke(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v9 = 0;
  v2 = [*(a1 + 32) database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__WBSLPLinkMetadataSQLiteStore_removeMetadataInfoForURLStrings_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8283730;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v8;
  v5[4] = v3;
  v6 = v4;
  [v2 tryToPerformTransactionInBlock:v5];

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v8, 8);
}

uint64_t __82__WBSLPLinkMetadataSQLiteStore_removeMetadataInfoForURLStrings_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _deleteMetadataInfoForURLStrings:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

- (void)removeAllMetadataInfoWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithUUID_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithUUID_completionHandler___block_invoke(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v9 = [MEMORY[0x1E695DEC8] array];
  v2 = [*(a1 + 32) database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithUUID_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8283730;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v8;
  v5[4] = v3;
  v6 = v4;
  [v2 tryToPerformTransactionInBlock:v5];

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v8, 8);
}

uint64_t __80__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithUUID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchAllMetadataInfoWithUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _deleteMetadataInfoWithUUID:*(a1 + 40)];
  return 1;
}

- (void)removeAllMetadataInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __75__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  v2 = [*(a1 + 32) database];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E8283618;
  v3[4] = *(a1 + 32);
  v3[5] = v4;
  [v2 tryToPerformTransactionInBlock:v3];

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(v4, 8);
}

- (void)performLRUEvictionIfNecessaryWithMaximumNumberOfEntries:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__WBSLPLinkMetadataSQLiteStore_performLRUEvictionIfNecessaryWithMaximumNumberOfEntries_completionHandler___block_invoke;
  block[3] = &unk_1E82837A8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __106__WBSLPLinkMetadataSQLiteStore_performLRUEvictionIfNecessaryWithMaximumNumberOfEntries_completionHandler___block_invoke(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__0;
  v6[4] = __Block_byref_object_dispose__0;
  v7 = [MEMORY[0x1E695DEC8] array];
  v2 = [*(a1 + 32) database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__WBSLPLinkMetadataSQLiteStore_performLRUEvictionIfNecessaryWithMaximumNumberOfEntries_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8283780;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[5] = v6;
  v5[6] = v4;
  v5[4] = v3;
  [v2 tryToPerformTransactionInBlock:v5];

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(v6, 8);
}

uint64_t __106__WBSLPLinkMetadataSQLiteStore_performLRUEvictionIfNecessaryWithMaximumNumberOfEntries_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _uuidCount] > *(a1 + 48))
  {
    v2 = [*(a1 + 32) _deleteUUIDWithOldestTimestamp];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  return 1;
}

- (void)getAllMetadataInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WBSLPLinkMetadataSQLiteStore_getAllMetadataInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82837D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__WBSLPLinkMetadataSQLiteStore_getAllMetadataInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchAllMetadataInfo];
  (*(v1 + 16))(v1);
}

- (id)_fetchMetadataInfoForURLString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT * FROM page_url WHERE url = ?", &v11);

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = [[WBSLPLinkMetadataInfo alloc] initWithSQLiteRow:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 statement];
  [v8 invalidate];

  if (!v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v13 = v11;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "No metadata info found for URL: %{sensitive}@.", buf, 0xCu);
    }
  }

  return v7;
}

- (BOOL)_setMetadataInfo:(id)a3 forURLString:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = a4;
  v7 = [v6 uuidString];

  if (v7)
  {
    v8 = [(WBSSQLiteStore *)self database];
    v24 = [v6 uuidString];
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSinceReferenceDate];
    *buf = v10;
    v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},double>(v8, 0, @"REPLACE INTO uuid_info (uuid, timestamp) VALUES (?, ?)", &v24, buf);

    if (v11 != 101)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v6 uuidString];
        [(WBSLPLinkMetadataSQLiteStore *)v19 _setMetadataInfo:buf forURLString:v11, v18];
      }

      goto LABEL_10;
    }
  }

  v12 = [(WBSSQLiteStore *)self database];
  v23 = [v6 uuidString];
  v13 = [v6 lastFetchDate];
  [v13 timeIntervalSinceReferenceDate];
  *buf = v14;
  v22 = [v6 lastFetchDidSucceed];
  v21 = [v6 metadataHasImage];
  v15 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong},double,BOOL,BOOL>(v12, 0, @"REPLACE INTO page_url (url, uuid, last_fetch_date, last_fetch_did_succeed, metadata_has_image) VALUES (?, ?, ?, ?, ?)", &v25, &v23, buf, &v22, &v21);

  if (v15 != 101)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(WBSLPLinkMetadataSQLiteStore *)&v25 _setMetadataInfo:v15 forURLString:v17];
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (id)_deleteMetadataInfoForURLStrings:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSSQLiteStore *)self database];
  v6 = [v5 maximumParameterCount];

  if ([v4 count] > v6)
  {
    v7 = [v4 subarrayWithRange:{0, v6}];

    v8 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
    }

    v4 = v7;
  }

  v29 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(v4 joinedByString:{"count"), @", "}];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM page_url WHERE url IN (%@)", v29];
  v10 = [(WBSSQLiteStore *)self database];
  v11 = SafariShared::WBSSQLiteDatabaseExecuteWithParameterArray<NSString * {__strong}>(v10, v9, v4);

  if (v11 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
    }
  }

  v13 = [(WBSSQLiteStore *)self database];
  v30 = SafariShared::WBSSQLiteDatabaseFetch<>(v13, @"SELECT u.uuid FROM uuid_info u LEFT JOIN page_url p ON u.uuid = p.uuid WHERE p.url IS NULL");

  v14 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v30;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v31 + 1) + 8 * i) stringAtIndex:0];
        [v14 safari_addObjectUnlessNil:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v20 = [v15 statement];
  [v20 invalidate];

  if ([v14 count])
  {
    if ([v14 count] <= v6)
    {
      v21 = [v14 copy];
    }

    else
    {
      v21 = [v14 subarrayWithRange:{0, v6}];
      v22 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
      }
    }

    v24 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(v21 joinedByString:{"count"), @", "}];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM uuid_info WHERE uuid IN (%@)", v24];

    v25 = [(WBSSQLiteStore *)self database];
    v26 = SafariShared::WBSSQLiteDatabaseExecuteWithParameterArray<NSString * {__strong}>(v25, v23, v21);

    if (v26 != 101)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
      }
    }
  }

  else
  {
    v23 = v9;
    v21 = v14;
  }

  return v21;
}

- (void)_deleteMetadataInfoWithUUID:(id)a3
{
  v10 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v4, 0, @"DELETE FROM uuid_info WHERE uuid = ?", &v10);

  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoWithUUID:];
    }
  }

  v7 = [(WBSSQLiteStore *)self database];
  v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(v7, 0, @"DELETE FROM page_url WHERE uuid = ?", &v10);

  if (v8 != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoWithUUID:];
    }
  }
}

- (BOOL)_deleteAllMetadataInfo
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, @"DELETE FROM page_url");

  if (v4 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    v7 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    [WBSLPLinkMetadataSQLiteStore _deleteAllMetadataInfo];
    goto LABEL_9;
  }

  v5 = [(WBSSQLiteStore *)self database];
  v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, @"DELETE FROM uuid_info");

  if (v6 != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    v7 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v7)
    {
      return v7;
    }

    [WBSLPLinkMetadataSQLiteStore _deleteAllMetadataInfo];
LABEL_9:
    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (unint64_t)_uuidCount
{
  v2 = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(v2, @"SELECT COUNT(*) FROM uuid_info");

  v4 = [v3 nextObject];
  v5 = [v4 int64AtIndex:0];
  v6 = [v3 statement];
  [v6 invalidate];

  return v5;
}

- (id)_deleteUUIDWithOldestTimestamp
{
  v3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::WBSSQLiteDatabaseFetch<>(v3, @"SELECT uuid FROM uuid_info WHERE timestamp = (SELECT MIN(timestamp) FROM uuid_info)");

  v5 = [v4 nextObject];
  v6 = [v5 stringAtIndex:0];

  v7 = [v4 statement];
  [v7 invalidate];

  if (v6)
  {
    v8 = [(WBSLPLinkMetadataSQLiteStore *)self _fetchAllMetadataInfoWithUUID:v6];
    [(WBSLPLinkMetadataSQLiteStore *)self _deleteMetadataInfoWithUUID:v6];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteUUIDWithOldestTimestamp];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_fetchAllMetadataInfoWithUUID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(v4, @"SELECT * FROM page_url WHERE uuid = ?", &v21);

  v6 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [WBSLPLinkMetadataInfo alloc];
        v13 = [(WBSLPLinkMetadataInfo *)v12 initWithSQLiteRow:v11, v17];
        [v6 safari_addObjectUnlessNil:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v7 statement];
  [v14 invalidate];

  v15 = [v6 copy];

  return v15;
}

- (void)_setMetadataInfo:(int)a3 forURLString:(os_log_t)log .cold.1(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to save UUID: %{private}@, error code: %d", buf, 0x12u);
}

- (void)_setMetadataInfo:(os_log_t)log forURLString:.cold.2(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138740227;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to save URL: %{sensitive}@, error code: %d", &v4, 0x12u);
}

- (void)_deleteMetadataInfoForURLStrings:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_deleteMetadataInfoForURLStrings:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_deleteMetadataInfoWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_deleteAllMetadataInfo
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end