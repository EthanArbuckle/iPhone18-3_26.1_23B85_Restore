@interface SNNetworkManager
+ (id)sharedInstance;
- (id)_init;
- (void)acquireWiFiAssertion:(int64_t)a3;
- (void)addObserver:(id)a3;
- (void)networkManagerLostNonWWANConnectivity:(id)a3;
- (void)networkManagerNetworkUnreachable:(id)a3;
- (void)networkManagerNonWWANDidBecomeAvailable:(id)a3;
- (void)releaseWiFiAssertion;
- (void)removeObserver:(id)a3;
- (void)startMonitoringNetworkForHost:(id)a3;
- (void)stopMonitoringNetwork;
@end

@implementation SNNetworkManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SNNetworkManager sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_0;

  return v3;
}

- (void)releaseWiFiAssertion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SNNetworkManager_releaseWiFiAssertion__block_invoke;
  v4[3] = &unk_2784DD118;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__SNNetworkManager_releaseWiFiAssertion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] releaseWiFiAssertion];
}

void __34__SNNetworkManager_sharedInstance__block_invoke()
{
  v0 = [[SNNetworkManager alloc] _init];
  v1 = sharedInstance_sSharedInstance_0;
  sharedInstance_sSharedInstance_0 = v0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = SNNetworkManager;
  v2 = [(SNNetworkManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SNNetworkManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = +[SNNetworkManagerInternal shared];
    underlyingNetworkManager = v2->_underlyingNetworkManager;
    v2->_underlyingNetworkManager = v7;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SNNetworkManager_addObserver___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __32__SNNetworkManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[1] addObject:*(a1 + 32)];
  [WeakRetained[3] addObserver:?];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SNNetworkManager_removeObserver___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__SNNetworkManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[1] removeObject:*(a1 + 32)];
  if (![WeakRetained[1] count])
  {
    [WeakRetained[3] removeObserver:?];
  }
}

- (void)startMonitoringNetworkForHost:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SNNetworkManager_startMonitoringNetworkForHost___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__SNNetworkManager_startMonitoringNetworkForHost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[3] startMonitoringNetwork:*(a1 + 32)];
}

- (void)stopMonitoringNetwork
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SNNetworkManager_stopMonitoringNetwork__block_invoke;
  v4[3] = &unk_2784DD118;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__SNNetworkManager_stopMonitoringNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] stopMonitoringNetwork];
}

- (void)acquireWiFiAssertion:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SNNetworkManager_acquireWiFiAssertion___block_invoke;
  block[3] = &unk_2784DD140;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __41__SNNetworkManager_acquireWiFiAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] acquireWiFiAssertionWithWifiAssertionTypeRawValue:*(a1 + 40)];
}

- (void)networkManagerLostNonWWANConnectivity:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SNNetworkManager_networkManagerLostNonWWANConnectivity___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__SNNetworkManager_networkManagerLostNonWWANConnectivity___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = WeakRetained[1];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) networkManagerLostNonWWANConnectivity:{*(a1 + 32), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkManagerNetworkUnreachable:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SNNetworkManager_networkManagerNetworkUnreachable___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__SNNetworkManager_networkManagerNetworkUnreachable___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = WeakRetained[1];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) networkManagerNetworkUnreachable:{*(a1 + 32), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkManagerNonWWANDidBecomeAvailable:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SNNetworkManager_networkManagerNonWWANDidBecomeAvailable___block_invoke;
  block[3] = &unk_2784DD0F0;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __60__SNNetworkManager_networkManagerNonWWANDidBecomeAvailable___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = WeakRetained[1];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) networkManagerNonWWANDidBecomeAvailable:{*(a1 + 32), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end