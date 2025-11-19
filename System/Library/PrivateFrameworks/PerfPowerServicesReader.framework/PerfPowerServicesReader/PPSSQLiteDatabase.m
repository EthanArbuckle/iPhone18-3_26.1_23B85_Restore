@interface PPSSQLiteDatabase
+ (BOOL)_stepStatement:(sqlite3_stmt *)a3 hasRow:(BOOL *)a4 error:(id *)a5;
- (BOOL)_prepareStatementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)tableWithName:(id)a3 containsColumnWithName:(id)a4;
- (PPSSQLiteDatabase)initWithDatabaseURL:(id)a3;
- (id)columnNamesForTable:(id)a3;
- (id)tableNames;
- (id)typeForColumn:(id)a3 inTable:(id)a4 error:(id *)a5;
- (int)openForReadingWithError:(id *)a3;
- (sqlite3_stmt)_statementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5;
- (void)_accessDatabaseUsingBlock:(id)a3;
- (void)clearStatementCache;
- (void)close;
- (void)dealloc;
@end

@implementation PPSSQLiteDatabase

- (void)close
{
  [(PPSSQLiteDatabase *)self clearStatementCache];
  db = self->_db;
  if (db)
  {
    if (sqlite3_close_v2(db))
    {
      v4 = logHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_25E225000, v4, OS_LOG_TYPE_INFO, "failed to close database.", v5, 2u);
      }
    }

    self->_db = 0;
  }
}

- (void)clearStatementCache
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFRelease(statementCache);
    self->_statementCache = 0;
  }
}

- (void)dealloc
{
  if (self->_db)
  {
    [(PPSSQLiteDatabase *)self close];
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_queue_set_specific(dispatchQueue, "PPSSQLiteDispatchQueue", 0, 0);
    v4 = self->_dispatchQueue;
    self->_dispatchQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = PPSSQLiteDatabase;
  [(PPSSQLiteDatabase *)&v5 dealloc];
}

- (PPSSQLiteDatabase)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isFileURL] & 1) == 0)
  {

    self = 0;
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid database URL"];
  }

  v13.receiver = self;
  v13.super_class = PPSSQLiteDatabase;
  v6 = [(PPSSQLiteDatabase *)&v13 init];
  if (v6)
  {
    v7 = [v5 copy];
    v8 = *(v6 + 4);
    *(v6 + 4) = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.PerfPowerServicesReader.SQLite", v9);
    v11 = *(v6 + 2);
    *(v6 + 2) = v10;

    dispatch_queue_set_specific(*(v6 + 2), "PPSSQLiteDispatchQueue", v6, 0);
  }

  return v6;
}

- (int)openForReadingWithError:(id *)a3
{
  p_db = &self->_db;
  if (!self->_db)
  {
    v4 = [(PPSSQLiteDatabase *)self databaseURL];
    v5 = [v4 path];

    v6 = v5;
    if (!sqlite3_open_v2([v5 fileSystemRepresentation], p_db, 3145729, 0))
    {
      v7 = *p_db;
      do
      {
        usleep(0x14u);
        v8 = sqlite3_exec(v7, "PRAGMA cache_size=512", 0, 0, 0);
      }

      while (v8 == 5);
      if (!v8)
      {
        sqlite3_busy_timeout(*p_db, 60000);
      }
    }
  }

  return 0;
}

BOOL __84__PPSSQLiteDatabase_executeSQL_shouldCache_error_bindingHandler_enumerationHandler___block_invoke(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  if (*(a1 + 40))
  {
    PPSSQLiteRow::PPSSQLiteRow(v16, a2, 0);
    v7 = 0;
    v15 = 0;
    while (1)
    {
      v8 = [PPSSQLiteDatabase _stepStatement:a2 hasRow:&v15 error:a3];
      if (!v8 || v15 != 1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = (*(*(a1 + 40) + 16))();
      v11 = v7;

      objc_autoreleasePoolPop(v9);
      if (v10)
      {
        v7 = v11;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v11 = v7;
LABEL_12:
    if (v11)
    {
      if (a3)
      {
        v14 = v11;
        v8 = 0;
        *a3 = v11;
      }

      else
      {
        v8 = 0;
      }
    }

    return v8;
  }

  else
  {
    v12 = [PPSSQLiteDatabase _stepStatement:a2 hasRow:0 error:a3];
    sqlite3_reset(a2);
    return v12;
  }
}

- (id)columnNamesForTable:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA TABLE_INFO('%@')", a3];;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = [MEMORY[0x277CBEB18] array];
  v9[4] = &v11;
  v10 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__PPSSQLiteDatabase_columnNamesForTable___block_invoke;
  v9[3] = &unk_279A11478;
  [(PPSSQLiteDatabase *)self executeSQL:v4 shouldCache:0 error:&v10 bindingHandler:0 enumerationHandler:v9];
  v5 = v10;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v12[5];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __41__PPSSQLiteDatabase_columnNamesForTable___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = PPSSQLiteColumnValueAsString(a2, 1);
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    }
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (id)tableNames
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table'"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = [MEMORY[0x277CBEB18] array];
  v8[4] = &v10;
  v9 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__PPSSQLiteDatabase_tableNames__block_invoke;
  v8[3] = &unk_279A11478;
  [(PPSSQLiteDatabase *)self executeSQL:v3 shouldCache:1 error:&v9 bindingHandler:0 enumerationHandler:v8];
  v4 = v9;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  return v6;
}

uint64_t __31__PPSSQLiteDatabase_tableNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = PPSSQLiteColumnValueAsString(a2, 0);
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    }
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (BOOL)tableWithName:(id)a3 containsColumnWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_db && [v6 length] && objc_msgSend(v7, "length") && sqlite3_table_column_metadata(self->_db, 0, objc_msgSend(v6, "UTF8String"), objc_msgSend(v7, "UTF8String"), 0, 0, 0, 0, 0) == 0;

  return v8;
}

- (id)typeForColumn:(id)a3 inTable:(id)a4 error:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA TABLE_INFO('%@')", a4];;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__PPSSQLiteDatabase_typeForColumn_inTable_error___block_invoke;
  v13[3] = &unk_279A114A0;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [(PPSSQLiteDatabase *)self executeSQL:v9 shouldCache:1 error:a5 bindingHandler:0 enumerationHandler:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __49__PPSSQLiteDatabase_typeForColumn_inTable_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = PPSSQLiteColumnValueAsString(a2, 1);
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(a1 + 32) isEqualToString:v5])
      {
        v6 = PPSSQLiteColumnValueAsString(a2, 2);
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

- (void)_accessDatabaseUsingBlock:(id)a3
{
  block = a3;
  if (dispatch_get_specific("PPSSQLiteDispatchQueue") == self)
  {
    block[2]();
  }

  else
  {
    dispatch_sync(self->_dispatchQueue, block);
  }
}

- (BOOL)_prepareStatementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__PPSSQLiteDatabase__prepareStatementForSQL_shouldCache_error_usingBlock___block_invoke;
  v15[3] = &unk_279A114C8;
  v15[4] = self;
  v16 = v10;
  v20 = a4;
  v18 = &v21;
  v19 = a5;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  [(PPSSQLiteDatabase *)self _accessDatabaseUsingBlock:v15];
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return self;
}

uint64_t __74__PPSSQLiteDatabase__prepareStatementForSQL_shouldCache_error_usingBlock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _statementForSQL:*(a1 + 40) shouldCache:*(a1 + 72) error:*(a1 + 64)];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 48);
    v8 = 0;
    v5 = (*(v4 + 16))();
    v6 = v8;
    *(*(*(a1 + 56) + 8) + 24) = v5;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && *(a1 + 64))
    {
      v6 = v6;
      **(a1 + 64) = v6;
    }

    sqlite3_reset(v3);
    result = sqlite3_clear_bindings(v3);
    if ((*(a1 + 72) & 1) == 0)
    {
      result = sqlite3_finalize(v3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)_stepStatement:(sqlite3_stmt *)a3 hasRow:(BOOL *)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    while (1)
    {
      v8 = sqlite3_step(a3);
      if (v8 == 9)
      {
        goto LABEL_20;
      }

      if (v8 == 101)
      {
        goto LABEL_12;
      }

      if (v8 == 100)
      {
        break;
      }

      v9 = v8;
      if (v8 - 5 >= 2)
      {
        v10 = logHandle();
        v11 = v10;
        if (v9 == 19)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v13 = sqlite3_sql(a3);
            v14 = sqlite3_db_handle(a3);
            v15 = sqlite3_errmsg(v14);
            [(PPSSQLiteDatabase *)v15 _stepStatement:v13 hasRow:v11 error:?];
          }
        }

        else if (v9 == 11)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [PPSSQLiteDatabase _stepStatement:v11 hasRow:? error:?];
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v17 = sqlite3_sql(a3);
          v18 = sqlite3_db_handle(a3);
          v19 = 136315650;
          v20 = v17;
          v21 = 1024;
          v22 = v9;
          v23 = 2080;
          v24 = sqlite3_errmsg(v18);
          _os_log_debug_impl(&dword_25E225000, v11, OS_LOG_TYPE_DEBUG, "Step failed: %s: [%d, %s]", &v19, 0x1Cu);
        }

LABEL_20:
        if (a5)
        {
          sqlite3_db_handle(a3);
          result = 0;
          *a5 = 0;
        }

        else
        {
          result = 0;
        }

        goto LABEL_23;
      }
    }

    result = 1;
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
LABEL_12:
    result = 1;
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)_statementForSQL:(id)a3 shouldCache:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  ppStmt = 0;
  if (!v6 || (v9 = self->_statementCache) == 0 || (Value = CFDictionaryGetValue(v9, v8), (ppStmt = Value) == 0))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *MEMORY[0x277CBE658];
    do
    {
      *pzTail = 0;
      db = self->_db;
      v14 = v8;
      v15 = sqlite3_prepare_v2(db, [v8 UTF8String], objc_msgSend(v8, "length"), &ppStmt, pzTail);
      v16 = v15;
      if (!v15 && *pzTail)
      {
        if (**pzTail)
        {
          [MEMORY[0x277CBEAD8] raise:v12 format:{@"SQL strings must contain only a single statement; remaining statements will not be executed: %s", *pzTail}];
        }

        goto LABEL_14;
      }
    }

    while ((v15 - 5) < 2);
    if (v15)
    {
      v17 = lastErrorForDatabase(self->_db, v15);
      v18 = logHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *pzTail = 138412802;
        *&pzTail[4] = v8;
        v25 = 1024;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_debug_impl(&dword_25E225000, v18, OS_LOG_TYPE_DEBUG, "Could not prepare statement: %@: [%d, %@]", pzTail, 0x1Cu);
      }

      goto LABEL_20;
    }

LABEL_14:
    if (v6)
    {
      statementCache = self->_statementCache;
      if (!statementCache)
      {
        statementCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &kSqlite3StatementDictionaryValueCallbacks);
        self->_statementCache = statementCache;
      }

      if (ppStmt)
      {
        CFDictionarySetValue(statementCache, v8, ppStmt);
      }
    }

    v17 = 0;
LABEL_20:
    objc_autoreleasePoolPop(v11);
    if (a5)
    {
      v20 = v17;
      *a5 = v17;
    }

    Value = ppStmt;
  }

  v21 = *MEMORY[0x277D85DE8];
  return Value;
}

+ (void)_stepStatement:(uint64_t)a3 hasRow:(os_log_t)log error:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a3;
  *(buf + 6) = 1024;
  *(buf + 14) = 19;
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  _os_log_debug_impl(&dword_25E225000, log, OS_LOG_TYPE_DEBUG, "Constraint violation during statement step: %s [%d, %{public}s]", buf, 0x1Cu);
}

@end