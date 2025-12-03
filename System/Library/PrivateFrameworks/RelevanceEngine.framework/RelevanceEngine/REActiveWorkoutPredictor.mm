@interface REActiveWorkoutPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context;
- (void)_cancelMonitoringWorkoutIfNeeded;
- (void)_processWorkoutHistoryData:(id)data completion:(id)completion;
- (void)_queue_fetchWorkoutHistory;
- (void)_scheduleFetchWorkoutTimer;
- (void)_updateWorkoutState;
- (void)dealloc;
- (void)pause;
- (void)resume;
@end

@implementation REActiveWorkoutPredictor

- (id)_init
{
  v5.receiver = self;
  v5.super_class = REActiveWorkoutPredictor;
  _init = [(REPredictor *)&v5 _init];
  v3 = _init;
  if (_init)
  {
    [_init setHasActiveWorkout:0];
    v3[17] = 0;
    *(v3 + 9) = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(REActiveWorkoutPredictor *)self _cancelMonitoringWorkoutIfNeeded];
  v3.receiver = self;
  v3.super_class = REActiveWorkoutPredictor;
  [(REPredictor *)&v3 dealloc];
}

- (void)resume
{
  [(REActiveWorkoutPredictor *)self _cancelMonitoringWorkoutIfNeeded];
  if (HealthKitLibraryCore_0())
  {
    objc_initWeak(&location, self);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v3 = getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_ptr;
    v35 = getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_ptr;
    if (!getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_ptr)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_block_invoke;
      v30 = &unk_2785F9BC0;
      v31 = &v32;
      v4 = HealthKitLibrary_0();
      v5 = dlsym(v4, "kHKHealthDaemonActiveWorkoutServersDidUpdateNotification");
      *(v31[1] + 24) = v5;
      getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_ptr = *(v31[1] + 24);
      v3 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (v3)
    {
      v6 = *v3;
      v7 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__REActiveWorkoutPredictor_resume__block_invoke;
      handler[3] = &unk_2785FAF10;
      objc_copyWeak(&v25, &location);
      notify_register_dispatch(v6, &self->_workoutStateNotifyToken, v7, handler);

      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v9 = getHKObserverQueryClass_softClass;
      v35 = getHKObserverQueryClass_softClass;
      if (!getHKObserverQueryClass_softClass)
      {
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __getHKObserverQueryClass_block_invoke;
        v30 = &unk_2785F9BC0;
        v31 = &v32;
        __getHKObserverQueryClass_block_invoke(&v27);
        v9 = v33[3];
      }

      v10 = v9;
      _Block_object_dispose(&v32, 8);
      v11 = [v9 alloc];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v12 = getHKSampleTypeClass_softClass;
      v35 = getHKSampleTypeClass_softClass;
      if (!getHKSampleTypeClass_softClass)
      {
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __getHKSampleTypeClass_block_invoke;
        v30 = &unk_2785F9BC0;
        v31 = &v32;
        __getHKSampleTypeClass_block_invoke(&v27);
        v12 = v33[3];
      }

      v13 = v12;
      _Block_object_dispose(&v32, 8);
      workoutType = [v12 workoutType];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __34__REActiveWorkoutPredictor_resume__block_invoke_2;
      v22[3] = &unk_2785FAF38;
      objc_copyWeak(&v23, &location);
      v15 = [v11 initWithSampleType:workoutType predicate:0 updateHandler:v22];

      v16 = +[(RESingleton *)REHealthStore];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __34__REActiveWorkoutPredictor_resume__block_invoke_3;
      v20[3] = &unk_2785FAE30;
      v20[4] = self;
      v17 = v15;
      v21 = v17;
      [v16 accessHealthStore:v20];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = RESignificantTimeChangeNotification();
      [defaultCenter addObserver:self selector:sel__scheduleFetchWorkoutTimer name:v19 object:0];

      [(REActiveWorkoutPredictor *)self _scheduleFetchWorkoutTimer];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }
  }
}

void __34__REActiveWorkoutPredictor_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateWorkoutState];
    WeakRetained = v2;
  }
}

void __34__REActiveWorkoutPredictor_resume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleFetchWorkoutTimer];
    WeakRetained = v2;
  }
}

void __34__REActiveWorkoutPredictor_resume__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v4 = a2;
  [v4 executeQuery:*(a1 + 40)];
}

- (void)pause
{
  [(REActiveWorkoutPredictor *)self _cancelMonitoringWorkoutIfNeeded];
  v3 = +[(RESingleton *)REHealthStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__REActiveWorkoutPredictor_pause__block_invoke;
  v7[3] = &unk_2785FAE58;
  v7[4] = self;
  [v3 accessHealthStore:v7];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = RESignificantTimeChangeNotification();
  [defaultCenter removeObserver:self name:v5 object:0];

  [(REUpNextTimer *)self->_workoutQueryCoalesceTimer invalidate];
  workoutQueryCoalesceTimer = self->_workoutQueryCoalesceTimer;
  self->_workoutQueryCoalesceTimer = 0;
}

void __33__REActiveWorkoutPredictor_pause__block_invoke(uint64_t a1, void *a2)
{
  [a2 stopQuery:*(*(a1 + 32) + 80)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

+ (id)supportedFeatures
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature activeWorkoutFeature];
  v4 = +[REFeature dailyAverageWorkoutCountFeature];
  v10[1] = v4;
  v5 = +[REFeature performedWorkoutCountFeature];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v7 = [(REFeatureSet *)v2 initWithFeatures:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context
{
  featureCopy = feature;
  v8 = +[REFeature activeWorkoutFeature];
  v9 = [featureCopy isEqual:v8];

  if (v9)
  {
    v10 = [REFeatureValue featureValueWithBool:[(REActiveWorkoutPredictor *)self hasActiveWorkout]];
  }

  else
  {
    v11 = +[REFeature dailyAverageWorkoutCountFeature];
    v12 = [featureCopy isEqual:v11];

    if (v12)
    {
      [REFeatureValue featureValueWithDouble:self->_dailyAverageWorkouts];
    }

    else
    {
      [REFeatureValue featureValueWithInt64:self->_numberOfWorkoutsPerformedToday];
    }
    v10 = ;
  }

  v13 = v10;

  return v13;
}

- (void)_cancelMonitoringWorkoutIfNeeded
{
  if (notify_is_valid_token(self->_workoutStateNotifyToken))
  {
    workoutStateNotifyToken = self->_workoutStateNotifyToken;

    notify_cancel(workoutStateNotifyToken);
  }
}

- (void)_updateWorkoutState
{
  [(REPredictor *)self beginFetchingData];
  objc_initWeak(&location, self);
  v3 = +[(RESingleton *)REHealthStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke;
  v4[3] = &unk_2785FAF88;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 accessHealthStore:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke_2;
    v6[3] = &unk_2785FAF60;
    objc_copyWeak(&v7, (a1 + 40));
    v6[4] = *(a1 + 32);
    [v3 _currentWorkoutSnapshotWithCompletion:v6];
    objc_destroyWeak(&v7);
  }

  else if (WeakRetained)
  {
    [WeakRetained setHasActiveWorkout:0];
    [v5 finishFetchingData];
    [v5 updateObservers];
  }
}

void __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    if ([v7 isFirstPartyWorkout])
    {
      v9 = [v8 internalState];
      if (v9 >= 0x12)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x3B80u >> v9;
      }
    }

    else
    {
      v10 = (([v8 sessionState] - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
    }
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (v10 & 1) != [*(a1 + 32) hasActiveWorkout])
  {
    [WeakRetained setHasActiveWorkout:?];
    [WeakRetained updateObservers];
    v12 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke_3;
    block[3] = &unk_2785F9AB8;
    block[4] = WeakRetained;
    dispatch_async(v12, block);
  }
}

uint64_t __47__REActiveWorkoutPredictor__updateWorkoutState__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _queue_fetchWorkoutHistory];
  v2 = *(a1 + 32);

  return [v2 finishFetchingData];
}

- (void)_scheduleFetchWorkoutTimer
{
  queue = [(REPredictor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__REActiveWorkoutPredictor__scheduleFetchWorkoutTimer__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__REActiveWorkoutPredictor__scheduleFetchWorkoutTimer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) invalidate];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
  v3 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__REActiveWorkoutPredictor__scheduleFetchWorkoutTimer__block_invoke_2;
  v7[3] = &unk_2785F9B58;
  objc_copyWeak(&v8, &location);
  v4 = [REUpNextTimer timerWithFireDate:v2 queue:v3 block:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = v4;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__REActiveWorkoutPredictor__scheduleFetchWorkoutTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v3 isValid];

  v4 = WeakRetained;
  if (a1 && WeakRetained)
  {
    [WeakRetained _queue_fetchWorkoutHistory];
    v4 = WeakRetained;
  }
}

- (void)_queue_fetchWorkoutHistory
{
  v52[3] = *MEMORY[0x277D85DE8];
  if (HealthKitLibraryCore_0())
  {
    [(REPredictor *)self beginFetchingData];
    [(REUpNextTimer *)self->_workoutQueryCoalesceTimer invalidate];
    workoutQueryCoalesceTimer = self->_workoutQueryCoalesceTimer;
    self->_workoutQueryCoalesceTimer = 0;

    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];
    v35 = REStartOfDayForDate(v5);

    v6 = REEndOfDayForDate(date);
    v7 = MEMORY[0x277CCA920];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", v35];
    v52[0] = v8;
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate <= %@", v6];
    v52[1] = v9;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v10 = getHKQueryClass_softClass;
    v50 = getHKQueryClass_softClass;
    if (!getHKQueryClass_softClass)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getHKQueryClass_block_invoke;
      v45 = &unk_2785F9BC0;
      v46 = &v47;
      __getHKQueryClass_block_invoke(&v42);
      v10 = v48[3];
    }

    v11 = v10;
    _Block_object_dispose(&v47, 8);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v12 = getHKSourceClass_softClass;
    v50 = getHKSourceClass_softClass;
    if (!getHKSourceClass_softClass)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getHKSourceClass_block_invoke;
      v45 = &unk_2785F9BC0;
      v46 = &v47;
      __getHKSourceClass_block_invoke(&v42);
      v12 = v48[3];
    }

    v13 = v12;
    _Block_object_dispose(&v47, 8);
    defaultSource = [v12 defaultSource];
    v15 = [v10 predicateForObjectsFromSource:defaultSource];
    v52[2] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    v17 = [v7 andPredicateWithSubpredicates:v16];

    v18 = MEMORY[0x277CCAC98];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v19 = getHKSampleSortIdentifierStartDateSymbolLoc_ptr;
    v50 = getHKSampleSortIdentifierStartDateSymbolLoc_ptr;
    if (!getHKSampleSortIdentifierStartDateSymbolLoc_ptr)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getHKSampleSortIdentifierStartDateSymbolLoc_block_invoke;
      v45 = &unk_2785F9BC0;
      v46 = &v47;
      v20 = HealthKitLibrary_0();
      v21 = dlsym(v20, "HKSampleSortIdentifierStartDate");
      *(v46[1] + 24) = v21;
      getHKSampleSortIdentifierStartDateSymbolLoc_ptr = *(v46[1] + 24);
      v19 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v19)
    {
      [RELemmaEnumerator init];
      __break(1u);
    }

    v22 = *v19;
    v23 = [v18 sortDescriptorWithKey:v22 ascending:0];

    objc_initWeak(&location, self);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v24 = getHKSampleQueryClass_softClass;
    v50 = getHKSampleQueryClass_softClass;
    if (!getHKSampleQueryClass_softClass)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getHKSampleQueryClass_block_invoke;
      v45 = &unk_2785F9BC0;
      v46 = &v47;
      __getHKSampleQueryClass_block_invoke(&v42);
      v24 = v48[3];
    }

    v25 = v24;
    _Block_object_dispose(&v47, 8);
    v26 = [v24 alloc];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v27 = getHKObjectTypeClass_softClass;
    v50 = getHKObjectTypeClass_softClass;
    if (!getHKObjectTypeClass_softClass)
    {
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __getHKObjectTypeClass_block_invoke;
      v45 = &unk_2785F9BC0;
      v46 = &v47;
      __getHKObjectTypeClass_block_invoke(&v42);
      v27 = v48[3];
    }

    v28 = v27;
    _Block_object_dispose(&v47, 8);
    workoutType = [v27 workoutType];
    v51 = v23;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke;
    v39[3] = &unk_2785FAFB0;
    objc_copyWeak(&v40, &location);
    v31 = [v26 initWithSampleType:workoutType predicate:v17 limit:100 sortDescriptors:v30 resultsHandler:v39];

    v32 = +[(RESingleton *)REHealthStore];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke_2;
    v37[3] = &unk_2785FAE58;
    v33 = v31;
    v38 = v33;
    [v32 accessHealthStore:v37];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = RELogForDomain(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke_cold_1(v9, v10);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = RELogForDomain(8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v12, OS_LOG_TYPE_INFO, "Received new workout data", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke_319;
    v13[3] = &unk_2785F9AB8;
    v13[4] = WeakRetained;
    [WeakRetained _processWorkoutHistoryData:v8 completion:v13];
  }
}

- (void)_processWorkoutHistoryData:(id)data completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v24 = [dataCopy count];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = dataCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        startDate = [v14 startDate];
        v16 = REDateOccursToday(startDate);

        endDate = [v14 endDate];
        v18 = endDate;
        if (v11)
        {
          v19 = [v11 laterDate:endDate];

          v11 = v19;
        }

        else
        {
          v11 = endDate;
        }

        v10 += v16;
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  queue = [(REPredictor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__REActiveWorkoutPredictor__processWorkoutHistoryData_completion___block_invoke;
  block[3] = &unk_2785FAFD8;
  v30 = v24 / 7.0;
  block[4] = self;
  v27 = v11;
  v28 = completionCopy;
  v29 = v10;
  v21 = completionCopy;
  v22 = v11;
  dispatch_async(queue, block);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __66__REActiveWorkoutPredictor__processWorkoutHistoryData_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 68) = *(a1 + 64);
  *(*(a1 + 32) + 72) = *(a1 + 56);
  [*(a1 + 32) setLastCompletedWorkoutDate:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);

  return [v2 updateObservers];
}

void __54__REActiveWorkoutPredictor__queue_fetchWorkoutHistory__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch workout data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end