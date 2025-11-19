@interface HDSPWatchOnWristWakeDetector
- (HDSPEnvironment)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (HDSPWatchOnWristWakeDetector)initWithEnvironment:(id)a3;
- (id)onWristMonitor;
- (void)detectedOnWristOnDate:(id)a3;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPWatchOnWristWakeDetector

- (HDSPWatchOnWristWakeDetector)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPWatchOnWristWakeDetector;
  v5 = [(HDSPWatchOnWristWakeDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = v6;
  }

  return v6;
}

- (id)onWristMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained systemMonitor];
  v4 = [v3 watchOnWristMonitor];

  return v4;
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
    v5 = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
    [v5 addObserver:self];

    v6 = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
    v7 = [v6 lastOnWristDate];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v9 = [WeakRetained currentDateProvider];
    v11 = v9[2](v9, v10);

    if (v7)
    {
      [v7 timeIntervalSinceDate:v11];
      if (fabs(v12) < 5.0)
      {
        v13 = [(HDSPWatchOnWristWakeDetector *)self wakeDetectorDelegate];
        [v13 wakeDetector:self didDetectWakeUpEventOnDate:v7];
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
  v5 = [(HDSPWatchOnWristWakeDetector *)self onWristMonitor];
  [v5 removeObserver:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)detectedOnWristOnDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HDSPWatchOnWristWakeDetector *)self isDetecting])
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v4;
      v6 = v10;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] detectedOnWristOnDate: %{public}@", &v9, 0x16u);
    }

    v7 = [(HDSPWatchOnWristWakeDetector *)self wakeDetectorDelegate];
    [v7 wakeDetector:self didDetectWakeUpEventOnDate:v4];
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