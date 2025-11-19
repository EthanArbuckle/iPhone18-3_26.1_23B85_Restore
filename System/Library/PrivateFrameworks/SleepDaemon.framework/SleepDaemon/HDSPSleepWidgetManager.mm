@interface HDSPSleepWidgetManager
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isOnboarded;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepWidgetManager)initWithEnvironment:(id)a3;
- (HDSPSleepWidgetManager)initWithEnvironment:(id)a3 widgetManager:(id)a4 reloadThrottler:(id)a5;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NAScheduler)callbackScheduler;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (int64_t)_lock_currentSleepWidgetState;
- (int64_t)currentSleepWidgetState;
- (unint64_t)sleepScheduleState;
- (void)clearWidgetOverrideState;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)overrideWidgetState:(int64_t)a3;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)sleepWidgetShouldReload;
- (void)sleepWidgetStateDidChange:(int64_t)a3 previousState:(int64_t)a4;
- (void)timeZoneChangeDetected:(id)a3;
- (void)unscheduleStateExpiration;
- (void)updateState;
@end

@implementation HDSPSleepWidgetManager

- (HDSPSleepWidgetManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  if ([v4 isUnitTestEnvironment])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D62530]);
    v8 = objc_alloc(MEMORY[0x277D62540]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__HDSPSleepWidgetManager_initWithEnvironment___block_invoke;
    v11[3] = &unk_279C7B108;
    v5 = v7;
    v12 = v5;
    v6 = [v8 initWithInterval:v11 executeBlock:1.0];
  }

  v9 = [(HDSPSleepWidgetManager *)self initWithEnvironment:v4 widgetManager:v5 reloadThrottler:v6];

  return v9;
}

- (HDSPSleepWidgetManager)initWithEnvironment:(id)a3 widgetManager:(id)a4 reloadThrottler:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = HDSPSleepWidgetManager;
  v11 = [(HDSPSleepWidgetManager *)&v30 init];
  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v32 = v13;
      v33 = 2048;
      v34 = v11;
      v14 = v13;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v11->_widgetManager, a4);
    [(HKSPSleepWidgetManager *)v11->_widgetManager setDelegate:v11];
    objc_storeStrong(&v11->_reloadThrottler, a5);
    v15 = [v8 mutexGenerator];
    v16 = v15[2]();
    mutexProvider = v11->_mutexProvider;
    v11->_mutexProvider = v16;

    v18 = [HDSPSleepWidgetStateMachine alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = objc_alloc(MEMORY[0x277D62558]);
    v22 = [v8 userDefaults];
    v23 = [v21 initWithUserDefaults:v22];
    v24 = [v8 currentDateProvider];
    v25 = [(HDSPSleepWidgetStateMachine *)v18 initWithIdentifier:v20 persistence:v23 delegate:v11 infoProvider:v11 currentDateProvider:v24];
    stateMachine = v11->_stateMachine;
    v11->_stateMachine = v25;

    v27 = v11;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v15, 0xCu);
  }

  v7 = [v4 sleepModeManager];
  [v7 addObserver:self];

  v8 = [v4 sleepScheduleModelManager];
  [v8 addObserver:self];

  v9 = [v4 sleepCoordinator];
  [v9 addObserver:self];

  v10 = [v4 sleepScheduler];
  [v10 addEventHandler:self];

  v11 = [v4 sleepScheduler];
  [v11 addEventProvider:self];

  v12 = [v4 timeChangeListener];
  [v12 addObserver:self];

  v13 = [v4 diagnostics];

  [v13 addProvider:self];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)environmentDidBecomeReady:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", &v7, 0xCu);
  }

  [(HDSPSleepWidgetManager *)self updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__HDSPSleepWidgetManager_updateState__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v2];
}

- (int64_t)currentSleepWidgetState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepWidgetManager_currentSleepWidgetState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepWidgetManager *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __49__HDSPSleepWidgetManager_currentSleepWidgetState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_currentSleepWidgetState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_lock_currentSleepWidgetState
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isOverridingWidgetState)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v4 = v11;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] overriding widget state", &v10, 0xCu);
    }

    result = self->_overrideState;
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [(HKSPStateMachine *)self->_stateMachine currentState];
    v8 = [v7 widgetState];

    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }

  return result;
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule model did change", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDSPSleepWidgetManager_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke;
  v10[3] = &unk_279C7B2D0;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  [(HDSPSleepWidgetManager *)self _withLock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v8 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule state did change", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HDSPSleepWidgetManager_sleepScheduleStateDidChange_previousState_reason___block_invoke;
  v10[3] = &unk_279C7B740;
  v10[4] = self;
  v10[5] = a3;
  [(HDSPSleepWidgetManager *)self _withLock:v10];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v9 = v13;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode did change", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDSPSleepWidgetManager_sleepModeDidChange_previousMode_reason___block_invoke;
  v11[3] = &unk_279C7B650;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = a5;
  [(HDSPSleepWidgetManager *)self _withLock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HDSPSleepWidgetManager_sleepModeDidChange_previousMode_reason___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 16);
  v3 = a1[6];
  v4 = HKSPSleepModeChangeReasonTreatedAsUserRequested();

  return [v2 sleepModeDidChange:v1 isUserRequested:v4];
}

- (void)significantTimeChangeDetected:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] significantTimeChangeDetected", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDSPSleepWidgetManager_significantTimeChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)timeZoneChangeDetected:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZoneChangeDetected", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HDSPSleepWidgetManager_timeZoneChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepWidgetStateDidChange:(int64_t)a3 previousState:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 != a4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = NSStringFromHKSPSleepWidgetState();
      v9 = [(HDSPSleepWidgetManager *)self environment];
      v10 = [v9 currentContext];
      v11 = [v10 source];
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepWidgetStateDidChange: %{public}@ (%{public}@)", &v13, 0x20u);
    }

    [(HKSPThrottler *)self->_reloadThrottler execute];
    [(HKSPSleepWidgetManager *)self->_widgetManager invalidateRelevances];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepWidgetShouldReload
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = [(HDSPSleepWidgetManager *)self environment];
    v7 = [v6 currentContext];
    v8 = [v7 source];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepWidgetShouldReload (%{public}@)", &v10, 0x16u);
  }

  [(HKSPThrottler *)self->_reloadThrottler execute];
  v9 = *MEMORY[0x277D85DE8];
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

  v5 = [(HDSPSleepWidgetManager *)self sleepEventDelegate];
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

  v5 = [(HDSPSleepWidgetManager *)self sleepEventDelegate];
  [v5 eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (NAScheduler)callbackScheduler
{
  v2 = [(HDSPSleepWidgetManager *)self environment];
  v3 = [v2 defaultCallbackScheduler];

  return v3;
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

- (unint64_t)sleepScheduleState
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepCoordinator];
  v4 = [v3 currentSleepScheduleState];

  return v4;
}

- (BOOL)inUnscheduledSleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepModeManager];
  v4 = [v3 inUnscheduledSleepMode];

  return v4;
}

- (BOOL)isOnboarded
{
  v2 = [(HDSPSleepWidgetManager *)self sleepScheduleModel];
  v3 = [v2 sleepEventRecord];
  v4 = [v3 isAnySleepCoachingOnboardingCompleted];

  return v4;
}

- (void)sleepEventIsDue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 identifier];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ expired", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HDSPSleepWidgetManager_sleepEventIsDue___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(HDSPSleepWidgetManager *)self _withLock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __42__HDSPSleepWidgetManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) identifier];
  [v1 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E08 != -1)
  {
    dispatch_once(&qword_2814C0E08, block);
  }

  return _MergedGlobals_11;
}

void __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke_296;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_11;
  _MergedGlobals_11 = v2;

  _Block_object_dispose(&v5, 8);
}

uint64_t __42__HDSPSleepWidgetManager_eventIdentifiers__block_invoke_296(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
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
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HDSPSleepWidgetManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(HDSPSleepWidgetManager *)self _withLock:v13];
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

void __53__HDSPSleepWidgetManager_upcomingEventsDueAfterDate___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 16) currentStateExpirationDate];
  if ([v2 hksp_isAfterDate:a1[5]])
  {
    v3 = MEMORY[0x277D624D0];
    v4 = [*(a1[4] + 16) currentStateIdentifier];
    v5 = [v3 sleepEventWithIdentifier:v4 dueDate:v2];

    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)overrideWidgetState:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepWidgetManager_overrideWidgetState___block_invoke;
  v4[3] = &unk_279C7B740;
  v4[4] = self;
  v4[5] = a3;
  [(HDSPSleepWidgetManager *)self _withLock:v4];
  [(HKSPThrottler *)self->_reloadThrottler execute];
}

uint64_t __46__HDSPSleepWidgetManager_overrideWidgetState___block_invoke(uint64_t result)
{
  *(*(result + 32) + 48) = *(result + 40);
  *(*(result + 32) + 40) = 1;
  return result;
}

- (void)clearWidgetOverrideState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HDSPSleepWidgetManager_clearWidgetOverrideState__block_invoke;
  v3[3] = &unk_279C7B108;
  v3[4] = self;
  [(HDSPSleepWidgetManager *)self _withLock:v3];
  [(HKSPThrottler *)self->_reloadThrottler execute];
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  [(HDSPSleepWidgetManager *)self currentSleepWidgetState];
  v3 = NSStringFromHKSPSleepWidgetState();
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

@end