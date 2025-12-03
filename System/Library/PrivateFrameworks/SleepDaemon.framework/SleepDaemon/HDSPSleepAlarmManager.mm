@interface HDSPSleepAlarmManager
- (HDSPEnvironment)environment;
- (HDSPSleepAlarmManager)initWithEnvironment:(id)environment;
- (HDSPSleepAlarmManager)initWithEnvironment:(id)environment sleepAlarmProvider:(id)provider;
- (NSString)sourceIdentifier;
- (void)environmentWillBecomeReady:(id)ready;
- (void)resetSleepAlarmSnoozeState;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
@end

@implementation HDSPSleepAlarmManager

- (HDSPSleepAlarmManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(HDSPMobileTimerBridge);
  v6 = [(HDSPSleepAlarmManager *)self initWithEnvironment:environmentCopy sleepAlarmProvider:v5];

  return v6;
}

- (HDSPSleepAlarmManager)initWithEnvironment:(id)environment sleepAlarmProvider:(id)provider
{
  environmentCopy = environment;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HDSPSleepAlarmManager;
  v8 = [(HDSPSleepAlarmManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_sleepAlarmProvider, provider);
    v10 = v9;
  }

  return v9;
}

- (void)environmentWillBecomeReady:(id)ready
{
  sleepScheduleModelManager = [ready sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];
}

- (void)resetSleepAlarmSnoozeState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] reset sleep alarm snooze state", &v5, 0xCu);
  }

  [(HDSPSleepAlarmProvider *)self->_sleepAlarmProvider resetSleepAlarmSnoozeState];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating sleep alarms for model change", &v7, 0xCu);
  }

  [(HDSPSleepAlarmProvider *)self->_sleepAlarmProvider updateSleepAlarms];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end