@interface TVPReachabilityMonitor
+ (id)sharedInstance;
- (BOOL)isNetworkReachable;
- (BOOL)isWifiEnabled;
- (TVPReachabilityMonitor)init;
- (id)_init;
- (void)_reachabilityDidChange:(id)a3;
- (void)_wifiDidChange:(id)a3;
- (void)dealloc;
@end

@implementation TVPReachabilityMonitor

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[TVPReachabilityMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedManager;

  return v3;
}

uint64_t __40__TVPReachabilityMonitor_sharedInstance__block_invoke()
{
  sharedInstance___sharedManager = [[TVPReachabilityMonitor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (TVPReachabilityMonitor)init
{
  [MEMORY[0x277CBEAD8] raise:@"TVPReachabilityMonitorInitException" format:@"-init is not supported. Use +sharedManager."];

  return 0;
}

- (id)_init
{
  v9 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = TVPReachabilityMonitor;
  v2 = [(TVPReachabilityMonitor *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v3 addNetworkReachableObserver:v2 selector:sel__reachabilityDidChange_];

    v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v4 addWiFiObserver:v2 selector:sel__wifiDidChange_];

    address = xmmword_26CF4C490;
    v2->_reachability = SCNetworkReachabilityCreateWithAddress(0, &address);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v4 removeWiFiObserver:self];

  reachability = self->_reachability;
  if (reachability)
  {
    CFRelease(reachability);
  }

  v6.receiver = self;
  v6.super_class = TVPReachabilityMonitor;
  [(TVPReachabilityMonitor *)&v6 dealloc];
}

- (void)_reachabilityDidChange:(id)a3
{
  flags = 0;
  SCNetworkReachabilityGetFlags(self->_reachability, &flags);
  v4 = self;
  objc_sync_enter(v4);
  if ((flags & 0x40000) != 0)
  {
    v4->_networkType = 2;
    objc_sync_exit(v4);
  }

  else
  {
    v4->_networkType = (flags >> 1) & 1;
    objc_sync_exit(v4);

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [(TVPReachabilityMonitor *)v5 postNotificationName:@"TVPReachabilityMonitorReachabilityDidChange" object:v4];
    v4 = v5;
  }
}

- (void)_wifiDidChange:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"TVPReachabilityMonitorWifiDidChange" object:self];
}

- (BOOL)isNetworkReachable
{
  v2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  v3 = [v2 isNetworkReachable];

  return v3;
}

- (BOOL)isWifiEnabled
{
  v2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  v3 = [v2 isWiFiEnabled];

  return v3;
}

@end