@interface SUTransactionManager
+ (id)sharedInstance;
- (BOOL)_hasOpenTransactionForName:(id)name;
- (BOOL)_isKeepAliveEnabled:(id *)enabled;
- (BOOL)hasOpenTransactionForName:(id)name;
- (BOOL)isKeepAliveEnabled;
- (SUTransactionManager)init;
- (id)copyTransactions;
- (void)_setKeepAlive:(BOOL)alive;
- (void)_toggleKeepAliveStatus;
- (void)beginTransaction:(id)transaction keepAlive:(BOOL)alive;
- (void)clearKeepAliveIfNecessary:(BOOL)necessary;
- (void)dealloc;
- (void)endTransaction:(id)transaction;
- (void)setKeepAliveClearable:(BOOL)clearable;
@end

@implementation SUTransactionManager

+ (id)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[SUTransactionManager sharedInstance];
  }

  v3 = sharedInstance___instance_2;

  return v3;
}

- (id)copyTransactions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUTransactionManager_copyTransactions__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__SUTransactionManager_copyTransactions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_openTransactions allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(SUTransactionManager *)self endTransaction:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SUTransactionManager;
  [(SUTransactionManager *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (SUTransactionManager)init
{
  v10.receiver = self;
  v10.super_class = SUTransactionManager;
  v2 = [(SUTransactionManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.softwareupdateservicesd.SUTransactionManager", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    openTransactions = v2->_openTransactions;
    v2->_openTransactions = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keepAliveTransactions = v2->_keepAliveTransactions;
    v2->_keepAliveTransactions = v7;

    v2->_keepAliveClearable = 1;
  }

  return v2;
}

uint64_t __38__SUTransactionManager_sharedInstance__block_invoke()
{
  sharedInstance___instance_2 = objc_alloc_init(SUTransactionManager);

  return MEMORY[0x2821F96F8]();
}

- (void)beginTransaction:(id)transaction keepAlive:(BOOL)alive
{
  transactionCopy = transaction;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUTransactionManager_beginTransaction_keepAlive___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = transactionCopy;
  aliveCopy = alive;
  v8 = transactionCopy;
  dispatch_sync(workQueue, block);
}

void __51__SUTransactionManager_beginTransaction_keepAlive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasOpenTransactionForName:*(a1 + 40)];
  v10 = *(a1 + 40);
  *(a1 + 48);
  if (v2)
  {
    SULogDebug(@"ERROR: trying to start a transaction with already used name %@%@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
  }

  else
  {
    SULogDebug(@"Beginning transaction: %@%@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
    v14 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.SoftwareUpdateServices."];
    [v14 appendString:*(a1 + 40)];
    v11 = *(*(a1 + 32) + 8);
    v12 = v14;
    [v14 UTF8String];
    v13 = os_transaction_create();
    [v11 setSafeObject:v13 forKey:*(a1 + 40)];

    if (*(a1 + 48) == 1)
    {
      [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
      [*(a1 + 32) _toggleKeepAliveStatus];
    }
  }
}

- (void)endTransaction:(id)transaction
{
  transactionCopy = transaction;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUTransactionManager_endTransaction___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(workQueue, v7);
}

void __39__SUTransactionManager_endTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasOpenTransactionForName:*(a1 + 40)];
  v10 = *(a1 + 40);
  if (v2)
  {
    SULogDebug(@"Ended transaction: %@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
    {
      [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
      v11 = *(a1 + 32);

      [v11 _toggleKeepAliveStatus];
    }
  }

  else
  {
    SULogDebug(@"ERROR: trying to end a non existent transaction with name %@", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
  }
}

- (BOOL)hasOpenTransactionForName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUTransactionManager_hasOpenTransactionForName___block_invoke;
  block[3] = &unk_279CAB740;
  v9 = nameCopy;
  v10 = &v11;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(workQueue, block);
  LOBYTE(workQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return workQueue;
}

uint64_t __50__SUTransactionManager_hasOpenTransactionForName___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasOpenTransactionForName:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)setKeepAliveClearable:(BOOL)clearable
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SUTransactionManager_setKeepAliveClearable___block_invoke;
  v4[3] = &unk_279CAAD00;
  v4[4] = self;
  clearableCopy = clearable;
  dispatch_sync(workQueue, v4);
}

- (BOOL)isKeepAliveEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SUTransactionManager_isKeepAliveEnabled__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__SUTransactionManager_isKeepAliveEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isKeepAliveEnabled:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)clearKeepAliveIfNecessary:(BOOL)necessary
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SUTransactionManager_clearKeepAliveIfNecessary___block_invoke;
  v4[3] = &unk_279CAAD00;
  necessaryCopy = necessary;
  v4[4] = self;
  dispatch_sync(workQueue, v4);
}

uint64_t __50__SUTransactionManager_clearKeepAliveIfNecessary___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || (result = [*(*(a1 + 32) + 16) count]) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _setKeepAlive:0];
  }

  return result;
}

- (BOOL)_hasOpenTransactionForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_openTransactions objectForKey:name];
  v4 = v3 != 0;

  return v4;
}

- (void)_toggleKeepAliveStatus
{
  v3 = [(NSMutableSet *)self->_keepAliveTransactions count]!= 0;

  [(SUTransactionManager *)self _setKeepAlive:v3];
}

- (void)_setKeepAlive:(BOOL)alive
{
  aliveCopy = alive;
  if (alive || self->_keepAliveClearable)
  {
    v14 = 0;
    v4 = [(SUTransactionManager *)self _isKeepAliveEnabled:&v14]^ alive;
    if (v14 || v4 != 0)
    {
      if (vproc_swap_integer())
      {
        NSLog(&cfstr_Softwareupdate_2.isa);
      }

      else
      {
        v13 = @"Disabled";
        if (aliveCopy)
        {
          v13 = @"Enabled";
        }

        SULogDebug(@"Keep alive status: %@", v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

- (BOOL)_isKeepAliveEnabled:(id *)enabled
{
  if (vproc_swap_integer())
  {
    NSLog(&cfstr_Softwareupdate_3.isa);
    [SUUtility assignError:enabled withCode:-1];
  }

  return 1;
}

@end