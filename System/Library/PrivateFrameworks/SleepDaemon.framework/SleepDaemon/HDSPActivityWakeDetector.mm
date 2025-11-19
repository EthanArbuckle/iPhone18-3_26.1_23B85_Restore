@interface HDSPActivityWakeDetector
- (HDSPActivityWakeDetector)initWithEnvironment:(id)a3;
- (HDSPEnvironment)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (void)notifyForActivityDetectedOnDate:(id)a3;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPActivityWakeDetector

- (HDSPActivityWakeDetector)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPActivityWakeDetector;
  v5 = [(HDSPActivityWakeDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
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
    v6 = [WeakRetained notificationListener];
    [v6 addObserver:self];
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
  v6 = [WeakRetained notificationListener];
  [v6 removeObserver:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyForActivityDetectedOnDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v4;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying for activity detected on date %{public}@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_wakeDetectorDelegate);
  [WeakRetained wakeDetector:self didDetectWakeUpEventOnDate:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isEqualToString:@"com.apple.healthlite.SleepDetectedActivity"] && self->_isDetecting)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2114;
      *&v17[14] = v5;
      v7 = *&v17[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v17, 0x16u);
    }

    v8 = [(HDSPActivityWakeDetector *)self environment];
    v9 = [v8 currentDateProvider];
    v13 = v9[2](v9, v10, v11, v12);
    [(HDSPActivityWakeDetector *)self notifyForActivityDetectedOnDate:v13];
  }

  v14 = [MEMORY[0x277D2C900] futureWithNoResult];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
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