@interface WFNetworkBehaviorMonitor
+ (id)sharedInstance;
- (WFNetworkBehaviorMonitor)init;
- (void)addObserver:(id)a3;
- (void)logNetworkEvent:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation WFNetworkBehaviorMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WFNetworkBehaviorMonitor sharedInstance];
  }

  v3 = sharedInstance_s_sharedInstance;

  return v3;
}

uint64_t __42__WFNetworkBehaviorMonitor_sharedInstance__block_invoke()
{
  sharedInstance_s_sharedInstance = objc_alloc_init(WFNetworkBehaviorMonitor);

  return MEMORY[0x2821F96F8]();
}

- (WFNetworkBehaviorMonitor)init
{
  v6.receiver = self;
  v6.super_class = WFNetworkBehaviorMonitor;
  v2 = [(WFNetworkBehaviorMonitor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)logNetworkEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WFNetworkBehaviorMonitor_logNetworkEvent___block_invoke;
  v6[3] = &unk_279E6EA40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__WFNetworkBehaviorMonitor_logNetworkEvent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) networkEventMonitor:*(a1 + 32) loggedEvent:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFNetworkBehaviorMonitor *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFNetworkBehaviorMonitor *)self observers];
  [v5 removeObject:v4];
}

@end