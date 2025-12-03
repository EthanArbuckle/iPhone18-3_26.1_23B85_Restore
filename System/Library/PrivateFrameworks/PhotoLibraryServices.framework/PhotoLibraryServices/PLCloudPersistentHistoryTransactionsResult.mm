@interface PLCloudPersistentHistoryTransactionsResult
+ (id)_coalescingLimitTest;
+ (id)_isTransactionSyncableFilter;
+ (id)fetchTransactionsSinceToken:(id)token inContext:(id)context;
+ (int64_t)_changeCoalescingLimit;
+ (int64_t)_transactionCoalescingLimit;
- (BOOL)_sendLocalEvent:(id)event toEnumerationBlock:(id)block;
- (PLCloudPersistentHistoryTransactionsResult)initWithResultType:(int64_t)type transactionIterator:(id)iterator;
- (PLCloudPersistentHistoryTransactionsResult)initWithSuccesfulTransactionIterator:(id)iterator;
- (PLCloudPersistentHistoryTransactionsResult)initWithUnsuccessfulResultType:(int64_t)type;
- (id)_nextLocalEventUpToNonCoalescableTransaction;
- (void)_updateLastProcessedCoreDataToken;
- (void)enumerateLocalEventsWithBlock:(id)block;
@end

@implementation PLCloudPersistentHistoryTransactionsResult

- (void)_updateLastProcessedCoreDataToken
{
  v8 = *MEMORY[0x1E69E9840];
  lastIteratedToken = [(PLPersistentHistoryTransactionIterator *)self->_transactionIterator lastIteratedToken];
  if (lastIteratedToken)
  {
    objc_storeStrong(&self->_lastProcessedCoreDataToken, lastIteratedToken);
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v4 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        lastProcessedCoreDataToken = self->_lastProcessedCoreDataToken;
        v6 = 138412290;
        v7 = lastProcessedCoreDataToken;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Setting _lastProcessedCoreDataToken to: %@", &v6, 0xCu);
      }
    }
  }
}

- (id)_nextLocalEventUpToNonCoalescableTransaction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__PLCloudPersistentHistoryTransactionsResult__nextLocalEventUpToNonCoalescableTransaction__block_invoke;
  v4[3] = &unk_1E756FDC0;
  v4[4] = self;
  v2 = [PLLocalChangeEventBuilder localEventWithBuilderBlock:v4];

  return v2;
}

void __90__PLCloudPersistentHistoryTransactionsResult__nextLocalEventUpToNonCoalescableTransaction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _isTransactionSyncableFilter];
  [v3 setTransactionFilter:v4];

  v5 = [objc_opt_class() _coalescingLimitTest];
  [v3 recordTransactionsFromIterator:*(*(a1 + 32) + 16) untilTest:v5];
}

- (BOOL)_sendLocalEvent:(id)event toEnumerationBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  blockCopy = block;
  if ([eventCopy count])
  {
    v12 = 0;
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        _pl_prettyDescription = [eventCopy _pl_prettyDescription];
        *buf = 138412290;
        v14 = _pl_prettyDescription;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Enumerating local event: %@", buf, 0xCu);
      }
    }

    blockCopy[2](blockCopy, eventCopy, &v12);
    v9 = v12;
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v10 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Not enumerating empty local event", buf, 2u);
      }
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (void)enumerateLocalEventsWithBlock:(id)block
{
  blockCopy = block;
  if (self->_resultType)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudPersistentHistoryTransactionsResult.m" lineNumber:87 description:@"Can only enumerate succesful results"];
  }

  _nextLocalEventUpToNonCoalescableTransaction = [(PLCloudPersistentHistoryTransactionsResult *)self _nextLocalEventUpToNonCoalescableTransaction];
  if ([_nextLocalEventUpToNonCoalescableTransaction count])
  {
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      if ([(PLCloudPersistentHistoryTransactionsResult *)self _sendLocalEvent:_nextLocalEventUpToNonCoalescableTransaction toEnumerationBlock:blockCopy])
      {
        break;
      }

      _nextLocalEventUpToNonCoalescableTransaction2 = [(PLCloudPersistentHistoryTransactionsResult *)self _nextLocalEventUpToNonCoalescableTransaction];

      objc_autoreleasePoolPop(v6);
      _nextLocalEventUpToNonCoalescableTransaction = _nextLocalEventUpToNonCoalescableTransaction2;
      if (![_nextLocalEventUpToNonCoalescableTransaction2 count])
      {
        goto LABEL_9;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  _nextLocalEventUpToNonCoalescableTransaction2 = _nextLocalEventUpToNonCoalescableTransaction;
LABEL_9:
  [(PLCloudPersistentHistoryTransactionsResult *)self _updateLastProcessedCoreDataToken];
}

- (PLCloudPersistentHistoryTransactionsResult)initWithResultType:(int64_t)type transactionIterator:(id)iterator
{
  iteratorCopy = iterator;
  v13.receiver = self;
  v13.super_class = PLCloudPersistentHistoryTransactionsResult;
  v8 = [(PLCloudPersistentHistoryTransactionsResult *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_resultType = type;
    objc_storeStrong(&v8->_transactionIterator, iterator);
    lastProcessedCoreDataToken = v9->_lastProcessedCoreDataToken;
    v9->_lastProcessedCoreDataToken = 0;

    v11 = v9;
  }

  return v9;
}

- (PLCloudPersistentHistoryTransactionsResult)initWithUnsuccessfulResultType:(int64_t)type
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudPersistentHistoryTransactionsResult.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"resultType != PLCloudChangeEventsResultSuccess"}];
  }

  return [(PLCloudPersistentHistoryTransactionsResult *)self initWithResultType:type transactionIterator:0];
}

- (PLCloudPersistentHistoryTransactionsResult)initWithSuccesfulTransactionIterator:(id)iterator
{
  iteratorCopy = iterator;
  if (!iteratorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudPersistentHistoryTransactionsResult.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"iterator != nil"}];
  }

  v6 = [(PLCloudPersistentHistoryTransactionsResult *)self initWithResultType:0 transactionIterator:iteratorCopy];

  return v6;
}

+ (id)_isTransactionSyncableFilter
{
  v2 = objc_alloc_init(PLPersistentHistoryTransactionModifiers);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PLCloudPersistentHistoryTransactionsResult__isTransactionSyncableFilter__block_invoke;
  aBlock[3] = &unk_1E756BB40;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);

  return v5;
}

uint64_t __74__PLCloudPersistentHistoryTransactionsResult__isTransactionSyncableFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 author];
  [v3 updateFromTransactionAuthor:v4];

  v5 = *(a1 + 32);

  return [v5 isSyncable];
}

+ (int64_t)_changeCoalescingLimit
{
  if (_changeCoalescingLimit_sOnceToken != -1)
  {
    dispatch_once(&_changeCoalescingLimit_sOnceToken, &__block_literal_global_25_37612);
  }

  return _changeCoalescingLimit_sChangeCoalescingLimit;
}

void __68__PLCloudPersistentHistoryTransactionsResult__changeCoalescingLimit__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLCloudPersistentHistoryChangeCoalescingLimit"];

  if (v1)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v2 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = 134218240;
        v4 = _changeCoalescingLimit_sChangeCoalescingLimit;
        v5 = 2048;
        v6 = [v1 integerValue];
        _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Overriding CPL change coalescing limit of %zd to %zd)", &v3, 0x16u);
      }
    }

    _changeCoalescingLimit_sChangeCoalescingLimit = [v1 integerValue];
  }
}

+ (int64_t)_transactionCoalescingLimit
{
  if (_transactionCoalescingLimit_sOnceToken != -1)
  {
    dispatch_once(&_transactionCoalescingLimit_sOnceToken, &__block_literal_global_37619);
  }

  return _transactionCoalescingLimit_sTransactionCoalescingLimit;
}

void __73__PLCloudPersistentHistoryTransactionsResult__transactionCoalescingLimit__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLCloudPersistentHistoryTransactionCoalescingLimit"];

  if (v1)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v2 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = 134218240;
        v4 = _transactionCoalescingLimit_sTransactionCoalescingLimit;
        v5 = 2048;
        v6 = [v1 integerValue];
        _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Overriding CPL transaction coalescing limit of %zd to %zd", &v3, 0x16u);
      }
    }

    _transactionCoalescingLimit_sTransactionCoalescingLimit = [v1 integerValue];
  }
}

+ (id)_coalescingLimitTest
{
  v2 = objc_alloc_init(PLPersistentHistoryTransactionModifiers);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PLCloudPersistentHistoryTransactionsResult__coalescingLimitTest__block_invoke;
  aBlock[3] = &unk_1E756BB18;
  v9 = v12;
  v10 = v11;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);

  return v5;
}

uint64_t __66__PLCloudPersistentHistoryTransactionsResult__coalescingLimitTest__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(*(*(a1 + 48) + 8) + 24);
      v8 = [v3 changes];
      v27 = 134218496;
      v28 = v6;
      v29 = 2048;
      v30 = v7;
      v31 = 2048;
      v32 = [v8 count];
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Checking coalescing limit: transaction count = %zd + 1, change count = %zd + %zd", &v27, 0x20u);
    }
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v9 = [v3 changes];
  *(*(*(a1 + 48) + 8) + 24) += [v9 count];

  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (v10 >= +[PLCloudPersistentHistoryTransactionsResult _transactionCoalescingLimit])
  {
    if (*v4)
    {
      goto LABEL_20;
    }

    v14 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v19 = [v3 transactionNumber];
    v20 = *(*(*(a1 + 40) + 8) + 24);
    v21 = *(*(*(a1 + 48) + 8) + 24);
    v27 = 134218496;
    v28 = v19;
    v29 = 2048;
    v30 = v20;
    v31 = 2048;
    v32 = v21;
    v16 = "Stopping history iteration on tx#%llu due to transaction coalescing limit: transaction count = %zd, change count = %zd";
LABEL_17:
    v17 = v14;
    v18 = 32;
    goto LABEL_18;
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  if (v11 >= +[PLCloudPersistentHistoryTransactionsResult _changeCoalescingLimit])
  {
    if (*v4)
    {
      goto LABEL_20;
    }

    v14 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v22 = [v3 transactionNumber];
    v23 = *(*(*(a1 + 40) + 8) + 24);
    v24 = *(*(*(a1 + 48) + 8) + 24);
    v27 = 134218496;
    v28 = v22;
    v29 = 2048;
    v30 = v23;
    v31 = 2048;
    v32 = v24;
    v16 = "Stopping history iteration on tx#%llu due to change coalescing limit: transaction count = %zd, change count = %zd";
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v13 = [v3 author];
  [v12 updateFromTransactionAuthor:v13];

  if (![*(a1 + 32) nonCoalescing])
  {
    v25 = 0;
    goto LABEL_21;
  }

  if ((*v4 & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 transactionNumber];
      v27 = 134217984;
      v28 = v15;
      v16 = "Stopping history iteration on tx#%llu due non coalescing transaction modifier";
      v17 = v14;
      v18 = 12;
LABEL_18:
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v16, &v27, v18);
    }

LABEL_19:
  }

LABEL_20:
  v25 = 1;
LABEL_21:

  return v25;
}

+ (id)fetchTransactionsSinceToken:(id)token inContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  contextCopy = context;
  v17 = 0;
  v7 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:tokenCopy withManagedObjectObjectContext:contextCopy error:&v17];
  v8 = v17;
  if (!v7)
  {
    if (PLIsErrorEqualToCode())
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v19 = tokenCopy;
          v20 = 2114;
          v21 = contextCopy;
          v13 = "Token was expired, sending back PLCloudChangeEventsResultHistoryTokenInvalid, token: %{public}@, context: %{public}@";
LABEL_15:
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!PLIsErrorEqualToCode())
      {
        if (*MEMORY[0x1E6994D48])
        {
          v14 = 1;
          goto LABEL_22;
        }

        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v19 = tokenCopy;
          v20 = 2112;
          v21 = contextCopy;
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch transactions since token: %{public}@, context: %@, error: %@,", buf, 0x20u);
        }

        v14 = 1;
        goto LABEL_21;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v19 = tokenCopy;
          v20 = 2114;
          v21 = contextCopy;
          v13 = "Token is inconsistent (token passed to NSPersistentChangeRequest does not contain the store), sending back PLCloudChangeEventsResultHistoryTokenInvalid, token: %{public}@, context: %{public}@";
          goto LABEL_15;
        }

LABEL_16:
        v14 = 2;
LABEL_21:

LABEL_22:
        v11 = [[PLCloudPersistentHistoryTransactionsResult alloc] initWithUnsuccessfulResultType:v14];
        goto LABEL_23;
      }
    }

    v14 = 2;
    goto LABEL_22;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v7 count];
      *buf = 134217984;
      v19 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Sending back PLCloudChangeEventsResultSuccess with %lu transactions in an iterator", buf, 0xCu);
    }
  }

  v11 = [[PLCloudPersistentHistoryTransactionsResult alloc] initWithSuccesfulTransactionIterator:v7];
LABEL_23:
  v15 = v11;

  return v15;
}

@end