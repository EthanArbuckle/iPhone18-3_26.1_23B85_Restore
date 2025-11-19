@interface SUAutoUpdatePasscodePolicy
+ (id)sharedInstance;
- (SUAutoUpdatePasscodePolicy)init;
- (id)_init;
- (id)description;
- (id)stringForCurrentPolicy;
- (unint64_t)currentPolicyType;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setCurrentPolicyType:(unint64_t)a3;
@end

@implementation SUAutoUpdatePasscodePolicy

- (SUAutoUpdatePasscodePolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:41 description:@"Please use the sharedInstance."];

  return 0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = SUAutoUpdatePasscodePolicy;
  v2 = [(SUAutoUpdatePasscodePolicy *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.softwareupdateservices.passcodePolicy", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.softwareupdateservices.passcodepolicy.observerCallout", 0);
    observerCalloutQueue = v2->_observerCalloutQueue;
    v2->_observerCalloutQueue = v5;

    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    queue_observers = v2->_queue_observers;
    v2->_queue_observers = v7;

    [(SUAutoUpdatePasscodePolicy *)v2 setCurrentPolicyType:0];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[SUAutoUpdatePasscodePolicy sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __44__SUAutoUpdatePasscodePolicy_sharedInstance__block_invoke()
{
  sharedInstance___instance = [[SUAutoUpdatePasscodePolicy alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)currentPolicyType
{
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUAutoUpdatePasscodePolicy_currentPolicyType__block_invoke;
  v7[3] = &unk_279CAA858;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)stringForCurrentPolicy
{
  v2 = [(SUAutoUpdatePasscodePolicy *)self currentPolicyType];
  if (v2 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAA9E0[v2];
  }
}

- (void)setCurrentPolicyType:(unint64_t)a3
{
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v6 = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUAutoUpdatePasscodePolicy_setCurrentPolicyType___block_invoke;
  v7[3] = &unk_279CAA9C0;
  v7[4] = self;
  v7[5] = a3;
  dispatch_sync(v6, v7);
}

void __51__SUAutoUpdatePasscodePolicy_setCurrentPolicyType___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isValidPasscodePolicyType:*(a1 + 40)];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = +[SUKeybagInterface sharedInstance];
    if ([v4 hasPasscodeSet])
    {
    }

    else
    {
      v14 = *(a1 + 40);

      if (v14)
      {
        *(a1 + 40);
        SULogInfo(@"%s: Tried to change passcode policy to %@, but passcode is not set, so override policy to not required", v15, v16, v17, v18, v19, v20, v21, "[SUAutoUpdatePasscodePolicy setCurrentPolicyType:]_block_invoke");
        v3 = 0;
      }
    }

    v22 = *(a1 + 32);
    if (*(v22 + 40) != v3)
    {
      *(v22 + 40) = v3;
      v23 = [*(*(a1 + 32) + 8) allObjects];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v31;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v28 passcodePolicyInterface:*(a1 + 32) passcodePolicyTypeChanged:v3];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v25);
      }
    }
  }

  else
  {
    v5 = [*(a1 + 32) currentPolicyType];
    if (v5 <= 2)
    {
      v13 = off_279CAA9E0[v5];
    }

    SULogInfo(@"Invalid passcode policy type: %lu. Leaving policy as %@", v6, v7, v8, v9, v10, v11, v12, v3);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SUAutoUpdatePasscodePolicy *)a2 addObserver:?];
  }

  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v7 = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SUAutoUpdatePasscodePolicy_addObserver___block_invoke;
  v9[3] = &unk_279CAA7C0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_sync(v7, v9);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SUAutoUpdatePasscodePolicy *)a2 removeObserver:?];
  }

  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v7 = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SUAutoUpdatePasscodePolicy_removeObserver___block_invoke;
  v9[3] = &unk_279CAA7C0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_sync(v7, v9);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUAutoUpdatePasscodePolicy *)self currentPolicyType];
  if (v3 > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_279CAA9E0[v3];
  }

  return [v2 stringWithFormat:@"%@", v4];
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end