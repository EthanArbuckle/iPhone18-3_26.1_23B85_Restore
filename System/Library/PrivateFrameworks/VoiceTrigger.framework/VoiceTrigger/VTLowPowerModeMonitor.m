@interface VTLowPowerModeMonitor
+ (id)sharedInstance;
- (VTLowPowerModeMonitor)init;
- (unsigned)_checkPowerMode;
- (void)_didReceiveLowPowerModeChanged;
- (void)_didReceiveLowPowerModeChangedInQueue:(unsigned __int8)a3;
- (void)_notifyObserver:(id)a3 withPowerMode:(unsigned __int8)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation VTLowPowerModeMonitor

- (unsigned)_checkPowerMode
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Low power mode : %{public}@", &v7, 0xCu);
  }

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_notifyObserver:(id)a3 withPowerMode:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  [(VTEventMonitor *)self notifyObserver:v6];
  if (objc_opt_respondsToSelector())
  {
    [v6 VTLowPowerModeMonitor:self didReceivePowerModeChanged:v4];
  }
}

- (void)_didReceiveLowPowerModeChangedInQueue:(unsigned __int8)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__VTLowPowerModeMonitor__didReceiveLowPowerModeChangedInQueue___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_didReceiveLowPowerModeChanged
{
  v3 = [(VTLowPowerModeMonitor *)self _checkPowerMode];
  self->_powerMode = v3;

  [(VTLowPowerModeMonitor *)self _didReceiveLowPowerModeChangedInQueue:v3];
}

- (void)_stopMonitoring
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Low power mode", v5, 2u);
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__didReceiveLowPowerModeChanged name:*MEMORY[0x277CCA5E8] object:0];

  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring : Low power mode", v6, 2u);
  }

  self->_powerMode = [(VTLowPowerModeMonitor *)self _checkPowerMode];
}

- (VTLowPowerModeMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTLowPowerModeMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_powerMode = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2875 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2875, &__block_literal_global_2876);
  }

  v3 = sharedInstance__sharedInstance_2877;

  return v3;
}

uint64_t __39__VTLowPowerModeMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_2877 = objc_alloc_init(VTLowPowerModeMonitor);

  return MEMORY[0x2821F96F8]();
}

@end