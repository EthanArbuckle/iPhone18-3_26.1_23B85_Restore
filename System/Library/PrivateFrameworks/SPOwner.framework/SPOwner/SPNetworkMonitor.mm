@interface SPNetworkMonitor
- (BOOL)isMonitoring;
- (BOOL)isNetworkUp;
- (void)notifyNetworkStateChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCachedIsNetworkUp:(BOOL)up;
- (void)startMonitoringWithCallback:(id)callback;
- (void)stopMonitoring;
@end

@implementation SPNetworkMonitor

- (void)startMonitoringWithCallback:(id)callback
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  callbackCopy = callback;
  v7 = dispatch_queue_create("SPNetworkMonitor", v5);
  [(SPNetworkMonitor *)self setCallbackQueue:v7];

  [(SPNetworkMonitor *)self setBlock:callbackCopy];
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [(SPNetworkMonitor *)self setEvaluator:mEMORY[0x277CD9200]];

  evaluator = [(SPNetworkMonitor *)self evaluator];
  [evaluator addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)stopMonitoring
{
  [(SPNetworkMonitor *)self setCallbackQueue:0];
  [(SPNetworkMonitor *)self setBlock:0];
  evaluator = [(SPNetworkMonitor *)self evaluator];
  [evaluator removeObserver:self forKeyPath:@"path" context:0];

  [(SPNetworkMonitor *)self setEvaluator:0];
}

- (BOOL)isMonitoring
{
  evaluator = [(SPNetworkMonitor *)self evaluator];
  v3 = evaluator != 0;

  return v3;
}

- (BOOL)isNetworkUp
{
  isMonitoring = [(SPNetworkMonitor *)self isMonitoring];
  if (isMonitoring)
  {
    evaluator = [(SPNetworkMonitor *)self evaluator];
    path = [evaluator path];
    status = [path status];

    LOBYTE(isMonitoring) = (status & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return isMonitoring;
}

- (void)setCachedIsNetworkUp:(BOOL)up
{
  upCopy = up;
  callbackQueue = [(SPNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (self->_cachedIsNetworkUp != upCopy)
  {
    self->_cachedIsNetworkUp = upCopy;

    [(SPNetworkMonitor *)self notifyNetworkStateChange];
  }
}

- (void)notifyNetworkStateChange
{
  v10 = *MEMORY[0x277D85DE8];
  callbackQueue = [(SPNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    cachedIsNetworkUp = [(SPNetworkMonitor *)self cachedIsNetworkUp];
    v5 = @"DOWN";
    if (cachedIsNetworkUp)
    {
      v5 = @"UP";
    }

    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2643D0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Network state changed: %@", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __44__SPNetworkMonitor_notifyNetworkStateChange__block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "Network state changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SPNetworkMonitor_notifyNetworkStateChange__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) block];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__SPNetworkMonitor_notifyNetworkStateChange__block_invoke_2;
    v9[3] = &unk_279B58AE8;
    v9[4] = v3;
    dispatch_async(v4, v9);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"IsNetworkAvailable";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedIsNetworkUp")}];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 postNotificationName:@"com.apple.icloud.SPOwner.SPNetworkMonitor.networkChanged" object:0 userInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __44__SPNetworkMonitor_notifyNetworkStateChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v2[2](v2, [*(a1 + 32) cachedIsNetworkUp]);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"path"])
  {
    callbackQueue = [(SPNetworkMonitor *)self callbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__SPNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v10[3] = &unk_279B58C78;
    v10[4] = self;
    v11 = objectCopy;
    dispatch_async(callbackQueue, v10);
  }
}

void __67__SPNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluator];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) isNetworkUp];
    v5 = *(a1 + 32);

    [v5 setCachedIsNetworkUp:v4];
  }
}

@end