@interface TRIAssetStoreDatabase
- (BOOL)addReferenceToAutoAssetId:(id)id forLifetimeOfPath:(id)path;
- (BOOL)dropTableWithName:(id)name transaction:(id)transaction;
- (BOOL)enumerateAllAutoAssetReferencesWithBlock:(id)block;
- (TRIAssetStoreDatabase)initWithPaths:(id)paths assetStorePath:(id)path storageManagement:(id)management;
- (TRIAssetStoreDatabase)initWithPaths:(id)paths databasePath:(id)path storageManagement:(id)management performMigrations:(BOOL)migrations;
- (TRIAssetStoreDatabase)initWithPaths:(id)paths storageManagement:(id)management;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version;
- (void)_disableQueryPlanLogging;
- (void)_enableQueryPlanLogging;
- (void)_updateQueryPlanLogging;
- (void)closePermanently;
- (void)enumerateAssetIdsWithoutLiveReferencesUsingBlock:(id)block;
- (void)enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock:(id)block;
@end

@implementation TRIAssetStoreDatabase

- (TRIAssetStoreDatabase)initWithPaths:(id)paths storageManagement:(id)management
{
  pathsCopy = paths;
  managementCopy = management;
  if (!pathsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreDatabase.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  v9 = objc_autoreleasePoolPush();
  assetStore = [pathsCopy assetStore];
  v11 = [assetStore stringByAppendingPathComponent:@"assets.db"];

  objc_autoreleasePoolPop(v9);
  v12 = [(TRIAssetStoreDatabase *)self initWithPaths:pathsCopy databasePath:v11 storageManagement:managementCopy performMigrations:1];

  return v12;
}

- (TRIAssetStoreDatabase)initWithPaths:(id)paths assetStorePath:(id)path storageManagement:(id)management
{
  pathsCopy = paths;
  pathCopy = path;
  managementCopy = management;
  if (!pathsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreDatabase.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [pathCopy stringByAppendingPathComponent:@"assets.db"];
  objc_autoreleasePoolPop(v12);
  v14 = [(TRIAssetStoreDatabase *)self initWithPaths:pathsCopy databasePath:v13 storageManagement:managementCopy performMigrations:1];

  return v14;
}

- (TRIAssetStoreDatabase)initWithPaths:(id)paths databasePath:(id)path storageManagement:(id)management performMigrations:(BOOL)migrations
{
  migrationsCopy = migrations;
  v59 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  managementCopy = management;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreDatabase.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"databasePath"}];
  }

  v51.receiver = self;
  v51.super_class = TRIAssetStoreDatabase;
  v14 = [(TRIAssetStoreDatabase *)&v51 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v14->_paths, paths);
  objc_storeStrong(&v15->_storageManagement, management);
  objc_storeStrong(&v15->_databasePath, path);
  if (([MEMORY[0x277D42630] isInMemoryPath:v15->_databasePath] & 1) == 0 && objc_msgSend(MEMORY[0x277D42598], "isClassCLocked"))
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Device has never been unlocked prior to db initialization.", &buf, 2u);
    }

    goto LABEL_35;
  }

  if (([MEMORY[0x277D42630] isInMemoryPath:v15->_databasePath] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "fileExistsAtPath:", v15->_databasePath), v17, (v18 & 1) == 0))
  {
    if (([MEMORY[0x277D42630] isInMemoryPath:v15->_databasePath] & 1) == 0)
    {
      stringByDeletingLastPathComponent = [(NSString *)v15->_databasePath stringByDeletingLastPathComponent];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v22 = MEMORY[0x277D42630];
  databasePath = v15->_databasePath;
  v24 = [[TRISqliteErrorHandler alloc] initWithStorageManagement:v15->_storageManagement];
  v50 = 0;
  v25 = [v22 sqliteDatabaseWithFilename:databasePath contentProtection:3 errorHandler:v24 error:&v50];
  v26 = v50;
  db = v15->_db;
  v15->_db = v25;

  if (!v15->_db)
  {
    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v26;
      _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Failed to instantiate new database handle: %{public}@", &buf, 0xCu);
    }

    goto LABEL_34;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__28;
  v57 = __Block_byref_object_dispose__28;
  v58 = 0;
  v28 = v15->_db;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __88__TRIAssetStoreDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke;
  v49[3] = &unk_279DDF778;
  v49[4] = &buf;
  if (([(_PASSqliteDatabase *)v28 prepAndRunNonDataQueries:&unk_287FC5050 onError:v49]& 1) == 0)
  {
    v39 = TRILogCategory_Server();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v44 = *(*(&buf + 1) + 40);
      *v52 = 138543362;
      v53 = v44;
      _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Failed to run initial database pragmas: %{public}@", v52, 0xCu);
    }

    [(_PASSqliteDatabase *)v15->_db closePermanently];
    v40 = v15->_db;
    v15->_db = 0;

    if (v19 && ([MEMORY[0x277D42630] isInMemoryPath:v15->_databasePath] & 1) == 0)
    {
      [MEMORY[0x277D42630] truncateDatabaseAtPath:v15->_databasePath];
    }

    _Block_object_dispose(&buf, 8);

LABEL_34:
LABEL_35:
    v37 = 0;
    goto LABEL_36;
  }

  _Block_object_dispose(&buf, 8);

  if (v19)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v15->_databasePath;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v30;
      _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Created new database: %{public}@", &buf, 0xCu);
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  defaults = v15->_defaults;
  v15->_defaults = standardUserDefaults;

  v33 = objc_opt_new();
  kvoHandler = v15->_kvoHandler;
  v15->_kvoHandler = v33;

  atomic_store(0, &v15->_isQueryPlanLoggingEnabled);
  objc_initWeak(&buf, v15);
  v35 = v15->_kvoHandler;
  v36 = v15->_defaults;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __88__TRIAssetStoreDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke_75;
  v47[3] = &unk_279DE1670;
  objc_copyWeak(&v48, &buf);
  [(_PASKVOHandler *)v35 reactAfterChangesToKeyPath:@"queryPlanLoggingEnabled" ofObject:v36 usingBlock:v47];
  [(TRIAssetStoreDatabase *)v15 _updateQueryPlanLogging];
  if (migrationsCopy && ![(TRIAssetStoreDatabase *)v15 migrateToVersion:*MEMORY[0x277D426A0]])
  {
    v43 = TRILogCategory_Server();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "TRIAssetStoreDatabase: migrations failed", v52, 2u);
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&buf);

    goto LABEL_35;
  }

  objc_destroyWeak(&v48);
  objc_destroyWeak(&buf);

LABEL_24:
  v37 = v15;
LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
  return v37;
}

void __88__TRIAssetStoreDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateQueryPlanLogging];
}

uint64_t __31__TRIAssetStoreDatabase_vacuum__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v2;
    _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "TRIAssetStoreDatabase incremental vacuum failed: %{public}@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (BOOL)dropTableWithName:(id)name transaction:(id)transaction
{
  nameCopy = name;
  transactionCopy = transaction;
  v9 = transactionCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreDatabase.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIAssetStoreDatabase.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    goto LABEL_3;
  }

  if (!transactionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@;", nameCopy];
  v11 = [v9 db];
  v12 = [v11 prepAndRunQuery:nameCopy onPrep:0 onRow:0 onError:0];

  return v12;
}

- (void)closePermanently
{
  [(_PASSqliteDatabase *)self->_db closePermanently];
  kvoHandler = self->_kvoHandler;
  self->_kvoHandler = 0;
}

- (void)_updateQueryPlanLogging
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"queryPlanLoggingEnabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    [(TRIAssetStoreDatabase *)self _enableQueryPlanLogging];
  }

  else
  {
    [(TRIAssetStoreDatabase *)self _disableQueryPlanLogging];
  }
}

- (void)_enableQueryPlanLogging
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  paths = self->_paths;
  if (paths)
  {
    logDir = [(TRIPaths *)paths logDir];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:logDir withIntermediateDirectories:1 attributes:0 error:0];

    v7 = objc_opt_new();
    [v7 setFormatOptions:51];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_opt_new();
    v10 = [v7 stringFromDate:v9];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v12 = [v8 initWithFormat:@"assets-explainQueryPlan-%@-pid_%d-handle_%p.log", v10, objc_msgSend(processInfo, "processIdentifier"), self->_db];

    v13 = [logDir stringByAppendingPathComponent:v12];
    LODWORD(processInfo) = [(_PASSqliteDatabase *)self->_db enableQueryPlanLoggingWithPath:v13];
    v14 = TRILogCategory_Server();
    v15 = v14;
    if (processInfo)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "TRIAssetStoreDatabase: generating EXPLAIN QUERY PLAN log at %{public}@", buf, 0xCu);
      }

      atomic_store(1u, &self->_isQueryPlanLoggingEnabled);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v13;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "TRIAssetStoreDatabase: unable to generate EXPLAIN QUERY PLAN log at %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    logDir = TRILogCategory_Server();
    if (os_log_type_enabled(logDir, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, logDir, OS_LOG_TYPE_ERROR, "Can't enable query plan logging, TRIPaths not available", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_disableQueryPlanLogging
{
  v8 = *MEMORY[0x277D85DE8];
  [(_PASSqliteDatabase *)self->_db disableQueryPlanLogging];
  if (atomic_exchange(&self->_isQueryPlanLoggingEnabled, 0))
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      db = self->_db;
      v6 = 134217984;
      v7 = db;
      _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIAssetStoreDatabase: disable EXPLAIN QUERY PLAN log for handle %p", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)migrations
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6[0] = @" CREATE TABLE maAutoAssets(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     type TEXT NOT NULL,     specifier TEXT NOT NULL,     version TEXT NOT NULL,     UNIQUE (type, specifier, version));";
  v6[1] = @" CREATE TABLE maAutoAssetPathRefs(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     maAutoAssets_rowid INTEGER NOT NULL,     path TEXT NOT NULL,     UNIQUE (maAutoAssets_rowid, path),     FOREIGN KEY (maAutoAssets_rowid) REFERENCES maAutoAssets (rowid));";
  v6[2] = @" CREATE INDEX ix_maAutoAssetPathRefs_maAutoAssets_rowid ON maAutoAssetPathRefs (maAutoAssets_rowid);";
  v7 = &unk_287FC4BD0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version
{
  if (version)
  {
    *version = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)addReferenceToAutoAssetId:(id)id forLifetimeOfPath:(id)path
{
  idCopy = id;
  pathCopy = path;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke;
  v13[3] = &unk_279DE2488;
  v17 = &v19;
  v9 = idCopy;
  v18 = a2;
  v14 = v9;
  selfCopy = self;
  v10 = pathCopy;
  v16 = v10;
  v11 = MEMORY[0x2743948D0](v13);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v11];
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

void __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x8000000000000000;
  v4 = [v3 db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_2;
  v16[3] = &unk_279DDF860;
  v17 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_3;
  v15[3] = &unk_279DDFC98;
  v15[4] = &v18;
  *(*(*(a1 + 56) + 8) + 24) = [v4 prepAndRunQuery:@" SELECT rowid FROM     maAutoAssets WHERE         type = :type     AND specifier = :specifier     AND version = :version LIMIT 1;" onPrep:v16 onRow:v15 onError:0];

  if (v19[3] == 0x8000000000000000)
  {
    v5 = [v3 db];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_4;
    v13[3] = &unk_279DDF860;
    v14 = *(a1 + 32);
    *(*(*(a1 + 56) + 8) + 24) &= [v5 prepAndRunQuery:@" INSERT INTO     maAutoAssets (type onPrep:specifier onRow:version)     VALUES (:type onError:{:specifier, :version);", v13, 0, 0}];

    v6 = [v3 db];
    insert_rowid = sqlite3_last_insert_rowid([v6 handle]);
    v19[3] = insert_rowid;

    if (v19[3] == 0x8000000000000000)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"TRIAssetStoreDatabase.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"rowId != INT64_MIN"}];
    }
  }

  v8 = [v3 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_5;
  v10[3] = &unk_279DE2460;
  v12 = &v18;
  v11 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) &= [v8 prepAndRunQuery:@" INSERT OR IGNORE INTO     maAutoAssetPathRefs (maAutoAssets_rowid onPrep:path)     VALUES (:rowid onRow::path);" onError:{v10, 0, 0}];

  _Block_object_dispose(&v18, 8);
}

void __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 type];
  [v4 bindNamedParam:":type" toNonnullNSString:v5];

  v6 = [*(a1 + 32) specifier];
  [v4 bindNamedParam:":specifier" toNonnullNSString:v6];

  v7 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNonnullNSString:v7];
}

void __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 type];
  [v4 bindNamedParam:":type" toNonnullNSString:v5];

  v6 = [*(a1 + 32) specifier];
  [v4 bindNamedParam:":specifier" toNonnullNSString:v6];

  v7 = [*(a1 + 32) version];
  [v4 bindNamedParam:":version" toNonnullNSString:v7];
}

void __69__TRIAssetStoreDatabase_addReferenceToAutoAssetId_forLifetimeOfPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = a2;
  [v4 bindNamedParam:":rowid" toInt64:v3];
  [v4 bindNamedParam:":path" toNonnullNSString:*(a1 + 32)];
}

- (BOOL)enumerateAllAutoAssetReferencesWithBlock:(id)block
{
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke;
  v12 = &unk_279DE24B0;
  v16 = a2;
  selfCopy = self;
  v6 = blockCopy;
  v14 = v6;
  v15 = &v17;
  v7 = MEMORY[0x2743948D0](&v9);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v7, v9, v10, v11, v12, selfCopy}];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

void __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke(void *a1, void *a2)
{
  v3 = [a2 db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke_2;
  v7[3] = &unk_279DE15F8;
  v4 = a1[4];
  v5 = a1[5];
  v9 = a1[7];
  v7[4] = v4;
  v8 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke_3;
  v6[3] = &unk_279DDF778;
  v6[4] = a1[6];
  [v3 prepAndRunQuery:@" SELECT     assets.type AS type onPrep:assets.specifier AS specifier onRow:assets.version AS version onError:{paths.path as path     FROM maAutoAssets AS assets INNER JOIN maAutoAssetPathRefs as paths     ON assets.rowid = paths.maAutoAssets_rowid", 0, v7, v6}];
}

uint64_t __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"type"];
  if (!v4)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:398 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnAlias:type]"}];
  }

  v5 = [v3 getNSStringForColumnAlias:"specifier"];
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:399 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnAlias:specifier]"}];
  }

  v6 = [v3 getNSStringForColumnAlias:"version"];
  if (!v6)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:400 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnAlias:version]"}];
  }

  v7 = [v3 getNSStringForColumnAlias:"path"];
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:401 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnAlias:path]"}];
  }

  v8 = a1[5];
  v9 = [objc_alloc(MEMORY[0x277D73740]) initWithType:v4 specifier:v5 version:v6];
  (*(v8 + 16))(v8, v9, v7);

  v10 = MEMORY[0x277D42690];
  return *v10;
}

uint64_t __66__TRIAssetStoreDatabase_enumerateAllAutoAssetReferencesWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Enumeration failed with error:%@", &v8, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (void)enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  paths = self->_paths;
  if (paths)
  {
    mEMORY[0x277D737E0] = paths;
  }

  else
  {
    mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  }

  v8 = mEMORY[0x277D737E0];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__28;
  v33 = __Block_byref_object_dispose__28;
  v34 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__TRIAssetStoreDatabase_enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock___block_invoke;
  v28[3] = &unk_279DE24D8;
  v28[5] = &v29;
  v28[6] = a2;
  v28[4] = self;
  v27 = MEMORY[0x2743948D0](v28);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v27];
  v9 = [MEMORY[0x277CBEB58] setWithArray:v30[5]];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  treatmentsDir = [(TRIPaths *)v8 treatmentsDir];
  v12 = [defaultManager enumeratorAtPath:treatmentsDir];

  if (!v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      treatmentsDir2 = [(TRIPaths *)v8 treatmentsDir];
      *buf = 138543362;
      v36 = treatmentsDir2;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to find subpaths of treatments dir %{public}@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277CCA1F0];
  do
  {
    v15 = objc_autoreleasePoolPush();
    nextObject = [v12 nextObject];
    v17 = nextObject;
    if (nextObject)
    {
      if ([nextObject containsString:@"maRefs/"])
      {
        fileAttributes = [v12 fileAttributes];
        fileType = [fileAttributes fileType];
        v20 = fileType == v14;

        if (v20)
        {
          treatmentsDir3 = [(TRIPaths *)v8 treatmentsDir];
          v22 = [treatmentsDir3 stringByAppendingPathComponent:v17];

          v23 = [v9 member:v22];
          LODWORD(treatmentsDir3) = v23 == 0;

          if (treatmentsDir3)
          {
            v24 = TRILogCategory_Server();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v36 = v22;
              _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Found missing MA ref db entry: %{public}@", buf, 0xCu);
            }

            blockCopy[2](blockCopy, v22);
          }
        }
      }
    }

    objc_autoreleasePoolPop(v15);
  }

  while (v17);

  _Block_object_dispose(&v29, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __98__TRIAssetStoreDatabase_enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__TRIAssetStoreDatabase_enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock___block_invoke_2;
  v4[3] = &unk_279DE1EB0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  [v3 prepAndRunQuery:@"SELECT rowid onPrep:maAutoAssets_rowid onRow:path FROM maAutoAssetPathRefs;" onError:{0, v4, 0}];
}

uint64_t __98__TRIAssetStoreDatabase_enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"path" table:0];
  if (!v3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:429 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:path table:nil]"}];
  }

  [*(*(a1[5] + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (void)enumerateAssetIdsWithoutLiveReferencesUsingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke;
  v8[3] = &unk_279DE2550;
  v9 = blockCopy;
  v10 = a2;
  v8[4] = self;
  v6 = blockCopy;
  v7 = MEMORY[0x2743948D0](v8);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v7];
}

void __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  arc4random_buf(__buf, 0x10uLL);
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:__buf length:16 freeWhenDone:0];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [v4 triHexlify];
  v7 = [v5 initWithFormat:@"temp_rowIdsToRemove_%@", v6];

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CREATE TEMP TABLE %@ (rowid INTEGER PRIMARY KEY);", v7];
  v9 = [v3 db];
  [v9 prepAndRunQuery:v8 onPrep:0 onRow:0 onError:0];

  v10 = [v3 db];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_2;
  v30[3] = &unk_279DE2500;
  v11 = *(a1 + 32);
  v33 = *(a1 + 48);
  v30[4] = v11;
  v12 = v3;
  v31 = v12;
  v13 = v7;
  v32 = v13;
  [v10 prepAndRunQuery:@"SELECT rowid onPrep:maAutoAssets_rowid onRow:path FROM maAutoAssetPathRefs;" onError:{0, v30, 0}];

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     maAutoAssetPathRefs WHERE     rowid IN (SELECT rowid FROM %@);", v13];
  v15 = [v12 db];
  [v15 prepAndRunQuery:v14 onPrep:0 onRow:0 onError:0];

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@;", v13];
  v17 = [v12 db];
  [v17 prepAndRunQuery:v16 onPrep:0 onRow:0 onError:0];

  v18 = [v12 db];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_4;
  v26[3] = &unk_279DE2528;
  v26[4] = *(a1 + 32);
  v25 = *(a1 + 40);
  v19 = v25;
  v29 = v25;
  v27 = v12;
  v28 = v13;
  v20 = v13;
  v21 = v12;
  [v18 prepAndRunQuery:@" SELECT rowid AS r onPrep:type onRow:specifier onError:{version FROM     maAutoAssets WHERE     NOT EXISTS(        SELECT * FROM             maAutoAssetPathRefs         WHERE             maAutoAssets_rowid = r    );", 0, v26, 0}];

  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     maAutoAssets WHERE     rowid IN (SELECT rowid FROM %@);", v20];
  v23 = [v21 db];
  [v23 prepAndRunQuery:v22 onPrep:0 onRow:0 onError:0];

  [*(a1 + 32) dropTableWithName:v20 transaction:v21];
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"path" table:0];
  if (!v4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreDatabase.m" lineNumber:489 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:path table:nil]"}];
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 40) db];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"INSERT INTO %@ (rowid) VALUES (:rowid);", *(a1 + 48)];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_3;
    v12[3] = &unk_279DDF860;
    v13 = v3;
    [v7 prepAndRunQuery:v8 onPrep:v12 onRow:0 onError:0];
  }

  v9 = MEMORY[0x277D42690];

  return *v9;
}

void __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":rowid" toInt64:{objc_msgSend(v2, "getInt64ForColumnName:table:", "rowid", 0)}];
}

uint64_t __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D73740]);
  v5 = [v3 getNSStringForColumnName:"type" table:0];
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a1[8] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:531 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:type table:nil]"}];
  }

  v6 = [v3 getNSStringForColumnName:"specifier" table:0];
  if (!v6)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a1[8] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:532 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:specifier table:nil]"}];
  }

  v7 = [v3 getNSStringForColumnName:"version" table:0];
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a1[8] object:a1[4] file:@"TRIAssetStoreDatabase.m" lineNumber:533 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:version table:nil]"}];
  }

  v8 = [v4 initWithType:v5 specifier:v6 version:v7];

  (*(a1[7] + 16))();
  v9 = MEMORY[0x277D42690];

  return *v9;
}

void __74__TRIAssetStoreDatabase_enumerateAssetIdsWithoutLiveReferencesUsingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":rowid" toInt64:{objc_msgSend(v2, "getInt64ForColumnName:table:", "rowid", 0)}];
}

@end