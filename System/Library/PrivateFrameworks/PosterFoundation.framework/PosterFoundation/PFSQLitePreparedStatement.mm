@interface PFSQLitePreparedStatement
+ (id)_newPreparedStatementForDatabaseConnection:(void *)connection withSQLQuery:;
- (uint64_t)loggingCategory;
- (uint64_t)setLoggingCategory:(uint64_t)result;
- (void)_initWithDatabaseConnection:(void *)connection;
- (void)dealloc;
@end

@implementation PFSQLitePreparedStatement

- (void)dealloc
{
  objc_storeWeak(&self->_dbConnection, 0);
  v3.receiver = self;
  v3.super_class = PFSQLitePreparedStatement;
  [(PFSQLitePreparedStatement *)&v3 dealloc];
}

+ (id)_newPreparedStatementForDatabaseConnection:(void *)connection withSQLQuery:
{
  v4 = a2;
  connectionCopy = connection;
  objc_opt_self();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PFSQLitePreparedStatement__newPreparedStatementForDatabaseConnection_withSQLQuery___block_invoke;
  v10[3] = &unk_1E818A0D0;
  v6 = connectionCopy;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  [(PFSQLiteDatabaseConnection *)v7 performSyncWithDatabase:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __85__PFSQLitePreparedStatement__newPreparedStatementForDatabaseConnection_withSQLQuery___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v4 = [*(a1 + 32) UTF8String];
  v14 = 0;
  ppStmt = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v4 || !*v4)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v6 = strlen(v4);
    if (!sqlite3_prepare_v2(a2, v4, v6, &ppStmt, &v14))
    {
      v10 = [_PBFSQLitePreparedSimpleStatement alloc];
      v8 = [(_PBFSQLitePreparedSimpleStatement *)v10 _initWithDatabaseConnection:ppStmt statement:?];
      [v5 addObject:v8];
      goto LABEL_6;
    }

    if (v14 <= v4)
    {
      break;
    }

    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v7 initWithBytes:v4 length:v14 - v4 encoding:4];
    v9 = [[_PBFSQLiteDeferredPreparedSimpleStatement alloc] initWithDatabaseConnection:v8 deferredSql:?];
    [v5 addObject:v9];

LABEL_6:
    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    if (!*v14)
    {
      goto LABEL_11;
    }
  }

  v4 = v14;
LABEL_11:
  if (!v4 || !*v4)
  {
LABEL_15:
    if ([v5 count] == 1)
    {
      v11 = [v5 objectAtIndex:0];
    }

    else
    {
      v11 = [[_PBFSQLitePreparedCompoundStatement alloc] initWithDatabaseConnection:v5 statements:?];
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (void)_initWithDatabaseConnection:(void *)connection
{
  v3 = a2;
  if (connection)
  {
    v7.receiver = connection;
    v7.super_class = PFSQLitePreparedStatement;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    connection = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
      v5 = BSLogCommon();
      connection[2] = v5;
    }
  }

  return connection;
}

- (uint64_t)setLoggingCategory:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)loggingCategory
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end