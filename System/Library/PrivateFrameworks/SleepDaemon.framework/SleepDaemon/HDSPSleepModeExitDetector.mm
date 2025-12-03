@interface HDSPSleepModeExitDetector
- (HDSPEnvironment)environment;
- (HDSPSleepModeExitDetector)initWithEnvironment:(id)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPSleepModeExitDetector

- (HDSPSleepModeExitDetector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPSleepModeExitDetector;
  v5 = [(HDSPSleepModeExitDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
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
    sleepModeManager = [WeakRetained sleepModeManager];
    [sleepModeManager addObserver:self];
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
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepModeManager = [WeakRetained sleepModeManager];
  [sleepModeManager removeObserver:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HDSPSleepModeExitDetector *)self environment:change];
  currentContext = [v7 currentContext];

  if (!change && HKSPSleepModeChangeReasonTreatedAsUserRequestedLocally() && [(HDSPSleepModeExitDetector *)self isDetecting])
  {
    source = [currentContext source];
    if (objc_opt_respondsToSelector())
    {
      source2 = [currentContext source];
      dontSync = [source2 dontSync];

      if (dontSync)
      {
        wakeDetectorDelegate = HKSPLogForCategory();
        if (os_log_type_enabled(wakeDetectorDelegate, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543362;
          v22 = objc_opt_class();
          v13 = v22;
          _os_log_impl(&dword_269B11000, wakeDetectorDelegate, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring remote sleep mode exit", &v21, 0xCu);
        }

LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = objc_opt_class();
      v15 = v22;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode manually exited, treating as wake up event", &v21, 0xCu);
    }

    wakeDetectorDelegate = [(HDSPSleepModeExitDetector *)self wakeDetectorDelegate];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    currentDateProvider = [WeakRetained currentDateProvider];
    v19 = currentDateProvider[2](currentDateProvider, v18);
    [wakeDetectorDelegate wakeDetector:self didDetectWakeUpEventOnDate:v19];

    goto LABEL_12;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
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