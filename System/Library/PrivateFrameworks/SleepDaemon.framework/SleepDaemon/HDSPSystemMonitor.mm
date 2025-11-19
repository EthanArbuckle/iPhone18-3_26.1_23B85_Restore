@interface HDSPSystemMonitor
+ (id)_platformSpecificReadyProviderForEnvironment:(id)a3;
- (BOOL)isSystemReady;
- (HDSPEnvironment)environment;
- (HDSPSystemMonitor)initWithEnvironment:(id)a3;
- (HDSPSystemMonitor)initWithEnvironment:(id)a3 watchOnWristMonitor:(id)a4 devicePowerMonitor:(id)a5 deviceUnlockMonitor:(id)a6;
- (HDSPSystemMonitor)initWithEnvironment:(id)a3 watchOnWristMonitor:(id)a4 devicePowerMonitor:(id)a5 deviceUnlockMonitor:(id)a6 systemReadyProvider:(id)a7 applicationWorkspaceMonitor:(id)a8;
- (HDSPSystemReadyDelegate)delegate;
- (id)diagnosticDescription;
- (void)environmentWillBecomeReady:(id)a3;
- (void)systemDidBecomeReady;
@end

@implementation HDSPSystemMonitor

+ (id)_platformSpecificReadyProviderForEnvironment:(id)a3
{
  v3 = a3;
  v4 = [v3 behavior];
  v5 = [v4 isAppleWatch];
  v6 = off_279C7A850;
  if (!v5)
  {
    v6 = off_279C7A6B8;
  }

  v7 = [objc_alloc(*v6) initWithEnvironment:v3];

  return v7;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 behavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    v7 = [HDSPWatchOnWristMonitor alloc];
    v8 = [v4 userDefaults];
    v9 = [v4 defaultCallbackScheduler];
    v10 = [(HDSPWatchOnWristMonitor *)v7 initWithUserDefaults:v8 callbackScheduler:v9];

    v11 = [HDSPDevicePowerMonitor alloc];
    v12 = [v4 defaultCallbackScheduler];
    v13 = [(HDSPDevicePowerMonitor *)v11 initWithCallbackScheduler:v12];
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

  v14 = [HDSPDeviceUnlockMonitor alloc];
  v15 = [v4 defaultCallbackScheduler];
  v16 = [(HDSPDeviceUnlockMonitor *)v14 initWithCallbackScheduler:v15];
  v17 = [(HDSPSystemMonitor *)self initWithEnvironment:v4 watchOnWristMonitor:v10 devicePowerMonitor:v13 deviceUnlockMonitor:v16];

  return v17;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)a3 watchOnWristMonitor:(id)a4 devicePowerMonitor:(id)a5 deviceUnlockMonitor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() _platformSpecificReadyProviderForEnvironment:v13];
  v15 = objc_alloc_init(HDSPApplicationWorkspaceMonitor);
  v16 = [(HDSPSystemMonitor *)self initWithEnvironment:v13 watchOnWristMonitor:v12 devicePowerMonitor:v11 deviceUnlockMonitor:v10 systemReadyProvider:v14 applicationWorkspaceMonitor:v15];

  return v16;
}

- (HDSPSystemMonitor)initWithEnvironment:(id)a3 watchOnWristMonitor:(id)a4 devicePowerMonitor:(id)a5 deviceUnlockMonitor:(id)a6 systemReadyProvider:(id)a7 applicationWorkspaceMonitor:(id)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v30 = a6;
  v31 = a7;
  v29 = a8;
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
      v36 = v31;
      v28 = v16;
      v20 = v15;
      v21 = v19;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing with %{public}@", buf, 0x16u);

      v15 = v20;
      v16 = v28;
    }

    objc_storeWeak(&v17->_environment, v14);
    objc_storeStrong(&v17->_systemReadyProvider, a7);
    [(HDSPSystemReadyProvider *)v17->_systemReadyProvider setDelegate:v17];
    objc_storeStrong(&v17->_deviceUnlockMonitor, a6);
    objc_storeStrong(&v17->_devicePowerMonitor, a5);
    objc_storeStrong(&v17->_watchOnWristMonitor, a4);
    objc_storeStrong(&v17->_applicationWorkspaceMonitor, a8);
    v22 = [v14 mutexGenerator];
    v23 = v22[2]();
    mutexProvider = v17->_mutexProvider;
    v17->_mutexProvider = v23;

    v25 = v17;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v4 = a3;
  v5 = [v4 diagnostics];
  [v5 addProvider:self];

  v6 = [v4 notificationListener];
  [v6 addObserver:self->_deviceUnlockMonitor];

  v7 = [v4 notificationListener];

  [v7 addObserver:self->_devicePowerMonitor];
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
  v4 = [(HDSPSystemMonitor *)self isSystemReady];
  v5 = [(HDSPSystemMonitor *)self deviceUnlockMonitor];
  v6 = [v3 stringWithFormat:@"Ready: %d\nHas Been Unlocked: %d\n", v4, objc_msgSend(v5, "hasBeenUnlockedSinceBoot")];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = [WeakRetained behavior];
  v9 = [v8 isAppleWatch];

  if (v9)
  {
    v10 = [(HDSPSystemMonitor *)self devicePowerMonitor];
    v11 = [v10 isCharging];
    v12 = [(HDSPSystemMonitor *)self devicePowerMonitor];
    [v12 batteryLevel];
    v14 = v13;
    v15 = [(HDSPSystemMonitor *)self watchOnWristMonitor];
    [v6 appendFormat:@"Charging: %d\nBattery: %f\nOn Wrist: %d\n", v11, *&v14, objc_msgSend(v15, "isOnWrist")];
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