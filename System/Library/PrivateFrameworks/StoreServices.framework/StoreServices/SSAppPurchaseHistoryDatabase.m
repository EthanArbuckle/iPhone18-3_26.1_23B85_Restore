@interface SSAppPurchaseHistoryDatabase
+ (BOOL)_setupDatabase:(id)a3;
+ (id)newDefaultInstance;
+ (void)_createDatabaseDirectory;
- (BOOL)removeValueForDatabaseProperty:(id)a3;
- (BOOL)resetCacheForNewAccountID:(id)a3;
- (BOOL)setCurrentAccountUniqueIdentifier:(id)a3;
- (BOOL)setLocalRevision:(int64_t)a3 forAccountUniqueIdentifier:(id)a4;
- (BOOL)setValue:(id)a3 forDatabaseProperty:(id)a4;
- (SSAppPurchaseHistoryDatabase)init;
- (SSAppPurchaseHistoryDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4;
- (id)allProperties:(id)a3 accountID:(id)a4 includingHidden:(BOOL)a5;
- (id)currentAccountUniqueIdentifier;
- (id)database;
- (id)valueForDatabaseProperty:(id)a3;
- (int64_t)localRevisionForAccountUniqueIdentifier:(id)a3;
- (void)dealloc;
- (void)modifyUsingAppPurchaseHistoryTransactionBlock:(id)a3;
- (void)readAsyncUsingTransactionBlock:(id)a3;
- (void)readUsingTransactionBlock:(id)a3;
@end

@implementation SSAppPurchaseHistoryDatabase

- (SSAppPurchaseHistoryDatabase)init
{
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:+[SSAppPurchaseHistoryDatabaseSchema databasePath](SSAppPurchaseHistoryDatabaseSchema isDirectory:{"databasePath"), 0}];

  return [(SSAppPurchaseHistoryDatabase *)self initWithDatabaseURL:v3 readOnly:1];
}

- (SSAppPurchaseHistoryDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = SSAppPurchaseHistoryDatabase;
  v6 = [(SSAppPurchaseHistoryDatabase *)&v10 init];
  if (v6)
  {
    +[SSAppPurchaseHistoryDatabase _createDatabaseDirectory];
    v7 = [SSSQLiteDatabase alloc];
    v8 = [(SSSQLiteDatabase *)v7 initWithDatabaseURL:a3 readOnly:v4 protectionType:*MEMORY[0x1E696A388]];
    v6->_database = v8;
    if (!v4)
    {
      [(SSSQLiteDatabase *)v8 setSetupBlock:&__block_literal_global_34];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSAppPurchaseHistoryDatabase;
  [(SSAppPurchaseHistoryDatabase *)&v3 dealloc];
}

+ (id)newDefaultInstance
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:+[SSAppPurchaseHistoryDatabaseSchema databasePath](SSAppPurchaseHistoryDatabaseSchema isDirectory:{"databasePath"), 0}];
  v3 = [SSAppPurchaseHistoryDatabase alloc];

  return [(SSAppPurchaseHistoryDatabase *)v3 initWithDatabaseURL:v2 readOnly:0];
}

- (void)modifyUsingAppPurchaseHistoryTransactionBlock:(id)a3
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__SSAppPurchaseHistoryDatabase_modifyUsingAppPurchaseHistoryTransactionBlock___block_invoke;
  v4[3] = &unk_1E84B1D88;
  v4[4] = self;
  v4[5] = a3;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

uint64_t __78__SSAppPurchaseHistoryDatabase_modifyUsingAppPurchaseHistoryTransactionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[SSAppPurchaseHistoryTransaction alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  v4 = (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
  return v4;
}

- (void)readAsyncUsingTransactionBlock:(id)a3
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SSAppPurchaseHistoryDatabase_readAsyncUsingTransactionBlock___block_invoke;
  v4[3] = &unk_1E84AF318;
  v4[4] = self;
  v4[5] = a3;
  [(SSSQLiteDatabase *)database dispatchBlockAsync:v4];
}

- (void)readUsingTransactionBlock:(id)a3
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SSAppPurchaseHistoryDatabase_readUsingTransactionBlock___block_invoke;
  v4[3] = &unk_1E84B1D88;
  v4[4] = self;
  v4[5] = a3;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

uint64_t __58__SSAppPurchaseHistoryDatabase_readUsingTransactionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[SSAppPurchaseHistoryTransaction alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
  return 1;
}

- (id)currentAccountUniqueIdentifier
{
  result = [(SSAppPurchaseHistoryDatabase *)self valueForDatabaseProperty:+[SSAppPurchaseHistoryDatabase accountUniqueIdentifierKey]];
  if (result)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = [result longLongValue];

    return [v3 numberWithLongLong:v4];
  }

  return result;
}

- (BOOL)setCurrentAccountUniqueIdentifier:(id)a3
{
  if (a3)
  {
    -[SSAppPurchaseHistoryDatabase setValue:forDatabaseProperty:](self, "setValue:forDatabaseProperty:", [a3 stringValue], +[SSAppPurchaseHistoryDatabase accountUniqueIdentifierKey](SSAppPurchaseHistoryDatabase, "accountUniqueIdentifierKey"));
  }

  else
  {
    [(SSAppPurchaseHistoryDatabase *)self removeValueForDatabaseProperty:+[SSAppPurchaseHistoryDatabase accountUniqueIdentifierKey]];
  }

  return 1;
}

- (int64_t)localRevisionForAccountUniqueIdentifier:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SSAppPurchaseHistoryDatabase_localRevisionForAccountUniqueIdentifier___block_invoke;
  v5[3] = &unk_1E84B2E60;
  v5[4] = a3;
  v5[5] = &v6;
  [(SSAppPurchaseHistoryDatabase *)self readUsingTransactionBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __72__SSAppPurchaseHistoryDatabase_localRevisionForAccountUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"local_revision";
  v3 = +[SSSQLiteEntity queryWithDatabase:predicate:](SSAppPurchaseHistoryAccount, "queryWithDatabase:predicate:", [a2 database], +[SSSQLiteComparisonPredicate predicateWithProperty:equalToValue:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToValue:", @"account_unique_identifier", *(a1 + 32)));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SSAppPurchaseHistoryDatabase_localRevisionForAccountUniqueIdentifier___block_invoke_2;
  v5[3] = &unk_1E84B1DB0;
  v5[4] = *(a1 + 40);
  [v3 enumeratePersistentIDsAndProperties:v6 count:1 usingBlock:v5];
  return 1;
}

void *__72__SSAppPurchaseHistoryDatabase_localRevisionForAccountUniqueIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, _BYTE *a5)
{
  result = *a3;
  if (*a3)
  {
    result = [result integerValue];
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  *a5 = 1;
  return result;
}

- (BOOL)setLocalRevision:(int64_t)a3 forAccountUniqueIdentifier:(id)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SSAppPurchaseHistoryDatabase_setLocalRevision_forAccountUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E84B2E88;
  v6[6] = &v7;
  v6[7] = a3;
  v6[4] = a4;
  v6[5] = self;
  [(SSAppPurchaseHistoryDatabase *)self modifyUsingAppPurchaseHistoryTransactionBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __76__SSAppPurchaseHistoryDatabase_setLocalRevision_forAccountUniqueIdentifier___block_invoke(void *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = [SSAppPurchaseHistoryAccount alloc];
  v25[0] = a1[4];
  v24[0] = @"ROWID";
  v24[1] = @"local_revision";
  v25[1] = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  v5 = -[SSSQLiteEntity initWithPropertyValues:inDatabase:](v4, "initWithPropertyValues:inDatabase:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2], objc_msgSend(a2, "database"));
  *(*(a1[6] + 8) + 24) = v5 != 0;

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v22 = 138412290;
      v23 = objc_opt_class();
      LODWORD(v21) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v22, v21}];
        free(v10);
        SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSAppPurchaseHistoryDatabaseLocalRevisionDidChange", 0, 0, 1u);
    v19 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

- (BOOL)resetCacheForNewAccountID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__SSAppPurchaseHistoryDatabase_resetCacheForNewAccountID___block_invoke;
  v21[3] = &unk_1E84B2EB0;
  v21[5] = self;
  v21[6] = &v22;
  v21[4] = a3;
  [(SSAppPurchaseHistoryDatabase *)self modifyUsingAppPurchaseHistoryTransactionBlock:v21];
  if (*(v23 + 24) == 1)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    v5 = [v3 shouldLogToDisk];
    v6 = [v3 OSLogObject];
    if (v5)
    {
      v4 |= 2u;
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v7 = objc_opt_class();
      v26 = 138412290;
      v27 = v7;
      LODWORD(v20) = 12;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v26, v20}];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSAppPurchaseHistoryDatabaseLocalRevisionDidChange", 0, 0, 1u);
    v18 = *(v23 + 24);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v18 & 1;
}

uint64_t __58__SSAppPurchaseHistoryDatabase_resetCacheForNewAccountID___block_invoke(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@", +[SSAppPurchaseHistoryEntry databaseTable](SSAppPurchaseHistoryEntry, "databaseTable")];
  if ([*(a1 + 32) longLongValue])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE %@ != '%@'", +[SSAppPurchaseHistoryEntry databaseTable](SSAppPurchaseHistoryEntry, "databaseTable"), @"account_unique_identifier", *(a1 + 32)];
  }

  *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(a2 "database")];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) removeValueForDatabaseProperty:{objc_msgSend(objc_opt_class(), "accountUniqueIdentifierKey")}], (*(*(*(a1 + 48) + 8) + 24) & 1) != 0))
  {
    if ([*(a1 + 32) longLongValue])
    {
      [SSSQLiteComparisonPredicate predicateWithProperty:@"account_unique_identifier" value:*(a1 + 32) comparisonType:2];
    }

    *(*(*(a1 + 48) + 8) + 24) = [+[SSSQLiteEntity queryWithDatabase:predicate:](SSAppPurchaseHistoryAccount queryWithDatabase:objc_msgSend(a2 predicate:{"database"), 0), "deleteAllEntities"}];
    v5 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)valueForDatabaseProperty:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__68;
  v10 = __Block_byref_object_dispose__68;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SSAppPurchaseHistoryDatabase_valueForDatabaseProperty___block_invoke;
  v5[3] = &unk_1E84B2F00;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = &v6;
  v5[7] = a2;
  [(SSAppPurchaseHistoryDatabase *)self readUsingTransactionBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__SSAppPurchaseHistoryDatabase_valueForDatabaseProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6[2] = __57__SSAppPurchaseHistoryDatabase_valueForDatabaseProperty___block_invoke_2;
  v6[3] = &unk_1E84B2ED8;
  v8 = v3;
  v9 = v4;
  [v3 prepareStatementForSQL:@"SELECT value FROM db_properties WHERE key = ?" cache:1 usingBlock:v6];
  return 1;
}

uint64_t __57__SSAppPurchaseHistoryDatabase_valueForDatabaseProperty___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v6 = [v5 objCType];
      v7 = *v6;
      if ((v7 == 102 || v7 == 100) && !v6[1])
      {
        [*(a1 + 32) doubleValue];
        sqlite3_bind_double(a2, 1, v9);
      }

      else
      {
        sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
      }
    }

    else
    {
      NSLog(&cfstr_SDUnsupportedP.isa, "/Library/Caches/com.apple.xbs/Sources/StoreServices/StoreServices/SSAppPurchaseHistoryDatabase.m", 194, v5);
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  result = [*(a1 + 48) statementHasRowAfterStepping:a2];
  if (result)
  {
    result = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)setValue:(id)a3 forDatabaseProperty:(id)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SSAppPurchaseHistoryDatabase_setValue_forDatabaseProperty___block_invoke;
  v6[3] = &unk_1E84B2F28;
  v6[7] = &v7;
  v6[8] = a2;
  v6[4] = a3;
  v6[5] = self;
  v6[6] = a4;
  [(SSAppPurchaseHistoryDatabase *)self modifyUsingAppPurchaseHistoryTransactionBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __61__SSAppPurchaseHistoryDatabase_setValue_forDatabaseProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SSAppPurchaseHistoryDatabase_setValue_forDatabaseProperty___block_invoke_2;
  v6[3] = &unk_1E84B2ED8;
  v9 = *(a1 + 64);
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  [v3 prepareStatementForSQL:@"INSERT OR REPLACE INTO db_properties (value cache:key) VALUES (? usingBlock:{?);", 1, v6}];
  return 1;
}

uint64_t __61__SSAppPurchaseHistoryDatabase_setValue_forDatabaseProperty___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v6 = [v5 objCType];
      v7 = *v6;
      if ((v7 == 102 || v7 == 100) && !v6[1])
      {
        [*(a1 + 32) doubleValue];
        sqlite3_bind_double(a2, 1, v13);
      }

      else
      {
        sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
      }
    }

    else
    {
      NSLog(&cfstr_SDUnsupportedP.isa, "/Library/Caches/com.apple.xbs/Sources/StoreServices/StoreServices/SSAppPurchaseHistoryDatabase.m", 210, v5);
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(a2, 2, [*(a1 + 48) UTF8String], -1, 0);
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
    v9 = *(a1 + 48);
    if (v8)
    {
      v10 = [v9 objCType];
      v11 = *v10;
      if ((v11 == 102 || v11 == 100) && !v10[1])
      {
        [*(a1 + 48) doubleValue];
        sqlite3_bind_double(a2, 2, v14);
      }

      else
      {
        sqlite3_bind_int64(a2, 2, [*(a1 + 48) longLongValue]);
      }
    }

    else
    {
      NSLog(&cfstr_SDUnsupportedP.isa, "/Library/Caches/com.apple.xbs/Sources/StoreServices/StoreServices/SSAppPurchaseHistoryDatabase.m", 211, v9);
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  result = [*(*(a1 + 40) + 8) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)removeValueForDatabaseProperty:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SSAppPurchaseHistoryDatabase_removeValueForDatabaseProperty___block_invoke;
  v5[3] = &unk_1E84B2F00;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = &v6;
  v5[7] = a2;
  [(SSAppPurchaseHistoryDatabase *)self modifyUsingAppPurchaseHistoryTransactionBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__SSAppPurchaseHistoryDatabase_removeValueForDatabaseProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__SSAppPurchaseHistoryDatabase_removeValueForDatabaseProperty___block_invoke_2;
  v6[3] = &unk_1E84B2F50;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  [v3 prepareStatementForSQL:@"DELETE FROM db_properties WHERE key = ?;" cache:1 usingBlock:v6];
  return 1;
}

uint64_t __63__SSAppPurchaseHistoryDatabase_removeValueForDatabaseProperty___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v6 = [v5 objCType];
      v7 = *v6;
      if ((v7 == 102 || v7 == 100) && !v6[1])
      {
        [*(a1 + 32) doubleValue];
        sqlite3_bind_double(a2, 1, v9);
      }

      else
      {
        sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
      }
    }

    else
    {
      NSLog(&cfstr_SDUnsupportedP.isa, "/Library/Caches/com.apple.xbs/Sources/StoreServices/StoreServices/SSAppPurchaseHistoryDatabase.m", 225, v5);
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  result = [*(*(a1 + 40) + 8) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)allProperties:(id)a3 accountID:(id)a4 includingHidden:(BOOL)a5
{
  if (!a4 || ![a3 count])
  {
    return 0;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SSAppPurchaseHistoryDatabase_allProperties_accountID_includingHidden___block_invoke;
  v11[3] = &unk_1E84B2FA0;
  v12 = a5;
  v11[4] = a4;
  v11[5] = a3;
  v11[6] = v9;
  [(SSAppPurchaseHistoryDatabase *)self readUsingTransactionBlock:v11];
  return v9;
}

uint64_t __72__SSAppPurchaseHistoryDatabase_allProperties_accountID_includingHidden___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a2 database];
  v4 = [SSAppPurchaseHistoryEntry predicateForAccountIdentifier:*(a1 + 32)];
  if (*(a1 + 56))
  {
    v5 = 0;
  }

  else
  {
    v5 = +[SSAppPurchaseHistoryEntry predicateForNotHidden];
  }

  v6 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v5, 0}]);
  v7 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [(SSSQLiteQueryDescriptor *)v7 setEntityClass:objc_opt_class()];
  [(SSSQLiteQueryDescriptor *)v7 setPredicate:v6];
  -[SSSQLiteQueryDescriptor setOrderingProperties:](v7, "setOrderingProperties:", [MEMORY[0x1E695DEC8] arrayWithObject:@"date_purchased"]);
  -[SSSQLiteQueryDescriptor setOrderingDirections:](v7, "setOrderingDirections:", [MEMORY[0x1E695DEC8] arrayWithObject:@"DESC"]);
  v8 = [[SSSQLiteQuery alloc] initWithDatabase:v3 descriptor:v7];
  memset(v14, 0, sizeof(v14));
  v9 = [*(a1 + 40) count];
  v10 = v9;
  v11 = v14;
  if (v9 >= 11)
  {
    v11 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
  }

  [*(a1 + 40) getObjects:v11 range:{0, v10}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SSAppPurchaseHistoryDatabase_allProperties_accountID_includingHidden___block_invoke_2;
  v13[3] = &unk_1E84B2F78;
  v13[5] = v10;
  v13[6] = v11;
  v13[4] = *(a1 + 48);
  [(SSSQLiteQuery *)v8 enumeratePersistentIDsAndProperties:v11 count:v10 usingBlock:v13];
  if (v11 != v14)
  {
    free(v11);
  }

  return 1;
}

void __72__SSAppPurchaseHistoryDatabase_allProperties_accountID_includingHidden___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a1 + 40)];
  v7 = *(a1 + 40);
  if (v7 >= 1)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(a3 + 8 * i);
      if (v9)
      {
        [v6 setObject:v9 forKey:*(*(a1 + 48) + 8 * i)];
        v7 = *(a1 + 40);
      }
    }
  }

  if ([v6 count])
  {
    [*(a1 + 32) addObject:v6];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)database
{
  v2 = self->_database;

  return v2;
}

+ (void)_createDatabaseDirectory
{
  v2 = +[SSAppPurchaseHistoryDatabaseSchema databasePath];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SSAppPurchaseHistoryDatabase__createDatabaseDirectory__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = v2;
    if (_createDatabaseDirectory_sOnce != -1)
    {
      dispatch_once(&_createDatabaseDirectory_sOnce, block);
    }
  }
}

void __56__SSAppPurchaseHistoryDatabase__createDatabaseDirectory__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v3 createDirectoryAtPath:objc_msgSend(*(a1 + 32) withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)_setupDatabase:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSAppPurchaseHistoryDatabase__setupDatabase___block_invoke;
  v5[3] = &unk_1E84B1F38;
  v5[4] = a3;
  v5[5] = &v6;
  [a3 performTransactionWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end