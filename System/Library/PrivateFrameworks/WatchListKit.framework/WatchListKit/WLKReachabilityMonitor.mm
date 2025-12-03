@interface WLKReachabilityMonitor
+ (id)sharedInstance;
- (BOOL)isNetworkReachable;
- (BOOL)isWifiEnabled;
- (WLKReachabilityMonitor)init;
- (id)_init;
- (void)_reachabilityDidChange:(id)change;
- (void)_wifiDidChange:(id)change;
- (void)dealloc;
@end

@implementation WLKReachabilityMonitor

+ (id)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[WLKReachabilityMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedManager;

  return v3;
}

uint64_t __40__WLKReachabilityMonitor_sharedInstance__block_invoke()
{
  sharedInstance___sharedManager = [[WLKReachabilityMonitor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = WLKReachabilityMonitor;
  v2 = [(WLKReachabilityMonitor *)&v8 init];
  if (v2)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKReachabilityMonitor - Adding reachability observers", v7, 2u);
    }

    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [mEMORY[0x277CEC5B8] addNetworkReachableObserver:v2 selector:sel__reachabilityDidChange_];

    mEMORY[0x277CEC5B8]2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [mEMORY[0x277CEC5B8]2 addWiFiObserver:v2 selector:sel__wifiDidChange_];
  }

  return v2;
}

- (BOOL)isNetworkReachable
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

  return isNetworkReachable;
}

- (BOOL)isWifiEnabled
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  isWiFiEnabled = [mEMORY[0x277CEC5B8] isWiFiEnabled];

  return isWiFiEnabled;
}

- (WLKReachabilityMonitor)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKReachabilityManagerInitException" format:@"-init is not supported. Use +sharedManager."];

  return 0;
}

- (void)dealloc
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

  mEMORY[0x277CEC5B8]2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8]2 removeWiFiObserver:self];

  v5.receiver = self;
  v5.super_class = WLKReachabilityMonitor;
  [(WLKReachabilityMonitor *)&v5 dealloc];
}

- (void)_reachabilityDidChange:(id)change
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(WLKReachabilityMonitor *)self isNetworkReachable];
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKReachabilityMonitor - Reachability did change: %d", v7, 8u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WLKReachabilityMonitorReachabilityDidChange" object:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_wifiDidChange:(id)change
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(WLKReachabilityMonitor *)self isWifiEnabled];
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKReachabilityMonitor - Wifi did change: %d", v7, 8u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WLKReachabilityMonitorWifiDidChange" object:self];

  v6 = *MEMORY[0x277D85DE8];
}

@end