@interface SSKeyValueStoreDatabase
- (id)_initReadOnly:(BOOL)only;
- (void)_dispatchBlockAsync:(id)async;
- (void)dealloc;
- (void)modifyAsyncUsingTransactionBlock:(id)block;
- (void)modifyUsingTransactionBlock:(id)block;
- (void)readAsyncUsingSessionBlock:(id)block;
- (void)readUsingSessionBlock:(id)block;
@end

@implementation SSKeyValueStoreDatabase

- (id)_initReadOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = +[SSKeyValueStoreSchema databasePath];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SSKeyValueStoreDatabase__initReadOnly___block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = v5;
    if (_initReadOnly__sOnce != -1)
    {
      dispatch_once(&_initReadOnly__sOnce, block);
    }
  }

  v11.receiver = self;
  v11.super_class = SSKeyValueStoreDatabase;
  v7 = [(SSKeyValueStoreDatabase *)&v11 init];
  if (v7)
  {
    v8 = [SSSQLiteDatabase alloc];
    v9 = -[SSSQLiteDatabase initWithDatabaseURL:readOnly:](v8, "initWithDatabaseURL:readOnly:", [MEMORY[0x1E695DFF8] fileURLWithPath:v6], onlyCopy);
    v7->_database = v9;
    if (!onlyCopy)
    {
      [(SSSQLiteDatabase *)v9 setSetupBlock:&__block_literal_global_25];
    }
  }

  return v7;
}

void __41__SSKeyValueStoreDatabase__initReadOnly___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v2 createDirectoryAtPath:objc_msgSend(*(a1 + 32) withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSKeyValueStoreDatabase;
  [(SSKeyValueStoreDatabase *)&v3 dealloc];
}

- (void)modifyAsyncUsingTransactionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__SSKeyValueStoreDatabase_modifyAsyncUsingTransactionBlock___block_invoke;
  v3[3] = &unk_1E84AF318;
  v3[4] = self;
  v3[5] = block;
  [(SSKeyValueStoreDatabase *)self _dispatchBlockAsync:v3];
}

- (void)modifyUsingTransactionBlock:(id)block
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSKeyValueStoreDatabase_modifyUsingTransactionBlock___block_invoke;
  v4[3] = &unk_1E84B1D88;
  v4[4] = self;
  v4[5] = block;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

uint64_t __55__SSKeyValueStoreDatabase_modifyUsingTransactionBlock___block_invoke(uint64_t a1)
{
  v2 = [(SSKeyValueStoreSession *)[SSKeyValueStoreTransaction alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

- (void)readAsyncUsingSessionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__SSKeyValueStoreDatabase_readAsyncUsingSessionBlock___block_invoke;
  v3[3] = &unk_1E84AF318;
  v3[4] = self;
  v3[5] = block;
  [(SSKeyValueStoreDatabase *)self _dispatchBlockAsync:v3];
}

- (void)readUsingSessionBlock:(id)block
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSKeyValueStoreDatabase_readUsingSessionBlock___block_invoke;
  v4[3] = &unk_1E84B1D88;
  v4[4] = self;
  v4[5] = block;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v4];
}

uint64_t __49__SSKeyValueStoreDatabase_readUsingSessionBlock___block_invoke(uint64_t a1)
{
  v2 = [[SSKeyValueStoreSession alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();

  return 1;
}

- (void)_dispatchBlockAsync:(id)async
{
  database = self->_database;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSKeyValueStoreDatabase__dispatchBlockAsync___block_invoke;
  v4[3] = &unk_1E84AC710;
  v4[4] = async;
  [(SSSQLiteDatabase *)database dispatchBlockAsync:v4];
}

@end