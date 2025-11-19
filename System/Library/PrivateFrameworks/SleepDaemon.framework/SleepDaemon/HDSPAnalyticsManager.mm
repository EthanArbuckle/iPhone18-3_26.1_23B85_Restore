@interface HDSPAnalyticsManager
+ (id)dailyCollectionActivity;
+ (id)dailyCollectionCriteria;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_queryMorningIndexRangeForDate:(id)a3;
- (HDSPAnalyticsManager)initWithEnvironment:(id)a3;
- (HDSPAnalyticsManager)initWithEnvironment:(id)a3 analyticsManager:(id)a4 dataCollectionScheduler:(id)a5;
- (HDSPEnvironment)environment;
- (id)_makeReportQueryWithMorningIndexRange:(id)a3 resultsHandler:(id)a4;
- (id)currentDate;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (void)_lock_executeQuery:(id)a3;
- (void)_processQueryResultsWithSummaries:(id)a3 breathingDisturbanceSamples:(id)a4 sleepApneaEventSamples:(id)a5 sleepApneaFeatureOnboardingRecord:(id)a6 queryRange:(id)a7 error:(id)a8;
- (void)_pruneExpiredWindDownActionDataBeforeQueryRange:(id)a3;
- (void)_submitAnalyticsReportsUsingBuilder:(id)a3;
- (void)_unit_testing_pruneExpiredWindDownActionData;
- (void)cancelDailyCollectionActivity;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)scheduleDailyCollectionActivity;
- (void)significantTimeChangeDetected:(id)a3;
- (void)updateScheduledActivity;
@end

@implementation HDSPAnalyticsManager

- (HDSPAnalyticsManager)initWithEnvironment:(id)a3
{
  v4 = MEMORY[0x277D62410];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277CBEBD0] hksp_analyticsUserDefaults];
  v8 = [v6 initWithUserDefaults:v7];

  v9 = [HDSPXPCActivityScheduler alloc];
  v10 = [v5 defaultCallbackScheduler];
  v11 = [(HDSPXPCActivityScheduler *)v9 initWithCallbackScheduler:v10];

  v12 = [(HDSPAnalyticsManager *)self initWithEnvironment:v5 analyticsManager:v8 dataCollectionScheduler:v11];
  return v12;
}

- (HDSPAnalyticsManager)initWithEnvironment:(id)a3 analyticsManager:(id)a4 dataCollectionScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HDSPAnalyticsManager;
  v11 = [(HDSPAnalyticsManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v12->_analyticsManager, a4);
    v13 = [v8 mutexGenerator];
    v14 = v13[2]();
    mutexProvider = v12->_mutexProvider;
    v12->_mutexProvider = v14;

    objc_storeStrong(&v12->_dataCollectionScheduler, a5);
    v12->_isDataCollectionInProgress = 0;
    v16 = v12;
  }

  return v12;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Environment will become ready", &v10, 0xCu);
  }

  v7 = [v4 timeChangeListener];
  [v7 addObserver:self];

  v8 = [v4 notificationListener];

  [v8 addObserver:self];
  v9 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Environment did become ready", &v7, 0xCu);
  }

  [(HDSPAnalyticsManager *)self updateScheduledActivity];
  v6 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Significant time change detected", &v7, 0xCu);
  }

  [(HDSPAnalyticsManager *)self updateScheduledActivity];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateScheduledActivity
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating schedule activity", &v6, 0xCu);
  }

  if ([(HDSPAnalyticsManager *)self isDataCollectionEnabled])
  {
    [(HDSPAnalyticsManager *)self scheduleDailyCollectionActivity];
  }

  else
  {
    [(HDSPAnalyticsManager *)self cancelDailyCollectionActivity];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDailyCollectionActivity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling daily collection activity", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(HDSPAnalyticsManager *)self dataCollectionScheduler];
  v6 = [objc_opt_class() dailyCollectionActivity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDSPAnalyticsManager_scheduleDailyCollectionActivity__block_invoke;
  v8[3] = &unk_279C7B2F8;
  objc_copyWeak(&v9, buf);
  [v5 scheduleActivity:v6 activityHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __55__HDSPAnalyticsManager_scheduleDailyCollectionActivity__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running daily collection activity", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDSPAnalyticsManager_scheduleDailyCollectionActivity__block_invoke_303;
  v9[3] = &unk_279C7B2D0;
  v9[4] = WeakRetained;
  v10 = v3;
  v7 = v3;
  [WeakRetained _withLock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelDailyCollectionActivity
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling daily collection activity", &v7, 0xCu);
  }

  v5 = [(HDSPAnalyticsManager *)self dataCollectionScheduler];
  [v5 unscheduleActivities];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)dailyCollectionCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86370], 1);

  return v2;
}

+ (id)dailyCollectionActivity
{
  v3 = [HDSPXPCActivity alloc];
  v4 = [a1 dailyCollectionCriteria];
  v5 = [(HDSPXPCActivity *)v3 initWithEventName:@"com.apple.sleep.analytics-daily.activity" options:0 criteria:v4];

  return v5;
}

- (id)currentDate
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained currentDateProvider];
  v4 = v3[2]();

  return v4;
}

- (void)_lock_executeQuery:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v5 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing query", &buf, 0xCu);
  }

  if (![(HDSPAnalyticsManager *)self isDataCollectionEnabled])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Data collection disabled; not executing query", &buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ([(HDSPAnalyticsManager *)self isDataCollectionInProgress])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v47;
      v48 = v47;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Data collection is already in progress; not executing query", &buf, 0xCu);
    }

LABEL_7:

    goto LABEL_18;
  }

  self->_isDataCollectionInProgress = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v94 = 0x3010000000;
  v96 = 0;
  v97 = 0;
  v95 = "";
  v9 = [(HDSPAnalyticsManager *)self currentDate];
  v96 = [(HDSPAnalyticsManager *)self _queryMorningIndexRangeForDate:v9];
  v97 = v10;

  v11 = dispatch_group_create();
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__0;
  v83[4] = __Block_byref_object_dispose__0;
  v84 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy__0;
  v81[4] = __Block_byref_object_dispose__0;
  v82 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = __Block_byref_object_copy__0;
  v79[4] = __Block_byref_object_dispose__0;
  v80 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__0;
  v77[4] = __Block_byref_object_dispose__0;
  v78 = 0;
  dispatch_group_enter(v11);
  v12 = *(&buf + 1);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke;
  v73[3] = &unk_279C7B320;
  v73[4] = self;
  v75 = v83;
  v76 = v81;
  v13 = v11;
  v74 = v13;
  v14 = [(HDSPAnalyticsManager *)self _makeReportQueryWithMorningIndexRange:*(v12 + 32) resultsHandler:*(v12 + 40), v73];
  v15 = [objc_alloc(MEMORY[0x277CCD9B8]) initWithIdentifier:@"Analytics" mode:0];
  [v14 setCacheSettings:v15];
  v53 = v14;

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v17 = [WeakRetained healthStoreProvider];
  v18 = [v17 healthStore];

  [v18 executeQuery:v14];
  v19 = HKSPLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *v85 = 138543362;
    v86 = v20;
    v21 = v20;
    _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning bd queries", v85, 0xCu);
  }

  dispatch_group_enter(v13);
  v22 = objc_alloc(MEMORY[0x277CCD848]);
  v23 = [MEMORY[0x277CCD8D8] _typeWithIdentifier:*MEMORY[0x277CCC930]];
  v24 = [MEMORY[0x277CCAC30] hk_predicateForSamplesInDayIndexRange:{*(*(&buf + 1) + 32), *(*(&buf + 1) + 40)}];
  v25 = [v22 initWithSampleType:v23 predicate:v24];
  v92 = v25;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];

  v26 = objc_alloc(MEMORY[0x277CCD8D0]);
  v27 = *MEMORY[0x277CCCD50];
  v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v91 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_318;
  v69[3] = &unk_279C7B348;
  v69[4] = self;
  v71 = v83;
  v72 = v79;
  v30 = v13;
  v70 = v30;
  v51 = [v26 initWithQueryDescriptors:v52 limit:0 sortDescriptors:v29 resultsHandler:v69];

  [v18 executeQuery:v51];
  dispatch_group_enter(v30);
  v31 = objc_alloc(MEMORY[0x277CCD848]);
  v32 = [MEMORY[0x277CCD8D8] _typeWithIdentifier:*MEMORY[0x277CCBAC0]];
  v33 = [v31 initWithSampleType:v32 predicate:0];
  v90 = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];

  v35 = objc_alloc(MEMORY[0x277CCD8D0]);
  v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v27 ascending:1];
  v89 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_320;
  v65[3] = &unk_279C7B348;
  v65[4] = self;
  v67 = v83;
  v68 = v77;
  v38 = v30;
  v66 = v38;
  v39 = [v35 initWithQueryDescriptors:v34 limit:0 sortDescriptors:v37 resultsHandler:v65];

  [v18 executeQuery:v39];
  v40 = objc_alloc(MEMORY[0x277CCD438]);
  v41 = [v40 initWithFeatureIdentifier:*MEMORY[0x277CCC0D8] healthStore:v18];
  v64 = 0;
  v42 = [v41 featureOnboardingRecordWithError:&v64];
  v43 = v64;
  if (v43)
  {
    v44 = HKSPLogForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      *v85 = 138543618;
      v86 = v49;
      v87 = 2112;
      v88 = v43;
      v50 = v49;
      _os_log_error_impl(&dword_269B11000, v44, OS_LOG_TYPE_ERROR, "[%{public}@] Error while querying fetching apnea feature status: %@", v85, 0x16u);
    }
  }

  objc_initWeak(v85, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_322;
  block[3] = &unk_279C7B370;
  objc_copyWeak(&v63, v85);
  v58 = v81;
  v59 = v79;
  v56 = v54;
  v57 = v42;
  v60 = v77;
  p_buf = &buf;
  v62 = v83;
  v45 = v42;
  dispatch_group_notify(v38, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v63);
  objc_destroyWeak(v85);

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(v79, 8);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v83, 8);

  _Block_object_dispose(&buf, 8);
LABEL_18:

  v46 = *MEMORY[0x277D85DE8];
}

void __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v7;
      v14 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error while querying for sleep day summaries: %@", &v15, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_318(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v7;
      v14 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error while querying for breathing disturbance samples: %@", &v15, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_320(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v7;
      v14 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error while querying for sleep apnea event samples: %@", &v15, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_322(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if ([*(a1 + 32) deferIfNecessary])
  {
    v3 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v4 = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_2;
  }

  else
  {
    [WeakRetained _processQueryResultsWithSummaries:*(*(*(a1 + 48) + 8) + 40) breathingDisturbanceSamples:*(*(*(a1 + 56) + 8) + 40) sleepApneaEventSamples:*(*(*(a1 + 64) + 8) + 40) sleepApneaFeatureOnboardingRecord:*(a1 + 40) queryRange:*(*(*(a1 + 72) + 8) + 32) error:{*(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 40)}];
    v3 = v5;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v4 = __43__HDSPAnalyticsManager__lock_executeQuery___block_invoke_3;
  }

  v3[2] = v4;
  v3[3] = &unk_279C7B108;
  v3[4] = WeakRetained;
  [WeakRetained _withLock:?];
}

- (void)_processQueryResultsWithSummaries:(id)a3 breathingDisturbanceSamples:(id)a4 sleepApneaEventSamples:(id)a5 sleepApneaFeatureOnboardingRecord:(id)a6 queryRange:(id)a7 error:(id)a8
{
  var1 = a7.var1;
  var0 = a7.var0;
  v30 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = HKSPLogForCategory();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = v18;
      v21 = v27;
      _os_log_error_impl(&dword_269B11000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Queries failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = objc_opt_class();
      v22 = v27;
      _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Queries succeeded", buf, 0xCu);
    }

    v23 = [HDSPAnalyticsDailyReportBuilder alloc];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v20 = [(HDSPAnalyticsDailyReportBuilder *)v23 initWithEnvironment:WeakRetained daySummaries:v14 breathingDisturbanceSamples:v15 sleepApneaEventSamples:v16 sleepApneaFeatureOnboardingRecord:v17 morningIndexRange:var0, var1];

    [(HDSPAnalyticsManager *)self _submitAnalyticsReportsUsingBuilder:v20];
    [(HDSPAnalyticsManager *)self _pruneExpiredWindDownActionDataBeforeQueryRange:var0, var1];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_queryMorningIndexRangeForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendar];
  v6 = [v4 hk_dayIndexWithCalendar:v5];

  v7 = HDSPAnalyticsDailyReportSummaryDayCount;
  v8 = v6 - HDSPAnalyticsDailyReportSummaryDayCount;

  v9 = v8 + 1;
  v10 = v7;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)_makeReportQueryWithMorningIndexRange:(id)a3 resultsHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = MEMORY[0x277CCD9C0];
  v7 = a4;
  v8 = [[v6 alloc] initWithMorningIndexRange:var0 ascending:var1 limit:1 options:0 resultsHandler:{5, v7}];

  [v8 setDebugIdentifier:@"SleepDailyAnalyticsReportQuery"];

  return v8;
}

- (void)_submitAnalyticsReportsUsingBuilder:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 buildReports];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v4;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending daily reports: %{public}@", &v9, 0x16u);
  }

  v7 = [(HDSPAnalyticsManager *)self analyticsManager];
  [v7 trackEvents:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_pruneExpiredWindDownActionDataBeforeQueryRange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3.var1 <= 0)
  {
    v4 = 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v4 = a3.var1 + a3.var0 - 2;
  }

  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithInteger:v4];
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pruning wind down action data prior to %{public}@", &v13, 0x16u);
  }

  v10 = [(HDSPAnalyticsManager *)self analyticsManager];
  v11 = [v10 analyticsStore];
  [v11 removeAllWindDownActionsBeforeMorningIndex:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_unit_testing_pruneExpiredWindDownActionData
{
  v5 = [(HDSPAnalyticsManager *)self currentDate];
  v3 = [(HDSPAnalyticsManager *)self _queryMorningIndexRangeForDate:v5];
  [(HDSPAnalyticsManager *)self _pruneExpiredWindDownActionDataBeforeQueryRange:v3, v4];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isEqualToString:@"com.apple.sleepd.analytics"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v5;
      v7 = v13;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", buf, 0x16u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__HDSPAnalyticsManager_notificationListener_didReceiveNotificationWithName___block_invoke;
    v11[3] = &unk_279C7B108;
    v11[4] = self;
    [(HDSPAnalyticsManager *)self _withLock:v11];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __76__HDSPAnalyticsManager_notificationListener_didReceiveNotificationWithName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() dailyCollectionActivity];
  [v1 _lock_executeQuery:v2];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end