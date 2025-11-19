@interface STFileProviderMonitor
+ (id)sharedMonitor;
- (void)_postNotify:(id)a3;
- (void)postNotify;
- (void)startMonitor;
- (void)stopMonitor;
- (void)sync;
@end

@implementation STFileProviderMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_2 != -1)
  {
    +[STFileProviderMonitor sharedMonitor];
  }

  v3 = sharedMonitor__gMonitor;

  return v3;
}

uint64_t __38__STFileProviderMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor__gMonitor = objc_alloc_init(STFileProviderMonitor);

  return MEMORY[0x2821F96F8]();
}

- (void)startMonitor
{
  v3 = [(STFileProviderMonitor *)self fpContext];

  if (!v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__STFileProviderMonitor_startMonitor__block_invoke;
    v5[3] = &unk_279D1D520;
    v5[4] = self;
    v4 = [MEMORY[0x277CC6420] beginMonitoringProviderDomainChangesWithHandler:v5];
    [(STFileProviderMonitor *)self setFpContext:v4];
  }
}

void __37__STFileProviderMonitor_startMonitor__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 allValues];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEnabled] && objc_msgSend(v10, "supportsEnumeration") && objc_msgSend(v10, "isAvailableSystemWide") && (objc_msgSend(v10, "isHidden") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setFpDomains:v4];
  [*(a1 + 32) postNotify];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitor
{
  v4 = [(STFileProviderMonitor *)self fpContext];
  [(STFileProviderMonitor *)self setFpContext:0];
  v3 = v4;
  if (v4)
  {
    [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:v4];
    v3 = v4;
  }
}

- (void)_postNotify:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:v4 object:0];
}

- (void)postNotify
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__STFileProviderMonitor_postNotify__block_invoke;
  v2[3] = &unk_279D1CEB0;
  v2[4] = self;
  v3 = @"com.apple.storage.fp_domains";
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __35__STFileProviderMonitor_postNotify__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__postNotify_ object:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performSelector:sel__postNotify_ withObject:v3 afterDelay:0.1];
}

- (void)sync
{
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_semaphore_create(0);
  v5 = MEMORY[0x277CC6420];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __29__STFileProviderMonitor_sync__block_invoke;
  v11 = &unk_279D1D548;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 beginMonitoringProviderDomainChangesWithHandler:&v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:{v7, v8, v9, v10, v11, v12}];

  objc_autoreleasePoolPop(v3);
}

void __29__STFileProviderMonitor_sync__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 allValues];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEnabled] && objc_msgSend(v10, "supportsEnumeration") && objc_msgSend(v10, "isAvailableSystemWide") && (objc_msgSend(v10, "isHidden") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setFpDomains:v4];
  dispatch_semaphore_signal(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

@end