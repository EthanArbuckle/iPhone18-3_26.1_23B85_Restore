@interface REActivitySummaryPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
- (void)_runQuery:(id)a3;
- (void)_startActivitySummaryQueryWithRetries:(int64_t)a3;
- (void)_stopQueries;
- (void)_stopQuery:(id)a3;
- (void)_updateWithActivitySummary:(id)a3 completion:(id)a4;
- (void)update;
@end

@implementation REActivitySummaryPredictor

- (id)_init
{
  v7.receiver = self;
  v7.super_class = REActivitySummaryPredictor;
  v2 = [(REPredictor *)&v7 _init];
  v3 = v2;
  if (v2)
  {
    [v2 setActiveEnergyPercentComplete:0.0];
    [v3 setExerciseTimePercentComplete:0.0];
    [v3 setStandHourPercentComplete:0.0];
    v4 = [MEMORY[0x277CBEB98] set];
    v5 = v3[8];
    v3[8] = v4;
  }

  return v3;
}

- (void)update
{
  [(REActivitySummaryPredictor *)self _stopQueries];

  [(REActivitySummaryPredictor *)self _startActivitySummaryQueryWithRetries:3];
}

+ (id)supportedFeatures
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature activeEnergyCompletionFeature];
  v4 = +[REFeature exerciseTimeCompletionFeature];
  v10[1] = v4;
  v5 = +[REFeature standHourCompletionFeature];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v7 = [(REFeatureSet *)v2 initWithFeatures:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v7 = a3;
  v8 = +[REFeature activeEnergyCompletionFeature];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [(REActivitySummaryPredictor *)self activeEnergyPercentComplete];
  }

  else
  {
    v11 = +[REFeature exerciseTimeCompletionFeature];
    v12 = [v7 isEqual:v11];

    if (v12)
    {
      [(REActivitySummaryPredictor *)self exerciseTimePercentComplete];
    }

    else
    {
      [(REActivitySummaryPredictor *)self standHourPercentComplete];
    }
  }

  v13 = [REFeatureValue featureValueWithDouble:v10];

  return v13;
}

- (void)_startActivitySummaryQueryWithRetries:(int64_t)a3
{
  if (a3 <= 0)
  {
    v10 = RELogForDomain(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REActivitySummaryPredictor _startActivitySummaryQueryWithRetries:v10];
    }
  }

  else if (HealthKitLibraryCore())
  {
    objc_initWeak(&location, self);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v5 = get_HKCurrentActivitySummaryQueryClass_softClass;
    v26 = get_HKCurrentActivitySummaryQueryClass_softClass;
    if (!get_HKCurrentActivitySummaryQueryClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __get_HKCurrentActivitySummaryQueryClass_block_invoke;
      v21 = &unk_2785F9BC0;
      v22 = &v23;
      __get_HKCurrentActivitySummaryQueryClass_block_invoke(buf);
      v5 = v24[3];
    }

    v6 = v5;
    _Block_object_dispose(&v23, 8);
    v7 = [v5 alloc];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__REActivitySummaryPredictor__startActivitySummaryQueryWithRetries___block_invoke;
    v14 = &unk_2785FAE08;
    objc_copyWeak(v16, &location);
    v16[1] = a3;
    v15 = self;
    v8 = [v7 initWithUpdateHandler:&v11];
    v9 = RELogForDomain(8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_INFO, "Begin activity summary query", buf, 2u);
    }

    [(REActivitySummaryPredictor *)self _runQuery:v8, v11, v12, v13, v14];
    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __68__REActivitySummaryPredictor__startActivitySummaryQueryWithRetries___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginFetchingData];
    if (v9)
    {
      v12 = RELogForDomain(8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __68__REActivitySummaryPredictor__startActivitySummaryQueryWithRetries___block_invoke_cold_1(v9, v12);
      }

      [v11 _stopQuery:v7];
      [v11 _startActivitySummaryQueryWithRetries:*(a1 + 48) - 1];
      [*(a1 + 32) finishFetchingData];
    }

    else
    {
      v13 = *(a1 + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __68__REActivitySummaryPredictor__startActivitySummaryQueryWithRetries___block_invoke_8;
      v14[3] = &unk_2785F9AB8;
      v14[4] = v13;
      [v13 _updateWithActivitySummary:v8 completion:v14];
    }
  }
}

- (void)_runQuery:(id)a3
{
  v4 = a3;
  v5 = +[(RESingleton *)REHealthStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__REActivitySummaryPredictor__runQuery___block_invoke;
  v7[3] = &unk_2785FAE30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 accessHealthStore:v7];
}

uint64_t __40__REActivitySummaryPredictor__runQuery___block_invoke(uint64_t a1, void *a2)
{
  [a2 executeQuery:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 64) setByAddingObject:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_stopQuery:(id)a3
{
  v4 = a3;
  v5 = +[(RESingleton *)REHealthStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__REActivitySummaryPredictor__stopQuery___block_invoke;
  v7[3] = &unk_2785FAE30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 accessHealthStore:v7];
}

void __41__REActivitySummaryPredictor__stopQuery___block_invoke(uint64_t a1, void *a2)
{
  [a2 stopQuery:*(a1 + 32)];
  v6 = [*(*(a1 + 40) + 64) mutableCopy];
  [v6 removeObject:*(a1 + 32)];
  v3 = [v6 copy];
  v4 = *(a1 + 40);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;
}

- (void)_stopQueries
{
  v3 = +[(RESingleton *)REHealthStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__REActivitySummaryPredictor__stopQueries__block_invoke;
  v4[3] = &unk_2785FAE58;
  v4[4] = self;
  [v3 accessHealthStore:v4];
}

void __42__REActivitySummaryPredictor__stopQueries__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 stopQuery:{*(*(&v13 + 1) + 8 * v8++), v13}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277CBEB98] set];
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithActivitySummary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REPredictor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__REActivitySummaryPredictor__updateWithActivitySummary_completion___block_invoke;
  block[3] = &unk_2785FAE80;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __68__REActivitySummaryPredictor__updateWithActivitySummary_completion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [getHKUnitClass() largeCalorieUnit];

  if (!v2)
  {
    v11 = RELogForDomain(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v12 = "Unable to find largeCalorieUnit. Skipping update";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_15;
  }

  v3 = [*(a1 + 32) activeEnergyBurned];
  v4 = [getHKUnitClass() largeCalorieUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  v7 = [*(a1 + 32) activeEnergyBurnedGoal];
  v8 = [getHKUnitClass() largeCalorieUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;

  if (v10 < 2.22044605e-16)
  {
    v11 = RELogForDomain(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v12 = "Activity is not configured. Skipping update";
LABEL_7:
      _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_DEFAULT, v12, &v41, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [*(a1 + 32) appleExerciseTime];
  v14 = [getHKUnitClass() minuteUnit];
  [v13 doubleValueForUnit:v14];
  v16 = v15;

  v17 = [*(a1 + 32) appleExerciseTimeGoal];
  v18 = [getHKUnitClass() minuteUnit];
  [v17 doubleValueForUnit:v18];
  v20 = v19;

  v21 = [*(a1 + 32) appleStandHours];
  v22 = [getHKUnitClass() countUnit];
  [v21 doubleValueForUnit:v22];
  v24 = v23;

  v25 = [*(a1 + 32) appleStandHoursGoal];
  v26 = [getHKUnitClass() countUnit];
  [v25 doubleValueForUnit:v26];
  v28 = v27;

  v29 = v6 / v10;
  v30 = v16 / v20;
  v31 = v24 / v28;
  [*(a1 + 40) activeEnergyPercentComplete];
  LODWORD(v24) = v32;
  [*(a1 + 40) exerciseTimePercentComplete];
  v34 = v33;
  [*(a1 + 40) standHourPercentComplete];
  if (vabds_f32(v29, *&v24) >= 0.07 || vabds_f32(v30, v34) >= 0.07 || vabds_f32(v31, *&v35) >= 0.07)
  {
    *&v35 = v29;
    [*(a1 + 40) setActiveEnergyPercentComplete:v35];
    *&v36 = v30;
    [*(a1 + 40) setExerciseTimePercentComplete:v36];
    *&v37 = v31;
    [*(a1 + 40) setStandHourPercentComplete:v37];
    v38 = RELogForDomain(8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v41 = 134218496;
      v42 = v29;
      v43 = 2048;
      v44 = v30;
      v45 = 2048;
      v46 = v31;
      _os_log_impl(&dword_22859F000, v38, OS_LOG_TYPE_INFO, "Updating active summary with new data activeEnergyPercentComplete=%f exerciseTimePercentComplete=%f standHourPercentComplete=%f", &v41, 0x20u);
    }

    [*(a1 + 40) updateObservers];
  }

LABEL_15:
  result = (*(*(a1 + 48) + 16))();
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void __68__REActivitySummaryPredictor__startActivitySummaryQueryWithRetries___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Encountered error while fetching activity summary %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end