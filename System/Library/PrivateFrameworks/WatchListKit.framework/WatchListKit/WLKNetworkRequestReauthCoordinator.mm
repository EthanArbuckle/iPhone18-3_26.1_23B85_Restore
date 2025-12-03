@interface WLKNetworkRequestReauthCoordinator
+ (id)coordinator;
- (id)_init;
- (void)dealloc;
- (void)lock;
- (void)markPrompt;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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
    wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [wlkDefaultConcurrentQueue addObserver:v2 forKeyPath:@"operationCount" options:3 context:@"_WLKNetworkRequestReauthCoordinatorObservationContext"];
  }

  return v2;
}

- (void)dealloc
{
  wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
  [wlkDefaultConcurrentQueue removeObserver:self forKeyPath:@"operationCount"];

  v4.receiver = self;
  v4.super_class = WLKNetworkRequestReauthCoordinator;
  [(WLKNetworkRequestReauthCoordinator *)&v4 dealloc];
}

- (void)markPrompt
{
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (currentQueue == wlkDefaultConcurrentQueue)
  {

    [(WLKNetworkRequestReauthCoordinator *)self setSessionPrompt:1];
  }
}

- (void)lock
{
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (currentQueue == wlkDefaultConcurrentQueue)
  {
    lock = self->_lock;

    [(NSLock *)lock lock];
  }
}

- (void)unlock
{
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];

  if (currentQueue == wlkDefaultConcurrentQueue)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"_WLKNetworkRequestReauthCoordinatorObservationContext")
  {
    v7 = [change objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], object}];
    if (![v7 unsignedIntegerValue])
    {
      [(WLKNetworkRequestReauthCoordinator *)self setSessionPrompt:0];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WLKNetworkRequestReauthCoordinator;
    [(WLKNetworkRequestReauthCoordinator *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end