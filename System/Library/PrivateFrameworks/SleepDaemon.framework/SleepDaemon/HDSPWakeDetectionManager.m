@interface HDSPWakeDetectionManager
+ (id)platformSpecificProviders:(id)a3;
- (BOOL)isDetecting;
- (BOOL)isWatch;
- (BOOL)sleepFeaturesEnabled;
- (BOOL)sleepModeIsOff;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPWakeDetectionManager)initWithEnvironment:(id)a3;
- (HDSPWakeDetectionManager)initWithEnvironment:(id)a3 wakeDetectorProviders:(id)a4;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)relevantOccurrence;
- (NSDate)currentDate;
- (NSDate)nextWakeUp;
- (NSDate)upcomingStartDetection;
- (NSString)providerIdentifier;
- (id)_currentState;
- (id)_detectionWindowForType:(unint64_t)a3 wakeUpDate:(id)a4 bedtimeDate:(id)a5;
- (id)detectionWindowForType:(unint64_t)a3;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (unint64_t)activeTypes;
- (unint64_t)sleepScheduleState;
- (void)_simulateActivityDetectionOnDate:(id)a3;
- (void)earlyWakeUpWasNotifiedRemotely;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)postWakeDetectionNotification:(unint64_t)a3;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)startWakeDetection:(unint64_t)a3;
- (void)stopWakeDetection;
- (void)unscheduleStateExpiration;
- (void)updateState;
- (void)wakeDetector:(id)a3 didDetectWakeUpEventOnDate:(id)a4;
@end

@implementation HDSPWakeDetectionManager

- (HDSPWakeDetectionManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 behavior];
  v7 = [v5 platformSpecificProviders:v6];
  v8 = [(HDSPWakeDetectionManager *)self initWithEnvironment:v4 wakeDetectorProviders:v7];

  return v8;
}

+ (id)platformSpecificProviders:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v12[0] = &__block_literal_global_13;
  v12[1] = &__block_literal_global_295;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [v3 arrayWithArray:v6];

  LODWORD(v6) = [v5 isAppleWatch];
  if (v6)
  {
    v11[0] = &__block_literal_global_299_0;
    v11[1] = &__block_literal_global_302_1;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [v7 addObjectsFromArray:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

HDSPSleepModeExitDetector *__54__HDSPWakeDetectionManager_platformSpecificProviders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepModeExitDetector alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScreenUnlockDetector *__54__HDSPWakeDetectionManager_platformSpecificProviders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScreenUnlockDetector alloc] initWithEnvironment:v2];

  return v3;
}

HDSPWatchOnWristWakeDetector *__54__HDSPWakeDetectionManager_platformSpecificProviders___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPWatchOnWristWakeDetector alloc] initWithEnvironment:v2];

  return v3;
}

HDSPActivityWakeDetector *__54__HDSPWakeDetectionManager_platformSpecificProviders___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 behavior];
  v4 = [v3 hksp_supportsAlwaysOnTracking];

  if (v4)
  {
    v5 = [[HDSPActivityWakeDetector alloc] initWithEnvironment:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDSPWakeDetectionManager)initWithEnvironment:(id)a3 wakeDetectorProviders:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = HDSPWakeDetectionManager;
  v8 = [(HDSPWakeDetectionManager *)&v39 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __70__HDSPWakeDetectionManager_initWithEnvironment_wakeDetectorProviders___block_invoke;
    v36 = &unk_279C7C498;
    v10 = v6;
    v37 = v10;
    v11 = v9;
    v38 = v11;
    v12 = [v7 na_map:&v33];
    wakeDetectors = v11->_wakeDetectors;
    v11->_wakeDetectors = v12;

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v11->_wakeDetectors;
      *buf = 138543618;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
      v17 = v15;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] has wakeDetectors: %{public}@", buf, 0x16u);
    }

    v18 = [v10 mutexGenerator];
    v19 = v18[2]();
    mutexProvider = v11->_mutexProvider;
    v11->_mutexProvider = v19;

    v21 = [HDSPWakeDetectionStateMachine alloc];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = objc_alloc(MEMORY[0x277D62558]);
    v25 = [v10 userDefaults];
    v26 = [v24 initWithUserDefaults:v25];
    v27 = [v10 currentDateProvider];
    v28 = [(HDSPWakeDetectionStateMachine *)v21 initWithIdentifier:v23 persistence:v26 delegate:v11 infoProvider:v11 currentDateProvider:v27];
    stateMachine = v11->_stateMachine;
    v11->_stateMachine = v28;

    v30 = v11;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

id __70__HDSPWakeDetectionManager_initWithEnvironment_wakeDetectorProviders___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, *(a1 + 32));
  [v3 setWakeDetectorDelegate:*(a1 + 40)];

  return v3;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v6 = v15;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v14, 0xCu);
  }

  v7 = [v4 sleepScheduleModelManager];
  [v7 addObserver:self];

  v8 = [v4 sleepScheduler];
  [v8 addEventHandler:self];

  v9 = [v4 sleepScheduler];
  [v9 addEventProvider:self];

  v10 = [v4 sleepCoordinator];
  [v10 addObserver:self];

  v11 = [v4 timeChangeListener];
  [v11 addObserver:self];

  v12 = [v4 diagnostics];

  [v12 addProvider:self];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)environmentDidBecomeReady:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSPWakeDetectionManager_environmentDidBecomeReady___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPWakeDetectionManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
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
  v6[2] = __39__HDSPWakeDetectionManager_updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPWakeDetectionManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v5;
    v7 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v9, 0x16u);
  }

  [(HDSPWakeDetectionManager *)self updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)significantTimeChangeDetected:(id)a3
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

  [(HDSPWakeDetectionManager *)self updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)wakeDetector:(id)a3 didDetectWakeUpEventOnDate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    v9 = v17;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up event was detected by %{public}@ at %{public}@", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDSPWakeDetectionManager_wakeDetector_didDetectWakeUpEventOnDate___block_invoke;
  v13[3] = &unk_279C7C050;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(HDSPWakeDetectionManager *)self _withLock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HDSPWakeDetectionManager_wakeDetector_didDetectWakeUpEventOnDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) type];
  v4 = *(a1 + 48);

  return [v2 wakeupEventDetected:v3 date:v4];
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

  v5 = [(HDSPWakeDetectionManager *)self sleepEventDelegate];
  [v5 eventProviderHasUpcomingEvents:self];

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

  v5 = [(HDSPWakeDetectionManager *)self sleepEventDelegate];
  [v5 eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startWakeDetection:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHDSPWakeDetectorTypes(a3);
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] startWakeDetection: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v10 = [WeakRetained defaultCallbackScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__HDSPWakeDetectionManager_startWakeDetection___block_invoke;
  v12[3] = &unk_279C7B740;
  v12[4] = self;
  v12[5] = a3;
  [v10 performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HDSPWakeDetectionManager_startWakeDetection___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HDSPWakeDetectionManager_startWakeDetection___block_invoke_2;
  v3[3] = &__block_descriptor_40_e28_B16__0___HDSPWakeDetector__8l;
  v3[4] = *(a1 + 40);
  v2 = [v1 na_filter:v3];
  [v2 na_each:&__block_literal_global_311_0];
}

BOOL __47__HDSPWakeDetectionManager_startWakeDetection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDetecting])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = ([v3 type] & v5) != 0;
  }

  return v4;
}

- (void)stopWakeDetection
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopWakeDetection", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained defaultCallbackScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HDSPWakeDetectionManager_stopWakeDetection__block_invoke;
  v8[3] = &unk_279C7B108;
  v8[4] = self;
  [v6 performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
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

  [(HDSPWakeDetectionManager *)self updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12;
  v20 = __Block_byref_object_dispose__12;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HDSPWakeDetectionManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(HDSPWakeDetectionManager *)self _withLock:v13];
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

void __55__HDSPWakeDetectionManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
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

- (void)sleepEventIsDue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277D621B8]];

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

    [(HDSPWakeDetectionManager *)self updateState];
  }

  else
  {
    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 identifier];
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ expired", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__HDSPWakeDetectionManager_sleepEventIsDue___block_invoke;
    v14[3] = &unk_279C7B2D0;
    v14[4] = self;
    v15 = v4;
    [(HDSPWakeDetectionManager *)self _withLock:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __44__HDSPWakeDetectionManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDSPWakeDetectionManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E48 != -1)
  {
    dispatch_once(&qword_2814C0E48, block);
  }

  return _MergedGlobals_15;
}

void __44__HDSPWakeDetectionManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__12;
  v11 = __Block_byref_object_dispose__12;
  v12 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HDSPWakeDetectionManager_eventIdentifiers__block_invoke_2;
  v6[3] = &unk_279C7B678;
  v6[4] = v1;
  v6[5] = &v7;
  [v1 _withLock:v6];
  v2 = MEMORY[0x277CBEB98];
  v3 = [v8[5] arrayByAddingObject:*MEMORY[0x277D621B8]];
  v4 = [v2 setWithArray:v3];
  v5 = _MergedGlobals_15;
  _MergedGlobals_15 = v4;

  _Block_object_dispose(&v7, 8);
}

void __44__HDSPWakeDetectionManager_eventIdentifiers__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)postWakeDetectionNotification:(unint64_t)a3
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v5 = [WeakRetained sleepModeManager];
  v6 = [v5 sleepMode];

  v7 = [(HDSPWakeDetectionManager *)self relevantOccurrence];
  v8 = [v7 alarmConfiguration];
  v9 = [v8 isEnabled];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v34 = objc_opt_class();
    v35 = 1024;
    v36 = ((v6 == 2) | v9 & 1) == 0;
    v37 = 1024;
    v38 = v6 == 2;
    v39 = 1024;
    v40 = v9 & 1;
    v11 = v34;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_INFO, "[%{public}@] canAutoConfirmAwake: %d (isSleepModeOn: %d, isAlarmEnabled: %d)", buf, 0x1Eu);
  }

  v12 = HKSPLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((v6 == 2) | v9 & 1)
  {
    if (v13)
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v34 = v14;
      v15 = v14;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting wake detection notification", buf, 0xCu);
    }

    v16 = v6 == 2;

    v17 = MEMORY[0x277D624D0];
    v18 = *MEMORY[0x277D621D8];
    v19 = [(HDSPWakeDetectionManager *)self currentDate];
    v31[0] = *MEMORY[0x277D62340];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v32[0] = v20;
    v31[1] = *MEMORY[0x277D62338];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:v9 & 1];
    v32[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v23 = [v17 sleepEventWithIdentifier:v18 dueDate:v19 context:v22];

    v24 = objc_loadWeakRetained(&self->_environment);
    v25 = [v24 sleepScheduler];
    v30 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v25 notifyForOverdueEvents:v26];
  }

  else
  {
    if (v13)
    {
      v27 = objc_opt_class();
      *buf = 138543362;
      v34 = v27;
      v28 = v27;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] auto-confirming awake since sleep focus and alarm are both off", buf, 0xCu);
    }

    v23 = objc_loadWeakRetained(&self->_environment);
    v24 = [v23 actionManager];
    [v24 confirmWakeUp:0];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)earlyWakeUpWasNotifiedRemotely
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection notification posted on other device", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HDSPWakeDetectionManager_earlyWakeUpWasNotifiedRemotely__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPWakeDetectionManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained currentDateProvider];
  v4 = v3[2]();

  return v4;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepScheduleModelManager];
  v4 = [v3 sleepScheduleModel];

  return v4;
}

- (BOOL)sleepFeaturesEnabled
{
  v2 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v3 = [v2 sleepSettings];
  v4 = [v3 watchSleepFeaturesEnabled];

  return v4;
}

- (unint64_t)sleepScheduleState
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepCoordinator];
  v4 = [v3 currentSleepScheduleState];

  return v4;
}

- (HKSPSleepScheduleOccurrence)relevantOccurrence
{
  v3 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v4 = [(HDSPWakeDetectionManager *)self currentDate];
  v5 = [v3 nextOccurrenceAfterDate:v4];

  return v5;
}

- (BOOL)sleepModeIsOff
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepModeManager];
  v4 = [v3 sleepMode] == 0;

  return v4;
}

- (BOOL)isWatch
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained behavior];
  v4 = [v3 isAppleWatch];

  return v4;
}

- (unint64_t)activeTypes
{
  v3 = [(HDSPWakeDetectionManager *)self currentDate];
  v4 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v5 = [v4 nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:v3];

  if (v5)
  {
    v6 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
    v7 = [v6 nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:v3];

    v8 = 2;
    v9 = [(HDSPWakeDetectionManager *)self _detectionWindowForType:2 wakeUpDate:v5 bedtimeDate:v7];
    v10 = [v9 startDate];

    if (![v3 hksp_isAfterOrSameAsDate:v10])
    {
      v8 = 0;
    }

    v11 = [(HDSPWakeDetectionManager *)self _detectionWindowForType:1 wakeUpDate:v5 bedtimeDate:v7];
    v12 = [v11 startDate];

    v13 = v8 | [v3 hksp_isAfterOrSameAsDate:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSDate)upcomingStartDetection
{
  v3 = [(HDSPWakeDetectionManager *)self currentDate];
  v4 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v5 = [v4 nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:v3];

  if (v5)
  {
    v6 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
    v7 = [v6 nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:v3];

    v8 = [(HDSPWakeDetectionManager *)self _detectionWindowForType:2 wakeUpDate:v5 bedtimeDate:v7];
    v9 = [v8 startDate];

    if ([v3 hksp_isBeforeDate:v9])
    {
      v10 = v9;
    }

    else
    {
      v11 = [(HDSPWakeDetectionManager *)self _detectionWindowForType:1 wakeUpDate:v5 bedtimeDate:v7];
      v12 = [v11 startDate];

      if ([v3 hksp_isBeforeDate:v12])
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)detectionWindowForType:(unint64_t)a3
{
  v5 = [(HDSPWakeDetectionManager *)self currentDate];
  v6 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v7 = [v6 nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:v5];

  if (v7)
  {
    v8 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
    v9 = [v8 nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:v5];

    v10 = [(HDSPWakeDetectionManager *)self _detectionWindowForType:a3 wakeUpDate:v7 bedtimeDate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_detectionWindowForType:(unint64_t)a3 wakeUpDate:(id)a4 bedtimeDate:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 hksp_isAfterDate:v7];
  v10 = -10800.0;
  if ((v6 & 2) == 0)
  {
    v10 = -0.0;
  }

  if (v6)
  {
    v10 = -1800.0;
  }

  v11 = [v7 dateByAddingTimeInterval:v10];
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    v13 = [v11 laterDate:v8];

    v12 = v13;
  }

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v7];

  return v14;
}

- (NSDate)nextWakeUp
{
  v3 = [(HDSPWakeDetectionManager *)self currentDate];
  v4 = [(HDSPWakeDetectionManager *)self sleepScheduleModel];
  v5 = [v4 nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:v3];

  return v5;
}

- (BOOL)isDetecting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HDSPWakeDetectionManager_isDetecting__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWakeDetectionManager *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__HDSPWakeDetectionManager_isDetecting__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [v3 currentState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isDetectingState];
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__HDSPWakeDetectionManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWakeDetectionManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__HDSPWakeDetectionManager__currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDSPWakeDetectionManager *)self _currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", v3];

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

- (void)_simulateActivityDetectionOnDate:(id)a3
{
  v8 = a3;
  v4 = [(HDSPWakeDetectionManager *)self wakeDetectors];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(HDSPWakeDetectionManager *)self wakeDetectors];
    v7 = [v6 firstObject];
    [(HDSPWakeDetectionManager *)self wakeDetector:v7 didDetectWakeUpEventOnDate:v8];
  }
}

@end