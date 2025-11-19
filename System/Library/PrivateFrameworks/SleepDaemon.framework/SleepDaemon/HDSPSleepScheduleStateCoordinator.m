@interface HDSPSleepScheduleStateCoordinator
- (BOOL)_updateEventRecordHelper:(id)a3 sleepScheduleState:(unint64_t)a4 context:(id)a5;
- (BOOL)isAppleWatch;
- (BOOL)sleepFeaturesEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleStateCoordinator)initWithEnvironment:(id)a3;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)previousOccurrence;
- (NSDate)currentDate;
- (NSString)sourceIdentifier;
- (id)currentState;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (unint64_t)currentSleepScheduleState;
- (void)_updateEventRecordForSleepScheduleState:(unint64_t)a3 context:(id)a4 notifyBlock:(id)a5;
- (void)_updateSleepScheduleState;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 context:(id)a5;
- (void)snoozeFireDateShouldBeReset;
- (void)timeZoneChangeDetected:(id)a3;
- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)a3;
- (void)wakeUpWasConfirmed:(BOOL)a3;
@end

@implementation HDSPSleepScheduleStateCoordinator

- (HDSPSleepScheduleStateCoordinator)initWithEnvironment:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HDSPSleepScheduleStateCoordinator;
  v5 = [(HDSPSleepScheduleStateCoordinator *)&v28 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v30 = v7;
      v31 = 2048;
      v32 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, v4);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    v10 = [v4 defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:v10];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = [v4 mutexGenerator];
    v14 = v13[2]();
    mutexProvider = v5->_mutexProvider;
    v5->_mutexProvider = v14;

    v16 = [HDSPSleepScheduleStateCoordinatorStateMachine alloc];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = objc_alloc(MEMORY[0x277D62558]);
    v20 = [v4 userDefaults];
    v21 = [v19 initWithUserDefaults:v20];
    v22 = [v4 currentDateProvider];
    v23 = [(HDSPSleepScheduleStateCoordinatorStateMachine *)v16 initWithIdentifier:v18 persistence:v21 delegate:v5 infoProvider:v5 currentDateProvider:v22];
    stateMachine = v5->_stateMachine;
    v5->_stateMachine = v23;

    v25 = v5;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_updateSleepScheduleState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _updateSleepScheduleState", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HDSPSleepScheduleStateCoordinator__updateSleepScheduleState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)environmentWillBecomeReady:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v13, 0xCu);
  }

  v7 = [v4 sleepScheduleModelManager];
  [v7 addObserver:self];

  v8 = [v4 sleepScheduler];
  [v8 addEventHandler:self];

  v9 = [v4 actionManager];
  [v9 addObserver:self];

  v10 = [v4 timeChangeListener];
  [v10 addObserver:self];

  v11 = [v4 diagnostics];

  [v11 addProvider:self];
  v12 = *MEMORY[0x277D85DE8];
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
  v7[2] = __63__HDSPSleepScheduleStateCoordinator_environmentDidBecomeReady___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v10 = [v9 currentContext];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v20 = v12;
    v13 = NSStringFromHKSPSleepScheduleState();
    v14 = NSStringFromHKSPSleepScheduleState();
    [v8 reason];
    v15 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138544130;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepScheduleStateDidChange from %{public}@ to %{public}@ with reason %{public}@", buf, 0x2Au);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke;
  v21[3] = &unk_279C7CA78;
  v24 = a3;
  v25 = a4;
  v21[4] = self;
  v22 = v8;
  v23 = v10;
  v16 = v10;
  v17 = v8;
  v18 = MEMORY[0x26D64B6C0](v21);
  [(HDSPSleepScheduleStateCoordinator *)self _updateEventRecordForSleepScheduleState:a3 context:v17 notifyBlock:v18];

  v19 = *MEMORY[0x277D85DE8];
}

id __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_2;
  v7[3] = &unk_279C7CA50;
  v7[4] = v3;
  v10 = *(a1 + 56);
  v8 = v2;
  v9 = *(a1 + 48);
  v5 = [v4 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_3;
  v12 = &unk_279C7CA28;
  v13 = v3;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  [v4 perform:&v9 withContext:v5];

  v7 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v7;
}

uint64_t __87__HDSPSleepScheduleStateCoordinator_sleepScheduleStateDidChange_previousState_context___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) reason];

  return [v3 sleepScheduleStateDidChange:v1 previousState:v2 reason:v4];
}

- (void)_updateEventRecordForSleepScheduleState:(unint64_t)a3 context:(id)a4 notifyBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  v11 = [v10 sleepEventRecord];
  v12 = [v11 mutableCopy];

  LODWORD(a3) = [(HDSPSleepScheduleStateCoordinator *)self _updateEventRecordHelper:v12 sleepScheduleState:a3 context:v9];
  if (a3)
  {
    v13 = [(HDSPSleepScheduleStateCoordinator *)self environment];
    v14 = [v13 sleepScheduleModelManager];

    v15 = [(HDSPSleepScheduleStateCoordinator *)self environment];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__HDSPSleepScheduleStateCoordinator__updateEventRecordForSleepScheduleState_context_notifyBlock___block_invoke;
    v18[3] = &unk_279C7CAA0;
    v19 = v14;
    v20 = v12;
    v21 = self;
    v22 = v8;
    v16 = v14;
    [v15 perform:v18 withSource:self];
  }

  else
  {
    v17 = v8[2](v8);
  }
}

void __97__HDSPSleepScheduleStateCoordinator__updateEventRecordForSleepScheduleState_context_notifyBlock___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 saveSleepEventRecord:v3 error:&v11 preNotifyBlock:a1[7]];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      v9 = objc_opt_class();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateEventRecordHelper:(id)a3 sleepScheduleState:(unint64_t)a4 context:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4 == 1 && [a5 isForAlarmTurnedOffWhileFiring])
  {
    v9 = [(HDSPSleepScheduleStateCoordinator *)self currentDate];
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v9;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting wakeUpAlarmDismissedDate to %{public}@", &v15, 0x16u);
    }

    [v8 setWakeUpAlarmDismissedDate:v9];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)snoozeFireDateShouldBeReset
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v4 = v20;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] snoozeFireDateShouldBeReset", buf, 0xCu);
  }

  v5 = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  v6 = [v5 sleepEventRecord];
  v7 = [v6 mutableCopy];

  [v7 setWakeUpAlarmSnoozedUntilDate:0];
  v8 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__HDSPSleepScheduleStateCoordinator_snoozeFireDateShouldBeReset__block_invoke;
  v16 = &unk_279C7B2D0;
  v17 = self;
  v18 = v7;
  v9 = v7;
  [v8 perform:&v13 withSource:self];

  v10 = [(HDSPSleepScheduleStateCoordinator *)self environment:v13];
  v11 = [v10 sleepAlarmManager];
  [v11 resetSleepAlarmSnoozeState];

  v12 = *MEMORY[0x277D85DE8];
}

void __64__HDSPSleepScheduleStateCoordinator_snoozeFireDateShouldBeReset__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) environment];
  v3 = [v2 sleepScheduleModelManager];
  v4 = *(a1 + 40);
  v12 = 0;
  v5 = [v3 saveSleepEventRecord:v4 error:&v12];
  v6 = v12;

  if ((v5 & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)currentSleepScheduleState
{
  v2 = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  v3 = [v2 scheduleState];

  return v3;
}

- (BOOL)isAppleWatch
{
  v2 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v3 = [v2 behavior];
  v4 = [v3 isAppleWatch];

  return v4;
}

- (BOOL)sleepFeaturesEnabled
{
  v2 = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  v3 = [v2 sleepSettings];
  v4 = [v3 watchSleepFeaturesEnabled];

  return v4;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  v2 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v3 = [v2 sleepScheduleModelManager];
  v4 = [v3 sleepScheduleModel];

  return v4;
}

- (NSDate)currentDate
{
  v2 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v3 = [v2 currentDateProvider];
  v4 = v3[2]();

  return v4;
}

- (HKSPSleepScheduleOccurrence)previousOccurrence
{
  v3 = [(HDSPSleepScheduleStateCoordinator *)self sleepScheduleModel];
  v4 = [(HDSPSleepScheduleStateCoordinator *)self currentDate];
  v5 = [v3 previousOccurrenceBeforeDate:v4];

  return v5;
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v5;
    v7 = v15;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", buf, 0x16u);
  }

  v8 = [(HDSPSleepScheduleStateCoordinator *)self environment];
  v9 = [v8 currentContext];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HDSPSleepScheduleStateCoordinator_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke;
  v12[3] = &unk_279C7B2D0;
  v12[4] = self;
  v13 = v9;
  v10 = v9;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __91__HDSPSleepScheduleStateCoordinator_sleepScheduleModelManager_didUpdateSleepScheduleModel___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) changeEvaluation];
  [v1 scheduleModelChanged:v2];
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
  v7[2] = __67__HDSPSleepScheduleStateCoordinator_significantTimeChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v7];
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
  v7[2] = __60__HDSPSleepScheduleStateCoordinator_timeZoneChangeDetected___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepEventIsDue:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v4;
    v6 = v29;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", buf, 0x16u);
  }

  v7 = [v4 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277D621E0]];

  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543362;
      v29 = v10;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeTimeReached", buf, 0xCu);
    }

    v12 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke;
LABEL_15:
    v12[2] = v13;
    v12[3] = &unk_279C7B108;
    v12[4] = self;
    [(HDSPSleepScheduleStateCoordinator *)self _withLock:?];
    goto LABEL_16;
  }

  v14 = [v4 identifier];
  v15 = [v14 isEqualToString:*MEMORY[0x277D621B8]];

  if (v15)
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543362;
      v29 = v17;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] bedtimeReached", buf, 0xCu);
    }

    v12 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke_298;
    goto LABEL_15;
  }

  v19 = [v4 identifier];
  v20 = [v19 isEqualToString:*MEMORY[0x277D621F0]];

  if (v20)
  {
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543362;
      v29 = v22;
      v23 = v22;
      _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] windDownReached", buf, 0xCu);
    }

    v12 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v13 = __53__HDSPSleepScheduleStateCoordinator_sleepEventIsDue___block_invoke_299;
    goto LABEL_15;
  }

LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)wakeUpWasConfirmed:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v3;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeUpWasConfirmed (wasExplicitConfirmation: %d)", buf, 0x12u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDSPSleepScheduleStateCoordinator_wakeUpWasConfirmed___block_invoke;
  v8[3] = &unk_279C7CAC8;
  v8[4] = self;
  v9 = v3;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)wakeUpAlarmWasDismissedFromSource:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeUpAlarmWasDismissed", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HDSPSleepScheduleStateCoordinator_wakeUpAlarmWasDismissedFromSource___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepScheduleStateCoordinator_currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleStateCoordinator *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __49__HDSPSleepScheduleStateCoordinator_currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", v3];

  return v4;
}

- (id)diagnosticInfo
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"Current State";
  v2 = [(HDSPSleepScheduleStateCoordinator *)self currentState];
  v3 = [v2 stateName];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end