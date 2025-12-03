@interface VUINetworkReachabilityMonitor
+ (BOOL)_isNetworkReachable;
+ (id)sharedInstance;
- (VUINetworkReachabilityMonitor)init;
- (id)_init;
- (void)_updateNetworkReachability;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)setNetworkReachable:(BOOL)reachable;
@end

@implementation VUINetworkReachabilityMonitor

+ (id)sharedInstance
{
  if (sharedInstance___onceToken != -1)
  {
    +[VUINetworkReachabilityMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __47__VUINetworkReachabilityMonitor_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[VUINetworkReachabilityMonitor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = VUINetworkReachabilityMonitor;
  v2 = [(VUINetworkReachabilityMonitor *)&v5 init];
  if (v2)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
      [mEMORY[0x277D7FA90] registerObserver:v2];
    }

    v2->_networkReachable = [objc_opt_class() _isNetworkReachable];
  }

  return v2;
}

+ (BOOL)_isNetworkReachable
{
  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  isRemoteServerLikelyReachable = [mEMORY[0x277D7FA90] isRemoteServerLikelyReachable];

  return isRemoteServerLikelyReachable;
}

- (void)_updateNetworkReachability
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VUINetworkReachabilityMonitor__updateNetworkReachability__block_invoke;
  block[3] = &unk_279E21798;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __59__VUINetworkReachabilityMonitor__updateNetworkReachability__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _isNetworkReachable];
  v3 = *(a1 + 32);

  return [v3 setNetworkReachable:v2];
}

- (VUINetworkReachabilityMonitor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)setNetworkReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v17 = *MEMORY[0x277D85DE8];
  v5 = VUICDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    networkReachable = self->_networkReachable;
    *buf = 67109376;
    v14 = networkReachable;
    v15 = 1024;
    v16 = reachableCopy;
    _os_log_impl(&dword_270E6E000, v5, OS_LOG_TYPE_DEFAULT, "VUINetworkReachabilityMonitor -- set network reachable -- before %d -- after %d", buf, 0xEu);
  }

  if (self->_networkReachable != reachableCopy)
  {
    self->_networkReachable = reachableCopy;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{reachableCopy, @"VUINetworkReachabilityMonitorNetworkReachabilityDidChangeUserInfoKeyNetworkReachable"}];
    v12 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v9 = VUICDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270E6E000, v9, OS_LOG_TYPE_DEFAULT, "VUINetworkReachabilityMonitor -- Posting NetworkReachabilityDidChangeNotification", buf, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"VUINetworkReachabilityMonitorNetworkReachabilityDidChangeNotification" object:self userInfo:v8];
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  v4 = VUICDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v4, OS_LOG_TYPE_DEFAULT, "VUINetworkReachabilityMonitor -- network type changed", v5, 2u);
  }

  [(VUINetworkReachabilityMonitor *)self _updateNetworkReachability];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  v4 = VUICDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_270E6E000, v4, OS_LOG_TYPE_DEFAULT, "VUINetworkReachabilityMonitor -- network reachability changed", v5, 2u);
  }

  [(VUINetworkReachabilityMonitor *)self _updateNetworkReachability];
}

@end