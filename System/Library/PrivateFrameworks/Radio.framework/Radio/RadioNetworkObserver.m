@interface RadioNetworkObserver
+ (id)sharedNetworkObserver;
- (BOOL)isUsingNetwork;
- (RadioNetworkObserver)init;
- (id)_init;
- (void)_cellularNetworkAllowedDidChangeNotification:(id)a3;
- (void)beginUsingNetwork;
- (void)dealloc;
- (void)endUsingNetwork;
@end

@implementation RadioNetworkObserver

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  networkUsageQueue = self->_networkUsageQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__RadioNetworkObserver_isUsingNetwork__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(networkUsageQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)endUsingNetwork
{
  networkUsageQueue = self->_networkUsageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RadioNetworkObserver_endUsingNetwork__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(networkUsageQueue, block);
}

void __39__RadioNetworkObserver_endUsingNetwork__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 8) = v4;
    v5 = *(a1 + 32);
    if (!*(v5 + 8))
    {
      v6 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__RadioNetworkObserver_endUsingNetwork__block_invoke_2;
      block[3] = &unk_279AEAE60;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

void __39__RadioNetworkObserver_endUsingNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RadioNetworkObserverIsUsingNetworkDidChangeNotification" object:*(a1 + 32)];
}

- (void)beginUsingNetwork
{
  networkUsageQueue = self->_networkUsageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RadioNetworkObserver_beginUsingNetwork__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(networkUsageQueue, block);
}

void __41__RadioNetworkObserver_beginUsingNetwork__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 8);
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__RadioNetworkObserver_beginUsingNetwork__block_invoke_2;
    block[3] = &unk_279AEAE60;
    block[4] = v1;
    dispatch_async(v2, block);
  }
}

void __41__RadioNetworkObserver_beginUsingNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RadioNetworkObserverIsUsingNetworkDidChangeNotification" object:*(a1 + 32)];
}

- (void)_cellularNetworkAllowedDidChangeNotification:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RadioNetworkObserver__cellularNetworkAllowedDidChangeNotification___block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(v4, block);
}

void __69__RadioNetworkObserver__cellularNetworkAllowedDidChangeNotification___block_invoke(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RadioNetworkObserverIsCellularNetworkingAllowedDidChangeNotification" object:*(a1 + 32)];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D69E10];
  v5 = [MEMORY[0x277D69A80] currentDevice];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = RadioNetworkObserver;
  [(RadioNetworkObserver *)&v6 dealloc];
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = RadioNetworkObserver;
  v2 = [(RadioNetworkObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Radio.RadioNetworkObserver", 0);
    networkUsageQueue = v2->_networkUsageQueue;
    v2->_networkUsageQueue = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D69E10];
    v7 = [MEMORY[0x277D69A80] currentDevice];
    [v5 addObserver:v2 selector:sel__cellularNetworkAllowedDidChangeNotification_ name:v6 object:v7];
  }

  return v2;
}

- (RadioNetworkObserver)init
{
  [MEMORY[0x277CBEAD8] raise:@"RadioNetworkObserverInitException" format:{@"-init is not supported, use +sharedNetworkObserver"}];

  return 0;
}

+ (id)sharedNetworkObserver
{
  if (sharedNetworkObserver___once != -1)
  {
    dispatch_once(&sharedNetworkObserver___once, &__block_literal_global_1251);
  }

  v3 = sharedNetworkObserver___sharedNetworkObserver;

  return v3;
}

uint64_t __45__RadioNetworkObserver_sharedNetworkObserver__block_invoke()
{
  sharedNetworkObserver___sharedNetworkObserver = [[RadioNetworkObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

@end