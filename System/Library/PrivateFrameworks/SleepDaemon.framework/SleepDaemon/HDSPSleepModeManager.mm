@interface HDSPSleepModeManager
+ (unint64_t)_sleepModeChangeReasonForBiomeReason:(int)reason source:(int)source;
- (BOOL)_isScheduledSleepModeEnabled;
- (BOOL)_isSleepModeDuringWindDownEnabled;
- (BOOL)_shouldHandleBiomeEvent:(id)event;
- (BOOL)configureFocusModeWithState:(unint64_t)state error:(id *)error;
- (BOOL)createFocusModeInState:(unint64_t)state error:(id *)error;
- (BOOL)deleteFocusModeWithError:(id *)error;
- (BOOL)hasSleepFocusMode;
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isAppleWatch;
- (BOOL)isInDemoMode;
- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)state;
- (BOOL)sleepFeaturesEnabled;
- (BOOL)sleepScreenEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepModeManager)initWithEnvironment:(id)environment;
- (HDSPSleepModeManager)initWithEnvironment:(id)environment sleepFocusModeBridge:(id)bridge sleepProactiveBridge:(id)proactiveBridge;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)computeUserVisibleEndDate;
- (id)currentState;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (int64_t)sleepMode;
- (unint64_t)sleepScheduleState;
- (void)_automationTurnedOffSleepModeWithReason:(unint64_t)reason;
- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)_createFocusModeIfNeeded;
- (void)_ensureFocusModeCreatedForSleepMode:(int64_t)mode reason:(unint64_t)reason;
- (void)_handleFocusModeEvent:(id)event;
- (void)_sleepModeTurnedOffForUnknownReason;
- (void)_sleepModeTurnedOnForUnknownReason;
- (void)_userTurnedOffSleepModeWithReason:(unint64_t)reason;
- (void)_userTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)createHomeScreenPageWithCompletion:(id)completion;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)notifyObserversForSleepModeChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepFocusModeBridge:(id)bridge didUpdateSleepFocusConfiguration:(id)configuration;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)updateState;
@end

@implementation HDSPSleepModeManager

- (HDSPSleepModeManager)initWithEnvironment:(id)environment
{
  v4 = MEMORY[0x277D62440];
  environmentCopy = environment;
  v6 = [v4 sleepFocusConfigurationServiceWithOptions:3];
  v7 = [[HDSPAppPredictionClient alloc] initWithSleepFocusModeBridge:v6];
  v8 = [(HDSPSleepModeManager *)self initWithEnvironment:environmentCopy sleepFocusModeBridge:v6 sleepProactiveBridge:v7];

  return v8;
}

- (HDSPSleepModeManager)initWithEnvironment:(id)environment sleepFocusModeBridge:(id)bridge sleepProactiveBridge:(id)proactiveBridge
{
  environmentCopy = environment;
  bridgeCopy = bridge;
  proactiveBridgeCopy = proactiveBridge;
  v40.receiver = self;
  v40.super_class = HDSPSleepModeManager;
  v11 = [(HDSPSleepModeManager *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v12->_sleepFocusModeBridge, bridge);
    objc_storeStrong(&v12->_sleepProactiveBridge, proactiveBridge);
    v13 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v15 = [v13 initWithCallbackScheduler:defaultCallbackScheduler];
    sleepModeObservers = v12->_sleepModeObservers;
    v12->_sleepModeObservers = v15;

    mutexGenerator = [environmentCopy mutexGenerator];
    v18 = mutexGenerator[2]();
    mutexProvider = v12->_mutexProvider;
    v12->_mutexProvider = v18;

    v20 = [HDSPSleepModeStateMachine alloc];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = objc_alloc(MEMORY[0x277D62558]);
    userDefaults = [environmentCopy userDefaults];
    v25 = [v23 initWithUserDefaults:userDefaults];
    currentDateProvider = [environmentCopy currentDateProvider];
    v27 = [(HDSPSleepModeStateMachine *)v20 initWithIdentifier:v22 persistence:v25 delegate:v12 infoProvider:v12 currentDateProvider:currentDateProvider];
    stateMachine = v12->_stateMachine;
    v12->_stateMachine = v27;

    objc_copyWeak(&to, &v12->_environment);
    WeakRetained = objc_loadWeakRetained(&v12->_environment);
    biomeManager = [WeakRetained biomeManager];
    v31 = +[HDSPBiomeManager sleepModePublisher];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __86__HDSPSleepModeManager_initWithEnvironment_sleepFocusModeBridge_sleepProactiveBridge___block_invoke;
    v36[3] = &unk_279C7D508;
    v32 = v12;
    v37 = v32;
    objc_copyWeak(&v38, &to);
    v33 = [biomeManager subscribe:v31 callback:v36];

    v34 = v32;
    objc_destroyWeak(&v38);

    objc_destroyWeak(&to);
  }

  return v12;
}

void __86__HDSPSleepModeManager_initWithEnvironment_sleepFocusModeBridge_sleepProactiveBridge___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v3;
    v6 = v14;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] received biome event: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HDSPSleepModeManager_initWithEnvironment_sleepFocusModeBridge_sleepProactiveBridge___block_invoke_303;
  v10[3] = &unk_279C7B2D0;
  v11 = *(a1 + 32);
  v12 = v3;
  v8 = v3;
  [WeakRetained performWhenEnvironmentIsReady:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)environmentWillBecomeReady:(id)ready
{
  v14 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v12, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)environmentDidBecomeReady:(id)ready
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
  v7[2] = __50__HDSPSleepModeManager_environmentDidBecomeReady___block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPSleepModeManager *)self _withLock:v7];
  [(HDSPSleepFocusModeBridge *)self->_sleepFocusModeBridge setDelegate:self];
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
  v6[2] = __35__HDSPSleepModeManager_updateState__block_invoke;
  v6[3] = &unk_279C7B108;
  v6[4] = self;
  [(HDSPSleepModeManager *)self _withLock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23;
  v9 = __Block_byref_object_dispose__23;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HDSPSleepModeManager_currentState__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepModeManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __36__HDSPSleepModeManager_currentState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) currentState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (int64_t)sleepMode
{
  currentState = [(HDSPSleepModeManager *)self currentState];
  sleepMode = [currentState sleepMode];

  return sleepMode;
}

- (BOOL)inUnscheduledSleepMode
{
  currentState = [(HDSPSleepModeManager *)self currentState];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepMode();
    v12 = NSStringFromHKSPSleepModeChangeReason();
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] setSleepMode: %{public}@ (%{public}@)", &v15, 0x20u);
  }

  [(HDSPSleepModeManager *)self _ensureFocusModeCreatedForSleepMode:mode reason:reason];
  switch(mode)
  {
    case 2:
      if (HKSPSleepModeChangeReasonTreatedAsAutomation())
      {
        [(HDSPSleepModeManager *)self _automationTurnedOnSleepModeWithReason:reason];
      }

      else if (HKSPSleepModeChangeReasonTreatedAsUserRequested())
      {
        [(HDSPSleepModeManager *)self _userTurnedOnSleepModeWithReason:reason];
      }

      else
      {
        [(HDSPSleepModeManager *)self _sleepModeTurnedOnForUnknownReason];
      }

      break;
    case 1:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPSleepModeManager.m" lineNumber:174 description:@"Unable to set wind down via this method"];

      break;
    case 0:
      if (HKSPSleepModeChangeReasonTreatedAsAutomation())
      {
        [(HDSPSleepModeManager *)self _automationTurnedOffSleepModeWithReason:reason];
      }

      else if (HKSPSleepModeChangeReasonTreatedAsUserRequested())
      {
        [(HDSPSleepModeManager *)self _userTurnedOffSleepModeWithReason:reason];
      }

      else
      {
        [(HDSPSleepModeManager *)self _sleepModeTurnedOffForUnknownReason];
      }

      break;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_userTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__HDSPSleepModeManager__userTurnedOnSleepModeWithReason___block_invoke;
  v3[3] = &unk_279C7B740;
  v3[4] = self;
  v3[5] = reason;
  [(HDSPSleepModeManager *)self _withLock:v3];
}

- (void)_userTurnedOffSleepModeWithReason:(unint64_t)reason
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HDSPSleepModeManager__userTurnedOffSleepModeWithReason___block_invoke;
  v3[3] = &unk_279C7B740;
  v3[4] = self;
  v3[5] = reason;
  [(HDSPSleepModeManager *)self _withLock:v3];
}

- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HDSPSleepModeManager__automationTurnedOnSleepModeWithReason___block_invoke;
  v3[3] = &unk_279C7B740;
  v3[4] = self;
  v3[5] = reason;
  [(HDSPSleepModeManager *)self _withLock:v3];
}

- (void)_automationTurnedOffSleepModeWithReason:(unint64_t)reason
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__HDSPSleepModeManager__automationTurnedOffSleepModeWithReason___block_invoke;
  v3[3] = &unk_279C7B740;
  v3[4] = self;
  v3[5] = reason;
  [(HDSPSleepModeManager *)self _withLock:v3];
}

- (void)_sleepModeTurnedOnForUnknownReason
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__HDSPSleepModeManager__sleepModeTurnedOnForUnknownReason__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepModeManager *)self _withLock:v2];
}

- (void)_sleepModeTurnedOffForUnknownReason
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__HDSPSleepModeManager__sleepModeTurnedOffForUnknownReason__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepModeManager *)self _withLock:v2];
}

- (void)_handleFocusModeEvent:(id)event
{
  eventCopy = event;
  if ([(HDSPSleepModeManager *)self _shouldHandleBiomeEvent:?])
  {
    v4 = [objc_opt_class() _sleepModeChangeReasonForBiomeReason:objc_msgSend(eventCopy source:{"updateReason"), objc_msgSend(eventCopy, "updateSource")}];
    if ([eventCopy starting])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(HDSPSleepModeManager *)self setSleepMode:v5 reason:v4];
  }
}

- (BOOL)_shouldHandleBiomeEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  environment = [(HDSPSleepModeManager *)self environment];
  behavior = [environment behavior];
  if ([behavior isAppleWatch])
  {
    sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
    sleepSettings = [sleepScheduleModel sleepSettings];
    watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

    if ((watchSleepFeaturesEnabled & 1) == 0)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = objc_opt_class();
        v11 = v19;
        v12 = "[%{public}@] ignoring biome event because sleep features are disabled for this watch";
LABEL_21:
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);

        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  updateReason = [eventCopy updateReason];
  if (updateReason > 1)
  {
    if (updateReason == 2)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = objc_opt_class();
        v11 = v19;
        v12 = "[%{public}@] ignoring biome event for scheduled";
        goto LABEL_21;
      }

LABEL_22:
      LOBYTE(behavior) = 0;
      goto LABEL_23;
    }

    if (updateReason == 3)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = objc_opt_class();
        v14 = v19;
        v15 = "[%{public}@] handling biome event for automation";
        goto LABEL_17;
      }

LABEL_18:
      LOBYTE(behavior) = 1;
LABEL_23:
    }
  }

  else
  {
    if (!updateReason)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = objc_opt_class();
        v14 = v19;
        v15 = "[%{public}@] handling biome event for unknown";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (updateReason == 1)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = objc_opt_class();
        v14 = v19;
        v15 = "[%{public}@] handling biome event for user action";
LABEL_17:
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return behavior & 1;
}

+ (unint64_t)_sleepModeChangeReasonForBiomeReason:(int)reason source:(int)source
{
  if (reason == 3)
  {
    if (source <= 3)
    {
      v4 = &unk_269B983C8;
      return v4[source];
    }
  }

  else if (reason == 1 && source < 4)
  {
    v4 = &unk_269B983A8;
    return v4[source];
  }

  return 10;
}

- (void)_ensureFocusModeCreatedForSleepMode:(int64_t)mode reason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  if (mode == 2 && reason == 5)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode engaged from Hunter watch, making sure focus mode is created", buf, 0xCu);
    }

    v10 = 0;
    v6 = -[HDSPSleepModeManager createFocusModeInState:error:](self, "createFocusModeInState:error:", [MEMORY[0x277D624E8] defaultConfigurationState], &v10);
    v7 = v10;
    if (!v6)
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v13 = 2114;
        v14 = v7;
        _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create focus mode: %{public}@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
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

  [(HDSPSleepModeManager *)self _createFocusModeIfNeeded];
  [(HDSPSleepModeManager *)self updateState];
  [(HDSPSleepModeManager *)self _powerLogSleepMode:[(HDSPSleepModeManager *)self sleepMode] sleepScreenEnabled:[(HDSPSleepModeManager *)self sleepScreenEnabled]];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepScheduleState();
    v13 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138543874;
    v43 = v10;
    v44 = 2114;
    v45 = v12;
    v46 = 2114;
    v47 = v13;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateChanged: %{public}@ reason: %{public}@", buf, 0x20u);
  }

  if (change <= 1)
  {
    if (!change)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __73__HDSPSleepModeManager_sleepScheduleStateDidChange_previousState_reason___block_invoke_4;
      v19 = &unk_279C7B108;
      selfCopy = self;
      v14 = &v16;
      goto LABEL_14;
    }

    if (change == 1)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __73__HDSPSleepModeManager_sleepScheduleStateDidChange_previousState_reason___block_invoke_2;
      v31 = &unk_279C7B650;
      selfCopy2 = self;
      reasonCopy = reason;
      stateCopy = state;
      v14 = &v28;
      goto LABEL_14;
    }
  }

  else
  {
    switch(change)
    {
      case 6uLL:
        [(HDSPSleepModeManager *)self updateState];
        break;
      case 3uLL:
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __73__HDSPSleepModeManager_sleepScheduleStateDidChange_previousState_reason___block_invoke_3;
        v24 = &unk_279C7B650;
        selfCopy3 = self;
        reasonCopy2 = reason;
        stateCopy2 = state;
        v14 = &v21;
        goto LABEL_14;
      case 2uLL:
        v35 = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __73__HDSPSleepModeManager_sleepScheduleStateDidChange_previousState_reason___block_invoke;
        v38 = &unk_279C7B650;
        selfCopy4 = self;
        reasonCopy3 = reason;
        stateCopy3 = state;
        v14 = &v35;
LABEL_14:
        [(HDSPSleepModeManager *)self _withLock:v14, v16, v17, v18, v19, selfCopy, v21, v22, v23, v24, selfCopy3, reasonCopy2, stateCopy2, v28, v29, v30, v31, selfCopy2, reasonCopy, stateCopy, v35, v36, v37, v38, selfCopy4, reasonCopy3, stateCopy3];
        break;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
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

  [(HDSPSleepModeManager *)self updateState];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepMode();
    v13 = NSStringFromHKSPSleepMode();
    v14 = NSStringFromHKSPSleepModeChangeReason();
    v16 = 138544130;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepModeDidChange: %{public}@ previousMode: %{public}@ reason: %{public}@, notifying observers", &v16, 0x2Au);
  }

  [(HDSPSleepModeManager *)self notifyObserversForSleepModeChange:change previousMode:mode reason:reason];
  [(HDSPSleepModeManager *)self _powerLogSleepMode:change sleepScreenEnabled:[(HDSPSleepModeManager *)self sleepScreenEnabled]];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversForSleepModeChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  environment = [(HDSPSleepModeManager *)self environment];
  currentContext = [environment currentContext];

  sleepModeObservers = self->_sleepModeObservers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HDSPSleepModeManager_notifyObserversForSleepModeChange_previousMode_reason___block_invoke;
  v13[3] = &unk_279C7D558;
  changeCopy = change;
  modeCopy = mode;
  reasonCopy = reason;
  v13[4] = self;
  v14 = currentContext;
  v12 = currentContext;
  [(HKSPObserverSet *)sleepModeObservers enumerateObserversWithBlock:v13];
}

void __78__HDSPSleepModeManager_notifyObserversForSleepModeChange_previousMode_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HDSPSleepModeManager_notifyObserversForSleepModeChange_previousMode_reason___block_invoke_2;
  v7[3] = &unk_279C7D530;
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v3;
  [v4 perform:v7 withContext:v5];
}

- (NSDate)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];
  v4 = currentDateProvider[2]();

  return v4;
}

- (unint64_t)sleepScheduleState
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepCoordinator = [WeakRetained sleepCoordinator];
  currentSleepScheduleState = [sleepCoordinator currentSleepScheduleState];

  return currentSleepScheduleState;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (BOOL)isAppleWatch
{
  environment = [(HDSPSleepModeManager *)self environment];
  behavior = [environment behavior];
  isAppleWatch = [behavior isAppleWatch];

  return isAppleWatch;
}

- (BOOL)sleepFeaturesEnabled
{
  sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

  return watchSleepFeaturesEnabled;
}

- (BOOL)sleepScreenEnabled
{
  sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  v4 = ([sleepSettings sleepModeOptions] >> 14) & 1;

  return v4;
}

- (BOOL)hasSleepFocusMode
{
  v15 = *MEMORY[0x277D85DE8];
  sleepFocusModeBridge = self->_sleepFocusModeBridge;
  v10 = 0;
  v3 = [(HDSPSleepFocusModeBridge *)sleepFocusModeBridge hasSleepFocusMode:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      *buf = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      v9 = v8;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to fetch sleep focus mode: %{public}@)", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)computeUserVisibleEndDate
{
  v32 = *MEMORY[0x277D85DE8];
  sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  sleepScheduleState = [(HDSPSleepModeManager *)self sleepScheduleState];
  currentDate = [(HDSPSleepModeManager *)self currentDate];
  if (sleepScheduleState != 6)
  {
    v12 = [sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:currentDate];
    [v12 timeIntervalSinceDate:currentDate];
    if (v13 > *MEMORY[0x277D62320])
    {
      v14 = HKSPLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543618;
        v29 = objc_opt_class();
        v30 = 2114;
        v31 = v12;
        v15 = v29;
        v16 = "[%{public}@] next wake up date is beyond maximum interval (%{public}@)";
        v17 = v14;
        v18 = 22;
LABEL_12:
        _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, v16, &v28, v18);
      }

LABEL_13:

      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v11 = v12;
    goto LABEL_18;
  }

  wakeUpAlarmSnoozedUntilDate = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];
  v8 = [wakeUpAlarmSnoozedUntilDate hksp_isAfterDate:currentDate];

  if (!v8)
  {
    v12 = [sleepScheduleModel previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:currentDate];
    wakeUpAlarmDismissedDate = [sleepEventRecord wakeUpAlarmDismissedDate];
    v20 = [v12 isEqualToDate:wakeUpAlarmDismissedDate];

    v14 = HKSPLogForCategory();
    v21 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v21)
      {
        v28 = 138543362;
        v29 = objc_opt_class();
        v15 = v29;
        v16 = "[%{public}@] wake up alarm already dismissed";
        v17 = v14;
        v18 = 12;
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (v21)
    {
      v28 = 138543362;
      v29 = objc_opt_class();
      v22 = v29;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up alarm is firing", &v28, 0xCu);
    }

    goto LABEL_17;
  }

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = objc_opt_class();
    v10 = v29;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up alarm was snoozed", &v28, 0xCu);
  }

  v11 = [sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621E0] dueAfterDate:currentDate];
LABEL_19:
  v23 = HKSPLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v28 = 138543618;
    v29 = v24;
    v30 = 2114;
    v31 = v11;
    v25 = v24;
    _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] user visible end date is %{public}@", &v28, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HDSPSleepModeManager *)self hasSleepFocusMode])
  {
    if (![(HDSPSleepModeManager *)self _isScheduledSleepModeEnabled])
    {
      v4 = HKSPLogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = objc_opt_class();
        v5 = v10;
        v6 = "[%{public}@] scheduled sleep mode not enabled";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (HKSPSleepScheduleStateIsForWindDown())
    {
      if (![(HDSPSleepModeManager *)self _isSleepModeDuringWindDownEnabled])
      {
        v4 = HKSPLogForCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138543362;
          v10 = objc_opt_class();
          v5 = v10;
          v6 = "[%{public}@] sleep mode during wind down not enabled";
LABEL_11:
          _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if ((HKSPSleepScheduleStateIsForBedtime() & 1) == 0)
    {
      goto LABEL_13;
    }

    result = 1;
    goto LABEL_14;
  }

  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    v6 = "[%{public}@] no sleep focus mode exists";
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  result = 0;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isScheduledSleepModeEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
  sleepSchedule = [sleepScheduleModel sleepSchedule];

  if (sleepSchedule)
  {
    if ([sleepSchedule isEnabledAndHasOccurrences])
    {
      sleepScheduleModel2 = [(HDSPSleepModeManager *)self sleepScheduleModel];
      sleepSettings = [sleepScheduleModel2 sleepSettings];

      if (([sleepSettings scheduledSleepMode]& 1) != 0)
      {
        if (![(HDSPSleepModeManager *)self isInDemoMode])
        {
          v12 = 1;
          goto LABEL_17;
        }

        v7 = HKSPLogForCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v15 = 138543362;
        v16 = objc_opt_class();
        v8 = v16;
        v9 = "[%{public}@] device is in demo mode";
      }

      else
      {
        v7 = HKSPLogForCategory();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_15:

          goto LABEL_16;
        }

        v15 = 138543362;
        v16 = objc_opt_class();
        v8 = v16;
        v9 = "[%{public}@] scheduledSleepMode disabled";
      }

      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, v9, &v15, 0xCu);

      goto LABEL_15;
    }

    sleepSettings = HKSPLogForCategory();
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      v11 = "[%{public}@] sleep schedule not enabled";
      goto LABEL_11;
    }
  }

  else
  {
    sleepSettings = HKSPLogForCategory();
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      v11 = "[%{public}@] no sleep schedule";
LABEL_11:
      _os_log_impl(&dword_269B11000, sleepSettings, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);
    }
  }

LABEL_16:
  v12 = 0;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isSleepModeDuringWindDownEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
  sleepEventRecord = [sleepScheduleModel sleepEventRecord];

  isAnySleepCoachingOnboardingCompleted = [sleepEventRecord isAnySleepCoachingOnboardingCompleted];
  if ((isAnySleepCoachingOnboardingCompleted & 1) == 0)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] user hasn't onboarded wind down yet", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return isAnySleepCoachingOnboardingCompleted;
}

- (BOOL)isInDemoMode
{
  environment = [(HDSPSleepModeManager *)self environment];
  isDemoEnvironment = [environment isDemoEnvironment];

  return isDemoEnvironment;
}

- (void)sleepFocusModeBridge:(id)bridge didUpdateSleepFocusConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepFocusModeDidChange", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HDSPSleepModeManager_sleepFocusModeBridge_didUpdateSleepFocusConfiguration___block_invoke;
  v8[3] = &unk_279C7B108;
  v8[4] = self;
  [(HDSPSleepModeManager *)self _withLock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_createFocusModeIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepModeManager *)self environment];
  currentContext = [environment currentContext];

  changeEvaluation = [currentContext changeEvaluation];
  topLevelChangeKeys = [changeEvaluation topLevelChangeKeys];
  v7 = [topLevelChangeKeys containsObject:*MEMORY[0x277D62158]];

  if (v7)
  {
    sleepScheduleModel = [(HDSPSleepModeManager *)self sleepScheduleModel];
    sleepSettings = [sleepScheduleModel sleepSettings];

    if ([sleepSettings scheduledSleepMode])
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = objc_opt_class();
        v11 = v15;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] user just enabled scheduledSleepMode", buf, 0xCu);
      }

      v13 = 0;
      -[HDSPSleepModeManager createFocusModeInState:error:](self, "createFocusModeInState:error:", [MEMORY[0x277D624E8] defaultConfigurationState], &v13);
    }

    else
    {
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)createFocusModeInState:(unint64_t)state error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepFocusConfigurationState();
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating sleep focus mode (state: %{public}@)", &v20, 0x16u);
  }

  v11 = [(HDSPSleepFocusModeBridge *)self->_sleepFocusModeBridge createSleepFocusModeInState:state error:error];
  v12 = HKSPLogForCategory();
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v18 = objc_opt_class();
    v19 = *error;
    v20 = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    v15 = v18;
    _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create sleep focus mode: %{public}@", &v20, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v20 = 138543362;
    v21 = v14;
    v15 = v14;
    _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully created sleep focus mode", &v20, 0xCu);
LABEL_6:
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)deleteFocusModeWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v6 = v17;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] deleting sleep focus mode", &v16, 0xCu);
  }

  v7 = [(HDSPSleepFocusModeBridge *)self->_sleepFocusModeBridge removeSleepFocusMode:error];
  v8 = HKSPLogForCategory();
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = objc_opt_class();
    v15 = *error;
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    v11 = v14;
    _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] failed to delete sleep focus mode: %{public}@", &v16, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v16 = 138543362;
    v17 = v10;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully deleted sleep focus mode", &v16, 0xCu);
LABEL_6:
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)configureFocusModeWithState:(unint64_t)state error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepFocusConfigurationState();
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] configuring sleep focus mode (state: %{public}@)", &v20, 0x16u);
  }

  v11 = [(HDSPSleepFocusModeBridge *)self->_sleepFocusModeBridge configureSleepFocusModeWithState:state error:error];
  v12 = HKSPLogForCategory();
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v18 = objc_opt_class();
    v19 = *error;
    v20 = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    v15 = v18;
    _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] failed to configure sleep focus mode: %{public}@", &v20, 0x16u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v20 = 138543362;
    v21 = v14;
    v15 = v14;
    _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully configure sleep focus mode", &v20, 0xCu);
LABEL_6:
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)createHomeScreenPageWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating home screen page", &v8, 0xCu);
  }

  [(HDSPSleepProactiveBridge *)self->_sleepProactiveBridge createSuggestedHomeScreenPageWithCompletion:completionCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  currentState = [(HDSPSleepModeManager *)self currentState];
  v4 = [v2 stringWithFormat:@"Current State: %@", currentState];

  return v4;
}

- (id)diagnosticInfo
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"Current State";
  currentState = [(HDSPSleepModeManager *)self currentState];
  stateName = [currentState stateName];
  v8[0] = stateName;
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