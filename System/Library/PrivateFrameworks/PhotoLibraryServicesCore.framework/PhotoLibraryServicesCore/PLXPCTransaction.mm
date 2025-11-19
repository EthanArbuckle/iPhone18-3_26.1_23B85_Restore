@interface PLXPCTransaction
+ (id)openXPCTransactionStatus;
+ (id)transaction:(const char *)a3;
+ (void)_startTrackingTransaction:(id)a3;
+ (void)_stopTrackingTransaction:(id)a3;
+ (void)initialize;
- (PLXPCTransaction)initWithIdentifier:(const char *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation PLXPCTransaction

- (void)dealloc
{
  [PLXPCTransaction _stopTrackingTransaction:self];
  v3.receiver = self;
  v3.super_class = PLXPCTransaction;
  [(PLXPCTransaction *)&v3 dealloc];
}

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:256 capacity:0];
  v3 = _allTransactions;
  _allTransactions = v2;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.assetsd.trasactionTracking", v6);
  v5 = _allTransactionsLock;
  _allTransactionsLock = v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLXPCTransaction;
  v4 = [(PLXPCTransaction *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: os_transaction: %p, identifier: %s", v4, self->_transaction, self->_identifier];

  return v5;
}

- (PLXPCTransaction)initWithIdentifier:(const char *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PLXPCTransaction;
  v4 = [(PLXPCTransaction *)&v22 init];
  if (v4)
  {
    if (a3)
    {
      if (*a3)
      {
        goto LABEL_4;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: identifier passed as empty string argument."];
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: NULL identifier passed as argument."];
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_21:
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138543618;
        v24 = v10;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_FAULT, "%{public}@, backtrace:\n%@", buf, 0x16u);
      }
    }

LABEL_4:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos.PLXPCTransaction: %p %s", v4, a3];
    if (!v5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: created nil transaction description (identifier: %s).", a3];
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138543618;
        v24 = v12;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_FAULT, "%{public}@, backtrace:\n%@", buf, 0x16u);
      }
    }

    [v5 UTF8String];
    v6 = os_transaction_create();
    transaction = v4->_transaction;
    v4->_transaction = v6;

    if (!v4->_transaction)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: created NULL os_transaction (identifier: %s, transactionDescription: %@).", a3, v5];
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_FAULT, "%{public}@, backtrace:\n%@", buf, 0x16u);
      }
    }

    description = os_transaction_get_description();
    if (description)
    {
      if (*description)
      {
LABEL_8:
        v4->_identifier = a3;
        [PLXPCTransaction _startTrackingTransaction:v4];

        return v4;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: os_transaction has an empty description (identifier: %s, transactionDescription: %@).", a3, v5];
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLXPCTransaction: os_transaction has a NULL description (identifier: %s, transactionDescription: %@).", a3, v5];
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
LABEL_24:
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_FAULT, "%{public}@, backtrace:\n%@", buf, 0x16u);
      }
    }

    goto LABEL_8;
  }

  return v4;
}

+ (id)openXPCTransactionStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PLXPCTransaction_openXPCTransactionStatus__block_invoke;
  block[3] = &unk_1E7932D68;
  block[4] = &v5;
  dispatch_sync(_allTransactionsLock, block);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open XPC transactions: %d", *(v6 + 12)];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__PLXPCTransaction_openXPCTransactionStatus__block_invoke(uint64_t a1)
{
  result = [_allTransactions count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (void)_stopTrackingTransaction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PLXPCTransaction.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2050000000;
  v9[3] = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PLXPCTransaction__stopTrackingTransaction___block_invoke;
  block[3] = &unk_1E792F798;
  block[4] = v9;
  block[5] = &v10;
  dispatch_sync(_allTransactionsLock, block);
  if (!v11[3])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"kPLXPCTransactionIdleNotification" object:0];
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __45__PLXPCTransaction__stopTrackingTransaction___block_invoke(uint64_t a1)
{
  [_allTransactions removeObject:*(*(*(a1 + 32) + 8) + 24)];
  result = [_allTransactions count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)_startTrackingTransaction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLXPCTransaction.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
  }

  v6 = _allTransactionsLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLXPCTransaction__startTrackingTransaction___block_invoke;
  block[3] = &unk_1E79329F0;
  v10 = v5;
  v7 = v5;
  dispatch_sync(v6, block);
}

+ (id)transaction:(const char *)a3
{
  v3 = [[PLXPCTransaction alloc] initWithIdentifier:a3];

  return v3;
}

@end