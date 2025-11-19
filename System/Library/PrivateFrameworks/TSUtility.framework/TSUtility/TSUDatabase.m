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
- (BOOL)startSingleResultQuery:(sqlite3_stmt *)a3 error:(id *)a4;
- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4;
- (id)_initWithPath:(id)a3 readonly:(BOOL)a4 error:(id *)a5;
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

- (BOOL)closeWithError:(id *)a3
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

  while (TSUHandleSqlite(v8, a3, self, a2, 98, @"Finalizing statement", v9, v10, v15));
  v11 = sqlite3_close(self->_db);
  result = TSUHandleSqlite(v11, a3, self, a2, 101, @"Closing database", v12, v13, v15);
  if (v7)
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
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase needsUpgradeFromSchemaVersion:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 137, @"Abstract method"}];
  return 0;
}

- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4
{
  v4 = [TSUAssertionHandler currentHandler:*&a3];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase upgradeFromSchemaVersion:error:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 143, @"Abstract method"}];
  return 0;
}

- (BOOL)setSchemaVersion:(int)a3 error:(id *)a4
{
  v5 = *&a3;
  if (a3 <= 0)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase setSchemaVersion:error:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 149, @"Use a positive version"}];
  }

  v9 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"pragma user_version = %d", v5), "UTF8String"];

  return [(TSUDatabase *)self executeUpdateWithSql:v9 error:a4];
}

- (BOOL)prepareStatement:(sqlite3_stmt *)a3 sql:(const char *)a4 error:(id *)a5
{
  if (!self->_db)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase prepareStatement:sql:error:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 158, @"Trying to use a closed database"}];
  }

  if (*a3)
  {
    return 1;
  }

  v12 = sqlite3_prepare_v2(self->_db, a4, -1, a3, 0);
  if (TSUHandleSqlite(v12, a5, self, a2, 164, @"Preparing SQL %s", v13, v14, a4))
  {
    return 1;
  }

  sqlite3_finalize(*a3);
  result = 0;
  *a3 = 0;
  return result;
}

- (BOOL)executeUpdate:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (!a3)
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
    v12 = sqlite3_step(a3);
    if (v12 == 101)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  v14 = sqlite3_sql(a3);
  TSUHandleSqlite(v12, a5, self, a2, 198, @"Executing statement %s", v15, v16, v14);
  v13 = 0;
LABEL_8:
  if (v6)
  {
    v17 = sqlite3_finalize(a3);
    v20 = @"Finalizing statement";
    v21 = a5;
    v22 = self;
    v23 = a2;
    v24 = 203;
  }

  else
  {
    v17 = sqlite3_reset(a3);
    v20 = @"Resetting statement";
    v21 = a5;
    v22 = self;
    v23 = a2;
    v24 = 207;
  }

  return v13 & TSUHandleSqlite(v17, v21, v22, v23, v24, v20, v18, v19, v26);
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

- (BOOL)startSingleResultQuery:(sqlite3_stmt *)a3 error:(id *)a4
{
  if (!a3)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase startSingleResultQuery:error:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 225, @"Invalid parameter not satisfying: %s", "statement != NULL"}];
  }

  v10 = sqlite3_step(a3);
  if (v10 != 100)
  {
    v11 = sqlite3_sql(a3);
    TSUHandleSqlite(v10, a4, self, a2, 233, @"Executing query and expecting exactly one row: %s", v12, v13, v11);
  }

  return v10 == 100;
}

- (BOOL)endSingleResultQuery:(sqlite3_stmt *)a3 shouldFinalize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (!a3)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase endSingleResultQuery:shouldFinalize:error:]"];
    v25 = "statement != NULL";
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 241, @"Invalid parameter not satisfying: %s"}];
  }

  v12 = sqlite3_step(a3);
  if (v12 != 101)
  {
    v13 = sqlite3_sql(a3);
    TSUHandleSqlite(v12, a5, self, a2, 248, @"Executing statement %s", v14, v15, v13);
  }

  if (v6)
  {
    v16 = sqlite3_finalize(a3);
    v19 = @"Finalizing statement";
    v20 = a5;
    v21 = self;
    v22 = a2;
    v23 = 253;
  }

  else
  {
    v16 = sqlite3_reset(a3);
    v19 = @"Resetting statement";
    v20 = a5;
    v21 = self;
    v22 = a2;
    v23 = 257;
  }

  result = TSUHandleSqlite(v16, v20, v21, v22, v23, v19, v17, v18, v25);
  if (v12 != 101)
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
    v19 = [TSUAssertionHandler currentHandler:0];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase _initWithPath:readonly:error:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 285, @"No path"}];
    goto LABEL_15;
  }

  v7 = a4;
  v22.receiver = self;
  v22.super_class = TSUDatabase;
  v10 = [(TSUDatabase *)&v22 init];
  v5 = v10;
  if (v10)
  {
    v10->_readonly = v7;
    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 6;
    }

    v12 = sqlite3_open_v2([a3 fileSystemRepresentation], &v10->_db, v11, 0);
    v15 = TSUHandleSqlite(v12, a5, v5, a2, 295, @"Opening database", v13, v14, v22.receiver);
    if (v15)
    {
      v16 = sqlite3_extended_result_codes(v5->_db, 1);
      v15 = TSUHandleSqlite(v16, a5, v5, a2, 297, 0, v17, v18, v22.receiver);
      if (v15)
      {
        v15 = [(TSUDatabase *)v5 _upgradeSchemaWithError:a5];
      }
    }

    if (v7)
    {
LABEL_12:
      if (v15)
      {
        return v5;
      }

      goto LABEL_15;
    }

    if (v15)
    {
      LOBYTE(v15) = [(TSUDatabase *)v5 executeUpdateWithSql:"pragma fullfsync = true" error:a5];
      goto LABEL_12;
    }

LABEL_15:

    return 0;
  }

  return v5;
}

- (BOOL)_upgradeSchemaWithError:(id *)a3
{
  v14 = 0;
  v6 = [(TSUDatabase *)self prepareStatement:&v14 sql:"pragma user_version" error:a3];
  if (v6)
  {
    v6 = [(TSUDatabase *)self startSingleResultQuery:v14 error:a3];
    if (v6)
    {
      v7 = sqlite3_column_int(v14, 0);
      if ([(TSUDatabase *)self needsUpgradeFromSchemaVersion:v7]&& self->_readonly)
      {
        v8 = +[TSUAssertionHandler currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDatabase _upgradeSchemaWithError:]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m"), 338, @"Readonly database needs schema upgrade."}];
        TSUHandleSqlite(8, a3, self, a2, 339, @"Readonly database needs schema upgrade.", v10, v11, v13);
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = [(TSUDatabase *)self endSingleResultQuery:v14 shouldFinalize:1 error:a3];
        if (v6)
        {
          LOBYTE(v6) = [(TSUDatabase *)self upgradeFromSchemaVersion:v7 error:a3];
        }
      }
    }
  }

  return v6;
}

@end