@interface QLSqliteDatabase
- (BOOL)beginTransaction;
- (BOOL)stepStatement:(sqlite3_stmt *)a3 didReturnData:(BOOL *)a4;
- (QLSqliteDatabase)init;
- (__CFURL)newCFURLFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4;
- (double)doubleFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4;
- (id)_cacheStatement:(sqlite3_stmt *)a3 forKey:(id)a4;
- (id)_cachedStatementForKey:(id)a3;
- (id)lastCrapWithDate:(id *)a3;
- (id)newColumnName:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5;
- (id)newDataFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 copyBytes:(BOOL)a5;
- (id)newPathFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5;
- (id)newStringFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5;
- (int)intFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4;
- (int64_t)lastInsertRowId;
- (sqlite3_stmt)prepareStatement:(const char *)a3;
- (unint64_t)unsignedLongLongFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4;
- (void)_databaseCorrupted;
- (void)_dropStatementCache;
- (void)_finalizeStatement:(sqlite3_stmt *)a3;
- (void)checkpoint;
- (void)closeDatabase;
- (void)dealloc;
- (void)disableSqliteTracing;
- (void)do:(id)a3;
- (void)enableSqliteTracing:(id)a3;
- (void)endTransaction;
- (void)executeWithBlob:(const void *)a3 length:(int)a4 format:(const char *)a5;
- (void)executeWithCallback:(void *)a3 context:(void *)a4 rollbackOnError:(BOOL)a5 sql:(const char *)a6 arguments:(char *)a7;
- (void)finalizeStatement:(sqlite3_stmt *)a3;
- (void)newBufferFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 length:(unsigned int *)a5;
- (void)openDatabaseAtPath:(id)a3;
- (void)runStatement:(sqlite3_stmt *)a3 stepHandler:(id)a4;
- (void)runStatement:(sqlite3_stmt *)a3 withBoundObjects:(id)a4 startingAtIndex:(int)a5 stepHandler:(id)a6;
- (void)setSqliteCacheSize:(int64_t)a3;
- (void)sqliteCrappedOut:(int)a3 message:(id)a4;
- (void)vacuum;
@end

@implementation QLSqliteDatabase

- (BOOL)beginTransaction
{
  transactionCount = self->transactionCount;
  if (transactionCount < 1)
  {
    dispatch_assert_queue_V2(self->_queue);
    if (self->_isCorrupted)
    {
      return 0;
    }

    else
    {
      errmsg = 0;
      v5 = sqlite3_exec(self->_db, "BEGIN;", 0, 0, &errmsg);
      v4 = v5 == 0;
      if (v5)
      {
        v6 = *(MEMORY[0x277CDAB78] + 8);
        if (!v6)
        {
          v8 = MEMORY[0x277CDAB78];
          QLTInitLogging();
          v6 = *(v8 + 8);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [(QLSqliteDatabase(SqliteHelpers) *)&errmsg beginTransaction];
        }
      }

      else
      {
        self->transactionCount = 1;
      }
    }
  }

  else
  {
    self->transactionCount = transactionCount + 1;
    return 1;
  }

  return v4;
}

- (void)endTransaction
{
  if (self->transactionCount >= 1)
  {
    errmsg[3] = v2;
    errmsg[4] = v3;
    dispatch_assert_queue_V2(self->_queue);
    v5 = self->transactionCount - 1;
    self->transactionCount = v5;
    if (!v5)
    {
      errmsg[0] = 0;
      if (sqlite3_exec(self->_db, "END;", 0, 0, errmsg))
      {
        v6 = *(MEMORY[0x277CDAB78] + 8);
        if (!v6)
        {
          v7 = MEMORY[0x277CDAB78];
          QLTInitLogging();
          v6 = *(v7 + 8);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [(QLSqliteDatabase(SqliteHelpers) *)errmsg endTransaction];
        }
      }
    }
  }
}

- (void)_finalizeStatement:(sqlite3_stmt *)a3
{
  v5 = sqlite3_finalize(*a3);
  if (!pLogSql)
  {
    goto LABEL_5;
  }

  v6 = MEMORY[0x277CDAB78];
  v7 = *(MEMORY[0x277CDAB78] + 8);
  if (!v7)
  {
    QLTInitLogging();
    v7 = *(v6 + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [QLSqliteDatabase(SqliteHelpers_Internal) _finalizeStatement:a3];
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_5:
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 == 26 || v5 == 11)
  {
    [(QLSqliteDatabase *)self _databaseCorrupted];
  }

  else
  {
    db = self->_db;
    p_db = &self->_db;
    sqlite3_errmsg(db);
    v11 = MEMORY[0x277CDAB78];
    v12 = *(MEMORY[0x277CDAB78] + 8);
    if (!v12)
    {
      QLTInitLogging();
      v12 = *(v11 + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(QLSqliteDatabase(SqliteHelpers_Internal) *)p_db _finalizeStatement:v12];
    }

    v13 = *(v11 + 8);
    if (!v13)
    {
      QLTInitLogging();
      v13 = *(v11 + 8);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(QLSqliteDatabase(SqliteHelpers_Internal) *)p_db _finalizeStatement:v13];
    }
  }

LABEL_20:
  *a3 = 0;
}

- (void)_databaseCorrupted
{
  dispatch_assert_queue_V2(self->_queue);
  [(QLSqliteDatabase *)self setIsCorrupted:1];
  v3 = MEMORY[0x277CDAB78];
  v4 = *(MEMORY[0x277CDAB78] + 8);
  if (!v4)
  {
    QLTInitLogging();
    v4 = *(v3 + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(QLSqliteDatabase(SqliteHelpers_Internal) *)v4 _databaseCorrupted];
  }
}

- (QLSqliteDatabase)init
{
  v11.receiver = self;
  v11.super_class = QLSqliteDatabase;
  v2 = [(QLSqliteDatabase *)&v11 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("quicklookd.cachedb", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_opt_new();
  statementCache = v2->_statementCache;
  v2->_statementCache = v6;

  v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:256 valueOptions:0];
  statementsInUseTable = v2->_statementsInUseTable;
  v2->_statementsInUseTable = v8;

  return v2;
}

- (void)do:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__QLSqliteDatabase_do___block_invoke;
  block[3] = &unk_279ADD038;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

void __23__QLSqliteDatabase_do___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

- (void)openDatabaseAtPath:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  objc_storeStrong(&self->_path, a3);
  if (sqlite3_open([v5 fileSystemRepresentation], &self->_db))
  {
    sqlite3_close(self->_db);
    self->_db = 0;
  }

  else
  {
    [(QLSqliteDatabase *)self setIsCorrupted:0];
    if (sqlite3_exec(self->_db, "pragma journal_mode=WAL;", 0, 0, 0))
    {
      v6 = MEMORY[0x277CDAB78];
      v7 = *(MEMORY[0x277CDAB78] + 8);
      if (!v7)
      {
        QLTInitLogging();
        v7 = *(v6 + 8);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [QLSqliteDatabase openDatabaseAtPath:v7];
      }
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = QLSqliteDatabase;
  [(QLSqliteDatabase *)&v2 dealloc];
}

- (void)closeDatabase
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2615D3000, v1, v2, "End transaction error at close time: %s (%i)", v4, v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_dropStatementCache
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_statementCache objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isInUse] & 1) == 0)
        {
          v10 = [v8 stmt];
          if (v10)
          {
            [(QLSqliteDatabase *)self _finalizeStatement:&v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_statementCache removeAllObjects];
  [(NSMapTable *)self->_statementsInUseTable removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enableSqliteTracing:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <db=%p> : ", 0, self->_db];
  }

  tracingPrefix = self->_tracingPrefix;
  self->_tracingPrefix = v4;

  sqlite3_trace_v2(self->_db, 1u, traceSQL, self);
}

- (void)disableSqliteTracing
{
  dispatch_assert_queue_V2(self->_queue);
  db = self->_db;

  sqlite3_trace_v2(db, 0, 0, 0);
}

- (void)executeWithCallback:(void *)a3 context:(void *)a4 rollbackOnError:(BOOL)a5 sql:(const char *)a6 arguments:(char *)a7
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isCorrupted)
  {
    v12 = sqlite3_vmprintf(a6, a7);
    if (pLogSql)
    {
      v13 = MEMORY[0x277CDAB78];
      v14 = *(MEMORY[0x277CDAB78] + 8);
      if (!v14)
      {
        QLTInitLogging();
        v14 = *(v13 + 8);
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [QLSqliteDatabase(SqliteHelpers) executeWithCallback:? context:? rollbackOnError:? sql:? arguments:?];
      }
    }

    errmsg = 0;
    v15 = sqlite3_exec(self->_db, v12, a3, a4, &errmsg);
    if ((v15 & 0xFFFFFFFB) != 0)
    {
      v16 = v15;
      v17 = 600;
      while (v16 == 5)
      {
        if (!--v17)
        {
          goto LABEL_15;
        }

        v18 = MEMORY[0x277CCACC8];
        v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.1];
        [v18 sleepUntilDate:v19];

LABEL_16:
        errmsg = 0;
        v16 = sqlite3_exec(self->_db, v12, a3, a4, &errmsg);
        if ((v16 & 0xFFFFFFFB) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v16 == 11 || v16 == 26)
      {
        [(QLSqliteDatabase *)self _databaseCorrupted];
        goto LABEL_19;
      }

LABEL_15:
      [(QLSqliteDatabase *)self sqliteCrappedOut:v12 message:?];
      goto LABEL_16;
    }

LABEL_19:
    sqlite3_free(v12);
  }
}

- (void)executeWithBlob:(const void *)a3 length:(int)a4 format:(const char *)a5
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isCorrupted)
  {
    ppStmt[1] = &v24;
    v9 = sqlite3_vmprintf(a5, &v24);
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v11 = [(QLSqliteDatabase *)self _cachedStatementForKey:v10];
    ppStmt[0] = [v11 stmt];
    if (ppStmt[0])
    {
LABEL_13:
      sqlite3_free(v9);
      [v11 setInUse:1];
      v16 = ppStmt[0];
      if (ppStmt[0])
      {
        v17 = -600;
        while (1)
        {
          if (self->_isCorrupted)
          {
            goto LABEL_29;
          }

          v18 = sqlite3_step(v16);
          if (v18 != 5)
          {
            break;
          }

          if (__CFADD__(v17++, 1))
          {
            goto LABEL_27;
          }

          v20 = MEMORY[0x277CCACC8];
          v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{v18, 0.1}];
          [v20 sleepUntilDate:v21];

          v16 = ppStmt[0];
          if (!ppStmt[0])
          {
            goto LABEL_29;
          }
        }

        if (v18 <= 10)
        {
          if (v18 && v18 != 4)
          {
LABEL_27:
            [(QLSqliteDatabase *)self sqliteCrappedOut:v18 message:@"error while executing '%s'", v9];
          }
        }

        else
        {
          if (v18 != 11 && v18 != 26)
          {
            if (v18 == 101)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }

          [(QLSqliteDatabase *)self _databaseCorrupted];
        }
      }

LABEL_29:
      [(QLSqliteDatabase *)self finalizeStatement:ppStmt];
      goto LABEL_30;
    }

    v12 = strlen(v9);
    v13 = sqlite3_prepare_v2(self->_db, v9, v12, ppStmt, 0);
    if (v13)
    {
      if (v13 != 26 && v13 != 11)
      {
        [(QLSqliteDatabase *)self sqliteCrappedOut:v13 message:@"preparing '%s'", v9];
        goto LABEL_30;
      }

      [(QLSqliteDatabase *)self _databaseCorrupted];
    }

    if (!ppStmt[0])
    {
      goto LABEL_12;
    }

    v14 = sqlite3_bind_blob(ppStmt[0], 1, a3, a4, 0);
    if (!v14)
    {
      goto LABEL_12;
    }

    if (v14 == 26 || v14 == 11)
    {
      [(QLSqliteDatabase *)self _databaseCorrupted];
LABEL_12:
      v15 = [(QLSqliteDatabase *)self _cacheStatement:ppStmt[0] forKey:v10];

      v11 = v15;
      goto LABEL_13;
    }

    [(QLSqliteDatabase *)self sqliteCrappedOut:v14 message:@"error while binding blog", v22];
LABEL_30:
  }
}

- (void)sqliteCrappedOut:(int)a3 message:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v7 = a4;
  dispatch_assert_queue_V2(queue);
  v27[1] = &v37;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v7 arguments:&v37];

  v27[0] = 0;
  v9 = [(QLSqliteDatabase *)self lastCrapWithDate:v27];
  v10 = v27[0];
  v11 = MEMORY[0x277CCACA8];
  v12 = sqlite3_errcode(self->_db);
  v13 = [v11 stringWithFormat:@"unexpected behavior of sqllite bridge: (triggered by %ld - database errcode: %ld - %s)", a3, v12, sqlite3_errmsg(self->_db)];
  v14 = [v9 componentsSeparatedByString:@"\n"];
  if ([v14 count])
  {
    v15 = [v14 objectAtIndex:0];
  }

  else
  {
    v15 = 0;
  }

  if ([v13 isEqual:v15])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v9, v8];
    v17 = [(QLSqliteDatabase *)self _crapPath];
    [v16 writeToFile:v17 atomically:1 encoding:4 error:0];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v13, v8];
    v18 = [(QLSqliteDatabase *)self _crapPath];
    [v16 writeToFile:v18 atomically:1 encoding:4 error:0];

    if (a3 == 14)
    {
      sqlite3_errcode(self->_db);
    }
  }

  v19 = MEMORY[0x277CDAB78];
  v20 = *(MEMORY[0x277CDAB78] + 8);
  if (!v20)
  {
    QLTInitLogging();
    v20 = *(v19 + 8);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    db = self->_db;
    v23 = v20;
    v24 = sqlite3_errcode(db);
    v25 = sqlite3_errmsg(self->_db);
    path = self->_path;
    *buf = 138413058;
    v29 = v8;
    v30 = 2048;
    v31 = v24;
    v32 = 2080;
    v33 = v25;
    v34 = 2112;
    v35 = path;
    _os_log_error_impl(&dword_2615D3000, v23, OS_LOG_TYPE_ERROR, "%@: %ld (%s) (database path: %@)", buf, 0x2Au);
  }

  [(QLSqliteDatabase *)self _databaseCorrupted];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)lastCrapWithDate:(id *)a3
{
  v4 = [(QLSqliteDatabase *)self _crapPath];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    if ([v5 getResourceValue:a3 forKey:*MEMORY[0x277CBE7B0] error:0])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v4 encoding:4 error:0];

      goto LABEL_6;
    }
  }

  v6 = 0;
  *a3 = 0;
LABEL_6:

  return v6;
}

- (int64_t)lastInsertRowId
{
  dispatch_assert_queue_V2(self->_queue);
  db = self->_db;

  return sqlite3_last_insert_rowid(db);
}

- (sqlite3_stmt)prepareStatement:(const char *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isCorrupted)
  {
    ppStmt = 0;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v7 = [(QLSqliteDatabase *)self _cachedStatementForKey:v6];
    v8 = v7;
    if (v7)
    {
      ppStmt = [v7 stmt];
      if (ppStmt)
      {
LABEL_32:
        [v8 setInUse:1];
        v5 = ppStmt;
LABEL_33:

        return v5;
      }
    }

    for (i = -599; ; ++i)
    {
      v10 = sqlite3_prepare_v2(self->_db, a3, -1, &ppStmt, 0);
      if (v10 != 5)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_36;
      }

      v11 = MEMORY[0x277CCACC8];
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{v10, 0.1}];
      [v11 sleepUntilDate:v12];
    }

    if (v10 <= 10)
    {
      if (v10)
      {
        v14 = v10 == 4;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v10 == 11 || v10 == 26)
      {
        [(QLSqliteDatabase *)self _databaseCorrupted];
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
        goto LABEL_26;
      }

      if (v10 != 101)
      {
LABEL_36:
        [(QLSqliteDatabase *)self sqliteCrappedOut:v10 message:@"error while preparing '%s'", a3];
        v5 = 0;
        goto LABEL_33;
      }
    }

    if (!pLogSql)
    {
LABEL_31:
      v19 = [(QLSqliteDatabase *)self _cacheStatement:ppStmt forKey:v6];

      v8 = v19;
      goto LABEL_32;
    }

    v15 = MEMORY[0x277CDAB78];
    v16 = *(MEMORY[0x277CDAB78] + 8);
    if (!v16)
    {
      QLTInitLogging();
      v16 = *(v15 + 8);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [QLSqliteDatabase(SqliteHelpers) prepareStatement:?];
    }

LABEL_26:
    if (pLogSql)
    {
      v17 = MEMORY[0x277CDAB78];
      v18 = *(MEMORY[0x277CDAB78] + 8);
      if (!v18)
      {
        QLTInitLogging();
        v18 = *(v17 + 8);
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [QLSqliteDatabase(SqliteHelpers) prepareStatement:?];
      }
    }

    goto LABEL_31;
  }

  return 0;
}

- (id)_cachedStatementForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_statementCache objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    [v3 stmt];
    if (pLogSql)
    {
      v5 = MEMORY[0x277CDAB78];
      v6 = *(MEMORY[0x277CDAB78] + 8);
      if (!v6)
      {
        QLTInitLogging();
        v6 = *(v5 + 8);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [QLSqliteDatabase(SqliteHelpers) _cachedStatementForKey:];
      }
    }
  }

  return v4;
}

- (id)_cacheStatement:(sqlite3_stmt *)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [[QLSqliteDatabaseStatementWrapper alloc] initWithStatement:a3 key:v6 inUseTable:self->_statementsInUseTable];
  [(NSMutableDictionary *)self->_statementCache setObject:v7 forKey:v6];
  if ([(NSMutableDictionary *)self->_statementCache count]>= 0x33)
  {
    v8 = MEMORY[0x277CDAB78];
    v9 = *(MEMORY[0x277CDAB78] + 8);
    if (!v9)
    {
      QLTInitLogging();
      v9 = *(v8 + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      statementCache = self->_statementCache;
      v11 = v9;
      v12 = [(NSMutableDictionary *)statementCache count];
      v13 = self->_statementCache;
      v16 = 134218498;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "[Warning] We are caching too many statements (%lu), we are expecting to cache only a few (50 max). Cached statements: %@. Last statement cached: %@.", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)stepStatement:(sqlite3_stmt *)a3 didReturnData:(BOOL *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isCorrupted)
  {
    goto LABEL_40;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = MEMORY[0x277CDAB78];
  for (i = 599; ; --i)
  {
    v9 = sqlite3_step(a3);
    v10 = v9;
    if (v9 != 5)
    {
      break;
    }

    if (!i)
    {
      goto LABEL_35;
    }

    v11 = *(v7 + 8);
    if (!v11)
    {
      QLTInitLogging();
      v11 = *(v7 + 8);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 1024;
      v23 = i;
      _os_log_debug_impl(&dword_2615D3000, v11, OS_LOG_TYPE_DEBUG, "failed to step %p because sql was busy, retry count %d", buf, 0x12u);
    }

    v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:0.1];
    [MEMORY[0x277CCACC8] sleepUntilDate:v12];
  }

  if (v9 > 25)
  {
    if (v9 == 26)
    {
LABEL_34:
      [(QLSqliteDatabase *)self _databaseCorrupted];
LABEL_40:
      LOBYTE(v14) = 0;
      goto LABEL_41;
    }

    if (v9 != 101)
    {
      if (v9 != 100)
      {
LABEL_35:
        v16 = *(v7 + 8);
        if (!v16)
        {
          QLTInitLogging();
          v16 = *(v7 + 8);
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [QLSqliteDatabase(SqliteHelpers) stepStatement:v16 didReturnData:v10];
        }

        sqlite3_reset(a3);
        [(QLSqliteDatabase *)self sqliteCrappedOut:v10 message:@"can't execute statement (%s) retval %d", sqlite3_sql(a3), v10];
        goto LABEL_40;
      }

      if (pLogSql)
      {
        v13 = *(v7 + 8);
        if (!v13)
        {
          QLTInitLogging();
          v13 = *(v7 + 8);
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [QLSqliteDatabase(SqliteHelpers) stepStatement:didReturnData:];
        }
      }

      LOBYTE(v14) = 1;
      if (a4)
      {
        *a4 = 1;
      }

      goto LABEL_41;
    }

    if (!pLogSql)
    {
      goto LABEL_31;
    }

LABEL_27:
    v15 = *(v7 + 8);
    if (!v15)
    {
      QLTInitLogging();
      v15 = *(v7 + 8);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [QLSqliteDatabase(SqliteHelpers) stepStatement:didReturnData:];
      if (!a4)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_31:
      if (!a4)
      {
LABEL_33:
        LOBYTE(v14) = 1;
        goto LABEL_41;
      }
    }

    *a4 = 0;
    goto LABEL_33;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  if (v9 != 4)
  {
    if (v9 != 11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!pLogSql)
  {
    goto LABEL_40;
  }

  v18 = *(v7 + 8);
  if (!v18)
  {
    QLTInitLogging();
    v18 = *(v7 + 8);
  }

  v14 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    [QLSqliteDatabase(SqliteHelpers) stepStatement:v18 didReturnData:?];
    goto LABEL_40;
  }

LABEL_41:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)finalizeStatement:(sqlite3_stmt *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isCorrupted)
  {
    v5 = NSMapGet(self->_statementsInUseTable, *a3);
    v9 = v5;
    if (v5)
    {
      [v5 setInUse:0];
      [(QLSqliteDatabase *)self resetStatement:*a3 unbindValuesThroughIndex:0];
      statementCache = self->_statementCache;
      v7 = [v9 key];
      v8 = [(NSMutableDictionary *)statementCache objectForKey:v7];

      if (!v8)
      {
        [(QLSqliteDatabase *)self _finalizeStatement:a3];
        [v9 setStmt:0];
      }
    }

    else
    {
      [(QLSqliteDatabase *)self _finalizeStatement:a3];
    }

    *a3 = 0;
  }
}

- (void)checkpoint
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  *pnCkpt = 0;
  v3 = sqlite3_wal_checkpoint_v2(self->_db, 0, 0, &pnCkpt[1], pnCkpt);
  v4 = MEMORY[0x277CDAB78];
  v5 = *(MEMORY[0x277CDAB78] + 8);
  if (!v5)
  {
    QLTInitLogging();
    v5 = *(v4 + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    v8 = sqlite3_errstr(v3);
    *buf = 67109890;
    v11 = v3;
    v12 = 2080;
    v13 = v8;
    v14 = 1024;
    v15 = pnCkpt[1];
    v16 = 1024;
    v17 = pnCkpt[0];
    _os_log_debug_impl(&dword_2615D3000, v7, OS_LOG_TYPE_DEBUG, "called sqlite3_wal_checkpoint_v2(SQLITE_CHECKPOINT_PASSIVE) with result %d, %s, walframes=%d framesCheckpointed=%d", buf, 0x1Eu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)newColumnName:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = sqlite3_column_name(a4, a3);
  if (v9)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
    if (v8)
    {
      v10 = [v8 member:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;

        v9 = v12;
      }

      else
      {
        [v8 addObject:v9];
      }
    }
  }

  return v9;
}

- (__CFURL)newCFURLFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4
{
  dispatch_assert_queue_V2(self->_queue);
  result = sqlite3_column_text(a4, a3);
  if (result)
  {
    v7 = result;
    v8 = strlen(result);

    return CFURLCreateFromFileSystemRepresentation(0, v7, v8, 0);
  }

  return result;
}

- (id)newStringFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = sqlite3_column_text(a4, a3);
  if (v9)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
    if (v8)
    {
      v10 = [v8 member:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;

        v9 = v12;
      }

      else
      {
        [v8 addObject:v9];
      }
    }
  }

  return v9;
}

- (id)newPathFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 uniqueInStringTable:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = sqlite3_column_text(a4, a3);
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v10 stringWithFileSystemRepresentation:v9 length:strlen(v9)];

    if (v8)
    {
      if (v9)
      {
        v11 = [v8 member:v9];
        v12 = v11;
        if (v11)
        {
          v13 = v11;

          v9 = v13;
        }

        else
        {
          [v8 addObject:v9];
        }
      }
    }
  }

  return v9;
}

- (void)newBufferFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 length:(unsigned int *)a5
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = sqlite3_column_blob(a4, a3);
  v9 = sqlite3_column_bytes(a4, a3);
  if (a5)
  {
    *a5 = v9;
  }

  v10 = v9;
  v11 = malloc_type_malloc(v9, 0xE9284582uLL);

  return memcpy(v11, v8, v10);
}

- (id)newDataFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4 copyBytes:(BOOL)a5
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = sqlite3_column_blob(a4, a3);
  v9 = sqlite3_column_bytes(a4, a3);
  if (!v8 || !v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CBEA90]);
  if (a5)
  {

    return [v11 initWithBytes:v8 length:v10];
  }

  else
  {

    return [v11 initWithBytesNoCopy:v8 length:v10 freeWhenDone:0];
  }
}

- (unint64_t)unsignedLongLongFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4
{
  dispatch_assert_queue_V2(self->_queue);

  return sqlite3_column_int64(a4, a3);
}

- (int)intFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4
{
  dispatch_assert_queue_V2(self->_queue);

  return sqlite3_column_int(a4, a3);
}

- (double)doubleFromColumn:(int)a3 inStatement:(sqlite3_stmt *)a4
{
  dispatch_assert_queue_V2(self->_queue);

  return sqlite3_column_double(a4, a3);
}

- (void)runStatement:(sqlite3_stmt *)a3 stepHandler:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = 0;
  if ([(QLSqliteDatabase *)self stepStatement:a3 didReturnData:&v7]&& (v7 & 1) != 0)
  {
      ;
    }
  }

  [(QLSqliteDatabase *)self resetStatement:a3 unbindValuesThroughIndex:0];
}

- (void)runStatement:(sqlite3_stmt *)a3 withBoundObjects:(id)a4 startingAtIndex:(int)a5 stepHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v12 = [v10 count];
  if (v10)
  {
    v22 = a5;
    v13 = a5 + 20;
    v21 = v12;
    if (v12)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        v16 = v22;
        v17 = v14;
        if (v22 <= 0xFFFFFFEB)
        {
          do
          {
            v18 = [v10 objectAtIndex:{v17, v21}];
            [(QLSqliteDatabase *)self bindObject:v18 atIndex:v16 inStatement:a3];

            v16 = (v16 + 1);
            v14 = ++v17;
          }

          while (v16 < v13 && v17 < v15);
        }

        if (v16 < v13)
        {
          do
          {
            [(QLSqliteDatabase *)self bindObject:0 atIndex:v16 inStatement:a3, v21];
            v16 = (v16 + 1);
          }

          while (v13 != v16);
        }

        v23 = 0;
        while ([(QLSqliteDatabase *)self stepStatement:a3 didReturnData:&v23, v21]&& (v23 & 1) != 0)
        {
          if (v11 && (v11[2](v11) & 1) == 0)
          {
            [(QLSqliteDatabase *)self resetStatement:a3 unbindValuesThroughIndex:0];
            goto LABEL_18;
          }
        }

        [(QLSqliteDatabase *)self resetStatement:a3 unbindValuesThroughIndex:0];
      }

      while (v14 < v21);
    }

LABEL_18:
    if (v13 >= 2)
    {
      v19 = v22 + 19;
      v20 = 1;
      do
      {
        [(QLSqliteDatabase *)self bindObject:0 atIndex:v20 inStatement:a3, v21];
        v20 = (v20 + 1);
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    [(QLSqliteDatabase *)self runStatement:a3 stepHandler:v11];
  }
}

uint64_t __93__QLSqliteDatabase_SqliteHelpers__runStatement_withBoundNumbers_startingAtIndex_stepHandler___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedLongLongValue];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  *(v4 + 8 * v6) = result;
  return result;
}

- (void)setSqliteCacheSize:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (a3 >= 1 && !self->_isCorrupted)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"pragma cache_size=%ld", a3];
    v6 = MEMORY[0x277CDAB78];
    v7 = *(MEMORY[0x277CDAB78] + 8);
    if (!v7)
    {
      QLTInitLogging();
      v7 = *(v6 + 8);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [QLSqliteDatabase(SqliteHelpers) setSqliteCacheSize:];
    }

    -[QLSqliteDatabase execute:](self, "execute:", [v5 UTF8String]);
  }
}

- (void)vacuum
{
  dispatch_assert_queue_V2(self->_queue);

  [(QLSqliteDatabase *)self execute:"vacuum"];
}

void __23__QLSqliteDatabase_do___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_2615D3000, v0, OS_LOG_TYPE_ERROR, "Exception executing database block: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end