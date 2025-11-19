@interface TSUDatabase
- (BOOL)_upgradeSchemaWithError:(id *)a3;
- (BOOL)beginTransactionWithError:(id *)a3;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)endSingleResultQuery:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5;
- (BOOL)executeUpdate:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5;
- (BOOL)executeUpdateWithSql:(const char *)a3 error:(id *)a4;
- (BOOL)needsUpgradeFromSchemaVersion:(int)a3;
- (BOOL)prepareStatement:(sqlite3_stmt *)a3 sql:(const char *)a4 error:(id *)a5;
- (BOOL)rollbackTransactionWithError:(id *)a3;
- (BOOL)setSchemaVersion:(int)a3 error:(id *)a4;
- (BOOL)startSingleResultQuery:(sqlite3_stmt *)a3 shouldLogErrors:(BOOL)a4 error:(id *)a5;
- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4;
- (id)_initWithPath:(id)a3 readonly:(BOOL)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation TSUDatabase

- (void)dealloc
{
  if (self->_db)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase dealloc]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 69, 0, "Database wasn't closed");
    +[TSUAssertionHandler logBacktraceThrottled];
    [(TSUDatabase *)self closeWithError:0];
  }

  v4.receiver = self;
  v4.super_class = TSUDatabase;
  [(TSUDatabase *)&v4 dealloc];
}

- (BOOL)closeWithError:(id *)a3
{
  if (!self->_db)
  {
    return 1;
  }

  do
  {
    stmt = sqlite3_next_stmt(self->_db, 0);
    v6 = stmt;
    if (!stmt)
    {
      break;
    }

    v7 = sqlite3_finalize(stmt);
  }

  while (TSUHandleSqlite(v7, a3, 1, self, v8, v9, @"Finalizing statement", v10, v16));
  v11 = sqlite3_close(self->_db);
  result = TSUHandleSqlite(v11, a3, 1, self, v12, v13, @"Closing database", v14, v16);
  if (v6)
  {
    result = 0;
  }

  self->_db = 0;
  return result;
}

- (BOOL)beginTransactionWithError:(id *)a3
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_beginTransactionStatement sql:"begin exclusive" error:a3];
  if (v5)
  {
    beginTransactionStatement = self->_beginTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:beginTransactionStatement shouldFinalize:0 error:a3];
  }

  return v5;
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_commitTransactionStatement sql:"commit" error:a3];
  if (v5)
  {
    commitTransactionStatement = self->_commitTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:commitTransactionStatement shouldFinalize:0 error:a3];
  }

  return v5;
}

- (BOOL)rollbackTransactionWithError:(id *)a3
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_rollbackTransactionStatement sql:"rollback" error:a3];
  if (v5)
  {
    rollbackTransactionStatement = self->_rollbackTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:rollbackTransactionStatement shouldFinalize:0 error:a3];
  }

  return v5;
}

- (BOOL)needsUpgradeFromSchemaVersion:(int)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase needsUpgradeFromSchemaVersion:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 124, 0, "Abstract method");
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUDatabase upgradeFromSchemaVersion:error:]", a4}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 129, 0, "Abstract method");
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (BOOL)setSchemaVersion:(int)a3 error:(id *)a4
{
  v5 = *&a3;
  if (a3 <= 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase setSchemaVersion:error:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 134, 0, "Use a positive version");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v8 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"pragma user_version = %d", v5), "UTF8String"];

  return [(TSUDatabase *)self executeUpdateWithSql:v8 error:a4];
}

- (BOOL)prepareStatement:(sqlite3_stmt *)a3 sql:(const char *)a4 error:(id *)a5
{
  if (!self->_db)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase prepareStatement:sql:error:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 142, 0, "Trying to use a closed database");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (*a3)
  {
    return 1;
  }

  v11 = sqlite3_prepare_v2(self->_db, a4, -1, a3, 0);
  v16 = a4;
  v10 = 1;
  if (!TSUHandleSqlite(v11, a5, 1, self, v12, v13, @"Preparing SQL %s", v14, v16))
  {
    sqlite3_finalize(*a3);
    v10 = 0;
    *a3 = 0;
  }

  return v10;
}

- (BOOL)executeUpdate:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (!a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase executeUpdate:shouldFinalize:error:]"];
    v22 = "statement != NULL";
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 161, 0, "Invalid parameter not satisfying: %{public}s");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->_readonly)
  {
    v10 = 8;
  }

  else
  {
    v10 = sqlite3_step(a3);
    if (v10 == 101)
    {
      v11 = 1;
      goto LABEL_8;
    }
  }

  v12 = sqlite3_sql(a3);
  TSUHandleSqlite(v10, a5, 1, self, v13, v14, @"Executing statement %s", v15, v12);
  v11 = 0;
LABEL_8:
  if (v6)
  {
    v16 = sqlite3_finalize(a3);
    v20 = @"Finalizing statement";
  }

  else
  {
    v16 = sqlite3_reset(a3);
    v20 = @"Resetting statement";
  }

  return v11 & TSUHandleSqlite(v16, a5, 1, self, v17, v18, v20, v19, v22);
}

- (BOOL)executeUpdateWithSql:(const char *)a3 error:(id *)a4
{
  v8 = 0;
  v6 = [(TSUDatabase *)self prepareStatement:&v8 sql:a3 error:a4];
  if (v6)
  {
    LOBYTE(v6) = [(TSUDatabase *)self executeUpdate:v8 shouldFinalize:1 error:a4];
  }

  return v6;
}

- (BOOL)startSingleResultQuery:(sqlite3_stmt *)a3 shouldLogErrors:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (!a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase startSingleResultQuery:shouldLogErrors:error:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 199, 0, "Invalid parameter not satisfying: %{public}s", "statement != NULL");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = sqlite3_step(a3);
  if (v10 != 100)
  {
    v11 = sqlite3_sql(a3);
    TSUHandleSqlite(v10, a5, v6, self, v12, v13, @"Executing query and expecting exactly one row: %s", v14, v11);
  }

  return v10 == 100;
}

- (BOOL)endSingleResultQuery:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (!a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase endSingleResultQuery:shouldFinalize:error:]"];
    v21 = "statement != NULL";
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 213, 0, "Invalid parameter not satisfying: %{public}s");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = sqlite3_step(a3);
  if (v10 != 101)
  {
    v11 = sqlite3_sql(a3);
    TSUHandleSqlite(v10, a5, 1, self, v12, v13, @"Executing statement %s", v14, v11);
  }

  if (v6)
  {
    v15 = sqlite3_finalize(a3);
    v19 = @"Finalizing statement";
  }

  else
  {
    v15 = sqlite3_reset(a3);
    v19 = @"Resetting statement";
  }

  result = TSUHandleSqlite(v15, a5, 1, self, v16, v17, v19, v18, v21);
  if (v10 != 101)
  {
    return 0;
  }

  return result;
}

- (id)_initWithPath:(id)a3 readonly:(BOOL)a4 error:(id *)a5
{
  v5 = self;
  if (!a3)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUDatabase _initWithPath:readonly:error:]", a4, a5}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v22, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 247, 0, "No path");
    +[TSUAssertionHandler logBacktraceThrottled];
LABEL_16:

    return 0;
  }

  v7 = a4;
  v24.receiver = self;
  v24.super_class = TSUDatabase;
  v9 = [(TSUDatabase *)&v24 init];
  v5 = v9;
  if (!v9)
  {
    return v5;
  }

  v9->_readonly = v7;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 6;
  }

  v11 = sqlite3_open_v2([a3 fileSystemRepresentation], &v9->_db, v10, 0);
  v15 = TSUHandleSqlite(v11, a5, 0, v5, v12, v13, @"Opening database", v14, v24.receiver);
  db = v5->_db;
  if (!v15)
  {
    sqlite3_close(db);
    v5->_db = 0;
    goto LABEL_16;
  }

  v17 = sqlite3_extended_result_codes(db, 1);
  if (!TSUHandleSqlite(v17, a5, 0, v5, v18, v19, 0, v20, v24.receiver))
  {
    goto LABEL_15;
  }

  v21 = [(TSUDatabase *)v5 _upgradeSchemaWithError:a5];
  if (!v7 && v21)
  {
    if ([(TSUDatabase *)v5 executeUpdateWithSql:"pragma fullfsync = true" error:a5])
    {
      return v5;
    }

    goto LABEL_15;
  }

  if (!v7 || !v21)
  {
LABEL_15:
    [(TSUDatabase *)v5 closeWithError:0];
    goto LABEL_16;
  }

  return v5;
}

- (BOOL)_upgradeSchemaWithError:(id *)a3
{
  v13 = 0;
  v5 = [(TSUDatabase *)self prepareStatement:&v13 sql:"pragma user_version" error:a3];
  if (v5)
  {
    v5 = [(TSUDatabase *)self startSingleResultQuery:v13 error:a3];
    if (v5)
    {
      v6 = sqlite3_column_int(v13, 0);
      if ([(TSUDatabase *)self needsUpgradeFromSchemaVersion:v6]&& self->_readonly)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase _upgradeSchemaWithError:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDatabase.m"], 302, 0, "Readonly database needs schema upgrade.");
        +[TSUAssertionHandler logBacktraceThrottled];
        TSUHandleSqlite(8, a3, 1, self, v8, v9, @"Readonly database needs schema upgrade.", v10, v12);
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [(TSUDatabase *)self endSingleResultQuery:v13 shouldFinalize:1 error:a3];
        if (v5)
        {
          LOBYTE(v5) = [(TSUDatabase *)self upgradeFromSchemaVersion:v6 error:a3];
        }
      }
    }
  }

  return v5;
}

@end