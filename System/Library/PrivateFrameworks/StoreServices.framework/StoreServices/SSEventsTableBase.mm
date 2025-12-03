@interface SSEventsTableBase
- (SSEventsTableBase)init;
- (void)performTransactionWithBlock:(id)block;
@end

@implementation SSEventsTableBase

- (SSEventsTableBase)init
{
  v14.receiver = self;
  v14.super_class = SSEventsTableBase;
  v2 = [(SSEventsTableBase *)&v14 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    databasePath = [objc_opt_class() databasePath];
    v5 = [SSSQLiteDatabase alloc];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:databasePath isDirectory:0];
    v7 = [(SSSQLiteDatabase *)v5 initWithDatabaseURL:v6 readOnly:0 protectionType:*MEMORY[0x1E696A388]];
    database = v2->_database;
    v2->_database = v7;

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2050000000;
    v13[3] = v2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __25__SSEventsTableBase_init__block_invoke;
    v10[3] = &unk_1E84AEF48;
    v12 = v13;
    v11 = v2;
    [(SSSQLiteDatabase *)v2->_database setSetupBlock:v10];

    _Block_object_dispose(v13, 8);
    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

void __25__SSEventsTableBase_init__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (([*(*(*(a1 + 40) + 8) + 24) _setupDatabase] & 1) == 0)
  {
    v1 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v1)
    {
      v1 = +[SSLogConfig sharedConfig];
    }

    v2 = [v1 shouldLog];
    if ([v1 shouldLogToDisk])
    {
      v3 = v2 | 2;
    }

    else
    {
      v3 = v2;
    }

    v4 = [v1 OSLogObject];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v3 &= 2u;
    }

    if (v3)
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = objc_opt_class();
      v5 = *(&v14 + 4);
      LODWORD(v13) = 12;
      v6 = _os_log_send_and_compose_impl();

      if (!v6)
      {
LABEL_13:

        return;
      }

      v4 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v14, v13, v14}];
      free(v6);
      SSFileLog(v1, @"%@", v7, v8, v9, v10, v11, v12, v4);
    }

    goto LABEL_13;
  }
}

- (void)performTransactionWithBlock:(id)block
{
  blockCopy = block;
  database = self->_database;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SSEventsTableBase_performTransactionWithBlock___block_invoke;
  v7[3] = &unk_1E84AEF70;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
}

uint64_t __49__SSEventsTableBase_performTransactionWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  return v3;
}

@end