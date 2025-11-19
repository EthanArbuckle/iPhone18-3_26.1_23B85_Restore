@interface WLKNetworkRequestReauthCoordinator
+ (id)coordinator;
- (id)_init;
- (void)dealloc;
- (void)lock;
- (void)markPrompt;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)unlock;
@end

@implementation WLKNetworkRequestReauthCoordinator

+ (id)coordinator
{
  if (coordinator_onceToken != -1)
  {
    +[WLKNetworkRequestReauthCoordinator coordinator];
  }

  v3 = coordinator___coordinator;

  return v3;
}

uint64_t __49__WLKNetworkRequestReauthCoordinator_coordinator__block_invoke()
{
  coordinator___coordinator = [[WLKNetworkRequestReauthCoordinator alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = WLKNetworkRequestReauthCoordinator;
  v2 = [(WLKNetworkRequestReauthCoordinator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSLock *)v2->_lock setName:@"WLKNetworkRequestRetryLock"];
    v5 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [v5 addObserver:v2 forKeyPath:@"operationCount" options:3 context:@"_WLKNetworkRequestReauthCoordinatorObservationContext"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
  [v3 removeObserver:self forKeyPath:@"operationCount"];

  v4.receiver = self;
  v4.super_class = WLKNetworkRequestReauthCoordinator;
  [(WLKNetworkRequestReauthCoordinator *)&v4 dealloc];
}

- (void)markPrompt
{
  v3 = [MEMORY[0x277CCABD8] currentQueue];
  v4 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (v3 == v4)
  {

    [(WLKNetworkRequestReauthCoordinator *)self setSessionPrompt:1];
  }
}

- (void)lock
{
  v3 = [MEMORY[0x277CCABD8] currentQueue];
  v4 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (v3 == v4)
  {
    lock = self->_lock;

    [(NSLock *)lock lock];
  }
}

- (void)unlock
{
  v3 = [MEMORY[0x277CCABD8] currentQueue];
  v4 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (v3 == v4)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"_WLKNetworkRequestReauthCoordinatorObservationContext")
  {
    v7 = [a5 objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], a4}];
    if (![v7 unsignedIntegerValue])
    {
      [(WLKNetworkRequestReauthCoordinator *)self setSessionPrompt:0];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WLKNetworkRequestReauthCoordinator;
    [(WLKNetworkRequestReauthCoordinator *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end