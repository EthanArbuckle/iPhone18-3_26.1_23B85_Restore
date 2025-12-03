@interface WBSLPLinkMetadataSQLiteStore
- (BOOL)_deleteAllMetadataInfo;
- (BOOL)_setMetadataInfo:(id)info forURLString:(id)string;
- (id)_deleteMetadataInfoForURLStrings:(id)strings;
- (id)_deleteUUIDWithOldestTimestamp;
- (id)_fetchAllMetadataInfo;
- (id)_fetchAllMetadataInfoWithUUID:(id)d;
- (id)_fetchMetadataInfoForURLString:(id)string;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToSchemaVersion:(int)version;
- (int)_migrateToSchemaVersion_2;
- (unint64_t)_uuidCount;
- (void)_deleteAllMetadataInfo;
- (void)_deleteMetadataInfoWithUUID:(id)d;
- (void)getAllMetadataInfoWithCompletionHandler:(id)handler;
- (void)getMetadataInfoForURLString:(id)string completionHandler:(id)handler;
- (void)linkAndUpdateMetadataInfoForURLString:(id)string lastFetchDate:(id)date lastFetchDidSucceed:(BOOL)succeed metadataHasImage:(BOOL)image completionHandler:(id)handler;
- (void)linkURLString:(id)string withMetadataInfoForURLString:(id)lString completionHandler:(id)handler;
- (void)performLRUEvictionIfNecessaryWithMaximumNumberOfEntries:(unint64_t)entries completionHandler:(id)handler;
- (void)removeAllMetadataInfoWithCompletionHandler:(id)handler;
- (void)removeAllMetadataInfoWithUUID:(id)d completionHandler:(id)handler;
- (void)removeMetadataInfoForURLStrings:(id)strings completionHandler:(id)handler;
@end

@implementation WBSLPLinkMetadataSQLiteStore

- (id)_fetchAllMetadataInfo
{
  v20 = *MEMORY[0x1E69E9840];
  database = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT * FROM page_url");

  array = [MEMORY[0x1E695DF70] array];
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
        [array safari_addObjectUnlessNil:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  statement = [v5 statement];
  [statement invalidate];

  v13 = [array copy];

  return v13;
}

- (int)_createFreshDatabaseSchema
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = [(WBSSQLiteStore *)self database];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__WBSLPLinkMetadataSQLiteStore__createFreshDatabaseSchema__block_invoke;
  v5[3] = &unk_1E8283618;
  v5[4] = self;
  v5[5] = &v6;
  [database tryToPerformTransactionInBlock:v5];

  LODWORD(database) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return database;
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

- (int)_migrateToSchemaVersion:(int)version
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  database = [(WBSSQLiteStore *)self database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSLPLinkMetadataSQLiteStore__migrateToSchemaVersion___block_invoke;
  v7[3] = &unk_1E8283640;
  versionCopy = version;
  v7[4] = self;
  v7[5] = &v9;
  [database tryToPerformTransactionInBlock:v7];

  LODWORD(database) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return database;
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
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"DROP INDEX IF EXISTS UUIDIndex");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      database2 = [(WBSSQLiteStore *)self database];
      lastErrorMessage = [database2 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to drop index in paged_url table: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  database3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database3, 0, @"ALTER TABLE page_url RENAME TO page_url_old");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      database4 = [(WBSSQLiteStore *)self database];
      lastErrorMessage2 = [database4 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage2;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to rename table page_url to page_url_old: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  database5 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database5, 0, @"CREATE TABLE page_url (url TEXT PRIMARY KEY NOT NULL,uuid TEXT,last_fetch_date REAL NOT NULL,last_fetch_did_succeed BOOLEAN NOT NULL DEFAULT 0,metadata_has_image BOOLEAN NOT NULL DEFAULT 0)");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      database6 = [(WBSSQLiteStore *)self database];
      lastErrorMessage3 = [database6 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage3;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to create page_url table during migration: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  database7 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database7, 0, @"CREATE INDEX UUIDIndex ON page_url (uuid)");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      database8 = [(WBSSQLiteStore *)self database];
      lastErrorMessage4 = [database8 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage4;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to create UUIDIndex on page_url table during migration: %{public}@ (%d)", &v26, 0x12u);
    }

    goto LABEL_20;
  }

  database9 = [(WBSSQLiteStore *)self database];
  v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database9, 0, @"INSERT INTO page_url (url, uuid, last_fetch_date, last_fetch_did_succeed, metadata_has_image)SELECT p.url, p.uuid, u.timestamp, 1, 1 FROM page_url_old p JOIN uuid_info u ON p.uuid = u.uuid");

  if (v9 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      database10 = [(WBSSQLiteStore *)self database];
      lastErrorMessage5 = [database10 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage5;
      v28 = 1024;
      v29 = v9;
      _os_log_error_impl(&dword_1C6968000, v10, OS_LOG_TYPE_ERROR, "Failed to move page_url_old data to page_url table: %{public}@ (%d)", &v26, 0x12u);
    }
  }

  database11 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database11, 0, @"DROP TABLE page_url_old");

  if (v4 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      database12 = [(WBSSQLiteStore *)self database];
      lastErrorMessage6 = [database12 lastErrorMessage];
      v26 = 138543618;
      v27 = lastErrorMessage6;
      v28 = 1024;
      v29 = v4;
      _os_log_error_impl(&dword_1C6968000, v12, OS_LOG_TYPE_ERROR, "Failed to drop page_url_old table: %{public}@ (%d)", &v26, 0x12u);
    }

LABEL_20:
  }

  return v4;
}

- (void)linkAndUpdateMetadataInfoForURLString:(id)string lastFetchDate:(id)date lastFetchDidSucceed:(BOOL)succeed metadataHasImage:(BOOL)image completionHandler:(id)handler
{
  stringCopy = string;
  dateCopy = date;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __139__WBSLPLinkMetadataSQLiteStore_linkAndUpdateMetadataInfoForURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_completionHandler___block_invoke;
  block[3] = &unk_1E8283690;
  block[4] = self;
  v20 = stringCopy;
  succeedCopy = succeed;
  imageCopy = image;
  v21 = dateCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = dateCopy;
  v18 = stringCopy;
  dispatch_async(databaseQueue, block);
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

- (void)linkURLString:(id)string withMetadataInfoForURLString:(id)lString completionHandler:(id)handler
{
  stringCopy = string;
  lStringCopy = lString;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__WBSLPLinkMetadataSQLiteStore_linkURLString_withMetadataInfoForURLString_completionHandler___block_invoke;
  v15[3] = &unk_1E82836E0;
  v15[4] = self;
  v16 = lStringCopy;
  v17 = stringCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = stringCopy;
  v14 = lStringCopy;
  dispatch_async(databaseQueue, v15);
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

- (void)getMetadataInfoForURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSLPLinkMetadataSQLiteStore_getMetadataInfoForURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283708;
  v12 = stringCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = stringCopy;
  v10 = handlerCopy;
  dispatch_async(databaseQueue, block);
}

void __78__WBSLPLinkMetadataSQLiteStore_getMetadataInfoForURLString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _fetchMetadataInfoForURLString:*(a1 + 40)];
  (*(v1 + 16))(v1);
}

- (void)removeMetadataInfoForURLStrings:(id)strings completionHandler:(id)handler
{
  stringsCopy = strings;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSLPLinkMetadataSQLiteStore_removeMetadataInfoForURLStrings_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = stringsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = stringsCopy;
  dispatch_async(databaseQueue, block);
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

- (void)removeAllMetadataInfoWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithUUID_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(databaseQueue, block);
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

- (void)removeAllMetadataInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSLPLinkMetadataSQLiteStore_removeAllMetadataInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
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

- (void)performLRUEvictionIfNecessaryWithMaximumNumberOfEntries:(unint64_t)entries completionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__WBSLPLinkMetadataSQLiteStore_performLRUEvictionIfNecessaryWithMaximumNumberOfEntries_completionHandler___block_invoke;
  block[3] = &unk_1E82837A8;
  v10 = handlerCopy;
  entriesCopy = entries;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(databaseQueue, block);
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

- (void)getAllMetadataInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = [(WBSSQLiteStore *)self databaseQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WBSLPLinkMetadataSQLiteStore_getAllMetadataInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82837D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

void __72__WBSLPLinkMetadataSQLiteStore_getAllMetadataInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchAllMetadataInfo];
  (*(v1 + 16))(v1);
}

- (id)_fetchMetadataInfoForURLString:(id)string
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  database = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(database, @"SELECT * FROM page_url WHERE url = ?", &stringCopy);

  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v7 = [[WBSLPLinkMetadataInfo alloc] initWithSQLiteRow:nextObject];
  }

  else
  {
    v7 = 0;
  }

  statement = [v5 statement];
  [statement invalidate];

  if (!v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v13 = stringCopy;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "No metadata info found for URL: %{sensitive}@.", buf, 0xCu);
    }
  }

  return v7;
}

- (BOOL)_setMetadataInfo:(id)info forURLString:(id)string
{
  v27 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  stringCopy = string;
  uuidString = [infoCopy uuidString];

  if (uuidString)
  {
    database = [(WBSSQLiteStore *)self database];
    uuidString2 = [infoCopy uuidString];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    *buf = v10;
    v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong},double>(database, 0, @"REPLACE INTO uuid_info (uuid, timestamp) VALUES (?, ?)", &uuidString2, buf);

    if (v11 != 101)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        uuidString3 = [infoCopy uuidString];
        [(WBSLPLinkMetadataSQLiteStore *)uuidString3 _setMetadataInfo:buf forURLString:v11, v18];
      }

      goto LABEL_10;
    }
  }

  database2 = [(WBSSQLiteStore *)self database];
  uuidString4 = [infoCopy uuidString];
  lastFetchDate = [infoCopy lastFetchDate];
  [lastFetchDate timeIntervalSinceReferenceDate];
  *buf = v14;
  lastFetchDidSucceed = [infoCopy lastFetchDidSucceed];
  metadataHasImage = [infoCopy metadataHasImage];
  v15 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong},double,BOOL,BOOL>(database2, 0, @"REPLACE INTO page_url (url, uuid, last_fetch_date, last_fetch_did_succeed, metadata_has_image) VALUES (?, ?, ?, ?, ?)", &stringCopy, &uuidString4, buf, &lastFetchDidSucceed, &metadataHasImage);

  if (v15 != 101)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(WBSLPLinkMetadataSQLiteStore *)&stringCopy _setMetadataInfo:v15 forURLString:v17];
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (id)_deleteMetadataInfoForURLStrings:(id)strings
{
  v36 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  database = [(WBSSQLiteStore *)self database];
  maximumParameterCount = [database maximumParameterCount];

  if ([stringsCopy count] > maximumParameterCount)
  {
    v7 = [stringsCopy subarrayWithRange:{0, maximumParameterCount}];

    v8 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
    }

    stringsCopy = v7;
  }

  v29 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(stringsCopy joinedByString:{"count"), @", "}];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM page_url WHERE url IN (%@)", v29];
  database2 = [(WBSSQLiteStore *)self database];
  v11 = SafariShared::WBSSQLiteDatabaseExecuteWithParameterArray<NSString * {__strong}>(database2, v9, stringsCopy);

  if (v11 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
    }
  }

  database3 = [(WBSSQLiteStore *)self database];
  v30 = SafariShared::WBSSQLiteDatabaseFetch<>(database3, @"SELECT u.uuid FROM uuid_info u LEFT JOIN page_url p ON u.uuid = p.uuid WHERE p.url IS NULL");

  array = [MEMORY[0x1E695DF70] array];
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
        [array safari_addObjectUnlessNil:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  statement = [v15 statement];
  [statement invalidate];

  if ([array count])
  {
    if ([array count] <= maximumParameterCount)
    {
      v21 = [array copy];
    }

    else
    {
      v21 = [array subarrayWithRange:{0, maximumParameterCount}];
      v22 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoForURLStrings:];
      }
    }

    v24 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(v21 joinedByString:{"count"), @", "}];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM uuid_info WHERE uuid IN (%@)", v24];

    database4 = [(WBSSQLiteStore *)self database];
    v26 = SafariShared::WBSSQLiteDatabaseExecuteWithParameterArray<NSString * {__strong}>(database4, v23, v21);

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
    v21 = array;
  }

  return v21;
}

- (void)_deleteMetadataInfoWithUUID:(id)d
{
  dCopy = d;
  database = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(database, 0, @"DELETE FROM uuid_info WHERE uuid = ?", &dCopy);

  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSLPLinkMetadataSQLiteStore _deleteMetadataInfoWithUUID:];
    }
  }

  database2 = [(WBSSQLiteStore *)self database];
  v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(database2, 0, @"DELETE FROM page_url WHERE uuid = ?", &dCopy);

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
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"DELETE FROM page_url");

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

  database2 = [(WBSSQLiteStore *)self database];
  v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database2, 0, @"DELETE FROM uuid_info");

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
  database = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT COUNT(*) FROM uuid_info");

  nextObject = [v3 nextObject];
  v5 = [nextObject int64AtIndex:0];
  statement = [v3 statement];
  [statement invalidate];

  return v5;
}

- (id)_deleteUUIDWithOldestTimestamp
{
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT uuid FROM uuid_info WHERE timestamp = (SELECT MIN(timestamp) FROM uuid_info)");

  nextObject = [v4 nextObject];
  v6 = [nextObject stringAtIndex:0];

  statement = [v4 statement];
  [statement invalidate];

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

- (id)_fetchAllMetadataInfoWithUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  database = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(database, @"SELECT * FROM page_url WHERE uuid = ?", &dCopy);

  array = [MEMORY[0x1E695DF70] array];
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
        [array safari_addObjectUnlessNil:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  statement = [v7 statement];
  [statement invalidate];

  v15 = [array copy];

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