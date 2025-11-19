@interface WBSBlockedHighlightsBannerSQLiteStore
+ (NSURL)defaultDatabaseURL;
- (WBSBlockedHighlightsBannerSQLiteStore)initWithDatabaseURL:(id)a3;
- (int64_t)_schemaVersion;
- (void)_closeDatabaseOnDatabaseQueue;
- (void)_configureDatabase;
- (void)_createDatabaseSchemaIfNeeded;
- (void)_openDatabase;
- (void)_openDatabaseIfNeeded;
- (void)clearAllBannedHighlightsWithCompletionHandler:(id)a3;
- (void)clearBlockedBannerHighlightsAfterDate:(id)a3 beforeDate:(id)a4 withCompletionHandler:(id)a5;
- (void)closeDatabase;
- (void)fetchAllBlockedHighlightsWithCompletionHandler:(id)a3;
- (void)removeBlockedBannerhighlightWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)storeBlockedHighlightWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)verifyIfHighlightIsBlockedWithIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSBlockedHighlightsBannerSQLiteStore

+ (NSURL)defaultDatabaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"BlockedBannerHighlights.db" isDirectory:0];

  return v4;
}

- (WBSBlockedHighlightsBannerSQLiteStore)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSBlockedHighlightsBannerSQLiteStore;
  v5 = [(WBSBlockedHighlightsBannerSQLiteStore *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = +[WBSBlockedHighlightsBannerSQLiteStore defaultDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v8 = dispatch_get_global_queue(17, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.SafariShared.WBSBlockedBannerHighlightsSQLiteStore", 0, v8);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v11 = v5;
  }

  return v5;
}

- (void)fetchAllBlockedHighlightsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSBlockedHighlightsBannerSQLiteStore_fetchAllBlockedHighlightsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __88__WBSBlockedHighlightsBannerSQLiteStore_fetchAllBlockedHighlightsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v10 = SafariShared::WBSSQLiteDatabaseFetch<>(v2, @"SELECT highlightIdentifier FROM BlockedBannerHighlights");
    v3 = [MEMORY[0x1E695DF70] array];
    while (1)
    {
      v4 = [v10 nextObject];
      v5 = v4;
      if (!v4)
      {
        break;
      }

      v6 = [v4 stringAtIndex:0];
      [v3 addObject:v6];
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

- (void)storeBlockedHighlightWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSBlockedHighlightsBannerSQLiteStore_storeBlockedHighlightWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

uint64_t __95__WBSBlockedHighlightsBannerSQLiteStore_storeBlockedHighlightWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *v10 = v3;
    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,double>(v2, 0, @"INSERT OR REPLACE INTO BlockedBannerHighlights (highlightIdentifier, blockedTime) VALUES (?, ?)", (a1 + 40), v10);
    if (v4 != 101)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXInterstellar();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSBlockedHighlightsBannerSQLiteStore storeBlockedHighlightWithIdentifier:completionHandler:]_block_invoke"];
        v9 = [v8 safari_privacyPreservingDescription];
        *v10 = 138543618;
        *&v10[4] = v9;
        v11 = 1024;
        v12 = v4;
        _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to insert into BlockedBannerHighlights table: %{public}@ (%d)", v10, 0x12u);
      }

      (*(*(a1 + 48) + 16))();
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

- (void)verifyIfHighlightIsBlockedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__WBSBlockedHighlightsBannerSQLiteStore_verifyIfHighlightIsBlockedWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __100__WBSBlockedHighlightsBannerSQLiteStore_verifyIfHighlightIsBlockedWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(v2, @"SELECT highlightIdentifier FROM BlockedBannerHighlights WHERE highlightIdentifier = ?", (a1 + 40));
    [v5 nextObject];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

- (void)clearAllBannedHighlightsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__WBSBlockedHighlightsBannerSQLiteStore_clearAllBannedHighlightsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __87__WBSBlockedHighlightsBannerSQLiteStore_clearAllBannedHighlightsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v2, 0, @"DELETE FROM BlockedBannerHighlights");
    if (v3 != 101)
    {
      v4 = v3;
      v5 = WBS_LOG_CHANNEL_PREFIXInterstellar();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSBlockedHighlightsBannerSQLiteStore clearAllBannedHighlightsWithCompletionHandler:]_block_invoke"];
        v9 = [v8 safari_privacyPreservingDescription];
        v10 = 138543618;
        v11 = v9;
        v12 = 1024;
        v13 = v4;
        _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Unable to clear rows from Blocked Banner Highlights: %{public}@ (%d)", &v10, 0x12u);
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

- (void)clearBlockedBannerHighlightsAfterDate:(id)a3 beforeDate:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__WBSBlockedHighlightsBannerSQLiteStore_clearBlockedBannerHighlightsAfterDate_beforeDate_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

uint64_t __112__WBSBlockedHighlightsBannerSQLiteStore_clearBlockedBannerHighlightsAfterDate_beforeDate_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    *buf = v3;
    [*(a1 + 48) timeIntervalSinceReferenceDate];
    v11 = v4;
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double>(v2, 0, @"DELETE FROM BlockedBannerHighlights WHERE blockedTime >= ? AND blockedTime <= ?", buf, &v11);
    if (v5 != 101)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXInterstellar();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSBlockedHighlightsBannerSQLiteStore clearBlockedBannerHighlightsAfterDate:beforeDate:withCompletionHandler:]_block_invoke"];
        v10 = [v9 safari_privacyPreservingDescription];
        *buf = 138543618;
        *&buf[4] = v10;
        v13 = 1024;
        v14 = v5;
        _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Unable to clear rows from Blocked Banner Highlights: %{public}@ (%d)", buf, 0x12u);
      }
    }

    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (void)removeBlockedBannerhighlightWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__WBSBlockedHighlightsBannerSQLiteStore_removeBlockedBannerhighlightWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

uint64_t __102__WBSBlockedHighlightsBannerSQLiteStore_removeBlockedBannerhighlightWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(v2, 0, @"DELETE FROM BlockedBannerHighlights WHERE highlightIdentifier = ?", (a1 + 40));
    if (v3 != 101)
    {
      v4 = v3;
      v5 = WBS_LOG_CHANNEL_PREFIXInterstellar();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSBlockedHighlightsBannerSQLiteStore removeBlockedBannerhighlightWithIdentifier:completionHandler:]_block_invoke"];
        v9 = [v8 safari_privacyPreservingDescription];
        v10 = 138543618;
        v11 = v9;
        v12 = 1024;
        v13 = v4;
        _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Unable to clear row from Blocked Banner Highlights: %{public}@ (%d)", &v10, 0x12u);
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

- (void)_openDatabaseIfNeeded
{
  if (!self->_database)
  {
    [(WBSBlockedHighlightsBannerSQLiteStore *)self _openDatabase];
  }
}

- (void)_openDatabase
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(v2, v3, v4, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Failed to open Blocked Banner Highlights SQLite store at %{private}@: %{public}@", v5, 0x16u);
}

- (void)_configureDatabase
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to acquire exclusive access to Blocked Banner Highlights SQLite store at %{private}@", buf, 0xCu);
}

- (void)_createDatabaseSchemaIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(WBSBlockedHighlightsBannerSQLiteStore *)self _schemaVersion];
  if (v3 <= 1)
  {
    if (v3 && SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE BlockedBannerHighlights") != 101)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXInterstellar();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WBSBlockedHighlightsBannerSQLiteStore *)v10 _createDatabaseSchemaIfNeeded];
      }
    }

    else
    {
      v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS BlockedBannerHighlights (highlightIdentifier TEXT PRIMARY KEY,blockedTime REAL NOT NULL)");
      if (v4 == 101)
      {
        database = self->_database;
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", 2];
        v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

        if (v7 == 101)
        {
          return;
        }

        v8 = WBS_LOG_CHANNEL_PREFIXInterstellar();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSBlockedHighlightsBannerSQLiteStore _createDatabaseSchemaIfNeeded]"];
          v14 = [v13 safari_privacyPreservingDescription];
          *buf = 138543618;
          v16 = v14;
          v17 = 1024;
          v18 = v7;
          _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set Blocked Banner Highlights database schema version: %{public}@ (%d)", buf, 0x12u);
        }
      }

      else
      {
        v9 = v4;
        v8 = WBS_LOG_CHANNEL_PREFIXInterstellar();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSBlockedHighlightsBannerSQLiteStore _createDatabaseSchemaIfNeeded]"];
          v12 = [v11 safari_privacyPreservingDescription];
          *buf = 138543618;
          v16 = v12;
          v17 = 1024;
          v18 = v9;
          _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to create BlockedBannerHighlights table: %{public}@ (%d)", buf, 0x12u);
        }
      }
    }
  }
}

- (int64_t)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v3 = [v2 nextObject];
  v4 = [v3 intAtIndex:0];

  v5 = [v2 statement];
  [v5 invalidate];

  return v4;
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSBlockedHighlightsBannerSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)_closeDatabaseOnDatabaseQueue
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

@end