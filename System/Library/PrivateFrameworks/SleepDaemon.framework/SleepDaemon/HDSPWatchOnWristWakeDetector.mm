@interface HDSPWatchOnWristWakeDetector
- (HDSPEnvironment)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (HDSPWatchOnWristWakeDetector)initWithEnvironment:(id)environment;
- (id)onWristMonitor;
- (void)detectedOnWristOnDate:(id)date;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPWatchOnWristWakeDetector

- (HDSPWatchOnWristWakeDetector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPWatchOnWristWakeDetector;
  v5 = [(HDSPWatchOnWristWakeDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (id)onWristMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  systemMonitor = [WeakRetained systemMonitor];
  watchOnWristMonitor = [systemMonitor watchOnWristMonitor];

  return watchOnWristMonitor;
}

- (void)startDetecting
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_isDetecting)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v4 = v16;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startDetecting", &v15, 0xCu);
    }

    self->_isDetecting = 1;
    onWristMonitor = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
    [onWristMonitor addObserver:self];

    onWristMonitor2 = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
    lastOnWristDate = [onWristMonitor2 lastOnWristDate];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    currentDateProvider = [WeakRetained currentDateProvider];
    v11 = currentDateProvider[2](currentDateProvider, v10);

    if (lastOnWristDate)
    {
      [lastOnWristDate timeIntervalSinceDate:v11];
      if (fabs(v12) < 5.0)
      {
        wakeDetectorDelegate = [(HDSPWatchOnWristWakeDetector *)self wakeDetectorDelegate];
        [wakeDetectorDelegate wakeDetector:self didDetectWakeUpEventOnDate:lastOnWristDate];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopDetecting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopDetecting", &v7, 0xCu);
  }

  self->_isDetecting = 0;
  onWristMonitor = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
  [onWristMonitor removeObserver:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)detectedOnWristOnDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([(HDSPWatchOnWristWakeDetector *)self isDetecting])
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = dateCopy;
      v6 = v10;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] detectedOnWristOnDate: %{public}@", &v9, 0x16u);
    }

    wakeDetectorDelegate = [(HDSPWatchOnWristWakeDetector *)self wakeDetectorDelegate];
    [wakeDetectorDelegate wakeDetector:self didDetectWakeUpEventOnDate:dateCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
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