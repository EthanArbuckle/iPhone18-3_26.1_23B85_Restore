@interface NLSessionActivityNonMachinePaceAccumulator
- (NLSessionActivityNonMachinePaceAccumulator)initWithBuilder:(id)builder activityType:(id)type activityMoveMode:(int64_t)mode;
- (NLSessionActivityPaceAccumulatorDelegate)paceDelegate;
- (double)averagePaceInMetersPerSecond;
- (double)currentPaceInMetersPerSecond;
- (double)fastestPaceInMetersPerSecond;
- (void)_callUpdateHandlerWithCurrentPaceInMetersPerSecond:(double)second;
- (void)_fakeCurrentPaceTimerFired;
- (void)_receivedPaceInMetersPerSecond:(double)second;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)dealloc;
- (void)odometer:(id)odometer didUpdateGpsAvailability:(BOOL)availability;
- (void)setCurrentPaceInMetersPerSecond:(double)second;
- (void)updateAveragePaceWithElapsedTime:(double)time;
- (void)updateAveragePaceWithStatistics:(id)statistics duration:(double)duration;
- (void)updateCurrentSpeedWithStatistics:(id)statistics duration:(double)duration;
@end

@implementation NLSessionActivityNonMachinePaceAccumulator

- (NLSessionActivityNonMachinePaceAccumulator)initWithBuilder:(id)builder activityType:(id)type activityMoveMode:(int64_t)mode
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v30 = 0;
  objc_storeStrong(&v30, type);
  modeCopy = mode;
  v5 = selfCopy;
  selfCopy = 0;
  v28.receiver = v5;
  v28.super_class = NLSessionActivityNonMachinePaceAccumulator;
  v23 = [(NLSessionActivityBuilderAccumulator *)&v28 initWithBuilder:location[0]];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    objc_storeStrong(&selfCopy->_activityType, v30);
    selfCopy->_activityMoveMode = modeCopy;
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    meterUnit = selfCopy->_meterUnit;
    selfCopy->_meterUnit = meterUnit;
    v8 = [MEMORY[0x277CCDAB0] unitFromString:{@"m/s", MEMORY[0x277D82BD8](meterUnit).n128_f64[0]}];
    mpsUnit = selfCopy->_mpsUnit;
    selfCopy->_mpsUnit = v8;
    *&v10 = MEMORY[0x277D82BD8](mpsUnit).n128_u64[0];
    v27 = [MEMORY[0x277CCDBE8] fiui_supportedMetricsForActivityType:selfCopy->_activityType activityMoveMode:{selfCopy->_activityMoveMode, v10}];
    v20 = 1;
    if (([v27 containsObject:&unk_282279CA0] & 1) == 0)
    {
      v20 = [v27 containsObject:&unk_282279CB8];
    }

    selfCopy->_paceAvailable = v20 & 1;
    objc_storeStrong(&v27, 0);
  }

  _HKInitializeLogging();
  v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    log = v26;
    type = v25;
    v16 = selfCopy;
    activityMoveMode = selfCopy->_activityMoveMode;
    v19 = NLHKActivityMoveModeString();
    v12 = MEMORY[0x277D82BE0](v19);
    v24 = v12;
    if (selfCopy->_paceAvailable)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v33, v16, v12, v13, selfCopy->_activityType);
    _os_log_impl(&dword_20AEA4000, log, type, "Pace accumulator %@ init, activityMoveMode: %@, paceAvailable: %@, activityType: %@", v33, 0x2Au);
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v15;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v34 = 0;
  objc_storeStrong(&v34, handler);
  objc_initWeak(&from, selfCopy);
  if ([WOWorkoutSupport shouldTrackPaceWithOdometerFor:selfCopy->_activityType])
  {
    v10 = objc_alloc_init(MEMORY[0x277CC1CF0]);
    odometer = selfCopy->_odometer;
    selfCopy->_odometer = v10;
    MEMORY[0x277D82BD8](odometer);
    v9 = selfCopy->_odometer;
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __87__NLSessionActivityNonMachinePaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke;
    v30 = &unk_277D89280;
    v31 = MEMORY[0x277D82BE0](selfCopy);
    objc_copyWeak(v32, &from);
    [(CMOdometer *)v9 startOdometerUpdatesForActivity:2 withHandler:&v26];
    [(CMOdometer *)selfCopy->_odometer setDelegate:selfCopy];
    _HKInitializeLogging();
    v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v40, selfCopy, selfCopy->_activityType);
      _os_log_impl(&dword_20AEA4000, v25, type, "Pace accumulator %@ is observing CMOdometer for activityType: %@", v40, 0x16u);
    }

    objc_storeStrong(&v25, 0);
    objc_destroyWeak(v32);
    objc_storeStrong(&v31, 0);
  }

  else if ([WOWorkoutSupport shouldTrackPaceWithPedometerFor:selfCopy->_activityType])
  {
    v8 = objc_alloc_init(MEMORY[0x277CC1D18]);
    pedometer = selfCopy->_pedometer;
    selfCopy->_pedometer = v8;
    MEMORY[0x277D82BD8](pedometer);
    v6 = selfCopy->_pedometer;
    v7 = location[0];
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __87__NLSessionActivityNonMachinePaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke_318;
    v21 = &unk_277D892A8;
    v22 = MEMORY[0x277D82BE0](selfCopy);
    objc_copyWeak(&v23, &from);
    [(CMPedometer *)v6 startPedometerUpdatesFromDate:v7 withHandler:&v17];
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v39, selfCopy, selfCopy->_activityType);
      _os_log_impl(&dword_20AEA4000, oslog, v15, "Pace accumulator %@ is observing CMPedometer for activityType: %@", v39, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    objc_destroyWeak(&v23);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v38, selfCopy, selfCopy->_activityType);
      _os_log_impl(&dword_20AEA4000, v14, v13, "Pace accumulator %@ is not observing CMOdometer or CMPedometer for activityType: %@", v38, 0x16u);
    }

    objc_storeStrong(&v14, 0);
  }

  _HKInitializeLogging();
  v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_64_8_64_8_64(v37, selfCopy, location[0], selfCopy->_activityType);
    _os_log_impl(&dword_20AEA4000, v12, OS_LOG_TYPE_DEFAULT, "Pace accumulator %@ did start with start date: %@, activityType: %@", v37, 0x20u);
  }

  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __87__NLSessionActivityNonMachinePaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = [location[0] currentSpeed];
  _HKInitializeLogging();
  v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    v4 = *(a1 + 32);
    v7 = HKLogSafeDescription();
    v10 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_3_8_64_8_64_8_64(v16, v4, v10, v14);
    _os_log_impl(&dword_20AEA4000, log, type, "Pace accumulator %@ received odometer speed=%@ error=%@", v16, 0x20u);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  if (v13[0])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v13[0] doubleValue];
    [WeakRetained _receivedPaceInMetersPerSecond:?];
    MEMORY[0x277D82BD8](WeakRetained);
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __87__NLSessionActivityNonMachinePaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v15[0] = [location[0] currentPace];
  _HKInitializeLogging();
  v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v6 = *(a1 + 32);
    v9 = HKLogSafeDescription();
    v12 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_3_8_64_8_64_8_64(v18, v6, v12, v16);
    _os_log_impl(&dword_20AEA4000, log, type, "Pace accumulator %@ received pedometer pace=%@ error=%@", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  if (v15[0])
  {
    [v15[0] doubleValue];
    if (v3 <= 2.22044605e-16)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0 / v3;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _receivedPaceInMetersPerSecond:v5];
    MEMORY[0x277D82BD8](WeakRetained);
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_fakeCurrentPaceTimerFired
{
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 13)
  {
    v4 = 6.7056;
    v3 = 7.59968;
  }

  else
  {
    v4 = 3.15557647;
    v3 = 3.3528;
  }

  [_TtC11WorkoutCore9MathUtils randomNumberInRangeWithMinValue:v4 maxValue:v3];
  [(NLSessionActivityNonMachinePaceAccumulator *)self _receivedPaceInMetersPerSecond:v2];
}

- (void)_receivedPaceInMetersPerSecond:(double)second
{
  selfCopy = self;
  v11[2] = a2;
  v11[1] = *&second;
  [(NLSessionActivityNonMachinePaceAccumulator *)self _callUpdateHandlerWithCurrentPaceInMetersPerSecond:second];
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__NLSessionActivityNonMachinePaceAccumulator__receivedPaceInMetersPerSecond___block_invoke;
  v10 = &unk_277D88890;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

double __77__NLSessionActivityNonMachinePaceAccumulator__receivedPaceInMetersPerSecond___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 112))
  {
    [*(*(a1 + 32) + 112) invalidate];
    objc_storeStrong((*(a1 + 32) + 112), 0);
  }

  v1 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__paceExpirationTimerFired selector:0 userInfo:0 repeats:30.0];
  v2 = (*(a1 + 32) + 112);
  v3 = *v2;
  *v2 = v1;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_callUpdateHandlerWithCurrentPaceInMetersPerSecond:(double)second
{
  selfCopy = self;
  v13 = a2;
  secondCopy = second;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __97__NLSessionActivityNonMachinePaceAccumulator__callUpdateHandlerWithCurrentPaceInMetersPerSecond___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = *&secondCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

double __97__NLSessionActivityNonMachinePaceAccumulator__callUpdateHandlerWithCurrentPaceInMetersPerSecond___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPaceInMetersPerSecond:*(a1 + 40)];
  v4 = [*(a1 + 32) paceDelegate];
  v5 = objc_opt_respondsToSelector();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v2 = [*(a1 + 32) paceDelegate];
    [v2 paceAccumulator:*(a1 + 32) didUpdateCurrentPaceInMetersPerSecond:*(a1 + 40)];
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

- (void)accumulatorDidStop
{
  v5 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  [(CMPedometer *)self->_pedometer stopPedometerUpdates];
  [(CMOdometer *)selfCopy->_odometer stopOdometerUpdates];
  [(NSTimer *)selfCopy->_fakeCurrentPaceTimer invalidate];
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v4, selfCopy, selfCopy->_activityType);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Pace accumulator %@ did stop, activityType: %@", v4, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v6, selfCopy, selfCopy[4]);
    _os_log_impl(&dword_20AEA4000, oslog[0], type, "Pace accumulator %@ dealloc, activityType: %@", v6, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = selfCopy;
  v2.super_class = NLSessionActivityNonMachinePaceAccumulator;
  [(NLSessionActivityNonMachinePaceAccumulator *)&v2 dealloc];
  *MEMORY[0x277D85DE8];
}

- (void)setCurrentPaceInMetersPerSecond:(double)second
{
  self->_currentPaceInMetersPerSecond = second;
  if (self->_fastestPaceInMetersPerSecond >= second)
  {
    fastestPaceInMetersPerSecond = self->_fastestPaceInMetersPerSecond;
  }

  else
  {
    fastestPaceInMetersPerSecond = second;
  }

  self->_fastestPaceInMetersPerSecond = fastestPaceInMetersPerSecond;
  [(NLSessionActivityBuilderAccumulator *)self update];
}

- (double)currentPaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_currentPaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForCurrentPace];
  return v2;
}

- (double)fastestPaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_fastestPaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForFastestPace];
  return v2;
}

- (void)updateAveragePaceWithStatistics:(id)statistics duration:(double)duration
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  [(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier];
  v17 = _HKWorkoutDistanceTypeForActivityType();
  quantityType = [location[0] quantityType];
  if ([quantityType isEqual:v17])
  {
    obj = [location[0] sumQuantity];
    if ([obj isEqual:selfCopy->_distanceQuantity])
    {
      v13 = 1;
    }

    else
    {
      objc_storeStrong(&selfCopy->_distanceQuantity, obj);
      if (selfCopy->_distanceQuantity)
      {
        selfCopy->_accumulatedDistanceDuration = durationCopy;
        v4 = [(HKQuantity *)selfCopy->_distanceQuantity doubleValueForUnit:selfCopy->_meterUnit];
        accumulatedDistanceDuration = selfCopy->_accumulatedDistanceDuration;
        MEMORY[0x20F2E8430](v4);
        [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy setAveragePaceInMetersPerSecond:?];
      }

      else
      {
        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v10 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v6 = oslog;
          v7 = v10;
          __os_log_helper_16_0_0(v9);
          _os_log_error_impl(&dword_20AEA4000, v6, v7, "Distance quantity is nil during updateAveragePaceWithNewDistance", v9, 2u);
        }

        objc_storeStrong(&oslog, 0);
        [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy setAveragePaceInMetersPerSecond:0.0];
      }

      v13 = 0;
    }

    objc_storeStrong(&obj, 0);
  }

  else
  {
    _HKInitializeLogging();
    v15 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v21, quantityType, v17);
      _os_log_error_impl(&dword_20AEA4000, v15, v14, "Received pace distance quantity type %@, expected %@", v21, 0x16u);
    }

    objc_storeStrong(&v15, 0);
    v13 = 1;
  }

  objc_storeStrong(&quantityType, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateAveragePaceWithElapsedTime:(double)time
{
  if (time - self->_accumulatedDistanceDuration >= 10.0)
  {
    MEMORY[0x20F2E8430]([(HKQuantity *)self->_distanceQuantity doubleValueForUnit:self->_meterUnit]);
    [(NLSessionActivityNonMachinePaceAccumulator *)self setAveragePaceInMetersPerSecond:?];
  }
}

- (void)updateCurrentSpeedWithStatistics:(id)statistics duration:(double)duration
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  [(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier];
  v27 = _HKWorkoutSpeedTypeForActivityType();
  quantityType = [location[0] quantityType];
  if ([quantityType isEqual:v27])
  {
    v13 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
    v14 = [v27 isEqual:?];
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if ((v14 & 1) != 0 && [(FIUIWorkoutActivityType *)selfCopy->_activityType identifier]== 13 && ![(FIUIWorkoutActivityType *)selfCopy->_activityType isIndoor])
    {
      _HKInitializeLogging();
      v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v21 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v33, selfCopy->_activityType);
        _os_log_error_impl(&dword_20AEA4000, v22, v21, "[Speed] ignoring cycling speed sample update for current activity: %@, supported only for Indoor Cycling", v33, 0xCu);
      }

      objc_storeStrong(&v22, 0);
      v23 = 1;
    }

    else if (durationCopy >= selfCopy->_accumulatedCurrentSpeedDuration)
    {
      mostRecentQuantity = [location[0] mostRecentQuantity];
      [mostRecentQuantity doubleValueForUnit:selfCopy->_mpsUnit];
      v9 = v5;
      MEMORY[0x277D82BD8](mostRecentQuantity);
      v18 = *&v9;
      [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy _receivedPaceInMetersPerSecond:v9];
      selfCopy->_accumulatedCurrentSpeedDuration = durationCopy;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v11 = v6;
      endDate = [location[0] endDate];
      [endDate timeIntervalSinceReferenceDate];
      v12 = v11 - v7;
      MEMORY[0x277D82BD8](endDate);
      v17 = *&v12;
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v31, v18, v17);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[Speed] updated current_speed=%f meters/second, sample_delay=%f seconds", v31, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v23 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v32, *&durationCopy, *&selfCopy->_accumulatedCurrentSpeedDuration);
        _os_log_error_impl(&dword_20AEA4000, v20, v19, "[Speed] ignoring speed update at workout_time=%f because it's less than current known workout_time=%f", v32, 0x16u);
      }

      objc_storeStrong(&v20, 0);
      v23 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v34, quantityType, v27);
      _os_log_error_impl(&dword_20AEA4000, v25, v24, "[Speed] ignoring speed quantity_type=%@, expected_quantity_type=%@", v34, 0x16u);
    }

    objc_storeStrong(&v25, 0);
    v23 = 1;
  }

  objc_storeStrong(&quantityType, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (double)averagePaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_averagePaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForAveragePace];
  return v2;
}

- (void)odometer:(id)odometer didUpdateGpsAvailability:(BOOL)availability
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, odometer);
  availabilityCopy = availability;
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v20, availabilityCopy);
    _os_log_impl(&dword_20AEA4000, v16, v15, "Odometer updated GPS availability: %d", v20, 8u);
  }

  objc_storeStrong(&v16, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __80__NLSessionActivityNonMachinePaceAccumulator_odometer_didUpdateGpsAvailability___block_invoke;
  v12 = &unk_277D88868;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = availabilityCopy;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

double __80__NLSessionActivityNonMachinePaceAccumulator_odometer_didUpdateGpsAvailability___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) paceDelegate];
  v5 = objc_opt_respondsToSelector();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v2 = [*(a1 + 32) paceDelegate];
    [v2 paceAccumulator:*(a1 + 32) didUpdateIsGPSAvailable:*(a1 + 40) & 1];
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

- (NLSessionActivityPaceAccumulatorDelegate)paceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paceDelegate);

  return WeakRetained;
}

@end