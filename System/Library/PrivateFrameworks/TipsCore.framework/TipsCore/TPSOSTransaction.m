@interface TPSOSTransaction
+ (id)transactionWithName:(id)a3;
- (TPSOSTransaction)initWithTransactionName:(id)a3;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation TPSOSTransaction

+ (id)transactionWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTransactionName:v4];

  return v5;
}

- (TPSOSTransaction)initWithTransactionName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSOSTransaction;
  v5 = [(TPSOSTransaction *)&v12 init];
  if (v5)
  {
    v6 = [v4 UTF8String];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5->_creationTime = v7;
    v8 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v8;

    v10 = +[TPSLogger default];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(TPSOSTransaction *)v6 initWithTransactionName:v5, v10];
    }
  }

  return v5;
}

- (void)endTransaction
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "EndTransaction was called but transaction was already nil. (%p)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [a2 creationTime];
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_1C00A7000, v4, v5, "Ending transaction %s (%p) - held for %.3fs", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithTransactionName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "Created transaction: %s (%p)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end