@interface TRISQLiteMADatabase
- (BOOL)dropTableWithName:(id)a3 transaction:(id)a4;
- (TRISQLiteMADatabase)initWithParentDir:(id)a3;
- (id)_predicateForAssetSelector:(id)a3;
- (id)lockContentSync:(id)a3 forAssetSelector:(id)a4 withUsagePolicy:(id)a5 withTimeout:(int64_t)a6 lockedAssetSelector:(id *)a7 newerInProgress:(id *)a8 error:(id *)a9;
- (id)locksForSelector:(id)a3;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3;
- (unint64_t)assetSizeForSelector:(id)a3;
- (void)addAutoAssetWithId:(id)a3 atPath:(id)a4;
- (void)eliminateAllForSelector:(id)a3 completion:(id)a4;
- (void)eliminatePromotedNeverLockedForSelector:(id)a3 completion:(id)a4;
- (void)endAllPreviousLocksOfReasonSync:(id)a3 forAssetSelector:(id)a4;
- (void)endAllPreviousLocksOfSelectorSync:(id)a3 forClientName:(id)a4;
@end

@implementation TRISQLiteMADatabase

- (TRISQLiteMADatabase)initWithParentDir:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"TRISQLiteMADatabase.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"parentDir"}];
  }

  v34.receiver = self;
  v34.super_class = TRISQLiteMADatabase;
  v7 = [(TRISQLiteMADatabase *)&v34 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v7->_parentDir, a3);
  v9 = [(NSString *)v8->_parentDir stringByAppendingPathComponent:@"assets"];
  assetDir = v8->_assetDir;
  v8->_assetDir = v9;

  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Device has never been unlocked prior to db initialization.", &buf, 2u);
    }

    goto LABEL_28;
  }

  v12 = [(NSString *)v8->_parentDir stringByAppendingPathComponent:@"TRISQLiteMADatabase.db"];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if ((v14 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    [v15 createDirectoryAtPath:v8->_parentDir withIntermediateDirectories:1 attributes:0 error:0];
  }

  v16 = MEMORY[0x277D42630];
  v17 = objc_opt_new();
  v33 = 0;
  v18 = [v16 sqliteDatabaseWithFilename:v12 contentProtection:3 errorHandler:v17 error:&v33];
  v19 = v33;
  db = v8->_db;
  v8->_db = v18;

  v21 = v8->_db;
  if (!v21)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to instantiate new database handle: %{public}@", &buf, 0xCu);
    }

    goto LABEL_27;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __41__TRISQLiteMADatabase_initWithParentDir___block_invoke;
  v32[3] = &unk_279DDF778;
  v32[4] = &buf;
  if (([(_PASSqliteDatabase *)v21 prepAndRunNonDataQueries:&unk_287FC4F00 onError:v32]& 1) == 0)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = *(*(&buf + 1) + 40);
      *v35 = 138543362;
      v36 = v30;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to run initial database pragmas: %{public}@", v35, 0xCu);
    }

    [(_PASSqliteDatabase *)v8->_db closePermanently];
    v26 = v8->_db;
    v8->_db = 0;

    if ((v14 & 1) == 0)
    {
      [MEMORY[0x277D42630] truncateDatabaseAtPath:v12];
    }

    _Block_object_dispose(&buf, 8);

LABEL_27:
LABEL_28:
    v23 = 0;
    goto LABEL_29;
  }

  _Block_object_dispose(&buf, 8);

  if ((v14 & 1) == 0)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Created new database: %{public}@", &buf, 0xCu);
    }
  }

  if (![(TRISQLiteMADatabase *)v8 migrateToVersion:*MEMORY[0x277D426A0]])
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "TRISQLiteMADatabase: migrations failed", &buf, 2u);
    }

    goto LABEL_28;
  }

LABEL_18:
  v23 = v8;
LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __29__TRISQLiteMADatabase_vacuum__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v2;
    _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "TRISQLiteMADatabase incremental vacuum failed: %{public}@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (BOOL)dropTableWithName:(id)a3 transaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRISQLiteMADatabase.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRISQLiteMADatabase.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@;", v7];
  v11 = [v9 db];
  v12 = [v11 prepAndRunQuery:v10 onPrep:0 onRow:0 onError:0];

  return v12;
}

- (id)migrations
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6[0] = @" CREATE TABLE Assets(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     originalContentPath TEXT NOT NULL,     assetPath TEXT,     type TEXT NOT NULL,     specifier TEXT NOT NULL,     version TEXT NOT NULL,     downloaded INTEGER NOT NULL,     assetSize INTEGER NOT NULL,     UNIQUE (type, specifier, version));";
  v6[1] = @" CREATE TABLE Locks(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     type TEXT NOT NULL,     specifier TEXT NOT NULL,     version TEXT NOT NULL,     reason TEXT NOT NULL);";
  v7 = &unk_287FC4618;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (id)_predicateForAssetSelector:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 assetVersion];

  v7 = @" AND version=:version";
  if (!v6)
  {
    v7 = &stru_287FA0430;
  }

  v8 = [v5 initWithFormat:@"type=:type AND specifier=:specifier%@", v7];

  return v8;
}

- (void)addAutoAssetWithId:(id)a3 atPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __49__TRISQLiteMADatabase_addAutoAssetWithId_atPath___block_invoke;
  v14 = &unk_279DDFB88;
  v15 = v7;
  v16 = v6;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x2743948D0](&v11);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v10, v11, v12, v13, v14}];
}

void __49__TRISQLiteMADatabase_addAutoAssetWithId_atPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = [v5 attributesOfItemAtPath:*(a1 + 32) error:0];
  v7 = [v6 fileSize];

  v8 = [v4 db];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TRISQLiteMADatabase_addAutoAssetWithId_atPath___block_invoke_2;
  v9[3] = &unk_279DDF8D0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v7;
  [v8 prepAndRunQuery:@" INSERT INTO     Assets (originalContentPath onPrep:type onRow:specifier onError:{version, downloaded, assetSize)     VALUES (:originalContentPath, :type, :specifier, :version, 0, :assetSize);", v9, 0, 0}];
}

void __49__TRISQLiteMADatabase_addAutoAssetWithId_atPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":originalContentPath" toNonnullNSString:v3];
  v5 = [*(a1 + 40) type];
  [v4 bindNamedParam:":type" toNonnullNSString:v5];

  v6 = [*(a1 + 40) specifier];
  [v4 bindNamedParam:":specifier" toNonnullNSString:v6];

  v7 = [*(a1 + 40) version];
  [v4 bindNamedParam:":version" toNonnullNSString:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  [v4 bindNamedParam:":assetSize" toInt64AsNSNumber:v8];
}

- (void)endAllPreviousLocksOfReasonSync:(id)a3 forAssetSelector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__TRISQLiteMADatabase_endAllPreviousLocksOfReasonSync_forAssetSelector___block_invoke;
  v11[3] = &unk_279DDFBB0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x2743948D0](v11);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v10];
}

void __72__TRISQLiteMADatabase_endAllPreviousLocksOfReasonSync_forAssetSelector___block_invoke(id *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [a1[4] _predicateForAssetSelector:a1[5]];
  v7 = [v5 initWithFormat:@" DELETE FROM     Locks     WHERE reason=:reason AND %@;", v6];

  v8 = [v4 db];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__TRISQLiteMADatabase_endAllPreviousLocksOfReasonSync_forAssetSelector___block_invoke_2;
  v9[3] = &unk_279DDFB20;
  v10 = a1[6];
  v11 = a1[5];
  [v8 prepAndRunQuery:v7 onPrep:v9 onRow:0 onError:0];
}

void __72__TRISQLiteMADatabase_endAllPreviousLocksOfReasonSync_forAssetSelector___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 bindNamedParam:":reason" toNonnullNSString:*(a1 + 32)];
  v3 = [*(a1 + 40) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 40) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 40) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 40) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

- (void)endAllPreviousLocksOfSelectorSync:(id)a3 forClientName:(id)a4
{
  v5 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __71__TRISQLiteMADatabase_endAllPreviousLocksOfSelectorSync_forClientName___block_invoke;
  v11 = &unk_279DDFB88;
  v12 = self;
  v13 = v5;
  v6 = v5;
  v7 = MEMORY[0x2743948D0](&v8);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v7, v8, v9, v10, v11, v12}];
}

void __71__TRISQLiteMADatabase_endAllPreviousLocksOfSelectorSync_forClientName___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _predicateForAssetSelector:*(a1 + 40)];
  v7 = [v5 initWithFormat:@" DELETE FROM     Locks     WHERE %@;", v6];

  v8 = [v4 db];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TRISQLiteMADatabase_endAllPreviousLocksOfSelectorSync_forClientName___block_invoke_2;
  v9[3] = &unk_279DDF860;
  v10 = *(a1 + 40);
  [v8 prepAndRunQuery:v7 onPrep:v9 onRow:0 onError:0];
}

void __71__TRISQLiteMADatabase_endAllPreviousLocksOfSelectorSync_forClientName___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

- (void)eliminateAllForSelector:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke;
  v13 = &unk_279DDFB88;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v9 = MEMORY[0x2743948D0](&v10);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v9, v10, v11, v12, v13, v14}];
  if (v7)
  {
    v7[2](v7, v8, 0);
  }
}

void __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _predicateForAssetSelector:v4];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" DELETE FROM     Locks     WHERE %@;", v6];
  v8 = [v5 db];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_2;
  v17[3] = &unk_279DDF860;
  v18 = *(a1 + 40);
  [v8 prepAndRunQuery:v7 onPrep:v17 onRow:0 onError:0];

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" UPDATE Assets SET downloaded=0     WHERE %@;", v6];
  v10 = [v5 db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_3;
  v15[3] = &unk_279DDF860;
  v16 = *(a1 + 40);
  [v10 prepAndRunQuery:v9 onPrep:v15 onRow:0 onError:0];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" SELECT * FROM Assets     WHERE %@", v6];
  v12 = [v5 db];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_4;
  v13[3] = &unk_279DDF860;
  v14 = *(a1 + 40);
  [v12 prepAndRunQuery:v11 onPrep:v13 onRow:&__block_literal_global_410 onError:0];
}

void __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

void __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

void __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __58__TRISQLiteMADatabase_eliminateAllForSelector_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a2 getNSStringForColumnName:"assetPath" table:0];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    v4 = [v3 removeItemAtPath:v2 error:&v9];
    v5 = v9;

    if ((v4 & 1) == 0)
    {
      v6 = TRILogCategory_Server();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v2;
        v12 = 2112;
        v13 = v5;
        _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to remove mocked MA asset at path %@: %@", buf, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (void)eliminatePromotedNeverLockedForSelector:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke;
  v13 = &unk_279DDFB88;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v9 = MEMORY[0x2743948D0](&v10);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v9, v10, v11, v12, v13, v14}];
  if (v7)
  {
    v7[2](v7, v8, 0);
  }
}

void __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [*(a1 + 32) _predicateForAssetSelector:*(a1 + 40)];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" SELECT * FROM     Assets     WHERE downloaded=1 AND %@;", v5];
  v7 = [v3 db];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_2;
  v29[3] = &unk_279DDF860;
  v30 = *(a1 + 40);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_3;
  v27[3] = &unk_279DDFBF8;
  v8 = v4;
  v28 = v8;
  [v7 prepAndRunQuery:v6 onPrep:v29 onRow:v27 onError:0];

  v9 = [v3 db];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_4;
  v25[3] = &unk_279DDFBF8;
  v10 = v8;
  v26 = v10;
  [v9 prepAndRunQuery:@" SELECT * FROM     Locks" onPrep:0 onRow:v25 onError:0];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_5;
  v23[3] = &unk_279DDFC20;
  v11 = v3;
  v24 = v11;
  v12 = MEMORY[0x2743948D0](v23);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12[2](v12, *(*(&v19 + 1) + 8 * v17++));
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"type" table:0];
  v5 = [v3 nonnullNSStringForColumnName:"specifier" table:0];
  v6 = [v3 nonnullNSStringForColumnName:"version" table:0];

  v7 = *(a1 + 32);
  v8 = [objc_alloc(MEMORY[0x277D73740]) initWithType:v4 specifier:v5 version:v6];
  [v7 addObject:v8];

  v9 = MEMORY[0x277D42690];
  return *v9;
}

uint64_t __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nonnullNSStringForColumnName:"type" table:0];
  v5 = [v3 nonnullNSStringForColumnName:"specifier" table:0];
  v6 = [v3 nonnullNSStringForColumnName:"version" table:0];

  v7 = *(a1 + 32);
  v8 = [objc_alloc(MEMORY[0x277D73740]) initWithType:v4 specifier:v5 version:v6];
  [v7 removeObject:v8];

  v9 = MEMORY[0x277D42690];
  return *v9;
}

void __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_6;
  v10[3] = &unk_279DDF860;
  v5 = v3;
  v11 = v5;
  [v4 prepAndRunQuery:@" UPDATE Assets SET downloaded=0     WHERE type=:type AND specifier=:specifier AND version=:version;" onPrep:v10 onRow:0 onError:0];

  v6 = [*(a1 + 32) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_7;
  v8[3] = &unk_279DDF860;
  v9 = v5;
  v7 = v5;
  [v6 prepAndRunQuery:@" SELECT * FROM Assets     WHERE type=:type AND specifier=:specifier AND version=:version;" onPrep:v8 onRow:&__block_literal_global_430 onError:0];
}

void __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_6(uint64_t a1, void *a2)
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

void __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_7(uint64_t a1, void *a2)
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

uint64_t __74__TRISQLiteMADatabase_eliminatePromotedNeverLockedForSelector_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a2 nonnullNSStringForColumnName:"assetPath" table:0];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v4 = [v3 removeItemAtPath:v2 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v2;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to remove mocked MA asset at path %@: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (id)lockContentSync:(id)a3 forAssetSelector:(id)a4 withUsagePolicy:(id)a5 withTimeout:(int64_t)a6 lockedAssetSelector:(id *)a7 newerInProgress:(id *)a8 error:(id *)a9
{
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [v15 assetVersion];

  if (v17)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__3;
    v37 = __Block_byref_object_dispose__3;
    v38 = 0;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke;
    v27 = &unk_279DDFCC0;
    v28 = self;
    v29 = v15;
    v32 = a2;
    v30 = v14;
    p_buf = &buf;
    v33 = a6;
    v18 = MEMORY[0x2743948D0](&v24);
    [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:{v18, v24, v25, v26, v27, v28}];
    if (*(*(&buf + 1) + 40))
    {
      v19 = objc_alloc(MEMORY[0x277CBEBC0]);
      v20 = [v19 initWithString:*(*(&buf + 1) + 40)];
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "lockContentSync called with incomplete asset selector (missing asset version): %@", &buf, 0xCu);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

void __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _predicateForAssetSelector:*(a1 + 40)];
  v5 = [v3 db];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_2;
  v42[3] = &unk_279DDFC48;
  v6 = *(a1 + 40);
  v46 = *(a1 + 64);
  v7 = *(a1 + 32);
  v43 = v6;
  v44 = v7;
  v45 = *(a1 + 48);
  [v5 prepAndRunQuery:@" INSERT INTO     Locks (type onPrep:specifier onRow:version onError:{reason)     VALUES (:type, :specifier, :version, :reason);", v42, 0, &__block_literal_global_442}];

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" SELECT * FROM Assets     WHERE %@;", v4];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v9 = [v3 db];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_4;
  v30[3] = &unk_279DDF860;
  v31 = *(a1 + 40);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_5;
  v29[3] = &unk_279DDFC70;
  v29[4] = *(a1 + 56);
  v29[5] = &v32;
  v29[6] = &v38;
  [v9 prepAndRunQuery:v8 onPrep:v30 onRow:v29 onError:&__block_literal_global_449];

  if ((v39[3] & 1) == 0 && *(a1 + 72))
  {
    v10 = NSTemporaryDirectory();
    v11 = objc_opt_new();
    v12 = [v11 UUIDString];
    v13 = [v10 stringByAppendingPathComponent:v12];

    v14 = objc_opt_new();
    v15 = [v14 UUIDString];
    v16 = [v13 stringByAppendingPathComponent:v15];

    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v33[5]];
    if (v17)
    {
      [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v13];
      [v17 writeToFile:v16 atomically:1];
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" UPDATE Assets SET downloaded=1, assetPath=:assetPath     WHERE %@;", v4];
      v19 = [v3 db];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_455;
      v26[3] = &unk_279DDFB20;
      v27 = v13;
      v28 = *(a1 + 40);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_2_457;
      v25[3] = &unk_279DDFC98;
      v25[4] = *(a1 + 56);
      [v19 prepAndRunQuery:v18 onPrep:v26 onRow:v25 onError:&__block_literal_global_460];
    }

    else
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v33[5];
        *buf = 138412290;
        v48 = v23;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Error reading asset contents from %@", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  v20 = *(*(a1 + 56) + 8);
  if (!*(v20 + 40))
  {
    v13 = 0;
    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v21 fileExistsAtPath:*(*(*(a1 + 56) + 8) + 40)];

  if ((v22 & 1) == 0)
  {
    v20 = *(*(a1 + 56) + 8);
    v13 = *(v20 + 40);
LABEL_9:
    *(v20 + 40) = 0;
LABEL_13:
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRISQLiteMADatabase.m" lineNumber:486 description:{@"Expression was unexpectedly nil/false: %@", @"assetSelector.assetVersion"}];
  }

  [v7 bindNamedParam:":version" toNonnullNSString:v5];

  [v7 bindNamedParam:":reason" toNonnullNSString:*(a1 + 48)];
}

void __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"downloaded" table:0];
  v5 = [v3 getNSStringForColumnName:"assetPath" table:0];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 getNSStringForColumnName:"originalContentPath" table:0];

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v4 && *(*(a1[4] + 8) + 40))
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    *(*(a1[6] + 8) + 24) = [v11 fileExistsAtPath:*(*(a1[4] + 8) + 40)];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  return *MEMORY[0x277D42690];
}

void __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_455(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 bindNamedParam:":assetPath" toNonnullNSString:*(a1 + 32)];
  v3 = [*(a1 + 40) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 40) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 40) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 40) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __126__TRISQLiteMADatabase_lockContentSync_forAssetSelector_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error___block_invoke_2_457(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"assetPath" table:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

- (id)locksForSelector:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__TRISQLiteMADatabase_locksForSelector___block_invoke;
  v11[3] = &unk_279DDFBB0;
  v11[4] = self;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  v8 = MEMORY[0x2743948D0](v11);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v8];
  v9 = v6;

  return v6;
}

void __40__TRISQLiteMADatabase_locksForSelector___block_invoke(id *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [a1[4] _predicateForAssetSelector:a1[5]];
  v7 = [v5 initWithFormat:@" SELECT * FROM Locks     WHERE %@;", v6];

  v8 = [v4 db];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__TRISQLiteMADatabase_locksForSelector___block_invoke_2;
  v11[3] = &unk_279DDF860;
  v12 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__TRISQLiteMADatabase_locksForSelector___block_invoke_3;
  v9[3] = &unk_279DDFBF8;
  v10 = a1[6];
  [v8 prepAndRunQuery:v7 onPrep:v11 onRow:v9 onError:0];
}

void __40__TRISQLiteMADatabase_locksForSelector___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __40__TRISQLiteMADatabase_locksForSelector___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"reason" table:0];
  if (v3)
  {
    [*(a1 + 32) setObject:&unk_287FC4618 forKey:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (unint64_t)assetSizeForSelector:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke;
  v9[3] = &unk_279DDFCE8;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  v6 = MEMORY[0x2743948D0](v9);
  [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db block:v6];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _predicateForAssetSelector:*(a1 + 40)];
  v7 = [v5 initWithFormat:@" SELECT * FROM Assets     WHERE %@;", v6];

  v8 = [v4 db];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke_2;
  v10[3] = &unk_279DDF860;
  v11 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke_3;
  v9[3] = &unk_279DDFC98;
  v9[4] = *(a1 + 48);
  [v8 prepAndRunQuery:v7 onPrep:v10 onRow:v9 onError:0];
}

void __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) assetType];
  [v7 bindNamedParam:":type" toNonnullNSString:v3];

  v4 = [*(a1 + 32) assetSpecifier];
  [v7 bindNamedParam:":specifier" toNonnullNSString:v4];

  v5 = [*(a1 + 32) assetVersion];

  if (v5)
  {
    v6 = [*(a1 + 32) assetVersion];
    [v7 bindNamedParam:":version" toNonnullNSString:v6];
  }
}

uint64_t __44__TRISQLiteMADatabase_assetSizeForSelector___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumnName:"assetSize" table:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 unsignedLongLongValue];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

@end