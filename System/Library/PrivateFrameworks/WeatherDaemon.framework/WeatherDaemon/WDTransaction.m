@interface WDTransaction
+ (id)log;
- (WDTransaction)initWithDescription:(id)a3;
- (void)dealloc;
@end

@implementation WDTransaction

- (WDTransaction)initWithDescription:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WDTransaction;
  v6 = [(WDTransaction *)&v16 init];
  if (v6)
  {
    [v5 UTF8String];
    v7 = os_transaction_create();
    transaction = v6->_transaction;
    v6->_transaction = v7;

    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v10;

    objc_storeStrong(&v6->_transactionDescription, a3);
    v12 = +[WDTransaction log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v6->_identifier;
      transactionDescription = v6->_transactionDescription;
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = transactionDescription;
      _os_log_impl(&dword_1B6020000, v12, OS_LOG_TYPE_DEFAULT, "Acquired transaction: %{public}@ for: %{public}@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[WDTransaction log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    transactionDescription = self->_transactionDescription;
    *buf = 138543618;
    v8 = identifier;
    v9 = 2114;
    v10 = transactionDescription;
    _os_log_impl(&dword_1B6020000, v3, OS_LOG_TYPE_DEFAULT, "Releasing transaction: %{public}@ for: %{public}@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = WDTransaction;
  [(WDTransaction *)&v6 dealloc];
}

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[WDTransaction log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __20__WDTransaction_log__block_invoke()
{
  log_log = os_log_create("com.apple.weather", "transactions");

  return MEMORY[0x1EEE66BB8]();
}

@end