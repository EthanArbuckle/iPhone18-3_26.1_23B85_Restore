@interface HDSPSleepLockScreenManager
- (BOOL)inUnscheduledSleepMode;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepLockScreenManager)initWithEnvironment:(id)a3;
- (HDSPSleepLockScreenManager)initWithEnvironment:(id)a3 assertionManager:(id)a4;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (id)_currentState;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (int64_t)_lock_resolvedLockScreenState;
- (int64_t)currentLockScreenState;
- (int64_t)sleepMode;
- (void)_lock_updateLockScreenAssertion;
- (void)dismissAlertForGoodMorning;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)lockScreenDidConnect;
- (void)overrideLockScreenState:(int64_t)a3 userInfo:(id)a4;
- (void)presentAlertForGoodMorning;
- (void)scheduleStateExpiration;
- (void)sensitiveUIStateChanged;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepLockScreenStateDidChange:(int64_t)a3 previousState:(int64_t)a4;
- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepSettings:(id)a4;
- (void)timeZoneChangeDetected:(id)a3;
- (void)unscheduleStateExpiration;
@end

@implementation HDSPSleepLockScreenManager

- (HDSPSleepLockScreenManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [[HDSPSleepLockScreenAssertionManager alloc] initWithEnvironment:v4];
  v6 = [(HDSPSleepLockScreenManager *)self initWithEnvironment:v4 assertionManager:v5];

  return v6;
}

- (HDSPSleepLockScreenManager)initWithEnvironment:(id)a3 assertionManager:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HDSPSleepLockScreenManager;
  v8 = [(HDSPSleepLockScreenManager *)&v27 init];
  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v29 = v10;
      v30 = 2048;
      v31 = v8;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v8->_environment, v6);
    objc_storeStrong(&v8->_assertionManager, a4);
    [(HDSPSleepLockScreenAssertionManager *)v8->_assertionManager setDelegate:v8];
    v12 = [v6 mutexGenerator];
    v13 = v12[2]();
    mutexProvider = v8->_mutexProvider;
    v8->_mutexProvider = v13;

    v15 = [HDSPSleepLockScreenStateMachine alloc];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_alloc(MEMORY[0x277D62558]);
    v19 = [v6 userDefaults];
    v20 = [v18 initWithUserDefaults:v19];
    v21 = [v6 currentDateProvider];
    v22 = [(HDSPSleepLockScreenStateMachine *)v15 initWithIdentifier:v17 persistence:v20 delegate:v8 infoProvider:v8 currentDateProvider:v21];
    stateMachine = v8->_stateMachine;
    v8->_stateMachine = v22;

    v24 = v8;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v6 = v17;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v16, 0xCu);
  }

  v7 = [v4 sleepModeManager];
  [v7 addObserver:self];

  v8 = [v4 sleepScheduleModelManager];
  [v8 addObserver:self];

  v9 = [v4 goodMorningAlertManager];
  [v9 addObserver:self];

  v10 = [v4 diagnostics];
  [v10 addProvider:self];

  v11 = [v4 timeChangeListener];
  [v11 addObserver:self];

  v12 = [v4 sleepScheduler];
  [v12 addEventHandler:self];

  v13 = [v4 sleepScheduler];
  [v13 addEventProvider:self];

  v14 = [v4 sensitiveUIMonitor];

  [v14 addObserver:self];
  v15 = *MEMORY[0x277D85DE8];
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
  v7[2] = __56__HDSPSleepLockScreenManager_environmentDidBecomeReady___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepMode();
    v12 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode did change: %{public}@ (%{public}@)", buf, 0x20u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HDSPSleepLockScreenManager_sleepModeDidChange_previousMode_reason___block_invoke;
  v14[3] = &unk_279C7B650;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = a5;
  [(HDSPSleepLockScreenManager *)self _withLock:v14];
  v13 = *MEMORY[0x277D85DE8];
}

void __69__HDSPSleepLockScreenManager_sleepModeDidChange_previousMode_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 sleepModeDidChange:*(a1 + 40) reason:*(a1 + 48)];
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepSettings:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings did change", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepLockScreenManager_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke;
  v8[3] = &unk_279C7B108;
  v8[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __79__HDSPSleepLockScreenManager_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
}

- (void)presentAlertForGoodMorning
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] present the good morning alert", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPSleepLockScreenManager_presentAlertForGoodMorning__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

void __56__HDSPSleepLockScreenManager_presentAlertForGoodMorning__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 presentAlertForGoodMorning];
}

- (void)dismissAlertForGoodMorning
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] dismiss the good morning alert", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPSleepLockScreenManager_dismissAlertForGoodMorning__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

void __56__HDSPSleepLockScreenManager_dismissAlertForGoodMorning__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 dismissAlertForGoodMorning];
}

- (void)sleepLockScreenStateDidChange:(int64_t)a3 previousState:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v8 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepLockScreenStateDidChange: %ld previousState: %ld", &v10, 0x20u);
  }

  self->_state = a3;
  [(HDSPSleepLockScreenManager *)self _lock_updateLockScreenAssertion];
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

  v5 = [(HDSPSleepLockScreenManager *)self sleepEventDelegate];
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

  v5 = [(HDSPSleepLockScreenManager *)self sleepEventDelegate];
  [v5 eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateLockScreenAssertion
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained sleepScheduleModelManager];
  v5 = [v4 sleepSettings];
  v6 = [v5 sleepModeOptions];

  v7 = objc_loadWeakRetained(&self->_environment);
  v8 = [v7 sleepModeManager];
  v9 = [v8 sleepMode];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithBool:(v6 >> 14) & 1];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v9 != 0];
    v23 = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating assertion, sleep screen enabled: %@, sleep mode on: %@", &v23, 0x20u);
  }

  v16 = [(HDSPSleepLockScreenManager *)self _lock_resolvedLockScreenState];
  if ([(HDSPSleepLockScreenManager *)self _lock_overridingLockScreenState])
  {
    overrideUserInfo = self->_overrideUserInfo;
  }

  else
  {
    overrideUserInfo = 0;
  }

  v18 = overrideUserInfo;
  v19 = [(HDSPSleepLockScreenManager *)self _lock_shouldShowLockScreenForState:v16];
  assertionManager = self->_assertionManager;
  if (v19)
  {
    [(HDSPSleepLockScreenAssertionManager *)assertionManager takeAssertionIfNeeded];
    [(HDSPSleepLockScreenAssertionManager *)self->_assertionManager sendLockScreenState:v16 userInfo:v18];
  }

  else
  {
    [(HDSPSleepLockScreenAssertionManager *)assertionManager invalidateAssertion];
  }

  didUpdateAlertAssertion = self->_didUpdateAlertAssertion;
  if (didUpdateAlertAssertion)
  {
    didUpdateAlertAssertion[2](didUpdateAlertAssertion, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)_lock_resolvedLockScreenState
{
  v3 = [(HDSPSleepLockScreenManager *)self _lock_overridingLockScreenState];
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  return *(&self->super.isa + v4);
}

- (void)sensitiveUIStateChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__HDSPSleepLockScreenManager_sensitiveUIStateChanged__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v2];
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
  v7[2] = __60__HDSPSleepLockScreenManager_significantTimeChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepLockScreenManager_significantTimeChangeDetected___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
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
  v7[2] = __53__HDSPSleepLockScreenManager_timeZoneChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

void __53__HDSPSleepLockScreenManager_timeZoneChangeDetected___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 updateState];
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

- (int64_t)sleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepModeManager];
  v4 = [v3 sleepMode];

  return v4;
}

- (BOOL)inUnscheduledSleepMode
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepModeManager];
  v4 = [v3 inUnscheduledSleepMode];

  return v4;
}

- (int64_t)currentLockScreenState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HDSPSleepLockScreenManager_currentLockScreenState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepLockScreenManager *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __52__HDSPSleepLockScreenManager_currentLockScreenState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_resolvedLockScreenState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)overrideLockScreenState:(int64_t)a3 userInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepLockScreenState();
    *buf = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] overriding lock screen state: %@ (userInfo: %@)", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDSPSleepLockScreenManager_overrideLockScreenState_userInfo___block_invoke;
  v13[3] = &unk_279C7B6A0;
  v14 = v6;
  v15 = a3;
  v13[4] = self;
  v11 = v6;
  [(HDSPSleepLockScreenManager *)self _withLock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HDSPSleepLockScreenManager_overrideLockScreenState_userInfo___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);

  return [v5 _lock_updateLockScreenAssertion];
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
  v11[2] = __46__HDSPSleepLockScreenManager_sleepEventIsDue___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(HDSPSleepLockScreenManager *)self _withLock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __46__HDSPSleepLockScreenManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0DF8 != -1)
  {
    dispatch_once(&qword_2814C0DF8, block);
  }

  return _MergedGlobals_10;
}

void __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke_296;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_10;
  _MergedGlobals_10 = v2;

  _Block_object_dispose(&v5, 8);
}

void __46__HDSPSleepLockScreenManager_eventIdentifiers__block_invoke_296(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
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
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDSPSleepLockScreenManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(HDSPSleepLockScreenManager *)self _withLock:v13];
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

void __57__HDSPSleepLockScreenManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
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

- (void)lockScreenDidConnect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__HDSPSleepLockScreenManager_lockScreenDidConnect__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepLockScreenManager *)self _withLock:v2];
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSPSleepLockScreenManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepLockScreenManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __43__HDSPSleepLockScreenManager__currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDSPSleepLockScreenManager *)self _currentState];
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