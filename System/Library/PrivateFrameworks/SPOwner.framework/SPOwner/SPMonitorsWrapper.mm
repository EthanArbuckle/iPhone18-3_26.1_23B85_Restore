@interface SPMonitorsWrapper
- (BOOL)isNetworkUp;
- (SPMonitorsWrapper)initWithBeaconManager:(id)manager delegateQueue:(id)queue;
- (SPMonitorsWrapperDelegate)delegate;
- (int)_cpuType;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation SPMonitorsWrapper

- (SPMonitorsWrapper)initWithBeaconManager:(id)manager delegateQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = SPMonitorsWrapper;
  v8 = [(SPMonitorsWrapper *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, managerCopy);
    if (queueCopy)
    {
      v10 = queueCopy;
      delegateQueue = v9->_delegateQueue;
      v9->_delegateQueue = v10;
    }

    else
    {
      delegateQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("com.apple.icloud.SPOwner.monitor-wrapper", delegateQueue);
      v13 = v9->_delegateQueue;
      v9->_delegateQueue = v12;
    }
  }

  return v9;
}

- (int)_cpuType
{
  if (_cpuType_onceToken != -1)
  {
    [SPMonitorsWrapper _cpuType];
  }

  return _cpuType_cachedCPUType;
}

void __29__SPMonitorsWrapper__cpuType__block_invoke()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("hw.cputype", &v2, &v1, 0, 0) == -1)
  {
    v0 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      __29__SPMonitorsWrapper__cpuType__block_invoke_cold_1(v0);
    }
  }

  _cpuType_cachedCPUType = v2;
}

- (BOOL)isNetworkUp
{
  networkMonitor = [(SPMonitorsWrapper *)self networkMonitor];
  isNetworkUp = [networkMonitor isNetworkUp];

  return isNetworkUp;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(SPNetworkMonitor);
  [(SPMonitorsWrapper *)self setNetworkMonitor:v3];

  networkMonitor = [(SPMonitorsWrapper *)self networkMonitor];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __26__SPMonitorsWrapper_start__block_invoke;
  v8 = &unk_279B58EA0;
  objc_copyWeak(&v9, &location);
  [networkMonitor startMonitoringWithCallback:&v5];

  [(SPMonitorsWrapper *)self resume:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __26__SPMonitorsWrapper_start__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  [v3 stateDidChange:a2 powerState:{objc_msgSend(WeakRetained, "powerState")}];
}

- (void)stop
{
  networkMonitor = [(SPMonitorsWrapper *)self networkMonitor];
  [networkMonitor stopMonitoring];

  [(SPMonitorsWrapper *)self setNetworkMonitor:0];

  [(SPMonitorsWrapper *)self pause];
}

- (void)pause
{
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconMonitorWrapper: pausing", v4, 2u);
  }

  [(SPMonitorsWrapper *)self setIsRunning:0];
}

- (void)resume
{
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconMonitorWrapper: resuming", v4, 2u);
  }

  [(SPMonitorsWrapper *)self setIsRunning:1];
}

- (SPMonitorsWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __29__SPMonitorsWrapper__cpuType__block_invoke_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_2643D0000, a1, OS_LOG_TYPE_FAULT, "hw.cputype failed with error: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end