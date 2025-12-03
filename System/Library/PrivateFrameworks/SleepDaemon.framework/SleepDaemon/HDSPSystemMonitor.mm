@interface HDSPSystemMonitor
+ (id)_platformSpecificReadyProviderForEnvironment:(id)environment;
- (BOOL)isSystemReady;
- (HDSPEnvironment)environment;
- (HDSPSystemMonitor)initWithEnvironment:(id)environment;
- (HDSPSystemMonitor)initWithEnvironment:(id)environment watchOnWristMonitor:(id)monitor devicePowerMonitor:(id)powerMonitor deviceUnlockMonitor:(id)unlockMonitor;
- (HDSPSystemMonitor)initWithEnvironment:(id)environment watchOnWristMonitor:(id)monitor devicePowerMonitor:(id)powerMonitor deviceUnlockMonitor:(id)unlockMonitor systemReadyProvider:(id)provider applicationWorkspaceMonitor:(id)workspaceMonitor;
- (HDSPSystemReadyDelegate)delegate;
- (id)diagnosticDescription;
- (void)environmentWillBecomeReady:(id)ready;
- (void)systemDidBecomeReady;
@end

@implementation HDSPSystemMonitor

+ (id)_platformSpecificReadyProviderForEnvironment:(id)environment
{
  environmentCopy = environment;
  behavior = [environmentCopy behavior];
  isAppleWatch = [behavior isAppleWatch];
  v6 = off_279C7A850;
  if (!isAppleWatch)
  {
    v6 = off_279C7A6B8;
  }

  v7 = [objc_alloc(*v6) initWithEnvironment:environmentCopy];

  return v7;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  behavior = [environmentCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    v7 = [HDSPWatchOnWristMonitor alloc];
    userDefaults = [environmentCopy userDefaults];
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v10 = [(HDSPWatchOnWristMonitor *)v7 initWithUserDefaults:userDefaults callbackScheduler:defaultCallbackScheduler];

    v11 = [HDSPDevicePowerMonitor alloc];
    defaultCallbackScheduler2 = [environmentCopy defaultCallbackScheduler];
    v13 = [(HDSPDevicePowerMonitor *)v11 initWithCallbackScheduler:defaultCallbackScheduler2];
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

  v14 = [HDSPDeviceUnlockMonitor alloc];
  defaultCallbackScheduler3 = [environmentCopy defaultCallbackScheduler];
  v16 = [(HDSPDeviceUnlockMonitor *)v14 initWithCallbackScheduler:defaultCallbackScheduler3];
  v17 = [(HDSPSystemMonitor *)self initWithEnvironment:environmentCopy watchOnWristMonitor:v10 devicePowerMonitor:v13 deviceUnlockMonitor:v16];

  return v17;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)environment watchOnWristMonitor:(id)monitor devicePowerMonitor:(id)powerMonitor deviceUnlockMonitor:(id)unlockMonitor
{
  unlockMonitorCopy = unlockMonitor;
  powerMonitorCopy = powerMonitor;
  monitorCopy = monitor;
  environmentCopy = environment;
  v14 = [objc_opt_class() _platformSpecificReadyProviderForEnvironment:environmentCopy];
  v15 = objc_alloc_init(HDSPApplicationWorkspaceMonitor);
  v16 = [(HDSPSystemMonitor *)self initWithEnvironment:environmentCopy watchOnWristMonitor:monitorCopy devicePowerMonitor:powerMonitorCopy deviceUnlockMonitor:unlockMonitorCopy systemReadyProvider:v14 applicationWorkspaceMonitor:v15];

  return v16;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)environment watchOnWristMonitor:(id)monitor devicePowerMonitor:(id)powerMonitor deviceUnlockMonitor:(id)unlockMonitor systemReadyProvider:(id)provider applicationWorkspaceMonitor:(id)workspaceMonitor
{
  v37 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  monitorCopy = monitor;
  powerMonitorCopy = powerMonitor;
  unlockMonitorCopy = unlockMonitor;
  providerCopy = provider;
  workspaceMonitorCopy = workspaceMonitor;
  v32.receiver = self;
  v32.super_class = HDSPSystemMonitor;
  v17 = [(HDSPSystemMonitor *)&v32 init];
  if (v17)
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v34 = v19;
      v35 = 2114;
      v36 = providerCopy;
      v28 = powerMonitorCopy;
      v20 = monitorCopy;
      v21 = v19;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing with %{public}@", buf, 0x16u);

      monitorCopy = v20;
      powerMonitorCopy = v28;
    }

    objc_storeWeak(&v17->_environment, environmentCopy);
    objc_storeStrong(&v17->_systemReadyProvider, provider);
    [(HDSPSystemReadyProvider *)v17->_systemReadyProvider setDelegate:v17];
    objc_storeStrong(&v17->_deviceUnlockMonitor, unlockMonitor);
    objc_storeStrong(&v17->_devicePowerMonitor, powerMonitor);
    objc_storeStrong(&v17->_watchOnWristMonitor, monitor);
    objc_storeStrong(&v17->_applicationWorkspaceMonitor, workspaceMonitor);
    mutexGenerator = [environmentCopy mutexGenerator];
    v23 = mutexGenerator[2]();
    mutexProvider = v17->_mutexProvider;
    v17->_mutexProvider = v23;

    v25 = v17;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  diagnostics = [readyCopy diagnostics];
  [diagnostics addProvider:self];

  notificationListener = [readyCopy notificationListener];
  [notificationListener addObserver:self->_deviceUnlockMonitor];

  notificationListener2 = [readyCopy notificationListener];

  [notificationListener2 addObserver:self->_devicePowerMonitor];
}

- (BOOL)isSystemReady
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__HDSPSystemMonitor_isSystemReady__block_invoke;
  v10[3] = &unk_279C7B130;
  v10[4] = self;
  v10[5] = &v11;
  [(HDSPSystemMonitor *)self _withLock:v10];
  if (*(v12 + 24) == 1)
  {
    v2 = HKSPLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      *buf = 138543362;
      v16 = v3;
      v4 = v3;
      _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] system is ready", buf, 0xCu);
    }
  }

  else
  {
    v2 = HKSPLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      *buf = 138543362;
      v16 = v5;
      v6 = v5;
      _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] system not ready", buf, 0xCu);
    }
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __34__HDSPSystemMonitor_isSystemReady__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 8);
  if ((v3 & 1) == 0)
  {
    result = [*(v2 + 64) isSystemReady];
    *(*(v1 + 32) + 8) = result;
    v3 = *(*(v1 + 32) + 8);
  }

  *(*(*(v1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)systemDidBecomeReady
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemDidBecomeReady];
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  isSystemReady = [(HDSPSystemMonitor *)self isSystemReady];
  deviceUnlockMonitor = [(HDSPSystemMonitor *)self deviceUnlockMonitor];
  v6 = [v3 stringWithFormat:@"Ready: %d\nHas Been Unlocked: %d\n", isSystemReady, objc_msgSend(deviceUnlockMonitor, "hasBeenUnlockedSinceBoot")];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    devicePowerMonitor = [(HDSPSystemMonitor *)self devicePowerMonitor];
    isCharging = [devicePowerMonitor isCharging];
    devicePowerMonitor2 = [(HDSPSystemMonitor *)self devicePowerMonitor];
    [devicePowerMonitor2 batteryLevel];
    v14 = v13;
    watchOnWristMonitor = [(HDSPSystemMonitor *)self watchOnWristMonitor];
    [v6 appendFormat:@"Charging: %d\nBattery: %f\nOn Wrist: %d\n", isCharging, *&v14, objc_msgSend(watchOnWristMonitor, "isOnWrist")];
  }

  return v6;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSystemReadyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end