@interface HDSPBiomeManager
+ (id)sleepModePublisher;
+ (int)biomeSleepModeChangeReasonForSleepModeChangeReason:(unint64_t)a3;
+ (int)biomeSleepModeStateForSleepModeState:(int64_t)a3;
+ (int)biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:(unint64_t)a3;
+ (int)biomeSleepScheduleStateForSleepScheduleState:(unint64_t)a3;
- (BOOL)_shouldWriteToBiome;
- (HDSPBiomeManager)initWithEnvironment:(id)a3;
- (HDSPBiomeManager)initWithEnvironment:(id)a3 biomeInterface:(id)a4;
- (HDSPEnvironment)environment;
- (id)subscribe:(id)a3 callback:(id)a4;
- (void)_writeSleepModeToBiome:(int64_t)a3 reason:(unint64_t)a4 forceWrite:(BOOL)a5;
- (void)_writeSleepScheduleStateToBiome:(unint64_t)a3 reason:(unint64_t)a4 forceWrite:(BOOL)a5;
- (void)environmentWillBecomeReady:(id)a3;
- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)unsubscribe:(id)a3;
@end

@implementation HDSPBiomeManager

- (HDSPBiomeManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_HDSPBiomeBridge);
  v6 = [(HDSPBiomeManager *)self initWithEnvironment:v4 biomeInterface:v5];

  return v6;
}

- (HDSPBiomeManager)initWithEnvironment:(id)a3 biomeInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HDSPBiomeManager;
  v8 = [(HDSPBiomeManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    objc_storeStrong(&v9->_biomeInterface, a4);
    v10 = v9;
  }

  return v9;
}

- (id)subscribe:(id)a3 callback:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] subscribing publisher %{public}@", &v12, 0x16u);
  }

  v9 = [(HDSPBiomeInterface *)self->_biomeInterface subscribe:v6 callback:v7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)unsubscribe:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] unsubscribing %{public}@", &v7, 0x16u);
  }

  [v3 cancel];
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sleepModePublisher
{
  v2 = BiomeLibrary();
  v3 = [v2 UserFocus];
  v4 = [v3 ComputedMode];

  v5 = [v4 DSLPublisher];
  v6 = [v5 filterWithKeyPath:@"eventBody.semanticModeIdentifier" value:*MEMORY[0x277D622D0]];

  return v6;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v4 = a3;
  v5 = [v4 sleepModeManager];
  [v5 addObserver:self];

  v6 = [v4 sleepScheduleModelManager];
  [v6 addObserver:self];

  v7 = [v4 sleepCoordinator];

  [v7 addObserver:self];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4 != a3)
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

    v14 = [(HDSPBiomeManager *)self environment];
    v15 = [v14 sleepModeManager];

    if ([v15 inUnscheduledSleepMode] && objc_msgSend(v15, "shouldGoIntoSleepModeDuringState:", a3))
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

    [(HDSPBiomeManager *)self _writeSleepScheduleStateToBiome:a3 reason:a5 forceWrite:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepScheduleModel:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v12, 0x16u);
  }

  v8 = [(HDSPBiomeManager *)self environment];
  v9 = [v8 sleepModeManager];
  v10 = [v9 sleepMode];

  if (v10)
  {
    [(HDSPBiomeManager *)self _writeSleepModeToBiome:v10 reason:10 forceWrite:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5
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

  [(HDSPBiomeManager *)self _writeSleepModeToBiome:a3 reason:a5 forceWrite:a3 != a4];
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldWriteToBiome
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPBiomeManager *)self environment];
  v4 = [v3 sleepScheduleModelManager];
  v5 = [v4 sleepSettings];

  v6 = [(HDSPBiomeManager *)self environment];
  v7 = [v6 behavior];
  if (![v7 isAppleWatch])
  {

    goto LABEL_7;
  }

  v8 = [v5 watchSleepFeaturesEnabled];

  if (v8)
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

- (void)_writeSleepModeToBiome:(int64_t)a3 reason:(unint64_t)a4 forceWrite:(BOOL)a5
{
  if (a5 || [(HDSPBiomeManager *)self _shouldWriteToBiome])
  {
    v8 = BiomeLibrary();
    v9 = [v8 UserFocus];
    v15 = [v9 SleepMode];

    v10 = [objc_opt_class() biomeSleepModeStateForSleepModeState:a3];
    v11 = [objc_opt_class() biomeSleepModeChangeReasonForSleepModeChangeReason:a4];
    if (a3)
    {
      v12 = [(HDSPBiomeManager *)self environment];
      v13 = [v12 sleepModeManager];
      a3 = [v13 computeUserVisibleEndDate];
    }

    v14 = [objc_alloc(MEMORY[0x277CF16F8]) initWithState:v10 changeReason:v11 expectedEndDate:a3];
    [(HDSPBiomeInterface *)self->_biomeInterface publish:v14 stream:v15];
  }
}

- (void)_writeSleepScheduleStateToBiome:(unint64_t)a3 reason:(unint64_t)a4 forceWrite:(BOOL)a5
{
  if (a5 || [(HDSPBiomeManager *)self _shouldWriteToBiome])
  {
    v8 = BiomeLibrary();
    v9 = [v8 Sleep];
    v12 = [v9 ScheduleState];

    v10 = [objc_opt_class() biomeSleepScheduleStateForSleepScheduleState:a3];
    v11 = [objc_alloc(MEMORY[0x277CF1618]) initWithState:v10 changeReason:{objc_msgSend(objc_opt_class(), "biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:", a4)}];
    [(HDSPBiomeInterface *)self->_biomeInterface publish:v11 stream:v12];
  }
}

+ (int)biomeSleepModeStateForSleepModeState:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int)biomeSleepModeChangeReasonForSleepModeChangeReason:(unint64_t)a3
{
  if (a3 - 2 > 8)
  {
    return 1;
  }

  else
  {
    return dword_269B9833C[a3 - 2];
  }
}

+ (int)biomeSleepScheduleStateForSleepScheduleState:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 1;
  }

  else
  {
    return dword_269B98360[a3 - 1];
  }
}

+ (int)biomeSleepScheduleStateChangeReasonForSleepScheduleStateChangeReason:(unint64_t)a3
{
  if (a3 - 3 > 5)
  {
    return 1;
  }

  else
  {
    return dword_269B98378[a3 - 3];
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end