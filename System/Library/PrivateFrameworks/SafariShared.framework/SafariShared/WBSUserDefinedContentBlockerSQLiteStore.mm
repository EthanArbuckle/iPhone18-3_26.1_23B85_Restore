@interface WBSUserDefinedContentBlockerSQLiteStore
+ (id)defaultDatabaseURL;
+ (id)sharedStore;
- (BOOL)_deleteFromAllTables;
- (BOOL)_migrateToSchemaVersion:(int)a3;
- (WBSUserDefinedContentBlockerSQLiteStore)initWithDatabaseURL:(id)a3;
- (int)_createFreshDatabaseSchema;
- (int)_insertContentBlockerWithType:(int64_t)a3 host:(id)a4 excludeGlobal:(BOOL)a5;
- (int)_migrateToCurrentSchemaVersionIfNecessary;
- (int)_migrateToSchemaVersion_2;
- (int)_setDatabaseSchemaVersion:(int)a3;
- (int64_t)_insertAction:(id)a3 forContentBlockerID:(int64_t)a4;
- (void)_closeDatabase;
- (void)_createFreshDatabaseSchema;
- (void)_deleteActions:(id)a3;
- (void)_deleteActionsForContentBlockerID:(int64_t)a3;
- (void)_deleteFromAllTables;
- (void)_getActionsForContentBlockerID:(int64_t)a3 isGlobal:(BOOL)a4 completionHandler:(id)a5;
- (void)_getAllContentBlockerActionsWithType:(id)a3 excludeHost:(id)a4 isGlobal:(BOOL)a5 completion:(id)a6;
- (void)_getAllContentBlockerHostsWithCompletionHandler:(id)a3;
- (void)_getContentBlockerWithType:(int64_t)a3 host:(id)a4 completionHandler:(id)a5;
- (void)_getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)a3;
- (void)_insertActions:(id)a3 forContentBlockerID:(int64_t)a4;
- (void)_migrateToSchemaVersion_2;
- (void)_openDatabase;
- (void)_openDatabaseIfNecessary;
- (void)_updateExtraAttributes:(id)a3 forContentBlockerID:(int64_t)a4;
- (void)closeDatabase;
- (void)createPerSiteContentBlockerForHost:(id)a3;
- (void)dealloc;
- (void)deleteActions:(id)a3;
- (void)deleteActionsForContentBlockerID:(int64_t)a3;
- (void)getAllContentBlockerActionsWithType:(id)a3 excludeHost:(id)a4 isGlobal:(BOOL)a5 completion:(id)a6;
- (void)getAllContentBlockerHostsWithCompletionHandler:(id)a3;
- (void)getGlobalContentBlockerWithCompletionHandler:(id)a3;
- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)a3;
- (void)getPerSiteContentBlockerForHost:(id)a3 createIfNeeded:(BOOL)a4 completionHandler:(id)a5;
- (void)insertActions:(id)a3 forContentBlockerID:(int64_t)a4;
- (void)resetDatabaseWithCompletionHandler:(id)a3;
- (void)updateContentBlockerActionExtraAttributes:(id)a3;
@end

@implementation WBSUserDefinedContentBlockerSQLiteStore

- (void)_openDatabaseIfNecessary
{
  if (![(WBSUserDefinedContentBlockerSQLiteStore *)self _isDatabaseOpen])
  {

    [(WBSUserDefinedContentBlockerSQLiteStore *)self _openDatabase];
  }
}

- (void)_openDatabase
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109634;
  v4[1] = a2;
  v5 = 1024;
  v6 = 2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Uder Defined Content Blocker SQLite schema version (%d) does not match our supported schema version (%d) in store at %@", v4, 0x18u);
}

void __54__WBSUserDefinedContentBlockerSQLiteStore_sharedStore__block_invoke(uint64_t a1)
{
  v2 = [WBSUserDefinedContentBlockerSQLiteStore alloc];
  v5 = [*(a1 + 32) defaultDatabaseURL];
  v3 = [(WBSUserDefinedContentBlockerSQLiteStore *)v2 initWithDatabaseURL:?];
  v4 = +[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::sharedStore;
  +[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::sharedStore = v3;
}

+ (id)sharedStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSUserDefinedContentBlockerSQLiteStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::onceToken[0] != -1)
  {
    dispatch_once(+[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::onceToken, block);
  }

  v2 = +[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::sharedStore;

  return v2;
}

+ (id)defaultDatabaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"UserDefinedContentBlockers.db" isDirectory:0];

  return v4;
}

- (int)_migrateToCurrentSchemaVersionIfNecessary
{
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v4 = [v3 nextObject];
  v5 = [v4 intAtIndex:0];

  v6 = [v3 statement];
  [v6 invalidate];

  if (v5 <= 1)
  {
    if (v5)
    {
      v7 = (v5 + 1);
      while (v7 != 3)
      {
        v8 = [(WBSUserDefinedContentBlockerSQLiteStore *)self _migrateToSchemaVersion:v7];
        v7 = (v7 + 1);
        if (!v8)
        {
          v5 = v7 - 2;
          goto LABEL_11;
        }
      }

      v5 = 2;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __84__WBSUserDefinedContentBlockerSQLiteStore__migrateToCurrentSchemaVersionIfNecessary__block_invoke;
      v10[3] = &unk_1E7FC7280;
      v10[4] = self;
      if ([(WBSUserDefinedContentBlockerSQLiteStore *)self _tryToPerformTransactionInBlock:v10])
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }
    }
  }

LABEL_11:

  return v5;
}

- (int)_createFreshDatabaseSchema
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE content_blocker (id INTEGER PRIMARY KEY AUTOINCREMENT,host TEXT NOT NULL,type NUMERIC NOT NULL,version NUMERIC NOT NULL,exclude_global NUMERIC NULL,binary_cache BLOB NULL,UNIQUE(host, type))");
  if (v3 != 101)
  {
    v5 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _createFreshDatabaseSchema];
    }

    goto LABEL_10;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE cross_site_content (id INTEGER PRIMARY KEY AUTOINCREMENT,source TEXT NOT NULL,title TEXT NULL,extra_attributes BLOB NULL,version NUMERIC NOT NULL)");
  if (v4 != 101)
  {
    v5 = v4;
    v6 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _createFreshDatabaseSchema];
    }

    goto LABEL_10;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE action (id INTEGER PRIMARY KEY AUTOINCREMENT,content_blocker_id INTEGER NOT NULL,selector TEXT NOT NULL,type TEXT NOT NULL,version NUMERIC NOT NULL,cross_site_content_id INTEGER NULL,extra_attributes BLOB NULL,FOREIGN KEY (content_blocker_id) REFERENCES content_blocker(id) ON DELETE CASCADE,FOREIGN KEY (cross_site_content_id) REFERENCES cross_site_content(id) ON DELETE SET NULL)");
  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _createFreshDatabaseSchema];
    }

LABEL_10:
  }

  return v5;
}

- (WBSUserDefinedContentBlockerSQLiteStore)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WBSUserDefinedContentBlockerSQLiteStore;
  v5 = [(WBSUserDefinedContentBlockerSQLiteStore *)&v17 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.SafariShared.WBSUserDefinedContentBlockerSQLiteStore", v8);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v11 = v5->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WBSUserDefinedContentBlockerSQLiteStore_initWithDatabaseURL___block_invoke;
    block[3] = &unk_1E7FB6F80;
    v12 = v5;
    v16 = v12;
    dispatch_async(v11, block);
    v13 = v12;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSUserDefinedContentBlockerSQLiteStore;
  [(WBSUserDefinedContentBlockerSQLiteStore *)&v2 dealloc];
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSUserDefinedContentBlockerSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)resetDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSUserDefinedContentBlockerSQLiteStore_resetDatabaseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __78__WBSUserDefinedContentBlockerSQLiteStore_resetDatabaseWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteFromAllTables];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)createPerSiteContentBlockerForHost:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSUserDefinedContentBlockerSQLiteStore_createPerSiteContentBlockerForHost___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)getPerSiteContentBlockerForHost:(id)a3 createIfNeeded:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  databaseQueue = self->_databaseQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__WBSUserDefinedContentBlockerSQLiteStore_getPerSiteContentBlockerForHost_createIfNeeded_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC7058;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(databaseQueue, v13);
}

void __108__WBSUserDefinedContentBlockerSQLiteStore_getPerSiteContentBlockerForHost_createIfNeeded_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__WBSUserDefinedContentBlockerSQLiteStore_getPerSiteContentBlockerForHost_createIfNeeded_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7FCB348;
  v4 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 _getContentBlockerWithType:0 host:v3 completionHandler:v7];
}

void __108__WBSUserDefinedContentBlockerSQLiteStore_getPerSiteContentBlockerForHost_createIfNeeded_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _insertContentBlockerWithType:0 host:*(a1 + 40) excludeGlobal:0];
    [*(a1 + 32) _getContentBlockerWithType:0 host:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (void)getGlobalContentBlockerWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSUserDefinedContentBlockerSQLiteStore_getGlobalContentBlockerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)getAllContentBlockerHostsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__WBSUserDefinedContentBlockerSQLiteStore_getAllContentBlockerHostsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__WBSUserDefinedContentBlockerSQLiteStore_getNumberOfContentBlockersThatContainActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (void)getAllContentBlockerActionsWithType:(id)a3 excludeHost:(id)a4 isGlobal:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WBSUserDefinedContentBlockerSQLiteStore_getAllContentBlockerActionsWithType_excludeHost_isGlobal_completion___block_invoke;
  block[3] = &unk_1E7FC6938;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(databaseQueue, block);
}

- (void)updateContentBlockerActionExtraAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 databaseID];
  if (v5)
  {
    v7 = [v4 extraAttributesData];
    if ([v7 length])
    {
      databaseQueue = self->_databaseQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__WBSUserDefinedContentBlockerSQLiteStore_updateContentBlockerActionExtraAttributes___block_invoke;
      block[3] = &unk_1E7FB7C70;
      block[4] = self;
      v11 = v7;
      v12 = v5;
      dispatch_async(databaseQueue, block);
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSUserDefinedContentBlockerSQLiteStore updateContentBlockerActionExtraAttributes:];
      }
    }
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerSQLiteStore updateContentBlockerActionExtraAttributes:];
    }
  }
}

- (void)insertActions:(id)a3 forContentBlockerID:(int64_t)a4
{
  v6 = a3;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSUserDefinedContentBlockerSQLiteStore_insertActions_forContentBlockerID___block_invoke;
  block[3] = &unk_1E7FB7C70;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(databaseQueue, block);
}

- (void)deleteActionsForContentBlockerID:(int64_t)a3
{
  databaseQueue = self->_databaseQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__WBSUserDefinedContentBlockerSQLiteStore_deleteActionsForContentBlockerID___block_invoke;
  v4[3] = &unk_1E7FB7610;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(databaseQueue, v4);
}

- (void)deleteActions:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WBSUserDefinedContentBlockerSQLiteStore_deleteActions___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

- (BOOL)_migrateToSchemaVersion:(int)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_migrateToSchemaVersion_%d", *&a3];
  v6 = NSSelectorFromString(v5);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__WBSUserDefinedContentBlockerSQLiteStore__migrateToSchemaVersion___block_invoke;
  v8[3] = &unk_1E7FC9620;
  v8[4] = self;
  v8[5] = v6;
  v9 = a3;
  return [(WBSUserDefinedContentBlockerSQLiteStore *)self _tryToPerformTransactionInBlock:v8];
}

BOOL __67__WBSUserDefinedContentBlockerSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) methodSignatureForSelector:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v2];
  [v3 setSelector:*(a1 + 40)];
  [v3 invokeWithTarget:*(a1 + 32)];
  v6 = 0;
  [v3 getReturnValue:&v6];
  v4 = v6 == 101 && [*(a1 + 32) _setDatabaseSchemaVersion:*(a1 + 48)] != 0;

  return v4;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE action ADD COLUMN extra_attributes BLOB NULL");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _migrateToSchemaVersion_2];
    }
  }

  return v3;
}

- (int)_setDatabaseSchemaVersion:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&a3];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      v12 = a3;
      v13 = 2114;
      v14 = v10;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set the User Defined Content Blocker store database schema version to %d: %{public}@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (void)_closeDatabase
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)_deleteFromAllTables
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM action");
  v4 = v3 == 101;
  if (v3 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _deleteFromAllTables];
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM content_blocker WHERE type != ?"];
  [v6 bindInt:1 atParameterIndex:1];
  v7 = [v6 execute];
  [v6 reset];
  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _deleteFromAllTables];
    }

    v4 = 0;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM cross_site_content") != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSUserDefinedContentBlockerSQLiteStore _deleteFromAllTables];
    }

    v4 = 0;
  }

  return v4;
}

- (int)_insertContentBlockerWithType:(int64_t)a3 host:(id)a4 excludeGlobal:(BOOL)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"INSERT INTO content_blocker (type, host, exclude_global, version)VALUES (?, ?, ?, ?)"}];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,WBSUserDefinedContentBlockerType &,NSString * {__strong}&,BOOL &,int const&>(v7, &v16, &v15, &v14, &WBSUserDefinedContentBlockerSupportedVersion);
  v8 = [v7 execute];
  [v7 reset];
  if (v8 != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = v15;
      v12 = v16;
      v13 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 134218755;
      v18 = v12;
      v19 = 2113;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 1024;
      v24 = v8;
      _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to create content blocker(type %lu) for %{private}@: %{public}@ (%d)", buf, 0x26u);
    }
  }

  return v8;
}

- (void)_getContentBlockerWithType:(int64_t)a3 host:(id)a4 completionHandler:(id)a5
{
  v20 = a4;
  v8 = a5;
  database = self->_database;
  v19 = a3;
  v10 = SafariShared::WBSSQLiteDatabaseFetch<int,NSString * {__strong}&>(database, @"SELECT id, exclude_global FROM content_blocker WHERE type = ? AND host = ?", &v19, &v20);
  v11 = [v10 nextObject];
  if (v11)
  {
    v12 = objc_alloc_init(WBSUserDefinedContentBlocker);
    -[WBSUserDefinedContentBlocker setDatabaseID:](v12, "setDatabaseID:", [v11 intAtIndex:0]);
    [(WBSUserDefinedContentBlocker *)v12 setType:a3];
    [(WBSUserDefinedContentBlocker *)v12 setHost:v20];
    -[WBSUserDefinedContentBlocker setExcludeGlobalContentBlockers:](v12, "setExcludeGlobalContentBlockers:", [v11 BOOLAtIndex:1]);
    v13 = [(WBSUserDefinedContentBlocker *)v12 databaseID];
    v14 = a3 == 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__WBSUserDefinedContentBlockerSQLiteStore__getContentBlockerWithType_host_completionHandler___block_invoke;
    v16[3] = &unk_1E7FCB370;
    v15 = v12;
    v17 = v15;
    v18 = v8;
    [(WBSUserDefinedContentBlockerSQLiteStore *)self _getActionsForContentBlockerID:v13 isGlobal:v14 completionHandler:v16];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

void __93__WBSUserDefinedContentBlockerSQLiteStore__getContentBlockerWithType_host_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setActions:?];
  (*(*(a1 + 40) + 16))();
}

- (void)_getAllContentBlockerHostsWithCompletionHandler:(id)a3
{
  v4 = a3;
  database = self->_database;
  v12 = 0;
  v6 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT host FROM content_blocker WHERE type = ?", &v12);
  v7 = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v8 = [v6 nextObject];
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = [v8 stringAtIndex:0];
    [v7 addObject:v10];
  }

  v11 = [v7 copy];
  v4[2](v4, v11);
}

- (void)_getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  database = self->_database;
  v9 = 0;
  v6 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT COUNT(DISTINCT content_blocker_id) FROM action", &v9);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 nextObject];
    v4[2](v4, [v8 intAtIndex:0]);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)_getAllContentBlockerActionsWithType:(id)a3 excludeHost:(id)a4 isGlobal:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v22 = a3;
  v21 = a4;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(self->_database, @"SELECT action.id, action.selector, action.type, action.extra_attributes FROM action, content_blocker WHERE action.type = ? AND content_blocker.id = action.content_blocker_id AND content_blocker.host != ?", &v22, &v21);
  while (1)
  {
    v13 = [v12 nextObject];
    if (!v13)
    {
      break;
    }

    v14 = [WBSUserDefinedContentBlockerAction alloc];
    v15 = [v13 intAtIndex:0];
    v16 = [v13 stringAtIndex:1];
    v17 = [v13 stringAtIndex:2];
    v18 = [v13 dataAtIndex:3];
    v19 = [(WBSUserDefinedContentBlockerAction *)v14 initWithDatabaseID:v15 selector:v16 type:v17 extraAttributesData:v18 isGlobal:v7];

    [v11 addObject:v19];
  }

  v20 = [v11 copy];
  v10[2](v10, v20);
}

- (void)_insertActions:(id)a3 forContentBlockerID:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(WBSUserDefinedContentBlockerSQLiteStore *)self _insertAction:*(*(&v10 + 1) + 8 * v9++) forContentBlockerID:a4, v10];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_insertAction:(id)a3 forContentBlockerID:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 databaseID];
  if (v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      -[WBSUserDefinedContentBlockerSQLiteStore _insertAction:forContentBlockerID:].cold.1(buf, [v6 databaseID], v9);
    }

    v7 = 0;
  }

  else if (a4)
  {
    database = self->_database;
    v23 = [v6 selector];
    v22 = [v6 typeString];
    *buf = a4;
    v21 = [v6 extraAttributesData];
    v11 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong},NSString * {__strong},int,int const&,NSData * {__strong}>(database, @"INSERT INTO action (selector, type, content_blocker_id, version, extra_attributes)VALUES (?, ?, ?, ?, ?)RETURNING id", &v23, &v22, buf, &WBSUserDefinedContentBlockerActionSupportedVersion, &v21);

    v12 = [v11 lastResultCode];
    v13 = [v11 nextObject];
    v14 = v13;
    if (!v13 || (v15 = [v13 int64AtIndex:0], v14, !v15))
    {
      v16 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [v6 typeString];
        v19 = [v6 selector];
        v20 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        *buf = 138413314;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2048;
        v29 = a4;
        v30 = 2114;
        v31 = v20;
        v32 = 1024;
        v33 = v12;
        _os_log_error_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_ERROR, "Failed to create action(%@) with selector(%@) for contentBlockerID(%ld): %{public}@ (%d)", buf, 0x30u);
      }

      v15 = 0;
    }

    v7 = v15;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerSQLiteStore _insertAction:forContentBlockerID:];
    }
  }

  return v7;
}

- (void)_getActionsForContentBlockerID:(int64_t)a3 isGlobal:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF70] array];
  v20 = v8;
  database = self->_database;
  v21 = v6;
  v11 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT id, selector, type, extra_attributes FROM action WHERE content_blocker_id = ?", &v21);
  while (1)
  {
    v12 = [v11 nextObject];
    if (!v12)
    {
      break;
    }

    v13 = [WBSUserDefinedContentBlockerAction alloc];
    v14 = [v12 intAtIndex:0];
    v15 = [v12 stringAtIndex:1];
    v16 = [v12 stringAtIndex:2];
    v17 = [v12 dataAtIndex:3];
    v18 = [(WBSUserDefinedContentBlockerAction *)v13 initWithDatabaseID:v14 selector:v15 type:v16 extraAttributesData:v17 isGlobal:v5];

    [v9 addObject:v18];
  }

  v19 = [v9 copy];
  (v20)[2](v20, v19);
}

- (void)_deleteActionsForContentBlockerID:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM action WHERE content_blocker_id = ?"];
    [v6 bindInt:a3 atParameterIndex:1];
    v7 = [v6 execute];
    [v6 reset];
    if (v7 != 101)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        v10 = 134218498;
        v11 = a3;
        v12 = 2114;
        v13 = v9;
        v14 = 1024;
        v15 = v7;
        _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete actions for contentBlockerID(%ld): %{public}@ (%d)", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerSQLiteStore _deleteActionsForContentBlockerID:];
    }
  }
}

- (void)_deleteActions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_114];
  if ([v5 count])
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM action WHERE id IN (?)"];
    [v7 bindString:v6 atParameterIndex:1];
    v8 = [v7 execute];
    [v7 reset];
    if (v8 != 101)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        v11 = 138412802;
        v12 = v6;
        v13 = 2114;
        v14 = v10;
        v15 = 1024;
        v16 = v8;
        _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to delete action(s) - (%@): %{public}@ (%d)", &v11, 0x1Cu);
      }
    }
  }
}

id __58__WBSUserDefinedContentBlockerSQLiteStore__deleteActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 databaseID])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "databaseID")}];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__WBSUserDefinedContentBlockerSQLiteStore__deleteActions___block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (void)_updateExtraAttributes:(id)a3 forContentBlockerID:(int64_t)a4
{
  v4 = a4;
  v9 = a3;
  database = self->_database;
  v8 = v4;
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,int>(database, 0, @"UPDATE action SET extra_attributes = ? WHERE id = ?", &v9, &v8) != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerSQLiteStore _updateExtraAttributes:forContentBlockerID:];
    }
  }
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add extra_attributes column to action table: %{public}@ (%d)", v4, v5);
}

- (void)_createFreshDatabaseSchema
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create the action table: %{public}@ (%d)", v4, v5);
}

- (void)_deleteFromAllTables
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to clear cross_site_content table: %{public}@ (%d)", v4, v5);
}

- (void)_insertAction:(os_log_t)log forContentBlockerID:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Canceled adding action (%ld) because it's already in database).", buf, 0xCu);
}

@end