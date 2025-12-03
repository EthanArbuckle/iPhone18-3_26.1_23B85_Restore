@interface NLSessionActivityRollingPaceAccumulator
- (NLSessionActivityRollingPaceAccumulator)initWithBuilder:(id)builder activityType:(id)type distanceUnit:(id)unit healthStore:(id)store;
- (double)rollingPaceInMetersPerSecond;
- (id)_determineNewPauseResumeEvents;
- (void)_addPauseResumeEvents:(id)events;
- (void)_determineAndAddNewPauseResumeEvents;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)processBuilderQuantities:(id)quantities;
- (void)setRollingPaceInMetersPerSecond:(double)second;
- (void)updateDistanceUnit:(id)unit;
- (void)updateRollingPaceWithElapsedTime:(double)time;
- (void)workoutBuilderDidCollectEvent;
@end

@implementation NLSessionActivityRollingPaceAccumulator

- (NLSessionActivityRollingPaceAccumulator)initWithBuilder:(id)builder activityType:(id)type distanceUnit:(id)unit healthStore:(id)store
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v19 = 0;
  objc_storeStrong(&v19, type);
  v18 = 0;
  objc_storeStrong(&v18, unit);
  v17 = 0;
  objc_storeStrong(&v17, store);
  v6 = selfCopy;
  selfCopy = 0;
  v16.receiver = v6;
  v16.super_class = NLSessionActivityRollingPaceAccumulator;
  v12 = [(NLSessionActivityBuilderAccumulator *)&v16 initWithBuilder:location[0]];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_activityType, v19);
    objc_storeStrong(&selfCopy->_distanceUnit, v18);
    objc_storeStrong(&selfCopy->_healthStore, v17);
    v7 = HKDispatchQueueName();
    v8 = dispatch_queue_create(v7, 0);
    queue = selfCopy->_queue;
    selfCopy->_queue = v8;
    MEMORY[0x277D82BD8](queue);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v31 = 0;
  objc_storeStrong(&v31, handler);
  [(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier];
  v30 = _HKWorkoutDistanceTypeForActivityType();
  if (!v30)
  {
    __assert_rtn("[NLSessionActivityRollingPaceAccumulator accumulatorDidStartWithStartDate:handler:]", "NLSessionActivityRollingPaceAccumulator.m", 66, "quantityType != nil && Should always get a distance type in the rolling pace accumulator.");
  }

  distanceUnit = selfCopy->_distanceUnit;
  v29 = FIStandardDistanceQuantity();
  v5 = objc_alloc(MEMORY[0x277D095C8]);
  v6 = [v5 initWithQuantityType:v30 threshold:v29 startDate:location[0]];
  trailingIntervalController = selfCopy->_trailingIntervalController;
  selfCopy->_trailingIntervalController = v6;
  MEMORY[0x277D82BD8](trailingIntervalController);
  objc_initWeak(&v28, selfCopy);
  queue = selfCopy->_queue;
  v22 = MEMORY[0x277D85DD0];
  v23 = -1073741824;
  v24 = 0;
  v25 = __84__NLSessionActivityRollingPaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke;
  v26 = &unk_277D88B00;
  objc_copyWeak(&v27, &v28);
  dispatch_async(queue, &v22);
  v14 = objc_alloc(MEMORY[0x277CCDC10]);
  v12 = v30;
  builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __84__NLSessionActivityRollingPaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke_2;
  v20 = &unk_277D89248;
  objc_copyWeak(v21, &v28);
  v11 = [v14 initWithQuantityType:v12 workoutBuilder:builder quantitiesAddedHandler:&v16];
  query = selfCopy->_query;
  selfCopy->_query = v11;
  MEMORY[0x277D82BD8](query);
  *&v9 = MEMORY[0x277D82BD8](builder).n128_u64[0];
  [(HKHealthStore *)selfCopy->_healthStore executeQuery:selfCopy->_query, v9];
  objc_destroyWeak(v21);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v28);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void __84__NLSessionActivityRollingPaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = objc_loadWeakRetained(a1 + 4);
  [v1[0] _determineAndAddNewPauseResumeEvents];
  objc_storeStrong(v1, 0);
}

void __84__NLSessionActivityRollingPaceAccumulator_accumulatorDidStartWithStartDate_handler___block_invoke_2(NSObject *a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog[1] = a1;
  if (v9)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, v9);
      _os_log_error_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_ERROR, "[RollingPace] Error when subscribing to live workout builder distance samples. error:%@", v12, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else if ([v10 count])
  {
    WeakRetained = objc_loadWeakRetained(&a1[4].isa);
    [WeakRetained processBuilderQuantities:v10];
    MEMORY[0x277D82BD8](WeakRetained);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processBuilderQuantities:(id)quantities
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, quantities);
  [(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier];
  v30 = _HKWorkoutDistanceTypeForActivityType();
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v14);
      v6 = MEMORY[0x277CCD800];
      v5 = v30;
      quantity = [v28 quantity];
      dateInterval = [v28 dateInterval];
      startDate = [dateInterval startDate];
      dateInterval2 = [v28 dateInterval];
      endDate = [dateInterval2 endDate];
      v26 = [v6 quantitySampleWithType:v5 quantity:quantity startDate:startDate endDate:?];
      MEMORY[0x277D82BD8](endDate);
      MEMORY[0x277D82BD8](dateInterval2);
      MEMORY[0x277D82BD8](startDate);
      MEMORY[0x277D82BD8](dateInterval);
      *&v3 = MEMORY[0x277D82BD8](quantity).n128_u64[0];
      [v29 addObject:{v26, v3}];
      objc_storeStrong(&v26, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_initWeak(&v25, selfCopy);
  queue = selfCopy->_queue;
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __68__NLSessionActivityRollingPaceAccumulator_processBuilderQuantities___block_invoke;
  v22 = &unk_277D88A38;
  objc_copyWeak(&v24, &v25);
  v23 = MEMORY[0x277D82BE0](v29);
  dispatch_async(queue, &v18);
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v25);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__NLSessionActivityRollingPaceAccumulator_processBuilderQuantities___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained(a1 + 5);
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v19, [a1[4] count]);
    _os_log_impl(&dword_20AEA4000, location, v16, "[RollingPace] Adding %lu sample(s) to trailing interval controller", v19, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v3 = [v18[0] trailingIntervalController];
  [v3 addSamples:a1[4]];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4 = [v18[0] trailingIntervalController];
  v5 = _RollingPaceForIntervalController(v4);
  MEMORY[0x277D82BD8](v4);
  v15 = v5;
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __68__NLSessionActivityRollingPaceAccumulator_processBuilderQuantities___block_invoke_300;
  v13 = &unk_277D889E8;
  objc_copyWeak(v14, a1 + 5);
  v14[1] = *&v15;
  dispatch_async(queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v14);
  objc_storeStrong(v18, 0);
  *MEMORY[0x277D85DE8];
}

void __68__NLSessionActivityRollingPaceAccumulator_processBuilderQuantities___block_invoke_300(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 32));
  [v2[0] setRollingPaceInMetersPerSecond:*(a1 + 40)];
  objc_storeStrong(v2, 0);
}

- (void)setRollingPaceInMetersPerSecond:(double)second
{
  self->_rollingPaceInMetersPerSecond = second;
  trailingIntervalController = [(NLSessionActivityRollingPaceAccumulator *)self trailingIntervalController];
  thresholdReached = [(FITrailingIntervalController *)trailingIntervalController thresholdReached];
  *&v3 = MEMORY[0x277D82BD8](trailingIntervalController).n128_u64[0];
  if (thresholdReached)
  {
    [(NLSessionActivityBuilderAccumulator *)self update];
  }
}

- (double)rollingPaceInMetersPerSecond
{
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForRollingPace];
    return v2;
  }

  else
  {
    trailingIntervalController = [(NLSessionActivityRollingPaceAccumulator *)self trailingIntervalController];
    thresholdReached = [(FITrailingIntervalController *)trailingIntervalController thresholdReached];
    MEMORY[0x277D82BD8](trailingIntervalController);
    if (thresholdReached)
    {
      return self->_rollingPaceInMetersPerSecond;
    }

    else
    {
      return 0.0;
    }
  }
}

- (void)workoutBuilderDidCollectEvent
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = selfCopy->_queue;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __72__NLSessionActivityRollingPaceAccumulator_workoutBuilderDidCollectEvent__block_invoke;
  v7 = &unk_277D88B00;
  objc_copyWeak(&v8, location);
  dispatch_async(queue, &v3);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void __72__NLSessionActivityRollingPaceAccumulator_workoutBuilderDidCollectEvent__block_invoke(id *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained(a1 + 4);
  [v14[0] _determineAndAddNewPauseResumeEvents];
  v2 = [v14[0] trailingIntervalController];
  v3 = _RollingPaceForIntervalController(v2);
  MEMORY[0x277D82BD8](v2);
  v13 = v3;
  v4 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __72__NLSessionActivityRollingPaceAccumulator_workoutBuilderDidCollectEvent__block_invoke_2;
  v11 = &unk_277D889E8;
  objc_copyWeak(v12, a1 + 4);
  v12[1] = *&v13;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v12);
  objc_storeStrong(v14, 0);
}

void __72__NLSessionActivityRollingPaceAccumulator_workoutBuilderDidCollectEvent__block_invoke_2(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 32));
  [v2[0] setRollingPaceInMetersPerSecond:*(a1 + 40)];
  objc_storeStrong(v2, 0);
}

- (void)_determineAndAddNewPauseResumeEvents
{
  selfCopy = self;
  v2[1] = a2;
  v2[0] = [(NLSessionActivityRollingPaceAccumulator *)self _determineNewPauseResumeEvents];
  [(NLSessionActivityRollingPaceAccumulator *)selfCopy _addPauseResumeEvents:v2[0]];
  objc_storeStrong(v2, 0);
}

- (id)_determineNewPauseResumeEvents
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
  workoutEvents = [(HKLiveWorkoutBuilder *)builder workoutEvents];
  location = FIFilterPauseResumeEvents();
  MEMORY[0x277D82BD8](workoutEvents);
  v17 = [location count];
  trailingIntervalController = [(NLSessionActivityRollingPaceAccumulator *)selfCopy trailingIntervalController];
  pauseResumeEvents = [(FITrailingIntervalController *)trailingIntervalController pauseResumeEvents];
  v16 = [pauseResumeEvents count];
  MEMORY[0x277D82BD8](pauseResumeEvents);
  *&v2 = MEMORY[0x277D82BD8](trailingIntervalController).n128_u64[0];
  if (v17 > v16)
  {
    v8 = [location count];
    trailingIntervalController2 = [(NLSessionActivityRollingPaceAccumulator *)selfCopy trailingIntervalController];
    pauseResumeEvents2 = [(FITrailingIntervalController *)trailingIntervalController2 pauseResumeEvents];
    v11 = v8 - [pauseResumeEvents2 count];
    MEMORY[0x277D82BD8](pauseResumeEvents2);
    v3 = [location count];
    v22 = v3 - v11;
    v21 = v11;
    v23 = v3 - v11;
    v24 = v11;
    v4 = [location subarrayWithRange:{v3 - v11, v11}];
    v5 = v19[0];
    v19[0] = v4;
    MEMORY[0x277D82BD8](v5);
  }

  v7 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);

  return v7;
}

- (void)_addPauseResumeEvents:(id)events
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v18 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(__b[1] + 8 * v15);
      type = [v25 type];
      if (type == 1)
      {
        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        type = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          log = oslog;
          v9 = type;
          dateInterval = [v25 dateInterval];
          startDate = [dateInterval startDate];
          __os_log_helper_16_2_2_8_64_8_64(v30, startDate, v26);
          _os_log_impl(&dword_20AEA4000, log, v9, "[RollingPace] Added pause event to trailing interval controller with date: %@ error:%@", v30, 0x16u);
          MEMORY[0x277D82BD8](startDate);
          MEMORY[0x277D82BD8](dateInterval);
        }

        objc_storeStrong(&oslog, 0);
        trailingIntervalController = selfCopy->_trailingIntervalController;
        v21 = v26;
        [(FITrailingIntervalController *)trailingIntervalController addEvent:v25 withError:&v21];
        objc_storeStrong(&v26, v21);
      }

      else if (type == 2)
      {
        v4 = selfCopy->_trailingIntervalController;
        v20 = v26;
        [(FITrailingIntervalController *)v4 addEvent:v25 withError:&v20];
        objc_storeStrong(&v26, v20);
        _HKInitializeLogging();
        v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v19;
          dateInterval2 = [v25 dateInterval];
          startDate2 = [dateInterval2 startDate];
          __os_log_helper_16_2_2_8_64_8_64(v29, startDate2, v26);
          _os_log_impl(&dword_20AEA4000, v5, OS_LOG_TYPE_DEFAULT, "[RollingPace] Added resume event to trailing interval controller with date: %@ error:%@", v29, 0x16u);
          MEMORY[0x277D82BD8](startDate2);
          MEMORY[0x277D82BD8](dateInterval2);
        }

        objc_storeStrong(&v19, 0);
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateDistanceUnit:(id)unit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, unit);
  objc_storeStrong(&selfCopy->_distanceUnit, location[0]);
  v12 = FIStandardDistanceQuantity();
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __62__NLSessionActivityRollingPaceAccumulator_updateDistanceUnit___block_invoke;
  v8 = &unk_277D88A38;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](v12);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __62__NLSessionActivityRollingPaceAccumulator_updateDistanceUnit___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained trailingIntervalController];
  [v2 setThreshold:*(a1 + 32)];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](WeakRetained);
  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 trailingIntervalController];
  v6 = _RollingPaceForIntervalController(v4);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v16 = v6;
  v7 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __62__NLSessionActivityRollingPaceAccumulator_updateDistanceUnit___block_invoke_2;
  v14 = &unk_277D889E8;
  objc_copyWeak(v15, (a1 + 40));
  v15[1] = *&v16;
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v15);
}

double __62__NLSessionActivityRollingPaceAccumulator_updateDistanceUnit___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRollingPaceInMetersPerSecond:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)updateRollingPaceWithElapsedTime:(double)time
{
  selfCopy = self;
  v12[2] = a2;
  v12[1] = *&time;
  v12[0] = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, selfCopy);
  queue = selfCopy->_queue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __76__NLSessionActivityRollingPaceAccumulator_updateRollingPaceWithElapsedTime___block_invoke;
  v8 = &unk_277D88A38;
  objc_copyWeak(&v10, &location);
  v9 = MEMORY[0x277D82BE0](v12[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  objc_storeStrong(v12, 0);
}

void __76__NLSessionActivityRollingPaceAccumulator_updateRollingPaceWithElapsedTime___block_invoke(uint64_t a1)
{
  v29 = a1;
  v28 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = [WeakRetained trailingIntervalController];
  [v17 idleDurationUntilDate:*(a1 + 32)];
  v19 = v1 >= 10.0;
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](WeakRetained);
  v27 = v19;
  if (v19)
  {
    v12 = objc_loadWeakRetained((a1 + 40));
    v11 = [v12 trailingIntervalController];
    v10 = [v11 quantity];
    v9 = [MEMORY[0x277CCDAB0] meterUnit];
    [v10 doubleValueForUnit:?];
    v6 = v2;
    v8 = objc_loadWeakRetained((a1 + 40));
    v7 = [v8 trailingIntervalController];
    v3 = [v7 activeDurationUntilDate:*(a1 + 32)];
    v13 = MEMORY[0x20F2E8430](v3, v6, v4);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v26 = v13;
    v14 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    queue = v14;
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __76__NLSessionActivityRollingPaceAccumulator_updateRollingPaceWithElapsedTime___block_invoke_2;
    v24 = &unk_277D889E8;
    objc_copyWeak(v25, (a1 + 40));
    v25[1] = *&v26;
    dispatch_async(queue, &v20);
    MEMORY[0x277D82BD8](queue);
    objc_destroyWeak(v25);
  }
}

double __76__NLSessionActivityRollingPaceAccumulator_updateRollingPaceWithElapsedTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRollingPaceInMetersPerSecond:v2];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

@end