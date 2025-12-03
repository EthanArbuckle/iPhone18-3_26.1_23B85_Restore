@interface PFSQLiteDatabaseConnection
+ (uint64_t)_sqliteOpenFlagsForDataProtectionClass:(uint64_t)class;
- (BOOL)executeQuery:(id)query bindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
- (BOOL)executeQuery:(id)query error:(id *)error;
- (BOOL)isReadonly;
- (BOOL)truncateDatabaseAndReturnError:(id *)error;
- (PFSQLiteDatabaseConnection)init;
- (PFSQLiteDatabaseConnection)initWithFileURL:(id)l dataProtectionClass:(unint64_t)class;
- (PFSQLiteDatabaseConnection)initWithFileURL:(id)l options:(int)options dataProtectionClass:(unint64_t)class error:(id *)error;
- (PFSQLiteDatabaseConnection)initWithInMemoryDatabase;
- (id)dataDumpForTable:(uint64_t)table error:;
- (id)dataDumpResultOfAllTablesWithError:(id *)error;
- (id)dataDumpResultOfQuery:(id)query error:(id *)error;
- (id)dataDumpResultOfTable:(id)table error:(id *)error;
- (id)lastErrorMessage;
- (id)prepareStatement:(id)statement;
- (id)tableNames;
- (void)_closeConnection;
- (void)_queue_close;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)performSyncWithDatabase:(uint64_t)database;
- (void)performWithDatabase:(uint64_t)database;
- (void)removeObserver:(id)observer;
@end

@implementation PFSQLiteDatabaseConnection

- (PFSQLiteDatabaseConnection)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"PFSQLiteDatabaseConnection.m";
    v17 = 1024;
    v18 = 52;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PFSQLiteDatabaseConnection)initWithInMemoryDatabase
{
  v6.receiver = self;
  v6.super_class = PFSQLiteDatabaseConnection;
  v2 = [(PFSQLiteDatabaseConnection *)&v6 init];
  v3 = v2;
  if (!v2 || (v4 = 0, PFSQLiteDatabaseConnectionSharedInit(v2, @":memory:", 6, 2, 0)))
  {
    v4 = v3;
  }

  return v4;
}

- (PFSQLiteDatabaseConnection)initWithFileURL:(id)l dataProtectionClass:(unint64_t)class
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PFSQLiteDatabaseConnection;
  v6 = [(PFSQLiteDatabaseConnection *)&v11 init];
  if (!v6 || ([lCopy path], v7 = objc_claimAutoreleasedReturnValue(), v8 = PFSQLiteDatabaseConnectionSharedInit(v6, v7, 6, 2, 0), v7, v9 = 0, v8))
  {
    v9 = v6;
  }

  return v9;
}

- (PFSQLiteDatabaseConnection)initWithFileURL:(id)l options:(int)options dataProtectionClass:(unint64_t)class error:(id *)error
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = PFSQLiteDatabaseConnection;
  v11 = [(PFSQLiteDatabaseConnection *)&v16 init];
  if (v11 && ([lCopy path], v12 = objc_claimAutoreleasedReturnValue(), v13 = PFSQLiteDatabaseConnectionSharedInit(v11, v12, options, class, error), v12, !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

+ (uint64_t)_sqliteOpenFlagsForDataProtectionClass:(uint64_t)class
{
  objc_opt_self();
  if ((a2 - 1) >= 3)
  {
    return 0x100000;
  }

  else
  {
    return (0x400000 - ((a2 - 1) << 20));
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PFSQLiteDatabaseConnection;
  [(PFSQLiteDatabaseConnection *)&v2 dealloc];
}

- (id)prepareStatement:(id)statement
{
  v20 = *MEMORY[0x1E69E9840];
  statementCopy = statement;
  v5 = [(NSCache *)self->_queue_queryCache objectForKey:statementCopy];
  if (!v5)
  {
    v5 = [PFSQLitePreparedStatement _newPreparedStatementForDatabaseConnection:statementCopy withSQLQuery:?];
    loggingCategory = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    [(PFSQLitePreparedStatement *)v5 setLoggingCategory:loggingCategory];

    loggingCategory2 = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_INFO))
    {
      lastPathComponent = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
      v14 = 134218498;
      selfCopy2 = self;
      v16 = 2114;
      v17 = lastPathComponent;
      v18 = 2112;
      v19 = statementCopy;
      _os_log_impl(&dword_1C269D000, loggingCategory2, OS_LOG_TYPE_INFO, "[%p/'%{public}@'] preparing new statement %@", &v14, 0x20u);
    }

    loggingCategory3 = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    v10 = loggingCategory3;
    if (v5)
    {
      if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_INFO))
      {
        lastPathComponent2 = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
        v14 = 134218498;
        selfCopy2 = self;
        v16 = 2114;
        v17 = lastPathComponent2;
        v18 = 2112;
        v19 = statementCopy;
        _os_log_impl(&dword_1C269D000, v10, OS_LOG_TYPE_INFO, "[%p/'%{public}@'] prepared new statement %@", &v14, 0x20u);
      }

      v10 = [statementCopy copy];
      [(NSCache *)self->_queue_queryCache setObject:v5 forKey:v10];
    }

    else
    {
      if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
      {
        [(PFSQLiteDatabaseConnection *)self prepareStatement:statementCopy, v10];
      }

      v5 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)executeQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__PFSQLiteDatabaseConnection_executeQuery_error___block_invoke;
  v18[3] = &unk_1E818A030;
  v20 = &v28;
  v8 = queryCopy;
  v19 = v8;
  v21 = &v22;
  [(PFSQLiteDatabaseConnection *)self performSyncWithDatabase:v18];
  if ((v29[3] & 1) == 0)
  {
    if (!v23[5])
    {
      v9 = PFFunctionNameForAddress(v4);
      v12 = v9;
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = @"(Unknown Location)";
      }

      v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v13, 0, 0, 0, @"Unknown query error", v10, v11, 0);
      v15 = v23[5];
      v23[5] = v14;
    }

    if (error)
    {
      *error = v23[5];
    }
  }

  v16 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __49__PFSQLiteDatabaseConnection_executeQuery_error___block_invoke(void *a1, sqlite3 *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = PFSQLite_prepare_and_stepThrough_withBlock(a2, v4, 3, 100000, 0, 0, 0, 0, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

- (BOOL)executeQuery:(id)query bindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  bindingsCopy = bindings;
  v13 = [PFSQLitePreparedStatement _newPreparedStatementForDatabaseConnection:queryCopy withSQLQuery:?];
  loggingCategory = [(PFSQLiteDatabaseConnection *)self loggingCategory];
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
  {
    lastPathComponent = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
    *buf = 134218498;
    selfCopy2 = self;
    v27 = 2114;
    v28 = lastPathComponent;
    v29 = 2112;
    v30 = queryCopy;
    _os_log_impl(&dword_1C269D000, loggingCategory, OS_LOG_TYPE_INFO, "[%p/'%{public}@'] executing statement %@", buf, 0x20u);
  }

  v24 = 0;
  v16 = [v13 executeWithBindings:bindingsCopy resultRowHandler:handlerCopy error:&v24];

  v17 = v24;
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    loggingCategory2 = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent2 = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
      *buf = 134218754;
      selfCopy2 = self;
      v27 = 2114;
      v28 = lastPathComponent2;
      v29 = 2112;
      v30 = queryCopy;
      v31 = 2112;
      v32 = v18;
      _os_log_error_impl(&dword_1C269D000, loggingCategory2, OS_LOG_TYPE_ERROR, "[%p/'%{public}@'] failed to execute SQL statement %@: %@", buf, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

void __61__PFSQLiteDatabaseConnection_truncateDatabaseAndReturnError___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v4 = sqlite3_file_control(a2, 0, 101, 0);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(a2)];
    v8 = [v6 pbf_sqliteDatabaseErrorWithCode:v5 errorMessage:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t __40__PFSQLiteDatabaseConnection_isReadonly__block_invoke(uint64_t a1, sqlite3 *db)
{
  result = sqlite3_db_readonly(db, 0);
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t __46__PFSQLiteDatabaseConnection_lastErrorMessage__block_invoke(uint64_t a1, sqlite3 *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(a2)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  lastPathComponent = [*(self + 8) lastPathComponent];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_2(&dword_1C269D000, v2, v3, "[%p/'%{public}@'] invalidating", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __40__PFSQLiteDatabaseConnection_invalidate__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [(PFSQLiteDatabaseConnection *)*(a1 + 32) _queue_close];
  v2 = [*v1 loggingCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__PFSQLiteDatabaseConnection_invalidate__block_invoke_cold_1(v1);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PFSQLiteDatabaseConnection_addObserver___block_invoke;
  v7[3] = &unk_1E8189AC8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __42__PFSQLiteDatabaseConnection_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFSQLiteDatabaseConnection_removeObserver___block_invoke;
  v7[3] = &unk_1E8189AC8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (id)dataDumpResultOfQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PFSQLiteDatabaseConnection_dataDumpResultOfQuery_error___block_invoke;
  v10[3] = &unk_1E818A0A8;
  v8 = v7;
  v11 = v8;
  [(PFSQLiteDatabaseConnection *)self executeQuery:queryCopy resultRowHandler:v10 error:error];

  return v8;
}

void __58__PFSQLiteDatabaseConnection_dataDumpResultOfQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_new();
  if ([v9 count])
  {
    v4 = 0;
    do
    {
      v5 = [v9 keyAtIndex:v4];
      v6 = [v5 copy];

      v7 = [v9 objectForKey:v6];
      v8 = [v7 copy];
      [v3 setObject:v8 forKeyedSubscript:v6];

      ++v4;
    }

    while (v4 < [v9 count]);
  }

  [*(a1 + 32) bs_safeAddObject:v3];
}

- (id)dataDumpResultOfTable:(id)table error:(id *)error
{
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM '%@'", table];
  v7 = [(PFSQLiteDatabaseConnection *)self dataDumpResultOfQuery:table error:error];

  return v7;
}

void __53__PFSQLiteDatabaseConnection_dataDumpForTable_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_opt_new();
  if ([v9 count])
  {
    v4 = 0;
    do
    {
      v5 = [v9 keyAtIndex:v4];
      v6 = [v5 copy];

      v7 = [v9 objectForKey:v6];
      v8 = [v7 copy];
      [v3 setObject:v8 forKeyedSubscript:v6];

      ++v4;
    }

    while (v4 < [v9 count]);
  }

  [*(a1 + 32) bs_safeAddObject:v3];
}

- (id)dataDumpResultOfAllTablesWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  tableNames = [(PFSQLiteDatabaseConnection *)self tableNames];
  v7 = [tableNames countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(tableNames);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v12 = [(PFSQLiteDatabaseConnection *)self dataDumpForTable:v11 error:&v18];
        v13 = v18;
        if (v13)
        {
          v14 = v13;
          if (error)
          {
            v15 = v13;
            *error = v14;
          }

          goto LABEL_13;
        }

        [v5 setObject:v12 forKey:v11];
      }

      v8 = [tableNames countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)tableNames
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PFSQLiteDatabaseConnection_tableNames__block_invoke;
  v6[3] = &unk_1E818A0A8;
  v4 = v3;
  v7 = v4;
  [(PFSQLiteDatabaseConnection *)self executeQuery:@"SELECT tbl_name from sqlite_master WHERE type = 'table' AND tbl_name NOT LIKE 'sqlite_%'" resultRowHandler:v6 error:0];

  return v4;
}

void __40__PFSQLiteDatabaseConnection_tableNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringForKey:@"tbl_name"];
  [v2 addObject:v3];
}

- (void)_closeConnection
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *(self + 24);
    if (v2)
    {
      v3 = sqlite3_close_v2(v2);
      loggingCategory = [self loggingCategory];
      v5 = loggingCategory;
      if (v3)
      {
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          lastPathComponent = [*(self + 8) lastPathComponent];
          sqlite3_errstr(v3);
          v7 = *(self + 24);
          OUTLINED_FUNCTION_5_2();
          v16 = lastPathComponent;
          v17 = 2080;
          v18 = "[PFSQLiteDatabaseConnection _closeConnection]";
          v19 = 1024;
          *v20 = v3;
          *&v20[4] = 2082;
          *&v20[6] = v8;
          v21 = 2048;
          v22 = v9;
          _os_log_error_impl(&dword_1C269D000, v5, OS_LOG_TYPE_ERROR, "[%p/'%@'] %s: got error %d (%{public}s) closing database connection %p", v15, 0x3Au);
        }
      }

      else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent2 = [*(self + 8) lastPathComponent];
        v11 = *(self + 24);
        OUTLINED_FUNCTION_5_2();
        v16 = v12;
        v17 = 2080;
        v18 = "[PFSQLiteDatabaseConnection _closeConnection]";
        v19 = 2048;
        *v20 = v13;
        _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "[%p/'%@'] %s: successfully closed database connection %p", v15, 0x2Au);
      }

      *(self + 24) = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performSyncWithDatabase:(uint64_t)database
{
  v4 = a2;
  if (database)
  {
    OUTLINED_FUNCTION_0_6();
    v5[1] = 3221225472;
    v5[2] = __54__PFSQLiteDatabaseConnection_performSyncWithDatabase___block_invoke;
    v5[3] = &unk_1E818A080;
    v5[4] = database;
    v6 = v4;
    dispatch_sync(v2, v5);
  }
}

- (BOOL)truncateDatabaseAndReturnError:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  OUTLINED_FUNCTION_3_3();
  v36 = v5;
  OUTLINED_FUNCTION_2_5();
  v37 = v6;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __61__PFSQLiteDatabaseConnection_truncateDatabaseAndReturnError___block_invoke;
  v26 = &unk_1E818A058;
  v27 = v7;
  v28 = &v29;
  [(PFSQLiteDatabaseConnection *)v8 performSyncWithDatabase:?];
  if (v34[5])
  {
    loggingCategory = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
      v11 = v34[5];
      *buf = 134218498;
      selfCopy2 = self;
      v41 = 2114;
      v42 = lastPathComponent;
      v43 = 2112;
      v44 = v11;
      _os_log_error_impl(&dword_1C269D000, loggingCategory, OS_LOG_TYPE_ERROR, "[%p/'%{public}@'] failed to truncate database w/ error: %@", buf, 0x20u);
    }
  }

  else
  {
    loggingCategory = [(PFSQLiteDatabaseConnection *)self loggingCategory];
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
    {
      lastPathComponent2 = [(NSString *)self->_sqliteDatabasePath lastPathComponent];
      *buf = 134218242;
      selfCopy2 = self;
      v41 = 2114;
      v42 = lastPathComponent2;
      _os_log_debug_impl(&dword_1C269D000, loggingCategory, OS_LOG_TYPE_DEBUG, "[%p/'%{public}@'] successfully truncated database", buf, 0x16u);
    }
  }

  if (error)
  {
    v12 = v34[5];
    *error = v12;
  }

  OUTLINED_FUNCTION_6_1(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30);
  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x1E69E9840];
  return error & 1;
}

- (void)performWithDatabase:(uint64_t)database
{
  v4 = a2;
  if (database)
  {
    OUTLINED_FUNCTION_0_6();
    v5[1] = 3221225472;
    v5[2] = __50__PFSQLiteDatabaseConnection_performWithDatabase___block_invoke;
    v5[3] = &unk_1E818A080;
    v5[4] = database;
    v6 = v4;
    dispatch_async(v2, v5);
  }
}

- (BOOL)isReadonly
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  OUTLINED_FUNCTION_1_4();
  v16 = 3221225472;
  v17 = __40__PFSQLiteDatabaseConnection_isReadonly__block_invoke;
  v18 = &unk_1E8189248;
  v19 = v3;
  [(PFSQLiteDatabaseConnection *)v4 performSyncWithDatabase:?];
  OUTLINED_FUNCTION_6_1(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21);
  return v2;
}

- (id)lastErrorMessage
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  OUTLINED_FUNCTION_3_3();
  v16 = v2;
  OUTLINED_FUNCTION_2_5();
  v17 = v3;
  v18 = 0;
  OUTLINED_FUNCTION_1_4();
  v9 = 3221225472;
  v10 = __46__PFSQLiteDatabaseConnection_lastErrorMessage__block_invoke;
  v11 = &unk_1E8189248;
  v12 = v4;
  [(PFSQLiteDatabaseConnection *)v5 performSyncWithDatabase:v8];
  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v6;
}

- (void)_queue_close
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(self + 40);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 sqliteDatabaseConnectionWillClose:{self, v13}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v4);
    }

    v8 = *(self + 40);
    *(self + 40) = 0;

    [*(self + 32) removeAllObjects];
    v9 = *(self + 32);
    *(self + 32) = 0;

    v10 = PFLogSQLite();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(sel__queue_close);
      *buf = 134218242;
      selfCopy = self;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1C269D000, v10, OS_LOG_TYPE_INFO, "<%p> Closing connection from %@", buf, 0x16u);
    }

    [(PFSQLiteDatabaseConnection *)self _closeConnection];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dataDumpForTable:(uint64_t)table error:
{
  if (self)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM %@", v5];;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PFSQLiteDatabaseConnection_dataDumpForTable_error___block_invoke;
    v10[3] = &unk_1E818A0A8;
    v8 = v6;
    v11 = v8;
    [self executeQuery:v7 resultRowHandler:v10 error:table];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)prepareStatement:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 8) lastPathComponent];
  v8 = 134218498;
  v9 = a1;
  OUTLINED_FUNCTION_4_1();
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1C269D000, a3, OS_LOG_TYPE_ERROR, "[%p/'%{public}@'] failed to prepare new statement %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void __40__PFSQLiteDatabaseConnection_invalidate__block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(*a1 + 8) lastPathComponent];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_2(&dword_1C269D000, v2, v3, "[%p/'%{public}@'] invalidated", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end