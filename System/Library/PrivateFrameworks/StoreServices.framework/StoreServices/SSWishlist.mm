@interface SSWishlist
+ (BOOL)existsForAccountIdentifier:(int64_t)a3;
- (BOOL)deleteBackingStore;
- (NSNumber)lastSyncTime;
- (SSWishlist)initWithAccountIdentifier:(int64_t)a3;
- (void)dealloc;
- (void)performTransactionWithBlock:(id)a3;
- (void)setLastSyncTime:(id)a3;
@end

@implementation SSWishlist

- (SSWishlist)initWithAccountIdentifier:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = SSWishlist;
  v4 = [(SSWishlist *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_accountIdentifier = a3;
    v6 = [SSWishlistDatabaseSchema databasePathWithAccountIdentifier:a3];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
    [v8 createDirectoryAtPath:objc_msgSend(v6 withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];

    v9 = [[SSSQLiteDatabase alloc] initWithDatabaseURL:v7];
    v5->_database = v9;
    [(SSSQLiteDatabase *)v9 setSetupBlock:&__block_literal_global_39];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v7 setResourceValue:v10 forKey:*MEMORY[0x1E695DB80] error:0];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSWishlist;
  [(SSWishlist *)&v3 dealloc];
}

+ (BOOL)existsForAccountIdentifier:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  LOBYTE(a3) = [v4 fileExistsAtPath:{+[SSWishlistDatabaseSchema databasePathWithAccountIdentifier:](SSWishlistDatabaseSchema, "databasePathWithAccountIdentifier:", a3)}];

  return a3;
}

- (BOOL)deleteBackingStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = self->_database;
  if (database)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__SSWishlist_deleteBackingStore__block_invoke;
    v6[3] = &unk_1E84B3608;
    v6[4] = &v7;
    [(SSSQLiteDatabase *)database accessDatabaseUsingBlock:v6];
    v4 = *(v8 + 24);
    if (v4 == 1)
    {

      self->_database = 0;
      LOBYTE(v4) = *(v8 + 24);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __32__SSWishlist_deleteBackingStore__block_invoke(uint64_t a1)
{
  result = CPSqliteDatabaseDelete();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (NSNumber)lastSyncTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__78;
  v10 = __Block_byref_object_dispose__78;
  v11 = 0;
  database = self->_database;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SSWishlist_lastSyncTime__block_invoke;
  v5[3] = &unk_1E84B2138;
  v5[4] = self;
  v5[5] = &v6;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __26__SSWishlist_lastSyncTime__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"SELECT value FROM properties WHERE key=lastSyncTime;"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  v6[2] = __26__SSWishlist_lastSyncTime__block_invoke_2;
  v6[3] = &unk_1E84B1E90;
  v7 = v3;
  [v4 prepareStatementForSQL:v2 cache:0 usingBlock:v6];

  return 1;
}

void __26__SSWishlist_lastSyncTime__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  if ([*(*(a1 + 32) + 16) statementHasRowAfterStepping:a2])
  {
    v4 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    if (objc_opt_respondsToSelector())
    {
      *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(v4, "integerValue")}];
    }
  }
}

- (void)performTransactionWithBlock:(id)a3
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SSWishlist_performTransactionWithBlock___block_invoke;
  v4[3] = &unk_1E84B3630;
  v4[4] = self;
  v4[5] = a3;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

- (void)setLastSyncTime:(id)a3
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__SSWishlist_setLastSyncTime___block_invoke;
  v4[3] = &unk_1E84B3658;
  v4[4] = a3;
  v4[5] = self;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

uint64_t __30__SSWishlist_setLastSyncTime___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO properties (key, value) VALUES (lastSyncTime, ?)"];
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __30__SSWishlist_setLastSyncTime___block_invoke_3;
    v10[3] = &unk_1E84B20E8;
    v5 = *(a1 + 32);
    v10[5] = v3;
    v10[6] = &v12;
    v10[4] = v5;
    [v4 prepareStatementForSQL:v2 cache:0 usingBlock:v10];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__SSWishlist_setLastSyncTime___block_invoke_2;
    v11[3] = &unk_1E84B3018;
    v11[4] = v6;
    v11[5] = &v12;
    [v7 prepareStatementForSQL:@"DELETE FROM properties WHERE key=lastSyncTime" cache:0 usingBlock:v11];
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __30__SSWishlist_setLastSyncTime___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 16) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __30__SSWishlist_setLastSyncTime___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  SSSQLiteBindFoundationValueToStatement(a2, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(*(a1 + 32), "longLongValue")]);
  result = [*(*(a1 + 40) + 16) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end