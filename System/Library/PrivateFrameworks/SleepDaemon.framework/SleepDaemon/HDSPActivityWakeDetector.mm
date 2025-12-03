@interface HDSPActivityWakeDetector
- (HDSPActivityWakeDetector)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)notifyForActivityDetectedOnDate:(id)date;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPActivityWakeDetector

- (HDSPActivityWakeDetector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPActivityWakeDetector;
  v5 = [(HDSPActivityWakeDetector *)&v9 init];
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
    notificationListener = [WeakRetained notificationListener];
    [notificationListener addObserver:self];
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
  notificationListener = [WeakRetained notificationListener];
  [notificationListener removeObserver:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyForActivityDetectedOnDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = dateCopy;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying for activity detected on date %{public}@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_wakeDetectorDelegate);
  [WeakRetained wakeDetector:self didDetectWakeUpEventOnDate:dateCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.healthlite.SleepDetectedActivity"] && self->_isDetecting)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2114;
      *&v17[14] = nameCopy;
      v7 = *&v17[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v17, 0x16u);
    }

    environment = [(HDSPActivityWakeDetector *)self environment];
    currentDateProvider = [environment currentDateProvider];
    v13 = currentDateProvider[2](currentDateProvider, v10, v11, v12);
    [(HDSPActivityWakeDetector *)self notifyForActivityDetectedOnDate:v13];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v15 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
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