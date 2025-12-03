@interface TSUDatabase
- (BOOL)_upgradeSchemaWithError:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)endSingleResultQuery:(sqlite3_stmt *)query shouldFinalize:(BOOL)finalize error:(id *)error;
- (BOOL)executeUpdate:(sqlite3_stmt *)update shouldFinalize:(BOOL)finalize error:(id *)error;
- (BOOL)executeUpdateWithSql:(const char *)sql error:(id *)error;
- (BOOL)needsUpgradeFromSchemaVersion:(int)version;
- (BOOL)prepareStatement:(sqlite3_stmt *)statement sql:(const char *)sql error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)setSchemaVersion:(int)version error:(id *)error;
- (BOOL)startSingleResultQuery:(sqlite3_stmt *)query error:(id *)error;
- (BOOL)upgradeFromSchemaVersion:(int)version error:(id *)error;
- (id)_initWithPath:(id)path readonly:(BOOL)readonly error:(id *)error;
- (void)dealloc;
@end

@implementation TSUDatabase

- (void)dealloc
{
  if (self->_db)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 72, @"Database wasn't closed"}];
    [(TSUDatabase *)self closeWithError:0];
  }

  v5.receiver = self;
  v5.super_class = TSUDatabase;
  [(TSUDatabase *)&v5 dealloc];
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
    v7 = stmt;
    if (!stmt)
    {
      break;
    }

    v8 = sqlite3_finalize(stmt);
  }

  while (TSUHandleSqlite(v8, error, self, a2, 98, @"Finalizing statement", v9, v10, v15));
  v11 = sqlite3_close(self->_db);
  result = TSUHandleSqlite(v11, error, self, a2, 101, @"Closing database", v12, v13, v15);
  if (v7)
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

- (BOOL)needsUpgradeFromSchemaVersion:(int)version
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase needsUpgradeFromSchemaVersion:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 137, @"Abstract method"}];
  return 0;
}

- (BOOL)upgradeFromSchemaVersion:(int)version error:(id *)error
{
  v4 = [TSUAssertionHandler currentHandler:*&version];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase upgradeFromSchemaVersion:error:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 143, @"Abstract method"}];
  return 0;
}

- (BOOL)setSchemaVersion:(int)version error:(id *)error
{
  v5 = *&version;
  if (version <= 0)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase setSchemaVersion:error:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 149, @"Use a positive version"}];
  }

  v9 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"pragma user_version = %d", v5), "UTF8String"];

  return [(TSUDatabase *)self executeUpdateWithSql:v9 error:error];
}

- (BOOL)prepareStatement:(sqlite3_stmt *)statement sql:(const char *)sql error:(id *)error
{
  if (!self->_db)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase prepareStatement:sql:error:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 158, @"Trying to use a closed database"}];
  }

  if (*statement)
  {
    return 1;
  }

  v12 = sqlite3_prepare_v2(self->_db, sql, -1, statement, 0);
  if (TSUHandleSqlite(v12, error, self, a2, 164, @"Preparing SQL %s", v13, v14, sql))
  {
    return 1;
  }

  sqlite3_finalize(*statement);
  result = 0;
  *statement = 0;
  return result;
}

- (BOOL)executeUpdate:(sqlite3_stmt *)update shouldFinalize:(BOOL)finalize error:(id *)error
{
  finalizeCopy = finalize;
  if (!update)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase executeUpdate:shouldFinalize:error:]"];
    v26 = "statement != NULL";
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 182, @"Invalid parameter not satisfying: %s"}];
  }

  if (self->_readonly)
  {
    v12 = 8;
  }

  else
  {
    v12 = sqlite3_step(update);
    if (v12 == 101)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  v14 = sqlite3_sql(update);
  TSUHandleSqlite(v12, error, self, a2, 198, @"Executing statement %s", v15, v16, v14);
  v13 = 0;
LABEL_8:
  if (finalizeCopy)
  {
    v17 = sqlite3_finalize(update);
    v20 = @"Finalizing statement";
    errorCopy2 = error;
    selfCopy2 = self;
    v23 = a2;
    v24 = 203;
  }

  else
  {
    v17 = sqlite3_reset(update);
    v20 = @"Resetting statement";
    errorCopy2 = error;
    selfCopy2 = self;
    v23 = a2;
    v24 = 207;
  }

  return v13 & TSUHandleSqlite(v17, errorCopy2, selfCopy2, v23, v24, v20, v18, v19, v26);
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

- (BOOL)startSingleResultQuery:(sqlite3_stmt *)query error:(id *)error
{
  if (!query)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase startSingleResultQuery:error:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 225, @"Invalid parameter not satisfying: %s", "statement != NULL"}];
  }

  v10 = sqlite3_step(query);
  if (v10 != 100)
  {
    v11 = sqlite3_sql(query);
    TSUHandleSqlite(v10, error, self, a2, 233, @"Executing query and expecting exactly one row: %s", v12, v13, v11);
  }

  return v10 == 100;
}

- (BOOL)endSingleResultQuery:(sqlite3_stmt *)query shouldFinalize:(BOOL)finalize error:(id *)error
{
  finalizeCopy = finalize;
  if (!query)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase endSingleResultQuery:shouldFinalize:error:]"];
    v25 = "statement != NULL";
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 241, @"Invalid parameter not satisfying: %s"}];
  }

  v12 = sqlite3_step(query);
  if (v12 != 101)
  {
    v13 = sqlite3_sql(query);
    TSUHandleSqlite(v12, error, self, a2, 248, @"Executing statement %s", v14, v15, v13);
  }

  if (finalizeCopy)
  {
    v16 = sqlite3_finalize(query);
    v19 = @"Finalizing statement";
    errorCopy2 = error;
    selfCopy2 = self;
    v22 = a2;
    v23 = 253;
  }

  else
  {
    v16 = sqlite3_reset(query);
    v19 = @"Resetting statement";
    errorCopy2 = error;
    selfCopy2 = self;
    v22 = a2;
    v23 = 257;
  }

  result = TSUHandleSqlite(v16, errorCopy2, selfCopy2, v22, v23, v19, v17, v18, v25);
  if (v12 != 101)
  {
    return 0;
  }

  return result;
}

- (id)_initWithPath:(id)path readonly:(BOOL)readonly error:(id *)error
{
  selfCopy = self;
  if (!path)
  {
    v19 = [TSUAssertionHandler currentHandler:0];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase _initWithPath:readonly:error:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 285, @"No path"}];
    goto LABEL_15;
  }

  readonlyCopy = readonly;
  v22.receiver = self;
  v22.super_class = TSUDatabase;
  v10 = [(TSUDatabase *)&v22 init];
  selfCopy = v10;
  if (v10)
  {
    v10->_readonly = readonlyCopy;
    if (readonlyCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = 6;
    }

    v12 = sqlite3_open_v2([path fileSystemRepresentation], &v10->_db, v11, 0);
    v15 = TSUHandleSqlite(v12, error, selfCopy, a2, 295, @"Opening database", v13, v14, v22.receiver);
    if (v15)
    {
      v16 = sqlite3_extended_result_codes(selfCopy->_db, 1);
      v15 = TSUHandleSqlite(v16, error, selfCopy, a2, 297, 0, v17, v18, v22.receiver);
      if (v15)
      {
        v15 = [(TSUDatabase *)selfCopy _upgradeSchemaWithError:error];
      }
    }

    if (readonlyCopy)
    {
LABEL_12:
      if (v15)
      {
        return selfCopy;
      }

      goto LABEL_15;
    }

    if (v15)
    {
      LOBYTE(v15) = [(TSUDatabase *)selfCopy executeUpdateWithSql:"pragma fullfsync = true" error:error];
      goto LABEL_12;
    }

LABEL_15:

    return 0;
  }

  return selfCopy;
}

- (BOOL)_upgradeSchemaWithError:(id *)error
{
  v14 = 0;
  v6 = [(TSUDatabase *)self prepareStatement:&v14 sql:"pragma user_version" error:error];
  if (v6)
  {
    v6 = [(TSUDatabase *)self startSingleResultQuery:v14 error:error];
    if (v6)
    {
      v7 = sqlite3_column_int(v14, 0);
      if ([(TSUDatabase *)self needsUpgradeFromSchemaVersion:v7]&& self->_readonly)
      {
        v8 = +[TSUAssertionHandler currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase _upgradeSchemaWithError:]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 338, @"Readonly database needs schema upgrade."}];
        TSUHandleSqlite(8, error, self, a2, 339, @"Readonly database needs schema upgrade.", v10, v11, v13);
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = [(TSUDatabase *)self endSingleResultQuery:v14 shouldFinalize:1 error:error];
        if (v6)
        {
          LOBYTE(v6) = [(TSUDatabase *)self upgradeFromSchemaVersion:v7 error:error];
        }
      }
    }
  }

  return v6;
}

@end