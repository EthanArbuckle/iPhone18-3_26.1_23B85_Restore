@interface TVPReachabilityMonitor
+ (id)sharedInstance;
- (BOOL)isNetworkReachable;
- (BOOL)isWifiEnabled;
- (TVPReachabilityMonitor)init;
- (id)_init;
- (void)_reachabilityDidChange:(id)change;
- (void)_wifiDidChange:(id)change;
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
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [mEMORY[0x277CEC5B8] addNetworkReachableObserver:v2 selector:sel__reachabilityDidChange_];

    mEMORY[0x277CEC5B8]2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [mEMORY[0x277CEC5B8]2 addWiFiObserver:v2 selector:sel__wifiDidChange_];

    address = xmmword_26CF4C490;
    v2->_reachability = SCNetworkReachabilityCreateWithAddress(0, &address);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

  mEMORY[0x277CEC5B8]2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8]2 removeWiFiObserver:self];

  reachability = self->_reachability;
  if (reachability)
  {
    CFRelease(reachability);
  }

  v6.receiver = self;
  v6.super_class = TVPReachabilityMonitor;
  [(TVPReachabilityMonitor *)&v6 dealloc];
}

- (void)_reachabilityDidChange:(id)change
{
  flags = 0;
  SCNetworkReachabilityGetFlags(self->_reachability, &flags);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((flags & 0x40000) != 0)
  {
    selfCopy->_networkType = 2;
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_networkType = (flags >> 1) & 1;
    objc_sync_exit(selfCopy);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [(TVPReachabilityMonitor *)defaultCenter postNotificationName:@"TVPReachabilityMonitorReachabilityDidChange" object:selfCopy];
    selfCopy = defaultCenter;
  }
}

- (void)_wifiDidChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVPReachabilityMonitorWifiDidChange" object:self];
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

@end