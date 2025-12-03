@interface WBSUserDefinedContentBlockerSQLiteStore
+ (id)defaultDatabaseURL;
+ (id)sharedStore;
- (BOOL)_deleteFromAllTables;
- (BOOL)_migrateToSchemaVersion:(int)version;
- (WBSUserDefinedContentBlockerSQLiteStore)initWithDatabaseURL:(id)l;
- (int)_createFreshDatabaseSchema;
- (int)_insertContentBlockerWithType:(int64_t)type host:(id)host excludeGlobal:(BOOL)global;
- (int)_migrateToCurrentSchemaVersionIfNecessary;
- (int)_migrateToSchemaVersion_2;
- (int)_setDatabaseSchemaVersion:(int)version;
- (int64_t)_insertAction:(id)action forContentBlockerID:(int64_t)d;
- (void)_closeDatabase;
- (void)_createFreshDatabaseSchema;
- (void)_deleteActions:(id)actions;
- (void)_deleteActionsForContentBlockerID:(int64_t)d;
- (void)_deleteFromAllTables;
- (void)_getActionsForContentBlockerID:(int64_t)d isGlobal:(BOOL)global completionHandler:(id)handler;
- (void)_getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion;
- (void)_getAllContentBlockerHostsWithCompletionHandler:(id)handler;
- (void)_getContentBlockerWithType:(int64_t)type host:(id)host completionHandler:(id)handler;
- (void)_getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler;
- (void)_insertActions:(id)actions forContentBlockerID:(int64_t)d;
- (void)_migrateToSchemaVersion_2;
- (void)_openDatabase;
- (void)_openDatabaseIfNecessary;
- (void)_updateExtraAttributes:(id)attributes forContentBlockerID:(int64_t)d;
- (void)closeDatabase;
- (void)createPerSiteContentBlockerForHost:(id)host;
- (void)dealloc;
- (void)deleteActions:(id)actions;
- (void)deleteActionsForContentBlockerID:(int64_t)d;
- (void)getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion;
- (void)getAllContentBlockerHostsWithCompletionHandler:(id)handler;
- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler;
- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler;
- (void)getPerSiteContentBlockerForHost:(id)host createIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)insertActions:(id)actions forContentBlockerID:(int64_t)d;
- (void)resetDatabaseWithCompletionHandler:(id)handler;
- (void)updateContentBlockerActionExtraAttributes:(id)attributes;
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
  v3 = *self;
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
  block[4] = self;
  if (+[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::onceToken[0] != -1)
  {
    dispatch_once(+[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::onceToken, block);
  }

  v2 = +[WBSUserDefinedContentBlockerSQLiteStore sharedStore]::sharedStore;

  return v2;
}

+ (id)defaultDatabaseURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v4 = [safari_settingsDirectoryURL URLByAppendingPathComponent:@"UserDefinedContentBlockers.db" isDirectory:0];

  return v4;
}

- (int)_migrateToCurrentSchemaVersionIfNecessary
{
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v3 nextObject];
  v5 = [nextObject intAtIndex:0];

  statement = [v3 statement];
  [statement invalidate];

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

- (WBSUserDefinedContentBlockerSQLiteStore)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WBSUserDefinedContentBlockerSQLiteStore;
  v5 = [(WBSUserDefinedContentBlockerSQLiteStore *)&v17 init];
  if (v5)
  {
    if (lCopy)
    {
      inMemoryDatabaseURL = lCopy;
    }

    else
    {
      inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = inMemoryDatabaseURL;

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

- (void)resetDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSUserDefinedContentBlockerSQLiteStore_resetDatabaseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

uint64_t __78__WBSUserDefinedContentBlockerSQLiteStore_resetDatabaseWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteFromAllTables];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)createPerSiteContentBlockerForHost:(id)host
{
  hostCopy = host;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSUserDefinedContentBlockerSQLiteStore_createPerSiteContentBlockerForHost___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = hostCopy;
  v6 = hostCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)getPerSiteContentBlockerForHost:(id)host createIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  hostCopy = host;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__WBSUserDefinedContentBlockerSQLiteStore_getPerSiteContentBlockerForHost_createIfNeeded_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC7058;
  v13[4] = self;
  v14 = hostCopy;
  v15 = handlerCopy;
  neededCopy = needed;
  v11 = handlerCopy;
  v12 = hostCopy;
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

- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSUserDefinedContentBlockerSQLiteStore_getGlobalContentBlockerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)getAllContentBlockerHostsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__WBSUserDefinedContentBlockerSQLiteStore_getAllContentBlockerHostsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__WBSUserDefinedContentBlockerSQLiteStore_getNumberOfContentBlockersThatContainActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion
{
  typeCopy = type;
  hostCopy = host;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WBSUserDefinedContentBlockerSQLiteStore_getAllContentBlockerActionsWithType_excludeHost_isGlobal_completion___block_invoke;
  block[3] = &unk_1E7FC6938;
  block[4] = self;
  v18 = typeCopy;
  globalCopy = global;
  v19 = hostCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = hostCopy;
  v16 = typeCopy;
  dispatch_async(databaseQueue, block);
}

- (void)updateContentBlockerActionExtraAttributes:(id)attributes
{
  attributesCopy = attributes;
  databaseID = [attributesCopy databaseID];
  if (databaseID)
  {
    extraAttributesData = [attributesCopy extraAttributesData];
    if ([extraAttributesData length])
    {
      databaseQueue = self->_databaseQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__WBSUserDefinedContentBlockerSQLiteStore_updateContentBlockerActionExtraAttributes___block_invoke;
      block[3] = &unk_1E7FB7C70;
      block[4] = self;
      v11 = extraAttributesData;
      v12 = databaseID;
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

- (void)insertActions:(id)actions forContentBlockerID:(int64_t)d
{
  actionsCopy = actions;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSUserDefinedContentBlockerSQLiteStore_insertActions_forContentBlockerID___block_invoke;
  block[3] = &unk_1E7FB7C70;
  block[4] = self;
  v10 = actionsCopy;
  dCopy = d;
  v8 = actionsCopy;
  dispatch_async(databaseQueue, block);
}

- (void)deleteActionsForContentBlockerID:(int64_t)d
{
  databaseQueue = self->_databaseQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__WBSUserDefinedContentBlockerSQLiteStore_deleteActionsForContentBlockerID___block_invoke;
  v4[3] = &unk_1E7FB7610;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(databaseQueue, v4);
}

- (void)deleteActions:(id)actions
{
  actionsCopy = actions;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WBSUserDefinedContentBlockerSQLiteStore_deleteActions___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = actionsCopy;
  v6 = actionsCopy;
  dispatch_async(databaseQueue, v7);
}

- (BOOL)_migrateToSchemaVersion:(int)version
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_migrateToSchemaVersion_%d", *&version];
  v6 = NSSelectorFromString(v5);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__WBSUserDefinedContentBlockerSQLiteStore__migrateToSchemaVersion___block_invoke;
  v8[3] = &unk_1E7FC9620;
  v8[4] = self;
  v8[5] = v6;
  versionCopy = version;
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

- (int)_setDatabaseSchemaVersion:(int)version
{
  v17 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&version];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      versionCopy = version;
      v13 = 2114;
      v14 = lastErrorMessage;
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
  execute = [v6 execute];
  [v6 reset];
  if (execute != 101)
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

- (int)_insertContentBlockerWithType:(int64_t)type host:(id)host excludeGlobal:(BOOL)global
{
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  hostCopy = host;
  globalCopy = global;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:{@"INSERT INTO content_blocker (type, host, exclude_global, version)VALUES (?, ?, ?, ?)"}];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,WBSUserDefinedContentBlockerType &,NSString * {__strong}&,BOOL &,int const&>(v7, &typeCopy, &hostCopy, &globalCopy, &WBSUserDefinedContentBlockerSupportedVersion);
  execute = [v7 execute];
  [v7 reset];
  if (execute != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = hostCopy;
      v12 = typeCopy;
      lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 134218755;
      v18 = v12;
      v19 = 2113;
      v20 = v11;
      v21 = 2114;
      v22 = lastErrorMessage;
      v23 = 1024;
      v24 = execute;
      _os_log_error_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_ERROR, "Failed to create content blocker(type %lu) for %{private}@: %{public}@ (%d)", buf, 0x26u);
    }
  }

  return execute;
}

- (void)_getContentBlockerWithType:(int64_t)type host:(id)host completionHandler:(id)handler
{
  hostCopy = host;
  handlerCopy = handler;
  database = self->_database;
  typeCopy = type;
  v10 = SafariShared::WBSSQLiteDatabaseFetch<int,NSString * {__strong}&>(database, @"SELECT id, exclude_global FROM content_blocker WHERE type = ? AND host = ?", &typeCopy, &hostCopy);
  nextObject = [v10 nextObject];
  if (nextObject)
  {
    v12 = objc_alloc_init(WBSUserDefinedContentBlocker);
    -[WBSUserDefinedContentBlocker setDatabaseID:](v12, "setDatabaseID:", [nextObject intAtIndex:0]);
    [(WBSUserDefinedContentBlocker *)v12 setType:type];
    [(WBSUserDefinedContentBlocker *)v12 setHost:hostCopy];
    -[WBSUserDefinedContentBlocker setExcludeGlobalContentBlockers:](v12, "setExcludeGlobalContentBlockers:", [nextObject BOOLAtIndex:1]);
    databaseID = [(WBSUserDefinedContentBlocker *)v12 databaseID];
    v14 = type == 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__WBSUserDefinedContentBlockerSQLiteStore__getContentBlockerWithType_host_completionHandler___block_invoke;
    v16[3] = &unk_1E7FCB370;
    v15 = v12;
    v17 = v15;
    v18 = handlerCopy;
    [(WBSUserDefinedContentBlockerSQLiteStore *)self _getActionsForContentBlockerID:databaseID isGlobal:v14 completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __93__WBSUserDefinedContentBlockerSQLiteStore__getContentBlockerWithType_host_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setActions:?];
  (*(*(a1 + 40) + 16))();
}

- (void)_getAllContentBlockerHostsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  database = self->_database;
  v12 = 0;
  v6 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT host FROM content_blocker WHERE type = ?", &v12);
  array = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    nextObject = [v6 nextObject];
    v9 = nextObject;
    if (!nextObject)
    {
      break;
    }

    v10 = [nextObject stringAtIndex:0];
    [array addObject:v10];
  }

  v11 = [array copy];
  handlerCopy[2](handlerCopy, v11);
}

- (void)_getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  database = self->_database;
  v9 = 0;
  v6 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT COUNT(DISTINCT content_blocker_id) FROM action", &v9);
  v7 = v6;
  if (v6)
  {
    nextObject = [v6 nextObject];
    handlerCopy[2](handlerCopy, [nextObject intAtIndex:0]);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion
{
  globalCopy = global;
  typeCopy = type;
  hostCopy = host;
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  v12 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&,NSString * {__strong}&>(self->_database, @"SELECT action.id, action.selector, action.type, action.extra_attributes FROM action, content_blocker WHERE action.type = ? AND content_blocker.id = action.content_blocker_id AND content_blocker.host != ?", &typeCopy, &hostCopy);
  while (1)
  {
    nextObject = [v12 nextObject];
    if (!nextObject)
    {
      break;
    }

    v14 = [WBSUserDefinedContentBlockerAction alloc];
    v15 = [nextObject intAtIndex:0];
    v16 = [nextObject stringAtIndex:1];
    v17 = [nextObject stringAtIndex:2];
    v18 = [nextObject dataAtIndex:3];
    v19 = [(WBSUserDefinedContentBlockerAction *)v14 initWithDatabaseID:v15 selector:v16 type:v17 extraAttributesData:v18 isGlobal:globalCopy];

    [array addObject:v19];
  }

  v20 = [array copy];
  completionCopy[2](completionCopy, v20);
}

- (void)_insertActions:(id)actions forContentBlockerID:(int64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actionsCopy = actions;
  v7 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [(WBSUserDefinedContentBlockerSQLiteStore *)self _insertAction:*(*(&v10 + 1) + 8 * v9++) forContentBlockerID:d, v10];
      }

      while (v7 != v9);
      v7 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)_insertAction:(id)action forContentBlockerID:(int64_t)d
{
  v34 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  databaseID = [actionCopy databaseID];
  if (databaseID)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      -[WBSUserDefinedContentBlockerSQLiteStore _insertAction:forContentBlockerID:].cold.1(buf, [actionCopy databaseID], v9);
    }

    databaseID = 0;
  }

  else if (d)
  {
    database = self->_database;
    selector = [actionCopy selector];
    typeString = [actionCopy typeString];
    *buf = d;
    extraAttributesData = [actionCopy extraAttributesData];
    v11 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong},NSString * {__strong},int,int const&,NSData * {__strong}>(database, @"INSERT INTO action (selector, type, content_blocker_id, version, extra_attributes)VALUES (?, ?, ?, ?, ?)RETURNING id", &selector, &typeString, buf, &WBSUserDefinedContentBlockerActionSupportedVersion, &extraAttributesData);

    lastResultCode = [v11 lastResultCode];
    nextObject = [v11 nextObject];
    v14 = nextObject;
    if (!nextObject || (v15 = [nextObject int64AtIndex:0], v14, !v15))
    {
      v16 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        typeString2 = [actionCopy typeString];
        selector2 = [actionCopy selector];
        lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        *buf = 138413314;
        v25 = typeString2;
        v26 = 2112;
        v27 = selector2;
        v28 = 2048;
        dCopy = d;
        v30 = 2114;
        v31 = lastErrorMessage;
        v32 = 1024;
        v33 = lastResultCode;
        _os_log_error_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_ERROR, "Failed to create action(%@) with selector(%@) for contentBlockerID(%ld): %{public}@ (%d)", buf, 0x30u);
      }

      v15 = 0;
    }

    databaseID = v15;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerSQLiteStore _insertAction:forContentBlockerID:];
    }
  }

  return databaseID;
}

- (void)_getActionsForContentBlockerID:(int64_t)d isGlobal:(BOOL)global completionHandler:(id)handler
{
  globalCopy = global;
  dCopy = d;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v20 = handlerCopy;
  database = self->_database;
  v21 = dCopy;
  v11 = SafariShared::WBSSQLiteDatabaseFetch<int>(database, @"SELECT id, selector, type, extra_attributes FROM action WHERE content_blocker_id = ?", &v21);
  while (1)
  {
    nextObject = [v11 nextObject];
    if (!nextObject)
    {
      break;
    }

    v13 = [WBSUserDefinedContentBlockerAction alloc];
    v14 = [nextObject intAtIndex:0];
    v15 = [nextObject stringAtIndex:1];
    v16 = [nextObject stringAtIndex:2];
    v17 = [nextObject dataAtIndex:3];
    v18 = [(WBSUserDefinedContentBlockerAction *)v13 initWithDatabaseID:v14 selector:v15 type:v16 extraAttributesData:v17 isGlobal:globalCopy];

    [array addObject:v18];
  }

  v19 = [array copy];
  (v20)[2](v20, v19);
}

- (void)_deleteActionsForContentBlockerID:(int64_t)d
{
  v16 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM action WHERE content_blocker_id = ?"];
    [v6 bindInt:d atParameterIndex:1];
    execute = [v6 execute];
    [v6 reset];
    if (execute != 101)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        v10 = 134218498;
        dCopy = d;
        v12 = 2114;
        v13 = lastErrorMessage;
        v14 = 1024;
        v15 = execute;
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

- (void)_deleteActions:(id)actions
{
  v17 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = [actionsCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_114];
  if ([v5 count])
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:self->_database query:@"DELETE FROM action WHERE id IN (?)"];
    [v7 bindString:v6 atParameterIndex:1];
    execute = [v7 execute];
    [v7 reset];
    if (execute != 101)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        v11 = 138412802;
        v12 = v6;
        v13 = 2114;
        v14 = lastErrorMessage;
        v15 = 1024;
        v16 = execute;
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

- (void)_updateExtraAttributes:(id)attributes forContentBlockerID:(int64_t)d
{
  dCopy = d;
  attributesCopy = attributes;
  database = self->_database;
  v8 = dCopy;
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,int>(database, 0, @"UPDATE action SET extra_attributes = ? WHERE id = ?", &attributesCopy, &v8) != 101)
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