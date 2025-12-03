@interface HDSPBiomeManager
+ (id)sleepModePublisher;
+ (int)biomeSleepModeChangeReasonForSleepModeChangeReason:(unint64_t)reason;
+ (int)biomeSleepModeStateForSleepModeState:(int64_t)state;
+ (int)biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:(unint64_t)reason;
+ (int)biomeSleepScheduleStateForSleepScheduleState:(unint64_t)state;
- (BOOL)_shouldWriteToBiome;
- (HDSPBiomeManager)initWithEnvironment:(id)environment;
- (HDSPBiomeManager)initWithEnvironment:(id)environment biomeInterface:(id)interface;
- (HDSPEnvironment)environment;
- (id)subscribe:(id)subscribe callback:(id)callback;
- (void)_writeSleepModeToBiome:(int64_t)biome reason:(unint64_t)reason forceWrite:(BOOL)write;
- (void)_writeSleepScheduleStateToBiome:(unint64_t)biome reason:(unint64_t)reason forceWrite:(BOOL)write;
- (void)environmentWillBecomeReady:(id)ready;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation HDSPBiomeManager

- (HDSPBiomeManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(_HDSPBiomeBridge);
  v6 = [(HDSPBiomeManager *)self initWithEnvironment:environmentCopy biomeInterface:v5];

  return v6;
}

- (HDSPBiomeManager)initWithEnvironment:(id)environment biomeInterface:(id)interface
{
  environmentCopy = environment;
  interfaceCopy = interface;
  v12.receiver = self;
  v12.super_class = HDSPBiomeManager;
  v8 = [(HDSPBiomeManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_biomeInterface, interface);
    v10 = v9;
  }

  return v9;
}

- (id)subscribe:(id)subscribe callback:(id)callback
{
  v16 = *MEMORY[0x277D85DE8];
  subscribeCopy = subscribe;
  callbackCopy = callback;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = subscribeCopy;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] subscribing publisher %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPBiomeInterface *)self->_biomeInterface subscribe:subscribeCopy callback:callbackCopy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)unsubscribe:(id)unsubscribe
{
  v11 = *MEMORY[0x277D85DE8];
  unsubscribeCopy = unsubscribe;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = unsubscribeCopy;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] unsubscribing %{public}@", &v7, 0x16u);
  }

  [unsubscribeCopy cancel];
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sleepModePublisher
{
  v2 = BiomeLibrary();
  userFocus = [v2 UserFocus];
  computedMode = [userFocus ComputedMode];

  dSLPublisher = [computedMode DSLPublisher];
  v6 = [dSLPublisher filterWithKeyPath:@"eventBody.semanticModeIdentifier" value:*MEMORY[0x277D622D0]];

  return v6;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepCoordinator = [readyCopy sleepCoordinator];

  [sleepCoordinator addObserver:self];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v28 = *MEMORY[0x277D85DE8];
  if (state != change)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromHKSPSleepScheduleState();
      v12 = NSStringFromHKSPSleepScheduleState();
      v13 = NSStringFromHKSPSleepScheduleStateChangeReason();
      v20 = 138544130;
      v21 = v9;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep state changed from %{public}@ to %{public}@ (%{public}@)", &v20, 0x2Au);
    }

    environment = [(HDSPBiomeManager *)self environment];
    sleepModeManager = [environment sleepModeManager];

    if ([sleepModeManager inUnscheduledSleepMode] && objc_msgSend(sleepModeManager, "shouldGoIntoSleepModeDuringState:", change))
    {
      v16 = HKSPLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v20 = 138543362;
        v21 = v17;
        v18 = v17;
        _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] we're in user requested sleep mode before wind down/bedtime, telling Biome", &v20, 0xCu);
      }

      [(HDSPBiomeManager *)self _writeSleepModeToBiome:2 reason:2 forceWrite:0];
    }

    [(HDSPBiomeManager *)self _writeSleepScheduleStateToBiome:change reason:reason forceWrite:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = modelCopy;
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v12, 0x16u);
  }

  environment = [(HDSPBiomeManager *)self environment];
  sleepModeManager = [environment sleepModeManager];
  sleepMode = [sleepModeManager sleepMode];

  if (sleepMode)
  {
    [(HDSPBiomeManager *)self _writeSleepModeToBiome:sleepMode reason:10 forceWrite:0];
  }

  v11 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode changed from %{public}@ to %{public}@ (%{public}@)", &v16, 0x2Au);
  }

  [(HDSPBiomeManager *)self _writeSleepModeToBiome:change reason:reason forceWrite:change != mode];
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldWriteToBiome
{
  v16 = *MEMORY[0x277D85DE8];
  environment = [(HDSPBiomeManager *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepSettings = [sleepScheduleModelManager sleepSettings];

  environment2 = [(HDSPBiomeManager *)self environment];
  behavior = [environment2 behavior];
  if (![behavior isAppleWatch])
  {

    goto LABEL_7;
  }

  watchSleepFeaturesEnabled = [sleepSettings watchSleepFeaturesEnabled];

  if (watchSleepFeaturesEnabled)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v10 = v15;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] not writing to biome because sleep features are disabled for this watch", &v14, 0xCu);
  }

  v11 = 0;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_writeSleepModeToBiome:(int64_t)biome reason:(unint64_t)reason forceWrite:(BOOL)write
{
  if (write || [(HDSPBiomeManager *)self _shouldWriteToBiome])
  {
    v8 = BiomeLibrary();
    userFocus = [v8 UserFocus];
    sleepMode = [userFocus SleepMode];

    v10 = [objc_opt_class() biomeSleepModeStateForSleepModeState:biome];
    v11 = [objc_opt_class() biomeSleepModeChangeReasonForSleepModeChangeReason:reason];
    if (biome)
    {
      environment = [(HDSPBiomeManager *)self environment];
      sleepModeManager = [environment sleepModeManager];
      biome = [sleepModeManager computeUserVisibleEndDate];
    }

    v14 = [objc_alloc(MEMORY[0x277CF16F8]) initWithState:v10 changeReason:v11 expectedEndDate:biome];
    [(HDSPBiomeInterface *)self->_biomeInterface publish:v14 stream:sleepMode];
  }
}

- (void)_writeSleepScheduleStateToBiome:(unint64_t)biome reason:(unint64_t)reason forceWrite:(BOOL)write
{
  if (write || [(HDSPBiomeManager *)self _shouldWriteToBiome])
  {
    v8 = BiomeLibrary();
    sleep = [v8 Sleep];
    scheduleState = [sleep ScheduleState];

    v10 = [objc_opt_class() biomeSleepScheduleStateForSleepScheduleState:biome];
    v11 = [objc_alloc(MEMORY[0x277CF1618]) initWithState:v10 changeReason:{objc_msgSend(objc_opt_class(), "biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:", reason)}];
    [(HDSPBiomeInterface *)self->_biomeInterface publish:v11 stream:scheduleState];
  }
}

+ (int)biomeSleepModeStateForSleepModeState:(int64_t)state
{
  if (state == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (state == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int)biomeSleepModeChangeReasonForSleepModeChangeReason:(unint64_t)reason
{
  if (reason - 2 > 8)
  {
    return 1;
  }

  else
  {
    return dword_269B9833C[reason - 2];
  }
}

+ (int)biomeSleepScheduleStateForSleepScheduleState:(unint64_t)state
{
  if (state - 1 > 5)
  {
    return 1;
  }

  else
  {
    return dword_269B98360[state - 1];
  }
}

+ (int)biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:(unint64_t)reason
{
  if (reason - 3 > 5)
  {
    return 1;
  }

  else
  {
    return dword_269B98378[reason - 3];
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end