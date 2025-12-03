@interface HDSPSleepScreenUnlockDetector
- (HDSPEnvironment)environment;
- (HDSPSleepScreenUnlockDetector)initWithEnvironment:(id)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (unint64_t)numberOfTimesDismissed;
- (void)_resetCounter;
- (void)environmentWillBecomeReady:(id)ready;
- (void)setNumberOfTimesDismissed:(unint64_t)dismissed;
- (void)sleepLockWasDismissed;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPSleepScreenUnlockDetector

- (HDSPSleepScreenUnlockDetector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = HDSPSleepScreenUnlockDetector;
  v5 = [(HDSPSleepScreenUnlockDetector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    mutexGenerator = [environmentCopy mutexGenerator];
    v8 = mutexGenerator[2]();
    mutexProvider = v6->_mutexProvider;
    v6->_mutexProvider = v8;

    v10 = v6;
  }

  return v6;
}

- (void)environmentWillBecomeReady:(id)ready
{
  environment = [(HDSPSleepScreenUnlockDetector *)self environment];
  sleepModeManager = [environment sleepModeManager];
  [sleepModeManager addObserver:self];
}

- (void)startDetecting
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_isDetecting)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v4 = v9;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startDetecting", &v8, 0xCu);
    }

    self->_isDetecting = 1;
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    actionManager = [WeakRetained actionManager];
    [actionManager addObserver:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopDetecting
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopDetecting", &v8, 0xCu);
  }

  self->_isDetecting = 0;
  [(HDSPSleepScreenUnlockDetector *)self _resetCounter];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  actionManager = [WeakRetained actionManager];
  [actionManager removeObserver:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetCounter
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__HDSPSleepScreenUnlockDetector__resetCounter__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepScreenUnlockDetector *)self _withLock:v2];
}

- (void)setNumberOfTimesDismissed:(unint64_t)dismissed
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    dismissedCopy = dismissed;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] setNumberOfTimesDismissed: %ld", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  [userDefaults hksp_setInteger:dismissed forKey:@"HDSPSleepScreenUnlockCount"];

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numberOfTimesDismissed
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  userDefaults = [WeakRetained userDefaults];
  v4 = [userDefaults hksp_integerForKey:@"HDSPSleepScreenUnlockCount"];

  return v4;
}

- (void)sleepLockWasDismissed
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HDSPSleepScreenUnlockDetector *)self isDetecting])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__HDSPSleepScreenUnlockDetector_sleepLockWasDismissed__block_invoke;
    v11[3] = &unk_279C7B130;
    v11[4] = self;
    v11[5] = &v12;
    [(HDSPSleepScreenUnlockDetector *)self _withLock:v11];
    if (*(v13 + 24) == 1)
    {
      v3 = HKSPLogForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = objc_opt_class();
        *buf = 138543362;
        v17 = v4;
        v5 = v4;
        _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] counts as early wake up", buf, 0xCu);
      }

      wakeDetectorDelegate = [(HDSPSleepScreenUnlockDetector *)self wakeDetectorDelegate];
      environment = [(HDSPSleepScreenUnlockDetector *)self environment];
      currentDateProvider = [environment currentDateProvider];
      v9 = currentDateProvider[2]();
      [wakeDetectorDelegate wakeDetector:self didDetectWakeUpEventOnDate:v9];
    }

    _Block_object_dispose(&v12, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__HDSPSleepScreenUnlockDetector_sleepLockWasDismissed__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) numberOfTimesDismissed] + 1;
  [*(a1 + 32) setNumberOfTimesDismissed:v2];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = v2;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepLockWasDismissed (%ld times)", &v7, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2 == 2;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  if (change != mode)
  {
    [(HDSPSleepScreenUnlockDetector *)self _resetCounter];
  }
}

- (HDSPWakeDetectorDelegate)wakeDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wakeDetectorDelegate);

  return WeakRetained;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end