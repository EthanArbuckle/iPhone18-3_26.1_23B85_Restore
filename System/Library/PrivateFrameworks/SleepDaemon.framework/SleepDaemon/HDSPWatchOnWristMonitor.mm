@interface HDSPWatchOnWristMonitor
- (BOOL)isOnWrist;
- (HDSPWatchOnWristMonitor)initWithUserDefaults:(id)a3;
- (HDSPWatchOnWristMonitor)initWithUserDefaults:(id)a3 callbackScheduler:(id)a4;
- (NSDate)lastOnWristDate;
- (void)_withLock:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)a3;
@end

@implementation HDSPWatchOnWristMonitor

- (HDSPWatchOnWristMonitor)initWithUserDefaults:(id)a3
{
  v4 = MEMORY[0x277D2C938];
  v5 = a3;
  v6 = [v4 hkspMainThreadScheduler];
  v7 = [(HDSPWatchOnWristMonitor *)self initWithUserDefaults:v5 callbackScheduler:v6];

  return v7;
}

- (HDSPWatchOnWristMonitor)initWithUserDefaults:(id)a3 callbackScheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HDSPWatchOnWristMonitor;
  v9 = [(HDSPWatchOnWristMonitor *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userDefaults, a3);
    v11 = [objc_alloc(MEMORY[0x277D624A0]) initWithCallbackScheduler:v8];
    observers = v10->_observers;
    v10->_observers = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x277CCDCF8]);
    wristDetectionSettingsManager = v10->_wristDetectionSettingsManager;
    v10->_wristDetectionSettingsManager = v13;

    v15 = v10;
  }

  return v10;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3
{
  v4 = 0;
  [(HKSPObserverSet *)self->_observers addObserver:a3 wasFirst:&v4];
  if (v4 == 1)
  {
    [(HKWristDetectionSettingManager *)self->_wristDetectionSettingsManager registerObserver:self];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = 0;
  [(HKSPObserverSet *)self->_observers removeObserver:a3 wasLast:&v4];
  if (v4 == 1)
  {
    [(HKWristDetectionSettingManager *)self->_wristDetectionSettingsManager unregisterObserver:self];
  }
}

- (BOOL)isOnWrist
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HDSPWatchOnWristMonitor_isOnWrist__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWatchOnWristMonitor *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __36__HDSPWatchOnWristMonitor_isOnWrist__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_isOnWrist];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSDate)lastOnWristDate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSPWatchOnWristMonitor_lastOnWristDate__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWatchOnWristMonitor *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __42__HDSPWatchOnWristMonitor_lastOnWristDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lock_lastOnWristDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] wristDetectionSettingManagerDidObserveWristDetectChange", &v7, 0xCu);
  }

  [(HKSPObserverSet *)self->_observers enumerateObserversWithBlock:&__block_literal_global_7];
  v6 = *MEMORY[0x277D85DE8];
}

void __83__HDSPWatchOnWristMonitor_wristDetectionSettingManagerDidObserveWristDetectChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 wristDetectEnabledDidChange];
  }
}

@end