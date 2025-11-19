@interface HDSPGoodMorningAlertManager
- (BOOL)goodMorningAlertEnabled;
- (BOOL)isAppleWatch;
- (BOOL)isOnCharger;
- (HDSPEnvironment)environment;
- (HDSPGoodMorningAlertManager)initWithEnvironment:(id)a3;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)_currentState;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (unint64_t)sleepScheduleState;
- (void)dismissAlertForGoodMorning;
- (void)environmentWillBecomeReady:(id)a3;
- (void)goodMorningWasDismissed;
- (void)presentAlertForGoodMorning;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)unscheduleStateExpiration;
- (void)updateState;
@end

@implementation HDSPGoodMorningAlertManager

- (HDSPGoodMorningAlertManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HDSPGoodMorningAlertManager;
  v5 = [(HDSPGoodMorningAlertManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = objc_alloc(MEMORY[0x277D624A0]);
    v8 = [v4 defaultCallbackScheduler];
    v9 = [v7 initWithCallbackScheduler:v8];
    goodMorningAlertObservers = v6->_goodMorningAlertObservers;
    v6->_goodMorningAlertObservers = v9;

    v11 = [v4 mutexGenerator];
    v12 = v11[2]();
    mutexProvider = v6->_mutexProvider;
    v6->_mutexProvider = v12;

    v14 = [HDSPGoodMorningAlertStateMachine alloc];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_alloc(MEMORY[0x277D62558]);
    v18 = [v4 userDefaults];
    v19 = [v17 initWithUserDefaults:v18];
    v20 = [v4 currentDateProvider];
    v21 = [(HDSPGoodMorningAlertStateMachine *)v14 initWithIdentifier:v16 persistence:v19 delegate:v6 infoProvider:v6 currentDateProvider:v20];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v21;

    v23 = v6;
  }

  return v6;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v4 = a3;
  v5 = [v4 sleepScheduleModelManager];
  [v5 addObserver:self];

  v6 = [v4 sleepCoordinator];
  [v6 addObserver:self];

  v7 = [v4 sleepScheduler];
  [v7 addEventHandler:self];

  v8 = [v4 sleepScheduler];
  [v8 addEventProvider:self];

  v9 = [v4 actionManager];
  [v9 addObserver:self];

  v10 = [v4 timeChangeListener];
  [v10 addObserver:self];

  v11 = [v4 diagnostics];

  [v11 addProvider:self];
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
  v6[2] = __42__HDSPGoodMorningAlertManager_updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPGoodMorningAlertManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
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

  [(HDSPGoodMorningAlertManager *)self updateState];
  v6 = *MEMORY[0x277D85DE8];
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

  [(HDSPGoodMorningAlertManager *)self updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepScheduleState();
    v11 = NSStringFromHKSPSleepScheduleState();
    v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateChanged from %{public}@ to %{public}@ for %{public}@", buf, 0x2Au);
  }

  if (a3 == 2)
  {
    v13 = &v16;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v14 = __80__HDSPGoodMorningAlertManager_sleepScheduleStateDidChange_previousState_reason___block_invoke_2;
    goto LABEL_8;
  }

  if (a3 == 1 && HKSPSleepScheduleStateChangeReasonIsExpected())
  {
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = __80__HDSPGoodMorningAlertManager_sleepScheduleStateDidChange_previousState_reason___block_invoke;
LABEL_8:
    v13[2] = v14;
    v13[3] = &unk_279C7B108;
    v13[4] = self;
    [(HDSPGoodMorningAlertManager *)self _withLock:v16, v17];
  }

  v15 = *MEMORY[0x277D85DE8];
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
  v19 = __Block_byref_object_copy__18;
  v20 = __Block_byref_object_dispose__18;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HDSPGoodMorningAlertManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(HDSPGoodMorningAlertManager *)self _withLock:v13];
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

void __58__HDSPGoodMorningAlertManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
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
  v11[2] = __47__HDSPGoodMorningAlertManager_sleepEventIsDue___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(HDSPGoodMorningAlertManager *)self _withLock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __47__HDSPGoodMorningAlertManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSPGoodMorningAlertManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E88 != -1)
  {
    dispatch_once(&qword_2814C0E88, block);
  }

  return _MergedGlobals_19;
}

void __47__HDSPGoodMorningAlertManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HDSPGoodMorningAlertManager_eventIdentifiers__block_invoke_2;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_19;
  _MergedGlobals_19 = v2;

  _Block_object_dispose(&v5, 8);
}

void __47__HDSPGoodMorningAlertManager_eventIdentifiers__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)goodMorningWasDismissed
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] goodMorningWasDismissed", &v6, 0xCu);
  }

  [(HDSPGoodMorningAlertManager *)self updateState];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained currentDateProvider];
  v4 = v3[2]();

  return v4;
}

- (BOOL)goodMorningAlertEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained behavior];
  v5 = [v4 hksp_supportsGoodMorningAlerts];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_environment);
  v7 = [v6 behavior];
  v8 = [v7 isAppleWatch];

  if (!v8)
  {
    v11 = objc_loadWeakRetained(&self->_environment);
    v12 = [v11 behavior];
    v13 = [v12 hksp_supportsSleepLockScreen];

    if (v13)
    {
      v9 = [(HDSPGoodMorningAlertManager *)self sleepScheduleModel];
      v10 = [v9 goodMorningScreenEnabledWithLogObject:self];
      goto LABEL_6;
    }

    return 0;
  }

  v9 = [(HDSPGoodMorningAlertManager *)self sleepScheduleModel];
  v10 = [v9 goodMorningAlertNotificationsEnabledWithLogObject:self];
LABEL_6:
  v14 = v10;

  return v14;
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

- (BOOL)isAppleWatch
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained behavior];
  v4 = [v3 isAppleWatch];

  return v4;
}

- (BOOL)isOnCharger
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained systemMonitor];
  v4 = [v3 devicePowerMonitor];
  v5 = [v4 isCharging];

  return v5;
}

- (void)presentAlertForGoodMorning
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling observers to present good morning alert", &v6, 0xCu);
  }

  [(HKSPObserverSet *)self->_goodMorningAlertObservers enumerateObserversWithBlock:&__block_literal_global_22];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dismissAlertForGoodMorning
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] telling observers to dismiss good morning alert", &v6, 0xCu);
  }

  [(HKSPObserverSet *)self->_goodMorningAlertObservers enumerateObserversWithBlock:&__block_literal_global_300];
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

  v5 = [(HDSPGoodMorningAlertManager *)self sleepEventDelegate];
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

  v5 = [(HDSPGoodMorningAlertManager *)self sleepEventDelegate];
  [v5 eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDSPGoodMorningAlertManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPGoodMorningAlertManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__HDSPGoodMorningAlertManager__currentState__block_invoke(uint64_t a1)
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
  v3 = [(HDSPGoodMorningAlertManager *)self _currentState];
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