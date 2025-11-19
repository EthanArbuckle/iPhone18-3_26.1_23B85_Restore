@interface WBSFormAutoFillCorrectionsSQLiteStore
+ (id)_defaultParsecDatabaseURL;
+ (id)_obsoleteLocalDatabaseURLForRemoval;
+ (id)standardStore;
- (BOOL)_migrateToSchemaVersion:(int)a3 forDatabase:(id)a4;
- (BOOL)_replaceDomainAllowListWithDomains:(id)a3 retrievalURLString:(id)a4;
- (BOOL)_setDomain:(id)a3 isAllowListedForFeedback:(BOOL)a4;
- (BOOL)_setParsecMetadataStringValue:(id)a3 forKey:(id)a4;
- (BOOL)_tryToPerformTransactionOnDatabase:(id)a3 inBlock:(id)a4;
- (WBSFormAutoFillCorrectionsSQLiteStore)initWithParsecDatabaseURL:(id)a3;
- (id)_normalizeDomain:(id)a3;
- (id)_parsecMetadataStringValueForKey:(id)a3;
- (int)_createFreshParsecDatabaseSchema;
- (int)_migrateToCurrentSchemaVersionIfNeededForDatabase:(id)a3;
- (int)_migrateToSchemaVersion_2;
- (int)_schemaVersionForDatabase:(id)a3;
- (int)_setDatabaseSchemaVersion:(int)a3 forDatabase:(id)a4;
- (void)_closeDatabases;
- (void)_configureDatabase:(id)a3 currentSchemaVersion:(int)a4;
- (void)_createFreshParsecDatabaseSchema;
- (void)_migrateToSchemaVersion_2;
- (void)_openDatabasesIfNeeded;
- (void)_openParsecDatabase;
- (void)closeDatabase;
- (void)getAllowListStatusForDomain:(id)a3 completionHandler:(id)a4;
- (void)getLastAllowListRetrievalURLStringWithCompletionHandler:(id)a3;
- (void)removeObsoleteDatabase;
- (void)replaceDomainAllowListWithDomains:(id)a3 retrievalURLString:(id)a4 completionHandler:(id)a5;
- (void)setDomain:(id)a3 isAllowListedForFeedback:(BOOL)a4 completionHandler:(id)a5;
- (void)setLastAllowListRetrievalURLString:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSFormAutoFillCorrectionsSQLiteStore

+ (id)standardStore
{
  if (+[WBSFormAutoFillCorrectionsSQLiteStore standardStore]::onceToken != -1)
  {
    +[WBSFormAutoFillCorrectionsSQLiteStore standardStore];
  }

  v3 = +[WBSFormAutoFillCorrectionsSQLiteStore standardStore]::sharedStore;

  return v3;
}

void __54__WBSFormAutoFillCorrectionsSQLiteStore_standardStore__block_invoke()
{
  v0 = [WBSFormAutoFillCorrectionsSQLiteStore alloc];
  v3 = +[WBSFormAutoFillCorrectionsSQLiteStore _defaultParsecDatabaseURL];
  v1 = [(WBSFormAutoFillCorrectionsSQLiteStore *)v0 initWithParsecDatabaseURL:?];
  v2 = +[WBSFormAutoFillCorrectionsSQLiteStore standardStore]::sharedStore;
  +[WBSFormAutoFillCorrectionsSQLiteStore standardStore]::sharedStore = v1;
}

+ (id)_defaultParsecDatabaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"CloudAutoFillCorrections.db" isDirectory:0];

  return v4;
}

- (WBSFormAutoFillCorrectionsSQLiteStore)initWithParsecDatabaseURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSFormAutoFillCorrectionsSQLiteStore;
  v5 = [(WBSFormAutoFillCorrectionsSQLiteStore *)&v13 init];
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

    parsecDatabaseURL = v5->_parsecDatabaseURL;
    v5->_parsecDatabaseURL = v6;

    v8 = dispatch_get_global_queue(17, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.SafariShared.WBSFormAutoFillCorrectionsSQLiteStore", 0, v8);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v11 = v5;
  }

  return v5;
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSFormAutoFillCorrectionsSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)replaceDomainAllowListWithDomains:(id)a3 retrievalURLString:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 copy];
  [v8 copy];
  operator new();
}

void __112__WBSFormAutoFillCorrectionsSQLiteStore_replaceDomainAllowListWithDomains_retrievalURLString_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabasesIfNeeded];
  v2 = *(a1 + 32);
  v3 = v2[2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__WBSFormAutoFillCorrectionsSQLiteStore_replaceDomainAllowListWithDomains_retrievalURLString_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7FC58C0;
  v11[4] = v2;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v4 = [v2 _tryToPerformTransactionOnDatabase:v3 inBlock:v11];
  v5 = *(a1 + 64);
  if (v5)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v5);
    MEMORY[0x1BFB13480]();
  }

  if (*(a1 + 56))
  {
    qos_class = dispatch_queue_get_qos_class(*(*(a1 + 32) + 24), 0);
    v7 = dispatch_get_global_queue(qos_class, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__WBSFormAutoFillCorrectionsSQLiteStore_replaceDomainAllowListWithDomains_retrievalURLString_completionHandler___block_invoke_3;
    block[3] = &unk_1E7FC58E8;
    v9 = *(a1 + 56);
    v10 = v4;
    dispatch_async(v7, block);
  }
}

- (void)getAllowListStatusForDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5960;
  v11[4] = self;
  v9 = v7;
  v12 = v8;
  v13 = v9;
  v10 = v8;
  [(WBSFormAutoFillCorrectionsSQLiteStore *)self getLastAllowListRetrievalURLStringWithCompletionHandler:v11];
}

void __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke_3;
    v8[3] = &unk_1E7FB7CC0;
    v8[4] = v3;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    dispatch_async(v4, v8);

    v5 = v9;
  }

  else
  {
    qos_class = dispatch_queue_get_qos_class(*(v3 + 24), 0);
    v7 = dispatch_get_global_queue(qos_class, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FB7B80;
    v12 = *(a1 + 48);
    dispatch_async(v7, block);

    v5 = v12;
  }
}

void __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _normalizeDomain:*(a1 + 40)];
  v11 = v2;
  if (v2 && ([*(a1 + 32) _openDatabasesIfNeeded], objc_msgSend(*(a1 + 32), "_isDatabaseOpen:", *(*(a1 + 32) + 16))))
  {
    v3 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(*(*(a1 + 32) + 16), @"SELECT COUNT(*) AS count FROM whitelist WHERE domain = ?", &v11);
    v4 = [v3 nextObject];
    if ([v4 int64AtIndex:0] >= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v2 = v11;
  }

  else
  {
    v5 = 0;
  }

  qos_class = dispatch_queue_get_qos_class(*(*(a1 + 32) + 24), 0);
  v7 = dispatch_get_global_queue(qos_class, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WBSFormAutoFillCorrectionsSQLiteStore_getAllowListStatusForDomain_completionHandler___block_invoke_4;
  block[3] = &unk_1E7FC5938;
  v9 = *(a1 + 48);
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setDomain:(id)a3 isAllowListedForFeedback:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  [v6 copy];
  operator new();
}

void __94__WBSFormAutoFillCorrectionsSQLiteStore_setDomain_isAllowListedForFeedback_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabasesIfNeeded];
  if ([*(a1 + 32) _isDatabaseOpen:*(*(a1 + 32) + 16)])
  {
    v2 = [*(a1 + 32) _setDomain:*(a1 + 40) isAllowListedForFeedback:*(a1 + 64)];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x1BFB13480]();
  }

  if (*(a1 + 48))
  {
    qos_class = dispatch_queue_get_qos_class(*(*(a1 + 32) + 24), 0);
    v5 = dispatch_get_global_queue(qos_class, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__WBSFormAutoFillCorrectionsSQLiteStore_setDomain_isAllowListedForFeedback_completionHandler___block_invoke_2;
    v6[3] = &unk_1E7FC58E8;
    v7 = *(a1 + 48);
    v8 = v2;
    dispatch_async(v5, v6);
  }
}

- (void)getLastAllowListRetrievalURLStringWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WBSFormAutoFillCorrectionsSQLiteStore_getLastAllowListRetrievalURLStringWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __97__WBSFormAutoFillCorrectionsSQLiteStore_getLastAllowListRetrievalURLStringWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabasesIfNeeded];
  if ([*(a1 + 32) _isDatabaseOpen:*(*(a1 + 32) + 16)])
  {
    v2 = [*(a1 + 32) _parsecMetadataStringValueForKey:@"lastWhitelistRetrievalURL"];
  }

  else
  {
    v2 = 0;
  }

  qos_class = dispatch_queue_get_qos_class(*(*(a1 + 32) + 24), 0);
  v4 = dispatch_get_global_queue(qos_class, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WBSFormAutoFillCorrectionsSQLiteStore_getLastAllowListRetrievalURLStringWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7FB6BC0;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  dispatch_async(v4, v7);
}

- (void)setLastAllowListRetrievalURLString:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 copy];
  operator new();
}

void __94__WBSFormAutoFillCorrectionsSQLiteStore_setLastAllowListRetrievalURLString_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabasesIfNeeded];
  if ([*(a1 + 32) _isDatabaseOpen:*(*(a1 + 32) + 16)])
  {
    v2 = [*(a1 + 32) _setParsecMetadataStringValue:*(a1 + 40) forKey:@"lastWhitelistRetrievalURL"];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x1BFB13480]();
  }

  if (*(a1 + 48))
  {
    qos_class = dispatch_queue_get_qos_class(*(*(a1 + 32) + 24), 0);
    v5 = dispatch_get_global_queue(qos_class, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__WBSFormAutoFillCorrectionsSQLiteStore_setLastAllowListRetrievalURLString_completionHandler___block_invoke_2;
    v6[3] = &unk_1E7FC58E8;
    v7 = *(a1 + 48);
    v8 = v2;
    dispatch_async(v5, v6);
  }
}

- (int)_schemaVersionForDatabase:(id)a3
{
  v4 = a3;
  if ([(WBSFormAutoFillCorrectionsSQLiteStore *)self _isDatabaseOpen:v4])
  {
    v5 = SafariShared::WBSSQLiteDatabaseFetch<>(v4, @"PRAGMA user_version");
    v6 = [v5 nextObject];
    v7 = [v6 intAtIndex:0];

    v8 = [v5 statement];
    [v8 invalidate];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int)_migrateToCurrentSchemaVersionIfNeededForDatabase:(id)a3
{
  v4 = a3;
  v5 = [(WBSFormAutoFillCorrectionsSQLiteStore *)self _schemaVersionForDatabase:v4];
  v6 = v5;
  if (v5 <= 1)
  {
    if (v5 || self->_parsecDatabase != v4 || [(WBSFormAutoFillCorrectionsSQLiteStore *)self _createFreshParsecDatabaseSchema]== 101)
    {
      if ([(WBSFormAutoFillCorrectionsSQLiteStore *)self _migrateToSchemaVersion:2 forDatabase:v4])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_migrateToSchemaVersion:(int)a3 forDatabase:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_migrateToSchemaVersion_%d", v4];
  v8 = NSSelectorFromString(v7);

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WBSFormAutoFillCorrectionsSQLiteStore__migrateToSchemaVersion_forDatabase___block_invoke;
  v11[3] = &unk_1E7FC59D8;
  v11[4] = self;
  v13 = v8;
  v14 = v4;
  v9 = v6;
  v12 = v9;
  LOBYTE(self) = [(WBSFormAutoFillCorrectionsSQLiteStore *)self _tryToPerformTransactionOnDatabase:v9 inBlock:v11];

  return self;
}

BOOL __77__WBSFormAutoFillCorrectionsSQLiteStore__migrateToSchemaVersion_forDatabase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) methodSignatureForSelector:*(a1 + 48)];
  v3 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v2];
  [v3 setSelector:*(a1 + 48)];
  [v3 invokeWithTarget:*(a1 + 32)];
  v6 = 0;
  [v3 getReturnValue:&v6];
  v4 = v6 == 101 && [*(a1 + 32) _setDatabaseSchemaVersion:*(a1 + 56) forDatabase:*(a1 + 40)] != 0;

  return v4;
}

- (int)_setDatabaseSchemaVersion:(int)a3 forDatabase:(id)a4
{
  v4 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", v4];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v5, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 lastErrorMessage];
      *buf = 67109634;
      v12 = v4;
      v13 = 2112;
      v14 = v10;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set the AutoFill corrections database schema version to %d: %@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (int)_createFreshParsecDatabaseSchema
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"CREATE TABLE whitelist (id INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE)");
  if (v3 != 101)
  {
    v6 = v3;
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _createFreshParsecDatabaseSchema];
    }

    goto LABEL_17;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"CREATE TABLE hosts (id INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE)");
  if (v4 != 101)
  {
    v6 = v4;
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _createFreshParsecDatabaseSchema];
    }

    goto LABEL_17;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"CREATE TABLE corrections (id INTEGER PRIMARY KEY AUTOINCREMENT,host_id INTEGER REFERENCES hosts(id) ON DELETE CASCADE,fingerprint TEXT NOT NULL,classification TEXT)");
  if (v5 != 101)
  {
    v6 = v5;
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _createFreshParsecDatabaseSchema];
    }

    goto LABEL_17;
  }

  v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"CREATE TABLE metadata (key TEXT NOT NULL UNIQUE, value)");
  if (v6 != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _createFreshParsecDatabaseSchema];
    }

LABEL_17:

    return v6;
  }

  [(WBSFormAutoFillCorrectionsSQLiteStore *)self _setDatabaseSchemaVersion:1 forDatabase:self->_parsecDatabase];
  return v6;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"DROP TABLE corrections");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _migrateToSchemaVersion_2];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"DROP TABLE hosts");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _migrateToSchemaVersion_2];
    }

LABEL_7:
  }

  return v4;
}

+ (id)_obsoleteLocalDatabaseURLForRemoval
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_settingsDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"AutoFillCorrections.db" isDirectory:0];

  return v4;
}

- (id)_normalizeDomain:(id)a3
{
  v4 = a3;
  domainNormalizer = self->_domainNormalizer;
  if (!domainNormalizer)
  {
    v6 = objc_alloc_init(WBSCrowdsourcedFeedbackDomainNormalizer);
    v7 = self->_domainNormalizer;
    self->_domainNormalizer = v6;

    domainNormalizer = self->_domainNormalizer;
  }

  v8 = [(WBSCrowdsourcedFeedbackDomainNormalizer *)domainNormalizer transformedValue:v4];

  return v8;
}

- (void)removeObsoleteDatabase
{
  v3 = [objc_opt_class() _obsoleteLocalDatabaseURLForRemoval];
  v4 = v3;
  if (v3)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WBSFormAutoFillCorrectionsSQLiteStore_removeObsoleteDatabase__block_invoke;
    block[3] = &unk_1E7FB6F80;
    v7 = v3;
    dispatch_async(databaseQueue, block);
  }
}

void __63__WBSFormAutoFillCorrectionsSQLiteStore_removeObsoleteDatabase__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1BFB13270](v13, @"com.apple.SafariShared.WBSFormAutoFillCorrectionsSQLiteStore");
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) path];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Deleting obsolete local AutoFill corrections database.", buf, 2u);
    }

    v6 = *(a1 + 32);
    v12 = 0;
    v7 = [v2 safari_removeFileOnlyAtURL:v6 error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Successfully deleted obsolete local AutoFill corrections database.", buf, 2u);
      }
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 safari_privacyPreservingDescription];
        __63__WBSFormAutoFillCorrectionsSQLiteStore_removeObsoleteDatabase__block_invoke_cold_1(v11, buf, v10);
      }
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);
}

- (void)_openDatabasesIfNeeded
{
  MEMORY[0x1BFB13270](v3, @"com.apple.SafariShared.WBSFormAutoFillCorrectionsSQLiteStore");
  if (![(WBSFormAutoFillCorrectionsSQLiteStore *)self _isDatabaseOpen:self->_parsecDatabase])
  {
    [(WBSFormAutoFillCorrectionsSQLiteStore *)self _openParsecDatabase];
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
}

- (void)_configureDatabase:(id)a3 currentSchemaVersion:(int)a4
{
  v4 = *&a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 url];
  [v6 setBusyTimeout:1.0];
  v18 = 0;
  v8 = [v6 enableWAL:&v18];
  v9 = v18;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if ([v9 code] == 5)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v7 lastPathComponent];
        [(WBSFormAutoFillCorrectionsSQLiteStore *)v12 _configureDatabase:buf currentSchemaVersion:v11];
      }

      [(WBSFormAutoFillCorrectionsSQLiteStore *)self _closeDatabases];
      goto LABEL_11;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v7 lastPathComponent];
      v15 = [v10 safari_privacyPreservingDescription];
      [(WBSFormAutoFillCorrectionsSQLiteStore *)v14 _configureDatabase:v15 currentSchemaVersion:buf, v13];
    }
  }

  SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"PRAGMA foreign_keys = ON");
  v16 = [(WBSFormAutoFillCorrectionsSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeededForDatabase:v6];
  if (v16 != v4)
  {
    v17 = [v7 lastPathComponent];
    WTFLogAlways();

    [(WBSFormAutoFillCorrectionsSQLiteStore *)self _closeDatabases:v16];
  }

LABEL_11:
}

- (void)_openParsecDatabase
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to mark Parsec AutoFill corrections SQLite store as excluded from backup.  Error: %{public}@", buf, 0xCu);
}

- (void)_closeDatabases
{
  [(WBSSQLiteDatabase *)self->_parsecDatabase close];
  parsecDatabase = self->_parsecDatabase;
  self->_parsecDatabase = 0;
}

- (BOOL)_tryToPerformTransactionOnDatabase:(id)a3 inBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(WBSFormAutoFillCorrectionsSQLiteStore *)self _isDatabaseOpen:v6])
  {
    goto LABEL_9;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"BEGIN TRANSACTION") != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v6 lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _tryToPerformTransactionOnDatabase:inBlock:];
    }

    goto LABEL_8;
  }

  if (!v7[2](v7))
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"ROLLBACK TRANSACTION") == 101)
    {
      goto LABEL_9;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v6 lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _tryToPerformTransactionOnDatabase:inBlock:];
    }

LABEL_8:

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v6, 0, @"COMMIT TRANSACTION") != 101)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v6 lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _tryToPerformTransactionOnDatabase:inBlock:];
    }

    goto LABEL_8;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_replaceDomainAllowListWithDomains:(id)a3 retrievalURLString:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_parsecDatabase, 0, @"DELETE FROM whitelist") == 101)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke;
    v20[3] = &unk_1E7FC5A00;
    v20[4] = self;
    v9 = v8;
    v21 = v9;
    [v6 enumerateObjectsUsingBlock:v20];
    v10 = [v9 count];
    if (v10 == [v6 count])
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = [v9 count];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_2;
      v16[3] = &unk_1E7FB8B20;
      v13 = v11;
      v18 = self;
      v19 = v12;
      v17 = v13;
      [v9 enumerateObjectsUsingBlock:v16];
      v14 = [(WBSFormAutoFillCorrectionsSQLiteStore *)self _setParsecMetadataStringValue:v7 forKey:@"lastWhitelistRetrievalURL"];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSFormAutoFillCorrectionsSQLiteStore _replaceDomainAllowListWithDomains:retrievalURLString:];
    }

    v14 = 0;
  }

  return v14;
}

void __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _normalizeDomain:a2];
  v7 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    *a4 = 1;
  }
}

void __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addObject:a2];
  if (__ROR8__(0x1CAC083126E978D5 * (a3 - 499), 2) < 0x83126E978D4FDFuLL || *(a1 + 48) - 1 == a3)
  {
    v5 = [MEMORY[0x1E696AD60] string];
    [v5 appendString:@"INSERT INTO whitelist (domain) VALUES "];
    v6 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_3;
    v17[3] = &unk_1E7FC5A28;
    v7 = v5;
    v18 = v7;
    [v6 enumerateObjectsUsingBlock:v17];
    [v7 replaceCharactersInRange:objc_msgSend(v7 withString:{"length") - 1, 1, &stru_1F3A5E418}];
    v8 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 40) + 16) query:v7];
    v9 = *(a1 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_4;
    v15 = &unk_1E7FC5A28;
    v10 = v8;
    v16 = v10;
    [v9 enumerateObjectsUsingBlock:&v12];
    [*(a1 + 32) removeAllObjects];
    if ([v10 execute] != 101)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [*(*(a1 + 40) + 16) lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_2_cold_1();
      }
    }

    [v10 invalidate];
  }
}

- (BOOL)_setDomain:(id)a3 isAllowListedForFeedback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12 = [(WBSFormAutoFillCorrectionsSQLiteStore *)self _normalizeDomain:v6];

  if (!v12)
  {
    return 0;
  }

  if (v4)
  {
    v7 = @"INSERT INTO whitelist (domain) VALUES (?)";
  }

  else
  {
    v7 = @"DELETE FROM whitelist WHERE domain = ?";
  }

  v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_parsecDatabase, 0, v7, &v12);
  v10 = v8 == 101 || v8 == 19;

  return v10;
}

- (id)_parsecMetadataStringValueForKey:(id)a3
{
  v8 = a3;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_parsecDatabase, @"SELECT value FROM metadata WHERE key = ?", &v8);
  v5 = [v4 nextObject];
  v6 = [v5 stringAtIndex:0];

  return v6;
}

- (BOOL)_setParsecMetadataStringValue:(id)a3 forKey:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v16 = a4;
  parsecDatabase = self->_parsecDatabase;
  if (v17)
  {
    v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(parsecDatabase, 0, @"UPDATE metadata SET value = ? WHERE key = ?", &v17, &v16);
    if (v7 != 101)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    if (![(WBSSQLiteDatabase *)self->_parsecDatabase changedRowCount])
    {
      v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(self->_parsecDatabase, 0, @"INSERT INTO metadata (key, value) VALUES (?, ?)", &v16, &v17);
      if (v7 != 101)
      {
        v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_13:

          v12 = 0;
          goto LABEL_14;
        }

LABEL_6:
        v9 = v16;
        v10 = [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
        *buf = 138412802;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        v22 = 1024;
        v23 = v7;
        _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to update metadata value %@: %@ (%d)", buf, 0x1Cu);

        goto LABEL_13;
      }
    }
  }

  else
  {
    v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(parsecDatabase, 0, @"DELETE FROM metadata WHERE key = ?", &v16);
    if (v11 != 101)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = v16;
        v15 = [(WBSSQLiteDatabase *)self->_parsecDatabase lastErrorMessage];
        *buf = 138412802;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 1024;
        v23 = v11;
        _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to delete metadata value %@: %@ (%d)", buf, 0x1Cu);
      }

      goto LABEL_13;
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)_createFreshParsecDatabaseSchema
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create the metadata table: %@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to drop the v1 hosts table: %@ (%d)", v4, v5);
}

void __63__WBSFormAutoFillCorrectionsSQLiteStore_removeObsoleteDatabase__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to delete obsolete local AutoFill corrections database with error: %@", buf, 0xCu);
}

- (void)_configureDatabase:(uint8_t *)buf currentSchemaVersion:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 141558531;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to enable write-ahead logging on AutoFill corrections SQLite store at %{sensitive, mask.hash}@: %{public}@", buf, 0x20u);
}

- (void)_configureDatabase:(os_log_t)log currentSchemaVersion:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 141558275;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to acquire exclusive access to AutoFill corrections SQLite store at %{sensitive, mask.hash}@.", buf, 0x16u);
}

- (void)_tryToPerformTransactionOnDatabase:inBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to start a transaction: %@ (%d)", v4, v5);
}

- (void)_tryToPerformTransactionOnDatabase:inBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to roll back transaction: %@ (%d)", v4, v5);
}

- (void)_tryToPerformTransactionOnDatabase:inBlock:.cold.3()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to commit transaction: %@ (%d)", v4, v5);
}

- (void)_replaceDomainAllowListWithDomains:retrievalURLString:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to clear whitelist entries: %@ (%d)", v4, v5);
}

void __95__WBSFormAutoFillCorrectionsSQLiteStore__replaceDomainAllowListWithDomains_retrievalURLString___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to insert whitelist entries: %@ (%d)", v4, v5);
}

@end