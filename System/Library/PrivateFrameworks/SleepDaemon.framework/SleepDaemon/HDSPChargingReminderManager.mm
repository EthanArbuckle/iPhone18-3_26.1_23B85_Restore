@interface HDSPChargingReminderManager
+ (id)monitorActivity;
+ (id)monitorCriteria;
- (BOOL)isCharging;
- (BOOL)sleepFeaturesEnabled;
- (HDSPChargingReminderManager)initWithEnvironment:(id)environment;
- (HDSPChargingReminderManager)initWithEnvironment:(id)environment monitoringScheduler:(id)scheduler;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NAScheduler)callbackScheduler;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)_currentState;
- (id)devicePowerMonitor;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)monitoringWindowAfterDate:(id)date;
- (id)upcomingEventsDueAfterDate:(id)date;
- (unint64_t)sleepScheduleState;
- (void)checkBatteryLevel;
- (void)deviceChangedChargingState:(BOOL)state;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)postChargingReminderNotification;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepEventIsDue:(id)due;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)startBatteryMonitoring;
- (void)stopBatteryMonitoring;
- (void)unscheduleStateExpiration;
- (void)updateState;
@end

@implementation HDSPChargingReminderManager

- (HDSPChargingReminderManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [HDSPXPCActivityScheduler alloc];
  defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
  v7 = [(HDSPXPCActivityScheduler *)v5 initWithCallbackScheduler:defaultCallbackScheduler];
  v8 = [(HDSPChargingReminderManager *)self initWithEnvironment:environmentCopy monitoringScheduler:v7];

  return v8;
}

- (HDSPChargingReminderManager)initWithEnvironment:(id)environment monitoringScheduler:(id)scheduler
{
  environmentCopy = environment;
  schedulerCopy = scheduler;
  v24.receiver = self;
  v24.super_class = HDSPChargingReminderManager;
  v8 = [(HDSPChargingReminderManager *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_monitoringScheduler, scheduler);
    mutexGenerator = [environmentCopy mutexGenerator];
    v11 = mutexGenerator[2]();
    mutexProvider = v9->_mutexProvider;
    v9->_mutexProvider = v11;

    v13 = [HDSPChargingReminderStateMachine alloc];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_alloc(MEMORY[0x277D62558]);
    userDefaults = [environmentCopy userDefaults];
    v18 = [v16 initWithUserDefaults:userDefaults];
    currentDateProvider = [environmentCopy currentDateProvider];
    v20 = [(HDSPChargingReminderStateMachine *)v13 initWithIdentifier:v15 persistence:v18 delegate:v9 infoProvider:v9 currentDateProvider:currentDateProvider];
    stateMachine = v9->_stateMachine;
    v9->_stateMachine = v20;

    v22 = v9;
  }

  return v9;
}

- (id)devicePowerMonitor
{
  environment = [(HDSPChargingReminderManager *)self environment];
  systemMonitor = [environment systemMonitor];
  devicePowerMonitor = [systemMonitor devicePowerMonitor];

  return devicePowerMonitor;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepScheduler2 = [readyCopy sleepScheduler];
  [sleepScheduler2 addEventProvider:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
  devicePowerMonitor = [(HDSPChargingReminderManager *)self devicePowerMonitor];
  [devicePowerMonitor addObserver:self];
}

- (void)environmentDidBecomeReady:(id)ready
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__HDSPChargingReminderManager_environmentDidBecomeReady___block_invoke;
  v3[3] = &unk_279C7B108;
  v3[4] = self;
  [(HDSPChargingReminderManager *)self _withLock:v3];
}

- (void)updateState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateState", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HDSPChargingReminderManager_updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPChargingReminderManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v13 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = modelCopy;
    v7 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v9, 0x16u);
  }

  [(HDSPChargingReminderManager *)self updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)significantTimeChangeDetected:(id)detected
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] significantTimeChangeDetected", &v7, 0xCu);
  }

  [(HDSPChargingReminderManager *)self updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateDidChange", &v9, 0xCu);
  }

  [(HDSPChargingReminderManager *)self updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceChangedChargingState:(BOOL)state
{
  stateCopy = state;
  v12 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = stateCopy;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] deviceChangedChargingState (isCharging: %d)", &v8, 0x12u);
  }

  [(HDSPChargingReminderManager *)self updateState];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];
  v4 = currentDateProvider[2]();

  return v4;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (unint64_t)sleepScheduleState
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepCoordinator = [WeakRetained sleepCoordinator];
  currentSleepScheduleState = [sleepCoordinator currentSleepScheduleState];

  return currentSleepScheduleState;
}

- (BOOL)sleepFeaturesEnabled
{
  sleepScheduleModel = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

  return watchSleepFeaturesEnabled;
}

- (id)monitoringWindowAfterDate:(id)date
{
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  sleepScheduleModel = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  v6 = *MEMORY[0x277D621B8];
  v7 = [sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:dateCopy];

  if (!v7)
  {
    v23 = 0;
    goto LABEL_23;
  }

  v8 = [v7 dateByAddingTimeInterval:-600.0];
  v9 = [v7 dateByAddingTimeInterval:-3600.0];
  sleepScheduleModel2 = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel2 sleepSettings];

  if (![sleepSettings bedtimeReminders])
  {
    v22 = v8;
LABEL_9:
    if ([v22 hksp_isBeforeOrSameAsDate:v9])
    {
      v24 = HKSPLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v44 = objc_opt_class();
        v45 = 2114;
        v46 = v22;
        v47 = 2114;
        v48 = v9;
        v25 = v44;
        _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring monitor end date (%{public}@) before start date (%{public}@)", buf, 0x20u);
      }

      v23 = 0;
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v22];
      v27 = HKSPLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v40 = v28;
        [v26 hkspDescription];
        v42 = v9;
        v29 = sleepSettings;
        v31 = v30 = v8;
        *buf = 138543618;
        v44 = v28;
        v45 = 2114;
        v46 = v31;
        _os_log_impl(&dword_269B11000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] monitor window is: %{public}@", buf, 0x16u);

        v8 = v30;
        sleepSettings = v29;
        v9 = v42;
      }

      endDate = [v26 endDate];
      v33 = [dateCopy hksp_isAfterOrSameAsDate:endDate];

      if (v33)
      {
        v34 = HKSPLogForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = objc_opt_class();
          *buf = 138543618;
          v44 = v35;
          v45 = 2114;
          v46 = v26;
          v36 = v35;
          _os_log_impl(&dword_269B11000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] already passed current window %{public}@", buf, 0x16u);
        }

        v37 = [(HDSPChargingReminderManager *)self monitoringWindowAfterDate:v7];
      }

      else
      {
        v37 = v26;
      }

      v23 = v37;
    }

    goto LABEL_22;
  }

  v41 = v9;
  v12 = sleepSettings;
  v13 = v8;
  sleepScheduleModel3 = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  sleepSchedule = [sleepScheduleModel3 sleepSchedule];

  [sleepSchedule windDownTime];
  v16 = *MEMORY[0x277D621F0];
  if (v17 <= 0.0)
  {
    v16 = v6;
  }

  v18 = v16;
  sleepScheduleModel4 = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  v20 = [sleepScheduleModel4 nextEventWithIdentifier:v18 dueAfterDate:dateCopy];

  if (v20)
  {
    v21 = [v20 dateByAddingTimeInterval:-*MEMORY[0x277D623C0]];
    v22 = [v21 earlierDate:v13];

    v8 = v13;
    sleepSettings = v12;
    v9 = v41;
    goto LABEL_9;
  }

  v23 = 0;
  v8 = v13;
  sleepSettings = v12;
  v9 = v41;
LABEL_22:

LABEL_23:
  v38 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)isCharging
{
  devicePowerMonitor = [(HDSPChargingReminderManager *)self devicePowerMonitor];
  isCharging = [devicePowerMonitor isCharging];

  return isCharging;
}

- (void)startBatteryMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startBatteryMonitoring", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  monitoringScheduler = self->_monitoringScheduler;
  monitorActivity = [objc_opt_class() monitorActivity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HDSPChargingReminderManager_startBatteryMonitoring__block_invoke;
  v8[3] = &unk_279C7B2F8;
  objc_copyWeak(&v9, buf);
  [(HDSPActivityScheduler *)monitoringScheduler scheduleActivity:monitorActivity activityHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__HDSPChargingReminderManager_startBatteryMonitoring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkBatteryLevel];
}

+ (id)monitorCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D862C0]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D863B0], 0);

  return v2;
}

+ (id)monitorActivity
{
  v3 = [HDSPXPCActivity alloc];
  monitorCriteria = [self monitorCriteria];
  v5 = [(HDSPXPCActivity *)v3 initWithEventName:@"com.apple.sleep.BatteryMonitoring.activity" options:1 criteria:monitorCriteria];

  return v5;
}

- (void)checkBatteryLevel
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] checkBatteryLevel", buf, 0xCu);
  }

  devicePowerMonitor = [(HDSPChargingReminderManager *)self devicePowerMonitor];
  [devicePowerMonitor batteryLevel];
  v7 = v6;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HDSPChargingReminderManager_checkBatteryLevel__block_invoke;
  v9[3] = &unk_279C7B958;
  v9[4] = self;
  v10 = v7;
  [(HDSPChargingReminderManager *)self _withLock:v9];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopBatteryMonitoring
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopBatteryMonitoring", &v6, 0xCu);
  }

  [(HDSPActivityScheduler *)self->_monitoringScheduler unscheduleActivities];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleStateExpiration
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling scheduler we have events to schedule", &v7, 0xCu);
  }

  sleepEventDelegate = [(HDSPChargingReminderManager *)self sleepEventDelegate];
  [sleepEventDelegate eventProviderHasUpcomingEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unscheduleStateExpiration
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling scheduler we no longer have events to schedule", &v7, 0xCu);
  }

  sleepEventDelegate = [(HDSPChargingReminderManager *)self sleepEventDelegate];
  [sleepEventDelegate eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (NAScheduler)callbackScheduler
{
  environment = [(HDSPChargingReminderManager *)self environment];
  defaultCallbackScheduler = [environment defaultCallbackScheduler];

  return defaultCallbackScheduler;
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HDSPChargingReminderManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = dateCopy;
  v14 = v5;
  v15 = &v16;
  [(HDSPChargingReminderManager *)self _withLock:v13];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v17[5];
    *buf = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v9 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling expiration of %{public}@", buf, 0x16u);
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __58__HDSPChargingReminderManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 currentStateExpirationDate];

  if ([v3 hksp_isAfterDate:*(a1 + 40)])
  {
    v4 = MEMORY[0x277D624D0];
    v5 = [*(a1 + 32) stateMachine];
    v6 = [v5 currentStateIdentifier];
    v7 = [v4 sleepEventWithIdentifier:v6 dueDate:v3];

    v12[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepEventIsDue:(id)due
{
  v20 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  identifier = [dueCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277D621B8]];

  v7 = HKSPLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v9 = v17;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime", buf, 0xCu);
    }

    [(HDSPChargingReminderManager *)self updateState];
  }

  else
  {
    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      identifier2 = [dueCopy identifier];
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = identifier2;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ expired", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__HDSPChargingReminderManager_sleepEventIsDue___block_invoke;
    v14[3] = &unk_279C7B2D0;
    v14[4] = self;
    v15 = dueCopy;
    [(HDSPChargingReminderManager *)self _withLock:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HDSPChargingReminderManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSPChargingReminderManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E18 != -1)
  {
    dispatch_once(&qword_2814C0E18, block);
  }

  return _MergedGlobals_12;
}

void __47__HDSPChargingReminderManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HDSPChargingReminderManager_eventIdentifiers__block_invoke_2;
  v6[3] = &unk_279C7B678;
  v6[4] = v1;
  v6[5] = &v7;
  [v1 _withLock:v6];
  v2 = MEMORY[0x277CBEB98];
  v3 = [v8[5] arrayByAddingObject:*MEMORY[0x277D621B8]];
  v4 = [v2 setWithArray:v3];
  v5 = _MergedGlobals_12;
  _MergedGlobals_12 = v4;

  _Block_object_dispose(&v7, 8);
}

void __47__HDSPChargingReminderManager_eventIdentifiers__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)postChargingReminderNotification
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = objc_opt_class();
    v4 = v28;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting battery reminder notification", buf, 0xCu);
  }

  sleepScheduleModel = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  sleepTracking = [sleepSettings sleepTracking];

  sleepScheduleModel2 = [(HDSPChargingReminderManager *)self sleepScheduleModel];
  currentDate = [(HDSPChargingReminderManager *)self currentDate];
  v10 = [sleepScheduleModel2 nextOccurrenceAfterDate:currentDate];

  alarmConfiguration = [v10 alarmConfiguration];
  isEnabled = [alarmConfiguration isEnabled];

  v13 = MEMORY[0x277D624D0];
  v14 = *MEMORY[0x277D621C8];
  currentDate2 = [(HDSPChargingReminderManager *)self currentDate];
  v25[0] = *MEMORY[0x277D62030];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:isEnabled];
  v26[0] = v16;
  v25[1] = *MEMORY[0x277D62048];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:sleepTracking];
  v26[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v19 = [v13 sleepEventWithIdentifier:v14 dueDate:currentDate2 context:v18];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduler = [WeakRetained sleepScheduler];
  v24 = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [sleepScheduler notifyForOverdueEvents:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDSPChargingReminderManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPChargingReminderManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__HDSPChargingReminderManager__currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  _currentState = [(HDSPChargingReminderManager *)self _currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", _currentState];

  return v4;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepEventDelegate)sleepEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepEventDelegate);

  return WeakRetained;
}

@end