@interface HDSPWakeUpResultsNotificationManager
+ (id)retryActivity;
+ (id)retryCriteria;
- (BOOL)_isDelayingForTracking;
- (BOOL)isWakeUpResultsNotificationEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPWakeUpResultsNotificationManager)initWithEnvironment:(id)a3;
- (HDSPWakeUpResultsNotificationManager)initWithEnvironment:(id)a3 retryAttemptScheduler:(id)a4;
- (NSDate)currentDate;
- (NSString)providerIdentifier;
- (double)_trackingDelayDuration;
- (id)_currentState;
- (id)_fetchSleepDaySummariesForMorningIndexRange:(id)a3 healthStore:(id)a4;
- (id)_fetchUserFirstNameWithHealthStore:(id)a3;
- (id)_sleepDaySummariesFromResult:(id)a3 error:(id *)a4;
- (id)_sleepScheduleModel;
- (id)_userFirstNameFromResult:(id)a3;
- (id)diagnosticDescription;
- (id)eventIdentifiers;
- (id)notificationAttemptWindowForWakeUpBeforeDate:(id)a3;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (id)performImmediateQueryForNotification;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent;
- (void)_lock_startQuery;
- (void)_updateState;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)executeQuery;
- (void)postResultsNotification;
- (void)scheduleRetryAttempt;
- (void)scheduleStateExpiration;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)startObservingProtectedHealthDataAvailability;
- (void)stopObservingProtectedHealthDataAvailability;
- (void)unscheduleRetryAttempt;
- (void)unscheduleStateExpiration;
@end

@implementation HDSPWakeUpResultsNotificationManager

- (HDSPWakeUpResultsNotificationManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [HDSPXPCActivityScheduler alloc];
  v6 = [v4 defaultCallbackScheduler];
  v7 = [(HDSPXPCActivityScheduler *)v5 initWithCallbackScheduler:v6];
  v8 = [(HDSPWakeUpResultsNotificationManager *)self initWithEnvironment:v4 retryAttemptScheduler:v7];

  return v8;
}

- (HDSPWakeUpResultsNotificationManager)initWithEnvironment:(id)a3 retryAttemptScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = HDSPWakeUpResultsNotificationManager;
  v8 = [(HDSPWakeUpResultsNotificationManager *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    objc_storeStrong(&v9->_retryAttemptScheduler, a4);
    v10 = [v6 mutexGenerator];
    v11 = v10[2]();
    mutexProvider = v9->_mutexProvider;
    v9->_mutexProvider = v11;

    v13 = [HDSPWakeUpResultsNotificationStateMachine alloc];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_alloc(MEMORY[0x277D62558]);
    v17 = [v6 userDefaults];
    v18 = [v16 initWithUserDefaults:v17];
    v19 = [v6 currentDateProvider];
    v20 = [(HDSPWakeUpResultsNotificationStateMachine *)v13 initWithIdentifier:v15 persistence:v18 delegate:v9 infoProvider:v9 currentDateProvider:v19];
    stateMachine = v9->_stateMachine;
    v9->_stateMachine = v20;

    v22 = v9;
  }

  return v9;
}

- (id)performImmediateQueryForNotification
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HDSPWakeUpResultsNotificationManager_performImmediateQueryForNotification__block_invoke;
  v4[3] = &unk_279C7B130;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __76__HDSPWakeUpResultsNotificationManager_performImmediateQueryForNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) executeQuery];
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)_sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepScheduleModelManager];
  v4 = [v3 sleepScheduleModel];

  return v4;
}

- (void)_updateState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update state", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HDSPWakeUpResultsNotificationManager__updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)environmentWillBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v5 = [WeakRetained sleepScheduler];
  [v5 addEventHandler:self];

  v6 = objc_loadWeakRetained(&self->_environment);
  v7 = [v6 sleepScheduler];
  [v7 addEventProvider:self];

  v8 = objc_loadWeakRetained(&self->_environment);
  v9 = [v8 notificationListener];
  [v9 addObserver:self];

  v10 = objc_loadWeakRetained(&self->_environment);
  v11 = [v10 sleepCoordinator];
  [v11 addObserver:self];

  v12 = objc_loadWeakRetained(&self->_environment);
  v13 = [v12 sleepScheduleModelManager];
  [v13 addObserver:self];

  v14 = objc_loadWeakRetained(&self->_environment);
  v15 = [v14 timeChangeListener];
  [v15 addObserver:self];

  v17 = objc_loadWeakRetained(&self->_environment);
  v16 = [v17 diagnostics];
  [v16 addProvider:self];
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
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Environment did become ready.", &v7, 0xCu);
  }

  [(HDSPWakeUpResultsNotificationManager *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CCC8F0]];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__13;
    v19 = __Block_byref_object_dispose__13;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__HDSPWakeUpResultsNotificationManager_notificationListener_didReceiveNotificationWithName___block_invoke;
    v14[3] = &unk_279C7B130;
    v14[4] = self;
    v14[5] = &v15;
    [(HDSPWakeUpResultsNotificationManager *)self _withLock:v14];
    v10 = v16[5];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v12 = v11;
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v12;
}

void __92__HDSPWakeUpResultsNotificationManager_notificationListener_didReceiveNotificationWithName___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) protectedHealthDataDidBecomeAvailable];
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
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

  [(HDSPWakeUpResultsNotificationManager *)self _updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sleep model changed", &v8, 0xCu);
  }

  [(HDSPWakeUpResultsNotificationManager *)self _updateState];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepScheduleState();
    v11 = NSStringFromHKSPSleepScheduleState();
    v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138544130;
    v16 = v8;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateChanged from %{public}@ to %{public}@ for %{public}@", buf, 0x2Au);
  }

  if (a3 == 1 && HKSPSleepScheduleStateChangeReasonIsExpected())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__HDSPWakeUpResultsNotificationManager_sleepScheduleStateDidChange_previousState_reason___block_invoke;
    v14[3] = &unk_279C7B108;
    v14[4] = self;
    [(HDSPWakeUpResultsNotificationManager *)self _withLock:v14];
  }

  else
  {
    [(HDSPWakeUpResultsNotificationManager *)self _updateState];
  }

  v13 = *MEMORY[0x277D85DE8];
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
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = MEMORY[0x277CBEBF8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HDSPWakeUpResultsNotificationManager_upcomingEventsDueAfterDate___block_invoke;
  v13[3] = &unk_279C7B6C8;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v13];
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

void __67__HDSPWakeUpResultsNotificationManager_upcomingEventsDueAfterDate___block_invoke(uint64_t a1)
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
  v11[2] = __56__HDSPWakeUpResultsNotificationManager_sleepEventIsDue___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __56__HDSPWakeUpResultsNotificationManager_sleepEventIsDue___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) identifier];
  [v3 stateWithIdentifierDidExpire:v2];
}

- (id)eventIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDSPWakeUpResultsNotificationManager_eventIdentifiers__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E58 != -1)
  {
    dispatch_once(&qword_2814C0E58, block);
  }

  return _MergedGlobals_16;
}

void __56__HDSPWakeUpResultsNotificationManager_eventIdentifiers__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = MEMORY[0x277CBEBF8];
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HDSPWakeUpResultsNotificationManager_eventIdentifiers__block_invoke_2;
  v4[3] = &unk_279C7B678;
  v4[4] = v1;
  v4[5] = &v5;
  [v1 _withLock:v4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v6[5]];
  v3 = _MergedGlobals_16;
  _MergedGlobals_16 = v2;

  _Block_object_dispose(&v5, 8);
}

void __56__HDSPWakeUpResultsNotificationManager_eventIdentifiers__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) stateMachine];
  v2 = [v5 scheduledExpirationStateIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained currentDateProvider];
  v4 = v3[2]();

  return v4;
}

- (int64_t)lastWakeUpResultsIntroductionNotificationVersionSent
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepScheduleModelManager];
  v4 = [v3 sleepEventRecord];
  v5 = [v4 lastWakeUpResultsIntroductionNotificationVersionSent];

  return v5;
}

- (BOOL)isWakeUpResultsNotificationEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained sleepScheduleModelManager];
  v5 = [v4 sleepSettings];
  if ([v5 wakeUpResults])
  {
    v6 = objc_loadWeakRetained(&self->_environment);
    v7 = [v6 behavior];
    v8 = [v7 features];
    v9 = [v8 sleepResultsNotificationsOnWatch] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)notificationAttemptWindowForWakeUpBeforeDate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSPWakeUpResultsNotificationManager *)self currentDate];
  v6 = [v5 laterDate:v4];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v4;
    v8 = v16;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resolved attempt window beforeDate: %@ (passed: %@)", &v15, 0x20u);
  }

  v9 = [(HDSPWakeUpResultsNotificationManager *)self _sleepScheduleModel];
  v10 = [v9 previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:v6];

  if (v10)
  {
    [(HDSPWakeUpResultsNotificationManager *)self _trackingDelayDuration];
    v11 = [v10 dateByAddingTimeInterval:?];
    v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 duration:14400.0];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (double)_trackingDelayDuration
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"WakeUpResultsNotificationDelayOverride"];

  v4 = 900.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = HKSPLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543618;
        v12 = objc_opt_class();
        v13 = 2114;
        v14 = v5;
        v10 = v12;
        _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Overriding default notification delay to %{public}@s", &v11, 0x16u);
      }

      [v5 doubleValue];
      v4 = v7;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
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
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting to schedule tracking delay", &v7, 0xCu);
  }

  v5 = [(HDSPWakeUpResultsNotificationManager *)self sleepEventDelegate];
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
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting to cancel tracking delay", &v7, 0xCu);
  }

  v5 = [(HDSPWakeUpResultsNotificationManager *)self sleepEventDelegate];
  [v5 eventProviderCancelledEvents:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleRetryAttempt
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling retry attempt", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(HDSPWakeUpResultsNotificationManager *)self retryAttemptScheduler];
  v6 = [objc_opt_class() retryActivity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDSPWakeUpResultsNotificationManager_scheduleRetryAttempt__block_invoke;
  v8[3] = &unk_279C7B2F8;
  objc_copyWeak(&v9, buf);
  [v5 scheduleActivity:v6 activityHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__HDSPWakeUpResultsNotificationManager_scheduleRetryAttempt__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = objc_opt_class();
    v3 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting retry", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HDSPWakeUpResultsNotificationManager_scheduleRetryAttempt__block_invoke_309;
  v5[3] = &unk_279C7B108;
  v5[4] = WeakRetained;
  [WeakRetained _withLock:v5];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unscheduleRetryAttempt
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unscheduling retry attempt", &v7, 0xCu);
  }

  v5 = [(HDSPWakeUpResultsNotificationManager *)self retryAttemptScheduler];
  [v5 unscheduleActivities];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)retryCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86290]);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86378], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D863B0], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);

  return v2;
}

+ (id)retryActivity
{
  v3 = [HDSPXPCActivity alloc];
  v4 = [a1 retryCriteria];
  v5 = [(HDSPXPCActivity *)v3 initWithEventName:@"com.apple.sleep.WakeUpResultsNotificationRetry.activity" options:0 criteria:v4];

  return v5;
}

- (void)startObservingProtectedHealthDataAvailability
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Start observing protected data availability", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained notificationListener];
  v7 = *MEMORY[0x277CCC8F0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 registerForLaunchNotificationWithName:v7 key:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingProtectedHealthDataAvailability
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stop observing protected data availability", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained notificationListener];
  v7 = *MEMORY[0x277CCC8F0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 unregisterForLaunchNotificationWithName:v7 key:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)executeQuery
{
  v11 = *MEMORY[0x277D85DE8];
  queryResultFuture = self->_queryResultFuture;
  if (queryResultFuture && ![(NAFuture *)queryResultFuture isFinished])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected call to start query while already in progress", &v9, 0xCu);
    }
  }

  else
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v5 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting new query", &v9, 0xCu);
    }

    [(HDSPWakeUpResultsNotificationManager *)self _lock_startQuery];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postResultsNotification
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Preparing daily results notification", buf, 0xCu);
  }

  if (([(NAFuture *)self->_queryResultFuture isFinished]& 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDSPWakeUpResultsNotificationManager.m" lineNumber:371 description:@"_queryResultFuture must be finished before we can post notification"];
  }

  objc_initWeak(buf, self);
  queryResultFuture = self->_queryResultFuture;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HDSPWakeUpResultsNotificationManager_postResultsNotification__block_invoke;
  v10[3] = &unk_279C7C518;
  objc_copyWeak(&v11, buf);
  v7 = [(NAFuture *)queryResultFuture addSuccessBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__HDSPWakeUpResultsNotificationManager_postResultsNotification__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 buildNotification];

  if (v5)
  {
    v6 = MEMORY[0x277D624D0];
    v7 = [v5 identifier];
    v8 = [WeakRetained currentDate];
    v9 = [v5 userInfo];
    v10 = [v6 sleepEventWithIdentifier:v7 dueDate:v8 context:v9];

    v11 = objc_loadWeakRetained(WeakRetained + 1);
    v12 = [v11 sleepScheduler];
    v15[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v12 notifyForOverdueEvents:v13];
  }

  [WeakRetained[4] didPostResultsNotification];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_lock_startQuery
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = objc_opt_class();
    v4 = v44;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin _lock_startQuery...", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained healthStoreProvider];
  v7 = [v6 healthStore];

  v8 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [(HDSPWakeUpResultsNotificationManager *)self currentDate];
  v10 = [v9 hk_dayIndexWithCalendar:v8];

  v11 = HDSPWakeUpResultsNotificationDaySummaryCount;
  v12 = objc_loadWeakRetained(&self->_environment);
  v13 = [v12 defaultCallbackScheduler];

  v14 = HKSPLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    *buf = 138543362;
    v44 = v15;
    v16 = v15;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating future dependencies...", buf, 0xCu);
  }

  v17 = [(HDSPWakeUpResultsNotificationManager *)self _fetchUserFirstNameWithHealthStore:v7];
  v18 = (v10 - v11 + 1);
  v42[0] = v17;
  v19 = [(HDSPWakeUpResultsNotificationManager *)self _fetchSleepDaySummariesForMorningIndexRange:v18 healthStore:v11, v7];
  v42[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

  v21 = HKSPLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    *buf = 138543362;
    v44 = v22;
    v23 = v22;
    _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Combining dependency futures...", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v24 = [MEMORY[0x277D2C900] combineAllFutures:v20 ignoringErrors:1 scheduler:v13];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke;
  v39[3] = &unk_279C7C540;
  objc_copyWeak(v40, &location);
  v40[1] = v18;
  v40[2] = v11;
  v25 = [v24 flatMap:v39];
  queryResultFuture = self->_queryResultFuture;
  self->_queryResultFuture = v25;

  v27 = self->_queryResultFuture;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_326;
  v37[3] = &unk_279C7C568;
  objc_copyWeak(&v38, &location);
  v28 = [(NAFuture *)v27 addFailureBlock:v37];
  v29 = self->_queryResultFuture;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_2;
  v35[3] = &unk_279C7C518;
  objc_copyWeak(&v36, &location);
  v30 = [(NAFuture *)v29 addSuccessBlock:v35];
  v31 = HKSPLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138543362;
    v44 = v32;
    v33 = v32;
    _os_log_impl(&dword_269B11000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] End _lock_startQuery...", buf, 0xCu);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(v40);
  objc_destroyWeak(&location);

  v34 = *MEMORY[0x277D85DE8];
}

id __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = objc_opt_class();
    v27 = 2114;
    v28 = v3;
    v6 = v26;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Query dependencies completed with results: %{public}@", buf, 0x16u);
  }

  v7 = [v3 objectAtIndexedSubscript:0];
  v8 = [WeakRetained _userFirstNameFromResult:v7];

  v9 = [v3 objectAtIndexedSubscript:1];
  v24 = 0;
  v10 = [WeakRetained _sleepDaySummariesFromResult:v9 error:&v24];
  v11 = v24;

  if (v10)
  {
    v12 = [MEMORY[0x277CCDD30] sharedBehavior];
    v13 = [v12 features];
    v14 = [v13 sleepDetails];

    if (v14)
    {
      v15 = [v8 hk_stripLeadingTrailingWhitespace];
      v16 = [v15 hk_copyNonEmptyString];

      v17 = [objc_alloc(MEMORY[0x277D626A8]) initWithDaySummaries:v10 needsIntroduction:objc_msgSend(WeakRetained userFirstName:"needsSleepScoreIntroduction") algorithmVersion:{v16, 1}];
      v8 = v16;
    }

    else
    {
      v17 = [[HDSPWakeUpResultsNotificationBuilder alloc] initWithDaySummaries:v10 morningIndexRange:*(a1 + 40) userFirstName:*(a1 + 48), v8];
    }

    v19 = [(HDSPWakeUpResultsNotificationBuilder *)v17 hasSufficientSleepData];
    v20 = MEMORY[0x277D2C900];
    if (v19)
    {
      v18 = [MEMORY[0x277D2C900] futureWithResult:v17];
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hdsp_insufficientSleepDataError];
      v18 = [v20 futureWithError:v21];
    }
  }

  else
  {
    v18 = [MEMORY[0x277D2C900] futureWithError:v11];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

void __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_326(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v3;
    v8 = v12;
    _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Query failed with error: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_327;
  v9[3] = &unk_279C7B2D0;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = v3;
  [WeakRetained _withLock:v9];

  v7 = *MEMORY[0x277D85DE8];
}

void __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Query succeeded with result: %{public}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDSPWakeUpResultsNotificationManager__lock_startQuery__block_invoke_329;
  v8[3] = &unk_279C7B108;
  v8[4] = WeakRetained;
  [WeakRetained _withLock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_fetchUserFirstNameWithHealthStore:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke;
  v20[3] = &unk_279C7C568;
  objc_copyWeak(&v21, &location);
  v6 = [v5 addFailureBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke_330;
  v18[3] = &unk_279C7C590;
  objc_copyWeak(&v19, &location);
  v7 = [v5 addSuccessBlock:v18];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138543362;
    v24 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching user first name...", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CCD570] healthAppDefaultsDomainWithHealthStore:v4];
  v12 = *MEMORY[0x277CCE5A8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke_333;
  v16[3] = &unk_279C7C5B8;
  v13 = v5;
  v17 = v13;
  [v11 propertyListValueForKey:v12 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch user's first name with error: %{public}@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke_330(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543619;
    v9 = objc_opt_class();
    v10 = 2113;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully fetched user's first name with result: %{private}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __75__HDSPWakeUpResultsNotificationManager__fetchUserFirstNameWithHealthStore___block_invoke_333(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [a2 valueForKey:*MEMORY[0x277CCE598]];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_287A83178;
    }

    v15 = v7;

    v8 = [(__CFString *)v15 length];
    v9 = [MEMORY[0x277CCDD30] sharedBehavior];
    v10 = [v9 features];
    v11 = [v10 sleepDetails];

    if ((v11 & 1) != 0 || !v8)
    {
      v14 = v15;
    }

    else
    {
      if (arc4random_uniform(0x64u))
      {
        v12 = &stru_287A83178;
      }

      else
      {
        v12 = v15;
      }

      v13 = v12;

      v14 = v13;
    }

    v16 = v14;
    [*(a1 + 32) finishWithResult:v14];
  }
}

- (id)_fetchSleepDaySummariesForMorningIndexRange:(id)a3 healthStore:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v37 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(&location, self);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke;
  v32[3] = &unk_279C7C568;
  objc_copyWeak(&v33, &location);
  v9 = [v8 addFailureBlock:v32];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke_338;
  v30[3] = &unk_279C7C5E0;
  objc_copyWeak(&v31, &location);
  v10 = [v8 addSuccessBlock:v30];
  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 features];
  v13 = [v12 sleepDetails];

  v14 = objc_alloc(MEMORY[0x277CCD9C0]);
  if (v13)
  {
    v15 = 132;
  }

  else
  {
    v15 = 1;
  }

  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke_341;
  v28 = &unk_279C7C608;
  v16 = v8;
  v29 = v16;
  v17 = [v14 initWithMorningIndexRange:var0 ascending:var1 limit:1 options:0 resultsHandler:{v15, &v25}];
  [v17 setDebugIdentifier:{@"WakeUpResults", v25, v26, v27, v28}];
  v18 = [objc_alloc(MEMORY[0x277CCD9B8]) initWithIdentifier:@"WakeUpResults" mode:0];
  [v17 setCacheSettings:v18];

  v19 = HKSPLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *buf = 138543362;
    v36 = v20;
    v21 = v20;
    _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching sleep day summaries...", buf, 0xCu);
  }

  [v7 executeQuery:v17];
  v22 = v16;

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch sleep day summaries with error: %{public}@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke_338(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully fetched sleep day summaries with result: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __96__HDSPWakeUpResultsNotificationManager__fetchSleepDaySummariesForMorningIndexRange_healthStore___block_invoke_341(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:?];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

- (id)_userFirstNameFromResult:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sleepDaySummariesFromResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    if (v7)
    {
      if (a4)
      {
        v10 = v7;
        *a4 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)_currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDSPWakeUpResultsNotificationManager__currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __53__HDSPWakeUpResultsNotificationManager__currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isDelayingForTracking
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HDSPWakeUpResultsNotificationManager__isDelayingForTracking__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPWakeUpResultsNotificationManager *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __62__HDSPWakeUpResultsNotificationManager__isDelayingForTracking__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) isDelayingForTracking];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDSPWakeUpResultsNotificationManager *)self _currentState];
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