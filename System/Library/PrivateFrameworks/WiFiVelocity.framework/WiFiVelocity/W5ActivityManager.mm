@interface W5ActivityManager
+ (id)sharedActivityManager;
- (BOOL)debugTimerEnabled;
- (W5ActivityManager)init;
- (unint64_t)osTransactionsActive;
- (void)_executeTimerBlock;
- (void)debugTimer;
- (void)osTransactionComplete:(id)complete;
- (void)osTransactionCreate:(const char *)create transaction:(id)transaction;
@end

@implementation W5ActivityManager

+ (id)sharedActivityManager
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  v3 = qword_280D9E7B0;

  return v3;
}

uint64_t __42__W5ActivityManager_sharedActivityManager__block_invoke()
{
  qword_280D9E7B0 = objc_alloc_init(W5ActivityManager);

  return MEMORY[0x2821F96F8]();
}

- (W5ActivityManager)init
{
  v12.receiver = self;
  v12.super_class = W5ActivityManager;
  v2 = [(W5ActivityManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    eagerExitTimeout = v2->_eagerExitTimeout;
    v2->_eagerExitTimeout = 0;

    array = [MEMORY[0x277CBEB18] array];
    active_transactions = v3->_active_transactions;
    v3->_active_transactions = array;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("W5ActivityManager", v7);
    queue = v3->_queue;
    v3->_queue = v8;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager init error!", v11, 2u);
  }

  return v3;
}

- (BOOL)debugTimerEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.wifivelocity"];

  v4 = [v3 objectForKey:@"eager-exit-debug"];
  if (v4)
  {
    NSLog(&cfstr_SFoundPreferen.isa, "[W5ActivityManager debugTimerEnabled]", @"com.apple.wifivelocity", @"eager-exit-debug");
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)debugTimer
{
  periodicActiveListTimer = self->_periodicActiveListTimer;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (periodicActiveListTimer)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager debugTimer already setup", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager configuring _periodicActiveListTimer", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__W5ActivityManager_debugTimer__block_invoke;
    block[3] = &unk_279ECD450;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __31__W5ActivityManager_debugTimer__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__W5ActivityManager_debugTimer__block_invoke_2;
  v5[3] = &unk_279ECD478;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v5 block:5.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void __31__W5ActivityManager_debugTimer__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__W5ActivityManager_debugTimer__block_invoke_3;
  block[3] = &unk_279ECD450;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __31__W5ActivityManager_debugTimer__block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 24) copy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [v1 count];
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager activeTransactions %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(&v11 + 1) + 8 * i);
          description = os_transaction_get_description();
          *buf = 136315138;
          v17 = description;
          _os_log_impl(&dword_274216000, v6, OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager activeTransaction %s", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)osTransactionCreate:(const char *)create transaction:(id)transaction
{
  transactionCopy = transaction;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__W5ActivityManager_osTransactionCreate_transaction___block_invoke;
  block[3] = &unk_279ECD4A0;
  block[4] = self;
  v10 = transactionCopy;
  createCopy = create;
  v8 = transactionCopy;
  dispatch_sync(queue, block);
}

void __53__W5ActivityManager_osTransactionCreate_transaction___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (!v2[2])
  {
    v3 = [v2 debugTimerEnabled];
    v2 = a1[4];
    if (v3)
    {
      [v2 debugTimer];
      v2 = a1[4];
    }
  }

  if (!v2[6])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = a1[4];
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v2 = a1[4];
  }

  v7 = v2[1];
  if (v7 && [v7 isValid])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionCreate, timer was running, invalidating and freeing", &v14, 2u);
    }

    [*(a1[4] + 8) invalidate];
    v8 = a1[4];
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;
  }

  [*(a1[4] + 24) addObject:a1[5]];
  ++*(a1[4] + 48);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[6];
    v11 = [*(a1[4] + 24) count];
    v12 = *(a1[4] + 48);
    v14 = 136315650;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionCreate %s, active count is now %lu, total started is now %lu", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)osTransactionComplete:(id)complete
{
  completeCopy = complete;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__W5ActivityManager_osTransactionComplete___block_invoke;
  block[3] = &unk_279ECD518;
  v6 = completeCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  dispatch_sync(queue, block);
  if (*(v13 + 24) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager osTransactionComplete TRANSACTION NOT FOUND ASSERT", v7, 2u);
  }

  _Block_object_dispose(&v12, 8);
}

void __43__W5ActivityManager_osTransactionComplete___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 136315138;
    description = os_transaction_get_description();
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager osTransactionComplete %s", buf, 0xCu);
  }

  if (([*(a1[5] + 24) containsObject:a1[4]] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = os_transaction_get_description();
      v15 = [*(a1[5] + 24) count];
      *buf = 136315394;
      description = v14;
      v19 = 2048;
      v20 = v15;
      _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] W5ActivityManager osTransactionComplete %s, TRANSACTION NOT FOUND, active count is now %lu", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  [*(a1[5] + 24) removeObject:a1[4]];
  ++*(a1[5] + 64);
  if (![*(a1[5] + 24) count])
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 persistentDomainForName:@"com.apple.wifivelocity"];

    v5 = [v4 objectForKey:@"eager-exit-timeout"];
    if (v5)
    {
      NSLog(&cfstr_SFoundPreferen.isa, "[W5ActivityManager osTransactionComplete:]_block_invoke", @"com.apple.wifivelocity", @"eager-exit-timeout");
      v6 = [v5 intValue];
      if (v6 < 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, eager exit timer disabled via defaults write", buf, 2u);
        }

        goto LABEL_21;
      }

      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }

    v8 = *(a1[5] + 8);
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        *buf = 134217984;
        description = *&v7;
        _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, extending running eager exit timer to %f seconds", buf, 0xCu);
        v8 = *(a1[5] + 8);
      }

      if ([v8 isValid])
      {
        [*(a1[5] + 8) invalidate];
      }

      v10 = a1[5];
      v11 = *(v10 + 8);
      *(v10 + 8) = 0;
    }

    else if (v9)
    {
      *buf = 134217984;
      description = *&v7;
      _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager empty, configuring eager exit timer in %f seconds", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__W5ActivityManager_osTransactionComplete___block_invoke_17;
    block[3] = &unk_279ECD4F0;
    block[4] = a1[5];
    *&block[5] = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_21:
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__W5ActivityManager_osTransactionComplete___block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__W5ActivityManager_osTransactionComplete___block_invoke_2;
  v6[3] = &unk_279ECD4C8;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

void __43__W5ActivityManager_osTransactionComplete___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    [*(v4 + 56) timeIntervalSinceNow];
    v10 = 134218240;
    v11 = v5;
    v12 = 2048;
    v13 = -v6;
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Completed %lu transactions within uptime of %f seconds", &v10, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Attempting Daemon Eager Exit due to inactivity timeout of %f seconds", &v10, 0xCu);
  }

  [*(a1 + 32) _executeTimerBlock];
  v8 = [*(a1 + 32) alternateExecutionBlockForCleanExit];

  if (!v8 && (xpc_transaction_try_exit_clean() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[wifivelocity] W5ActivityManager Cannot eager exit, still outstanding transactions", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_executeTimerBlock
{
  alternateExecutionBlockForCleanExit = [(W5ActivityManager *)self alternateExecutionBlockForCleanExit];

  if (alternateExecutionBlockForCleanExit)
  {
    alternateExecutionBlockForCleanExit2 = [(W5ActivityManager *)self alternateExecutionBlockForCleanExit];
    alternateExecutionBlockForCleanExit2[2]();
  }
}

- (unint64_t)osTransactionsActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__W5ActivityManager_osTransactionsActive__block_invoke;
  v5[3] = &unk_279ECD540;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__W5ActivityManager_osTransactionsActive__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end