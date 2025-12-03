@interface TSUDatabase
- (BOOL)_upgradeSchemaWithError:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)endSingleResultQuery:(sqlite3_stmt *)query shouldFinalize:(BOOL)finalize error:(id *)error;
- (BOOL)executeUpdate:(sqlite3_stmt *)update shouldFinalize:(BOOL)finalize error:(id *)error;
- (BOOL)executeUpdateWithSql:(const char *)sql error:(id *)error;
- (BOOL)prepareStatement:(sqlite3_stmt *)statement sql:(const char *)sql error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)startSingleResultQuery:(sqlite3_stmt *)query shouldLogErrors:(BOOL)errors error:(id *)error;
- (void)dealloc;
@end

@implementation TSUDatabase

- (void)dealloc
{
  if (self->_db)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015BB7C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015BB90();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase dealloc]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:69 isFatal:0 description:"Database wasn't closed"];
    +[TSUAssertionHandler logBacktraceThrottled];
    [(TSUDatabase *)self closeWithError:0];
  }

  v3.receiver = self;
  v3.super_class = TSUDatabase;
  [(TSUDatabase *)&v3 dealloc];
}

- (BOOL)closeWithError:(id *)error
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

  while (TSUHandleSqlite(v7, error, 1, self, v8, v9, @"Finalizing statement", v10, v16));
  v11 = sqlite3_close(self->_db);
  result = TSUHandleSqlite(v11, error, 1, self, v12, v13, @"Closing database", v14, v16);
  if (v6)
  {
    result = 0;
  }

  self->_db = 0;
  return result;
}

- (BOOL)beginTransactionWithError:(id *)error
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_beginTransactionStatement sql:"begin exclusive" error:error];
  if (v5)
  {
    beginTransactionStatement = self->_beginTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:beginTransactionStatement shouldFinalize:0 error:error];
  }

  return v5;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_commitTransactionStatement sql:"commit" error:error];
  if (v5)
  {
    commitTransactionStatement = self->_commitTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:commitTransactionStatement shouldFinalize:0 error:error];
  }

  return v5;
}

- (BOOL)rollbackTransactionWithError:(id *)error
{
  v5 = [(TSUDatabase *)self prepareStatement:&self->_rollbackTransactionStatement sql:"rollback" error:error];
  if (v5)
  {
    rollbackTransactionStatement = self->_rollbackTransactionStatement;

    LOBYTE(v5) = [(TSUDatabase *)self executeUpdate:rollbackTransactionStatement shouldFinalize:0 error:error];
  }

  return v5;
}

- (BOOL)prepareStatement:(sqlite3_stmt *)statement sql:(const char *)sql error:(id *)error
{
  if (!self->_db)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015BEEC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015BF00();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase prepareStatement:sql:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:142 isFatal:0 description:"Trying to use a closed database"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (*statement)
  {
    return 1;
  }

  v10 = sqlite3_prepare_v2(self->_db, sql, -1, statement, 0);
  sqlCopy = sql;
  v9 = 1;
  if (!TSUHandleSqlite(v10, error, 1, self, v11, v12, @"Preparing SQL %s", v13, sqlCopy))
  {
    sqlite3_finalize(*statement);
    v9 = 0;
    *statement = 0;
  }

  return v9;
}

- (BOOL)executeUpdate:(sqlite3_stmt *)update shouldFinalize:(BOOL)finalize error:(id *)error
{
  finalizeCopy = finalize;
  if (!update)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015BF90();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015BFA4();
    }

    v21 = "statement != NULL";
    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase executeUpdate:shouldFinalize:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:161 isFatal:0 description:"Invalid parameter not satisfying: %{public}s"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->_readonly)
  {
    v9 = 8;
  }

  else
  {
    v9 = sqlite3_step(update);
    if (v9 == 101)
    {
      v10 = 1;
      goto LABEL_12;
    }
  }

  v11 = sqlite3_sql(update);
  TSUHandleSqlite(v9, error, 1, self, v12, v13, @"Executing statement %s", v14, v11);
  v10 = 0;
LABEL_12:
  if (finalizeCopy)
  {
    v15 = sqlite3_finalize(update);
    v19 = @"Finalizing statement";
  }

  else
  {
    v15 = sqlite3_reset(update);
    v19 = @"Resetting statement";
  }

  return v10 & TSUHandleSqlite(v15, error, 1, self, v16, v17, v19, v18, v21);
}

- (BOOL)executeUpdateWithSql:(const char *)sql error:(id *)error
{
  v8 = 0;
  v6 = [(TSUDatabase *)self prepareStatement:&v8 sql:sql error:error];
  if (v6)
  {
    LOBYTE(v6) = [(TSUDatabase *)self executeUpdate:v8 shouldFinalize:1 error:error];
  }

  return v6;
}

- (BOOL)startSingleResultQuery:(sqlite3_stmt *)query shouldLogErrors:(BOOL)errors error:(id *)error
{
  errorsCopy = errors;
  if (!query)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C048();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C05C();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase startSingleResultQuery:shouldLogErrors:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:199 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "statement != NULL"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = sqlite3_step(query);
  if (v9 != 100)
  {
    v10 = sqlite3_sql(query);
    TSUHandleSqlite(v9, error, errorsCopy, self, v11, v12, @"Executing query and expecting exactly one row: %s", v13, v10);
  }

  return v9 == 100;
}

- (BOOL)endSingleResultQuery:(sqlite3_stmt *)query shouldFinalize:(BOOL)finalize error:(id *)error
{
  finalizeCopy = finalize;
  if (!query)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C100();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C114();
    }

    v20 = "statement != NULL";
    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase endSingleResultQuery:shouldFinalize:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:213 isFatal:0 description:"Invalid parameter not satisfying: %{public}s"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = sqlite3_step(query);
  if (v9 != 101)
  {
    v10 = sqlite3_sql(query);
    TSUHandleSqlite(v9, error, 1, self, v11, v12, @"Executing statement %s", v13, v10);
  }

  if (finalizeCopy)
  {
    v14 = sqlite3_finalize(query);
    v18 = @"Finalizing statement";
  }

  else
  {
    v14 = sqlite3_reset(query);
    v18 = @"Resetting statement";
  }

  result = TSUHandleSqlite(v14, error, 1, self, v15, v16, v18, v17, v20);
  if (v9 != 101)
  {
    return 0;
  }

  return result;
}

- (BOOL)_upgradeSchemaWithError:(id *)error
{
  v12 = 0;
  v5 = [(TSUDatabase *)self prepareStatement:&v12 sql:"pragma user_version" error:error];
  if (v5)
  {
    v5 = [(TSUDatabase *)self startSingleResultQuery:v12 error:error];
    if (v5)
    {
      v6 = sqlite3_column_int(v12, 0);
      if ([(TSUDatabase *)self needsUpgradeFromSchemaVersion:v6]&& self->_readonly)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_10015C25C();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015C284();
        }

        [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUDatabase _upgradeSchemaWithError:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"] lineNumber:302 isFatal:0 description:"Readonly database needs schema upgrade."];
        +[TSUAssertionHandler logBacktraceThrottled];
        TSUHandleSqlite(8, error, 1, self, v7, v8, @"Readonly database needs schema upgrade.", v9, v11);
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [(TSUDatabase *)self endSingleResultQuery:v12 shouldFinalize:1 error:error];
        if (v5)
        {
          LOBYTE(v5) = [(TSUDatabase *)self upgradeFromSchemaVersion:v6 error:error];
        }
      }
    }
  }

  return v5;
}

@end