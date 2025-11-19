@interface _PASSqliteDatabase
+ (BOOL)isInMemoryPath:(id)a3;
+ (_PASSqliteDatabase)sqliteDatabaseWithFilename:(id)a3 contentProtection:(int64_t)a4 errorHandler:(id)a5 error:(id *)a6;
+ (id)initializeDatabase:(id)a3 withContentProtection:(int64_t)a4 newDatabaseCreated:(BOOL *)a5 errorHandler:(id)a6;
+ (id)initializeDatabase:(id)a3 withProtection:(BOOL)a4 newDatabaseCreated:(BOOL *)a5;
+ (id)randomlyNamedInMemoryPathWithBaseName:(id)a3;
+ (id)recreateCorruptDatabase:(id)a3 withContentProtection:(int64_t)a4;
+ (id)sqliteDatabaseInMemoryWithError:(id *)a3 errorHandler:(id)a4;
+ (void)runDebugCommand:(const char *)a3 onDbWithHandle:(id)a4;
+ (void)truncateDatabaseAtPath:(id)a3;
- (BOOL)_isLikelySQLStatementContainedInString:(const char *)a3;
- (BOOL)createSnapshot:(id)a3;
- (BOOL)enableQueryPlanLoggingWithPath:(id)a3;
- (BOOL)frailReadTransaction:(id)a3;
- (BOOL)frailWriteTransaction:(id)a3;
- (BOOL)hasColumnOnTable:(id)a3 named:(id)a4;
- (BOOL)hasIndexNamed:(id)a3;
- (BOOL)hasTableNamed:(id)a3;
- (BOOL)prepAndRunNonDataQueries:(id)a3 onError:(id)a4;
- (BOOL)prepAndRunQuery:(id)a3 onPrep:(id)a4 onRow:(id)a5 onError:(id)a6;
- (BOOL)prepQuery:(id)a3 onPrep:(id)a4 onError:(id)a5;
- (BOOL)runQuery:(id)a3 onRow:(id)a4 onError:(id)a5;
- (BOOL)vacuumWithShouldContinueBlock:(id)a3 error:(id *)a4;
- (_PASDBTransactionCompletion_)_transactionWithExclusivity:(BOOL)a3 transaction:(id)a4;
- (_PASSqliteDatabase)initWithFilename:(id)a3 flags:(int)a4 error:(id *)a5 errorHandler:(id)a6;
- (id)description;
- (id)freeSpace;
- (id)languageForFTSTable:(id)a3;
- (id)selectColumns:(id)a3 fromTable:(id)a4 whereClause:(id)a5 onPrep:(id)a6 onError:(id)a7;
- (id)tablesWithColumnNamed:(id)a3;
- (int64_t)lastInsertRowId;
- (unint64_t)_pagesToVacuum;
- (unint64_t)numberOfRowsInTable:(id)a3;
- (unint64_t)valueForPragmaName:(id)a3;
- (unsigned)userVersion;
- (void)_logQueryPlanForQuery:(id)a3;
- (void)_prepAndRunQuery:(id)a3 columns:(id)a4 dictionary:(id)a5 onError:(id)a6;
- (void)_prepareForFirstQuery;
- (void)closePermanently;
- (void)dealloc;
- (void)disableQueryPlanLogging;
- (void)insertIntoTable:(id)a3 dictionary:(id)a4;
- (void)insertOrReplaceIntoTable:(id)a3 dictionary:(id)a4 onError:(id)a5;
- (void)placeCorruptionMarker;
- (void)readTransaction:(id)a3;
- (void)updateTable:(id)a3 dictionary:(id)a4 whereClause:(id)a5 onError:(id)a6;
- (void)withDbLockExecuteBlock:(id)a3;
- (void)writeTransaction:(id)a3;
@end

@implementation _PASSqliteDatabase

- (void)_prepareForFirstQuery
{
  if (!self->_preparedForFirstQuery)
  {
    LODWORD(v3) = 1008981770;
    v5 = [_PASBloomFilterForWriting bloomFilterInMemoryWithNumberOfValuesN:10000 errorRateP:v3];
    bloomFilter = self->_bloomFilter;
    self->_bloomFilter = v5;

    v7 = [(_PASBloomFilter *)self->_bloomFilter newHashesArray];
    hashArray = self->_hashArray;
    self->_hashArray = v7;

    self->_preparedForFirstQuery = 1;
    if (self->_isInMemory)
    {
      [(_PASSqliteDatabase *)self prepAndRunQuery:@"PRAGMA temp_store=MEMORY" onPrep:0 onRow:0 onError:&__block_literal_global_91];
    }

    db = self->_db;

    sqlite3_create_function(db, "_pas_block", -1, 526337, 0, sqliteBlockFunction, 0, 0);
  }
}

- (unsigned)userVersion
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33___PASSqliteDatabase_userVersion__block_invoke;
  v6[3] = &unk_1E77F2610;
  v6[4] = &v7;
  [(_PASSqliteDatabase *)self prepAndRunQuery:@"PRAGMA user_version" onPrep:0 onRow:v6 onError:&__block_literal_global_243];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v8 + 6);
    *buf = 67109120;
    v12 = v5;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Returning user_version of: %u", buf, 8u);
  }

  v2 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  [(_PASSqliteDatabase *)self closePermanently];
  v3.receiver = self;
  v3.super_class = _PASSqliteDatabase;
  [(_PASSqliteDatabase *)&v3 dealloc];
}

- (void)closePermanently
{
  v10 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_isClosed._Value, 1u) & 1) == 0)
  {
    pthread_mutex_destroy(&self->_lock);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "closing %@", buf, 0xCu);
    }

    v3 = sqlite3_close(self->_db);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v9) = v4;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "sqlite3_close returned %d", buf, 8u);
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"sqlite3_close returned %d", v4}];
    }

    db = self->_db;
    ITSCollationContextFreeContextForDatabaseHandle();
    self->_db = 0;
    explainedQueriesLogFile = self->_explainedQueriesLogFile;
    if (explainedQueriesLogFile)
    {
      fclose(explainedQueriesLogFile);
      self->_explainedQueriesLogFile = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)placeCorruptionMarker
{
  if (![(_PASSqliteDatabase *)self isInMemory])
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "db corruption detected, leaving behind marker so we recover", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "db corruption detected, leaving behind marker so we recover", v6, 2u);
    }

    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(_PASSqliteDatabase *)self filename];
    v5 = [_PASSqliteDatabase corruptionMarkerPathForPath:v4];
    [v3 createFileAtPath:v5 contents:0 attributes:0];
  }
}

- (id)freeSpace
{
  if (self->_transactionRolledback || [(_PASSqliteDatabase *)self isInMemory])
  {
    v3 = 0;
    goto LABEL_17;
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(_PASSqliteDatabase *)self filename];
  v16 = 0;
  v6 = [v4 attributesOfFileSystemForPath:v5 error:&v16];
  v7 = v16;

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot calculate free space", buf, 2u);
    }

    v3 = 0;
    goto LABEL_16;
  }

  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A3C0]];
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

    v14 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Free space attribute is missing";
    v11 = &v14;
LABEL_21:
    _os_log_error_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v13 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Free space attribute is not an NSNumber";
    v11 = &v13;
    goto LABEL_21;
  }

  v3 = v8;
LABEL_15:

LABEL_16:
LABEL_17:

  return v3;
}

- (void)disableQueryPlanLogging
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45___PASSqliteDatabase_disableQueryPlanLogging__block_invoke;
  v2[3] = &unk_1E77F2DA0;
  v2[4] = self;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v2];
}

- (BOOL)enableQueryPlanLoggingWithPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1813 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53___PASSqliteDatabase_enableQueryPlanLoggingWithPath___block_invoke;
  v10[3] = &unk_1E77F2890;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  v12 = &v13;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v10];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (id)languageForFTSTable:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3437;
  v15 = __Block_byref_object_dispose__3438;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___PASSqliteDatabase_languageForFTSTable___block_invoke;
  v9[3] = &unk_1E77F2818;
  v5 = v4;
  v10 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___PASSqliteDatabase_languageForFTSTable___block_invoke_2;
  v8[3] = &unk_1E77F2610;
  v8[4] = &v11;
  [(_PASSqliteDatabase *)self prepAndRunQuery:@"SELECT sql FROM sqlite_master WHERE type='table' AND name=:table" onPrep:v9 onRow:v8 onError:&__block_literal_global_280];
  if ([v12[5] isEqualToString:&stru_1F1B24B60])
  {
    v6 = 0;
  }

  else
  {
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)withDbLockExecuteBlock:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_group_enter(self->_waitingForLock);
  pthread_mutex_lock(&self->_lock);
  dispatch_group_leave(self->_waitingForLock);
  statementCache = self->_statementCache;
  if (!statementCache)
  {
    v6 = objc_opt_new();
    v7 = self->_statementCache;
    self->_statementCache = v6;
  }

  v8 = objc_autoreleasePoolPush();
  v4[2](v4);
  objc_autoreleasePoolPop(v8);
  if (!statementCache)
  {
    v9 = self->_statementCache;
    if (v9)
    {
      associatedObjects = v9->_associatedObjects;
      v11 = 8;
      do
      {
        sqlite3_finalize(*(associatedObjects - 8));
        if (*associatedObjects)
        {
          CFRelease(*associatedObjects);
        }

        ++associatedObjects;
        --v11;
      }

      while (v11);
      v9 = self->_statementCache;
    }

    self->_statementCache = 0;
  }

  pthread_mutex_unlock(&self->_lock);

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)numberOfRowsInTable:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [@"SELECT count(*) FROM " stringByAppendingString:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___PASSqliteDatabase_numberOfRowsInTable___block_invoke;
  v11[3] = &unk_1E77F2610;
  v11[4] = &v12;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___PASSqliteDatabase_numberOfRowsInTable___block_invoke_2;
  v9[3] = &unk_1E77F2868;
  v6 = v4;
  v10 = v6;
  [(_PASSqliteDatabase *)self prepAndRunQuery:v5 onPrep:0 onRow:v11 onError:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)hasIndexNamed:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___PASSqliteDatabase_hasIndexNamed___block_invoke;
  v8[3] = &unk_1E77F2818;
  v5 = v4;
  v9 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___PASSqliteDatabase_hasIndexNamed___block_invoke_2;
  v7[3] = &unk_1E77F2610;
  v7[4] = &v10;
  [(_PASSqliteDatabase *)self prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type='index' AND name=?" onPrep:v8 onRow:v7 onError:0];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (BOOL)hasColumnOnTable:(id)a3 named:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma table_info(%@)", v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___PASSqliteDatabase_hasColumnOnTable_named___block_invoke;
  v11[3] = &unk_1E77F2840;
  v9 = v7;
  v12 = v9;
  v13 = &v14;
  [(_PASSqliteDatabase *)self prepAndRunQuery:v8 onPrep:0 onRow:v11 onError:0];

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (id)tablesWithColumnNamed:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3437;
  v17 = __Block_byref_object_dispose__3438;
  v18 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44___PASSqliteDatabase_tablesWithColumnNamed___block_invoke;
  v11[3] = &unk_1E77F2818;
  v12 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44___PASSqliteDatabase_tablesWithColumnNamed___block_invoke_2;
  v8[3] = &unk_1E77F2840;
  v10 = &v13;
  v5 = v12;
  v9 = v5;
  [(_PASSqliteDatabase *)self prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type='table' AND (sql LIKE ? OR sql LIKE ?)" onPrep:v11 onRow:v8 onError:0];
  v6 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v6;
}

- (BOOL)hasTableNamed:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___PASSqliteDatabase_hasTableNamed___block_invoke;
  v8[3] = &unk_1E77F2818;
  v5 = v4;
  v9 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___PASSqliteDatabase_hasTableNamed___block_invoke_2;
  v7[3] = &unk_1E77F2610;
  v7[4] = &v10;
  [(_PASSqliteDatabase *)self prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type='table' AND name=?" onPrep:v8 onRow:v7 onError:0];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (BOOL)createSnapshot:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1554 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
  }

  ppDb = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v21) = 138412290;
    *(&v21 + 4) = v5;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "opening to backup: %@", &v21, 0xCu);
  }

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x2020000000;
  v6 = v5;
  v23 = sqlite3_open_v2([v5 UTF8String], &ppDb, 327686, 0);
  if (*(*(&v21 + 1) + 24))
  {
    v7 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to open sqlite3 backup file %@.", &buf, 0xCu);
      v7 = 0;
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37___PASSqliteDatabase_createSnapshot___block_invoke;
    v12[3] = &unk_1E77F27C8;
    v12[4] = self;
    p_buf = &buf;
    v15 = &v21;
    v16 = ppDb;
    v8 = v5;
    v13 = v8;
    [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v12];
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "closing backup db: %@", &buf, 0xCu);
    }

    sqlite3_close(ppDb);
  }

  _Block_object_dispose(&v21, 8);

  v9 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  filename = self->_filename;
  v7 = [v3 initWithFormat:@"[%@: %@ <%p>]", v5, filename, self->_db];

  return v7;
}

- (_PASDBTransactionCompletion_)_transactionWithExclusivity:(BOOL)a3 transaction:(id)a4
{
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2810000000;
  v18 = "";
  v19 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62___PASSqliteDatabase__transactionWithExclusivity_transaction___block_invoke;
  v10[3] = &unk_1E77F27A0;
  v14 = a3;
  v12 = &v15;
  v13 = a2;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v10];
  LOBYTE(a2) = *(v16 + 32);

  _Block_object_dispose(&v15, 8);
  return a2;
}

- (BOOL)frailWriteTransaction:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___PASSqliteDatabase_frailWriteTransaction___block_invoke;
  v7[3] = &unk_1E77F2778;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(_PASSqliteDatabase *)self writeTransactionWithFailableBlock:v7];

  return (self & 1) == 0;
}

- (BOOL)frailReadTransaction:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___PASSqliteDatabase_frailReadTransaction___block_invoke;
  v7[3] = &unk_1E77F2778;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(_PASSqliteDatabase *)self readTransactionWithFailableBlock:v7];

  return (self & 1) == 0;
}

- (void)writeTransaction:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___PASSqliteDatabase_writeTransaction___block_invoke;
  v6[3] = &unk_1E77F2750;
  v7 = v4;
  v5 = v4;
  [(_PASSqliteDatabase *)self frailWriteTransaction:v6];
}

- (void)readTransaction:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___PASSqliteDatabase_readTransaction___block_invoke;
  v6[3] = &unk_1E77F2750;
  v7 = v4;
  v5 = v4;
  [(_PASSqliteDatabase *)self frailReadTransaction:v6];
}

- (id)selectColumns:(id)a3 fromTable:(id)a4 whereClause:(id)a5 onPrep:(id)a6 onError:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = MEMORY[0x1E696AEC0];
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = [v14 alloc];
  v19 = [v12 _pas_componentsJoinedByString:{@", "}];
  v20 = [v18 initWithFormat:@"SELECT %@ FROM %@", v19, v17];

  if (v13)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %@", v13];
    v22 = [v20 stringByAppendingString:v21];

    v20 = v22;
  }

  v23 = objc_opt_new();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __73___PASSqliteDatabase_selectColumns_fromTable_whereClause_onPrep_onError___block_invoke;
  v29[3] = &unk_1E77F2728;
  v30 = v12;
  v24 = v23;
  v31 = v24;
  v25 = v12;
  [(_PASSqliteDatabase *)self prepAndRunQuery:v20 onPrep:v16 onRow:v29 onError:v15];

  v26 = v31;
  v27 = v24;

  return v24;
}

- (void)insertIntoTable:(id)a3 dictionary:(id)a4
{
  v16 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 allKeys];
  objc_autoreleasePoolPop(v8);
  if (![v9 count])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1373 description:@"insertIntoTable:dictionary: requires nonempty dictionary"];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v9 _pas_componentsJoinedByString:{@", "}];
  v13 = _PASQMarksSeparatedByCommas([v9 count]);
  v14 = [v11 initWithFormat:@"INSERT INTO %@ (%@) VALUES (%@)", v16, v12, v13];

  objc_autoreleasePoolPop(v10);
  [(_PASSqliteDatabase *)self _prepAndRunQuery:v14 columns:v9 dictionary:v7 onError:0];
}

- (void)insertOrReplaceIntoTable:(id)a3 dictionary:(id)a4 onError:(id)a5
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 allKeys];
  objc_autoreleasePoolPop(v11);
  if (![v12 count])
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1363 description:@"insertOrReplaceIntoTable:dictionary: requires nonempty dictionary"];
  }

  v13 = objc_autoreleasePoolPush();
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [v12 _pas_componentsJoinedByString:{@", "}];
  v16 = _PASQMarksSeparatedByCommas([v12 count]);
  v17 = [v14 initWithFormat:@"INSERT OR REPLACE INTO %@ (%@) VALUES (%@)", v19, v15, v16];

  objc_autoreleasePoolPop(v13);
  [(_PASSqliteDatabase *)self _prepAndRunQuery:v17 columns:v12 dictionary:v9 onError:v10];
}

- (void)updateTable:(id)a3 dictionary:(id)a4 whereClause:(id)a5 onError:(id)a6
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [v11 allKeys];
  objc_autoreleasePoolPop(v14);
  if (![v15 count])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1351 description:@"updateTable:dictionary:whereClause: requires nonempty dictionary"];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v15 _pas_componentsJoinedByString:{@"=?, "}];
  v19 = [v18 stringByAppendingString:@"=?"];
  v20 = v19;
  if (v12)
  {
    v21 = [@" WHERE " stringByAppendingString:v12];
    v22 = [v17 initWithFormat:@"UPDATE %@ SET %@%@", v24, v20, v21];
  }

  else
  {
    v22 = [v17 initWithFormat:@"UPDATE %@ SET %@%@", v24, v19, &stru_1F1B24B60];
  }

  objc_autoreleasePoolPop(v16);
  [(_PASSqliteDatabase *)self _prepAndRunQuery:v22 columns:v15 dictionary:v11 onError:v13];
}

- (BOOL)prepAndRunNonDataQueries:(id)a3 onError:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![(_PASSqliteDatabase *)self prepAndRunQuery:*(*(&v16 + 1) + 8 * i) onPrep:0 onRow:0 onError:v7, v16])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_prepAndRunQuery:(id)a3 columns:(id)a4 dictionary:(id)a5 onError:(id)a6
{
  v10 = a4;
  v11 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66___PASSqliteDatabase__prepAndRunQuery_columns_dictionary_onError___block_invoke;
  v14[3] = &unk_1E77F2700;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(_PASSqliteDatabase *)self prepAndRunQuery:a3 onPrep:v14 onRow:0 onError:a6];
}

- (BOOL)prepAndRunQuery:(id)a3 onPrep:(id)a4 onRow:(id)a5 onError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v14 = objc_autoreleasePoolPush();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___PASSqliteDatabase_prepAndRunQuery_onPrep_onRow_onError___block_invoke;
  v20[3] = &unk_1E77F26D8;
  v15 = v11;
  v24 = &v25;
  v20[4] = self;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v17 = v13;
  v23 = v17;
  v18 = [(_PASSqliteDatabase *)self prepQuery:v10 onPrep:v20 onError:v17];

  objc_autoreleasePoolPop(v14);
  if (v18)
  {
    LOBYTE(v18) = *(v26 + 24);
  }

  _Block_object_dispose(&v25, 8);

  return v18 & 1;
}

- (BOOL)prepQuery:(id)a3 onPrep:(id)a4 onError:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1217 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"onPrep"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47___PASSqliteDatabase_prepQuery_onPrep_onError___block_invoke;
  v19[3] = &unk_1E77F26B0;
  v19[4] = self;
  v12 = v9;
  v23 = &v25;
  v24 = a2;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  v14 = v10;
  v22 = v14;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v19];
  v15 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v15;
}

- (BOOL)_isLikelySQLStatementContainedInString:(const char *)a3
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v4 = a3 + 1;
  v5 = MEMORY[0x1E69E9830];
  while (1)
  {
    if (v3 == 59)
    {
      goto LABEL_8;
    }

    if (v3 < 0)
    {
      break;
    }

    if ((*(v5 + 4 * v3 + 60) & 0x4000) == 0)
    {
      return 1;
    }

LABEL_8:
    v6 = *v4++;
    v3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (__maskrune(v3, 0x4000uLL))
  {
    goto LABEL_8;
  }

  return 1;
}

- (void)_logQueryPlanForQuery:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___PASSqliteDatabase__logQueryPlanForQuery___block_invoke;
  v6[3] = &unk_1E77F2688;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v6];
}

- (BOOL)runQuery:(id)a3 onRow:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45___PASSqliteDatabase_runQuery_onRow_onError___block_invoke;
  v15[3] = &unk_1E77F2660;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v19 = &v20;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v15];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

- (BOOL)vacuumWithShouldContinueBlock:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_PASSqliteDatabase *)self _pagesToVacuum];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASSqliteDatabase: called to vacuum %tu pages.", buf, 0xCu);
  }

  if (v5)
  {
    if ((v5[2](v5) & 1) == 0)
    {
      goto LABEL_48;
    }

    v7 = [(_PASSqliteDatabase *)self valueForPragmaName:@"auto_vacuum"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v5[2](v5))
    {
      goto LABEL_48;
    }
  }

  else
  {
    v7 = [(_PASSqliteDatabase *)self valueForPragmaName:@"auto_vacuum"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }
  }

  if (v7 != 2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__3437;
    v27 = __Block_byref_object_dispose__3438;
    v28 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58___PASSqliteDatabase_vacuumWithShouldContinueBlock_error___block_invoke;
    v23[3] = &unk_1E77F2590;
    v23[4] = buf;
    if (![(_PASSqliteDatabase *)self prepAndRunNonDataQueries:&unk_1F1B30240 onError:v23])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = *(*&buf[8] + 40);
        *v24 = 138412290;
        v25 = v18;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase: failed to set auto_vacuum to INCREMENTAL for db: %@", v24, 0xCu);
      }

      if (a4)
      {
        *a4 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_48;
    }

    _Block_object_dispose(buf, 8);
  }

  if (v5 && !v5[2](v5))
  {
LABEL_48:
    v14 = 0;
    goto LABEL_49;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v6 + 499) / 0x1F4];
      *buf = 134218498;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      *&buf[24] = self;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASSqliteDatabase: performing INCREMENTAL VACUUM to free %lu pages with %@ iterations for db: %@", buf, 0x20u);
    }

    if (v6 + 499 >= 0x1F4)
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E9C10];
      v11 = v6;
      while (!v5 || v5[2](v5))
      {
        if (v11 >= 0x1F4)
        {
          v12 = 500;
        }

        else
        {
          v12 = v11;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          *&buf[4] = v12;
          *&buf[12] = 1024;
          *&buf[14] = v9;
          *&buf[18] = 2048;
          *&buf[20] = v6;
          _os_log_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_INFO, "Performing incremental vacuum for %tu pages on iteration %d for total pages to free %tu", buf, 0x1Cu);
        }

        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA incremental_vacuum(%lu)", v12];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__3437;
        v27 = __Block_byref_object_dispose__3438;
        v28 = 0;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __58___PASSqliteDatabase_vacuumWithShouldContinueBlock_error___block_invoke_132;
        v21[3] = &unk_1E77F2590;
        v21[4] = buf;
        if (![(_PASSqliteDatabase *)self prepAndRunQuery:v13 onPrep:0 onRow:0 onError:v21])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = *(*&buf[8] + 40);
            *v24 = 138412290;
            v25 = v15;
            _os_log_error_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_ERROR, "_PASSqliteDatabase: failed to incrementally vacuum: %@", v24, 0xCu);
          }

          if (a4)
          {
            *a4 = *(*&buf[8] + 40);
          }
        }

        _Block_object_dispose(buf, 8);

        v11 -= v12;
        ++v9;
        v14 = 1;
        if ((v6 + 499) / 0x1F4 == v9)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASSqliteDatabase: performing FULL VACUUM to make INCREMENTAL effected.", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__3437;
    v27 = __Block_byref_object_dispose__3438;
    v28 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58___PASSqliteDatabase_vacuumWithShouldContinueBlock_error___block_invoke_128;
    v22[3] = &unk_1E77F2590;
    v22[4] = buf;
    if (![(_PASSqliteDatabase *)self prepAndRunNonDataQueries:&unk_1F1B30258 onError:v22])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = *(*&buf[8] + 40);
        *v24 = 138412290;
        v25 = v19;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASSqliteDatabase: failed to set auto_vacuum to INCREMENTAL for db: %@", v24, 0xCu);
      }

      if (a4)
      {
        *a4 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_48;
    }

    _Block_object_dispose(buf, 8);
  }

  v14 = 1;
LABEL_49:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)_pagesToVacuum
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(_PASSqliteDatabase *)self valueForPragmaName:@"page_count"];
  v4 = [(_PASSqliteDatabase *)self valueForPragmaName:@"freelist_count"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASSqliteDatabase: calculating pages to vacuum -- pageCount %tu freeCount %tu", &v7, 0x16u);
  }

  result = 0;
  if (v4)
  {
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = 0;
      if (v3)
      {
        if (v3 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v3 - v4) / v3 <= 0.85 || v4 > 0x3FF)
          {
            result = (v4 * 0.8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v7 = 134218240;
              v8 = v3;
              v9 = 2048;
              v10 = v4;
              _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "not enough pages to vacuum: pageCount: %lu; freeCount: %lu", &v7, 0x16u);
            }

            result = 0;
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)valueForPragmaName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@", v4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41___PASSqliteDatabase_valueForPragmaName___block_invoke;
  v12[3] = &unk_1E77F2610;
  v12[4] = &v13;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41___PASSqliteDatabase_valueForPragmaName___block_invoke_2;
  v9[3] = &unk_1E77F2638;
  v6 = v4;
  v10 = v6;
  v11 = &v13;
  [(_PASSqliteDatabase *)self prepAndRunQuery:v5 onPrep:0 onRow:v12 onError:v9];

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (int64_t)lastInsertRowId
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37___PASSqliteDatabase_lastInsertRowId__block_invoke;
  v4[3] = &unk_1E77F25E8;
  v4[4] = self;
  v4[5] = &v5;
  [(_PASSqliteDatabase *)self withDbLockExecuteBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (_PASSqliteDatabase)initWithFilename:(id)a3 flags:(int)a4 error:(id *)a5 errorHandler:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  if (!v12)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"_PASSqliteDatabase.m" lineNumber:671 description:{@"Invalid parameter not satisfying: %@", @"filename"}];
  }

  v44.receiver = self;
  v44.super_class = _PASSqliteDatabase;
  v14 = [(_PASSqliteDatabase *)&v44 init];
  if (!v14)
  {
    goto LABEL_32;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  errorHandler = v14->_errorHandler;
  v14->_errorHandler = v15;

  v14->_isInMemory = [_PASSqliteDatabase isInMemoryPath:v12];
  objc_storeStrong(&v14->_filename, a3);
  v17 = a4 & 0x700000;
  if ((a4 & 0x700000) == 0x300000)
  {
    v18 = 3;
  }

  else if (v17 == 0x200000)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17 == 0x100000;
  }

  v14->_contentProtectionType = v18;
  v49.__sig = 0;
  *v49.__opaque = 0;
  pthread_mutexattr_init(&v49);
  pthread_mutexattr_settype(&v49, 2);
  pthread_mutex_init(&v14->_lock, &v49);
  pthread_mutexattr_destroy(&v49);
  v19 = dispatch_group_create();
  waitingForLock = v14->_waitingForLock;
  v14->_waitingForLock = v19;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v48[0] = v12;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "opening %@", buf, 0xCu);
  }

  v21 = sqlite3_open_v2([v12 UTF8String], &v14->_db, a4, 0);
  if (!v21)
  {
    getpid();
    v24 = *MEMORY[0x1E69E9BD0];
    if (sandbox_check() && access([v12 UTF8String], 2))
    {
      chmod([v12 UTF8String], 0x180u);
    }

    db = v14->_db;
    ITSRegisterSQLiteICUTokenizer();
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __64___PASSqliteDatabase_initWithFilename_flags_error_errorHandler___block_invoke;
    v42 = &unk_1E77F2DA0;
    v43 = v14;
    v26 = MEMORY[0x1AC566DD0](&v39);
    busy = sqlite3_busy_timeout(v14->_db, 300000);
    if (busy)
    {
      v28 = busy;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v48[0]) = v28;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Sqlite could not install busy timeout. (rc = %i)", buf, 8u);
        if (!a5)
        {
          goto LABEL_25;
        }
      }

      else if (!a5)
      {
LABEL_25:
        v26[2](v26);

        goto LABEL_26;
      }

      v29 = MEMORY[0x1E696ABC0];
      v45 = @"sqliteCode";
      v30 = [MEMORY[0x1E696AD98] numberWithInt:v28];
      v46 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a5 = [v29 errorWithDomain:@"_PASSqliteDatabaseError" code:2 userInfo:v31];

      goto LABEL_25;
    }

    sqlite3_extended_result_codes(v14->_db, 1);
    v33 = sqlite3_db_config(v14->_db, 1001, 0, 96, 64, v39, v40, v41, v42);
    if (v33)
    {
      v34 = v33;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v48[0]) = v34;
        _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Error setting lookaside size. (rc = %i)", buf, 8u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    _pas_registerSqliteCollections(v14->_db);

LABEL_32:
    v32 = v14;
    goto LABEL_33;
  }

  v22 = v21;
  v23 = *__error();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = sqlite3_extended_errcode(v14->_db);
    *buf = 67109376;
    LODWORD(v48[0]) = v22;
    WORD2(v48[0]) = 1024;
    *(v48 + 6) = v37;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Sqlite didn't open (rc = %d, extended result code = %d)", buf, 0xEu);
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  if (a5)
  {
LABEL_17:
    *a5 = [(_PASSqliteDatabase *)v14 dbErrorWithCode:1 sqliteReturnValue:v22 lastErrno:v23 query:0];
  }

LABEL_26:
  v32 = 0;
LABEL_33:

  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (void)runDebugCommand:(const char *)a3 onDbWithHandle:(id)a4
{
  v5 = [a4 handle];
  if (v5)
  {
    errmsg = 0;
    v7 = 0;
    if (sqlite3_exec(v5, a3, runDebugCommandCallback, &v7, &errmsg))
    {
      fprintf(*MEMORY[0x1E69E9848], "error running SQL: %s\n", errmsg);
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69E9848];

    fwrite("error: no handle found\n", 0x17uLL, 1uLL, v6);
  }
}

+ (void)truncateDatabaseAtPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  ppDb = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v17 = v3;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "opening to truncate: %@", buf, 0xCu);
  }

  v4 = sqlite3_open_v2([v3 UTF8String], &ppDb, 65538, 0);
  if (v4)
  {
    goto LABEL_7;
  }

  v14 = 141;
  v5 = sqlite3_file_control(ppDb, 0, 101, &v14);
  if (v5)
  {
    v4 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(ppDb);
      *buf = 138412802;
      *v17 = v3;
      *&v17[8] = 1024;
      *&v17[10] = v4;
      v18 = 2080;
      v19 = v13;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not truncate sqlite file at %@: rc=%i: %s", buf, 0x1Cu);
    }

LABEL_7:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = sqlite3_errmsg(ppDb);
      *buf = 67109378;
      *v17 = v4;
      *&v17[4] = 2080;
      *&v17[6] = v6;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Truncating database failed (rc=%i). Doing unsafe deletion via filesystem: %s", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v17 = v3;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "closing db after failed truncation: %@", buf, 0xCu);
    }

    sqlite3_close(ppDb);
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    [v7 removeItemAtPath:v3 error:0];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v3 stringByAppendingString:@"-shm"];
    [v8 removeItemAtPath:v9 error:0];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v3 stringByAppendingString:@"-wal"];
    [v10 removeItemAtPath:v11 error:0];

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v17 = v3;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Sqlite file truncated: %@", buf, 0xCu);
  }

  sqlite3_close(ppDb);
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)randomlyNamedInMemoryPathWithBaseName:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];

  v7 = [@"file:" stringByAppendingString:v4];

  v8 = [v7 stringByAppendingString:v6];
  v9 = [v8 stringByAppendingString:@"?mode=memory&cache=shared"];

  return v9;
}

+ (BOOL)isInMemoryPath:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@":memory:"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsString:@"mode=memory"];
  }

  return v4;
}

+ (id)sqliteDatabaseInMemoryWithError:(id *)a3 errorHandler:(id)a4
{
  v5 = a4;
  v6 = [[_PASSqliteDatabase alloc] initWithFilename:@":memory:" flags:327686 error:a3 errorHandler:v5];

  return v6;
}

+ (_PASSqliteDatabase)sqliteDatabaseWithFilename:(id)a3 contentProtection:(int64_t)a4 errorHandler:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [_PASSqliteDatabase alloc];
  if ((a4 - 1) >= 3)
  {
    v12 = 327686;
  }

  else
  {
    v12 = (((a4 - 1) << 20) | 0x50006u) + 0x100000;
  }

  v13 = [(_PASSqliteDatabase *)v11 initWithFilename:v10 flags:v12 error:a6 errorHandler:v9];

  return v13;
}

+ (id)recreateCorruptDatabase:(id)a3 withContentProtection:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([a1 contentProtectionTypeRequiresDeviceToBeUnlocked:a4])
  {
    v7 = [_PASDatabaseJournal journalWithDbPath:v6];
    [v7 deleteAllJournaledQueries];
  }

  if (+[_PASDeviceInfo isInternalBuild])
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSince1970];
    v11 = [v8 initWithFormat:@"%@.corrupted.%ld", v6, v10];

    moveOrRemoveDbFile(v6, v11);
    v12 = [v6 stringByAppendingString:@"-shm"];
    v13 = [v11 stringByAppendingString:@"-shm"];
    moveOrRemoveDbFile(v12, v13);

    v14 = [v6 stringByAppendingString:@"-wal"];
    v15 = [v11 stringByAppendingString:@"-wal"];
    moveOrRemoveDbFile(v14, v15);
  }

  else
  {
    [_PASSqliteDatabase truncateDatabaseAtPath:v6];
  }

  v21 = 0;
  v16 = [_PASSqliteDatabase sqliteDatabaseWithFilename:v6 contentProtection:a4 error:&v21];
  v17 = v21;
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = NSStringFromClass(a1);
    *buf = 138412546;
    v23 = v20;
    v24 = 2112;
    v25 = v17;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed to recreate database during corruption recovery: %@", buf, 0x16u);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)initializeDatabase:(id)a3 withProtection:(BOOL)a4 newDatabaseCreated:(BOOL *)a5
{
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  return [a1 initializeDatabase:a3 withContentProtection:v5 newDatabaseCreated:a5];
}

+ (id)initializeDatabase:(id)a3 withContentProtection:(int64_t)a4 newDatabaseCreated:(BOOL *)a5 errorHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  pthread_mutex_lock(&initializeDatabase_withContentProtection_newDatabaseCreated_errorHandler__initDatabaseLock);
  v12 = &v26;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3437;
  v30 = __Block_byref_object_dispose__3438;
  v31 = 0;
  if (a5)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 fileExistsAtPath:v10];

    *a5 = v14 ^ 1;
    v12 = v27;
    v15 = v27[5];
  }

  else
  {
    v15 = 0;
  }

  obj = v15;
  v16 = [_PASSqliteDatabase sqliteDatabaseWithFilename:v10 contentProtection:a4 errorHandler:v11 error:&obj];
  objc_storeStrong(v12 + 5, obj);
  v17 = v27[5];
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v17;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize database at path %@: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if ([a1 contentProtectionTypeRequiresDeviceToBeUnlocked:a4] && !+[_PASDeviceState isUnlocked](_PASDeviceState, "isUnlocked"))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Device locked during db initialization of protected database.", buf, 2u);
    }

    goto LABEL_21;
  }

  if ([a1 contentProtectionTypeRequiresDeviceToHaveBeenUnlockedOnce:a4] && +[_PASDeviceState isClassCLocked](_PASDeviceState, "isClassCLocked"))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Device has never been unlocked prior to db initialization.", buf, 2u);
    }

LABEL_21:
    [v16 closePermanently];

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95___PASSqliteDatabase_initializeDatabase_withContentProtection_newDatabaseCreated_errorHandler___block_invoke;
  v24[3] = &unk_1E77F2590;
  v24[4] = &v26;
  [v16 prepAndRunQuery:@"CREATE TABLE IF NOT EXISTS integrityCheck (inconsequential STRING)" onPrep:0 onRow:0 onError:v24];
  if (v27[5])
  {
    goto LABEL_35;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95___PASSqliteDatabase_initializeDatabase_withContentProtection_newDatabaseCreated_errorHandler___block_invoke_2;
  v23[3] = &unk_1E77F2590;
  v23[4] = &v26;
  [v16 prepAndRunQuery:@"PRAGMA journal_mode=WAL" onPrep:0 onRow:0 onError:v23];
  if (v27[5] || (v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = __95___PASSqliteDatabase_initializeDatabase_withContentProtection_newDatabaseCreated_errorHandler___block_invoke_3, v22[3] = &unk_1E77F2590, v22[4] = &v26, [v16 prepAndRunQuery:@"PRAGMA synchronous=NORMAL" onPrep:0 onRow:0 onError:v22], v27[5]))
  {
LABEL_35:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Integrity check detected corrupt database, attempting to reinitialize.", buf, 2u);
    }

    [v16 closePermanently];
    v21 = [v16 filename];
    v18 = [a1 recreateCorruptDatabase:v21 withContentProtection:a4];

    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v18 = v16;
  }

LABEL_9:
  pthread_mutex_unlock(&initializeDatabase_withContentProtection_newDatabaseCreated_errorHandler__initDatabaseLock);
  if (a5 && !v18)
  {
    *a5 = 0;
  }

  _Block_object_dispose(&v26, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end