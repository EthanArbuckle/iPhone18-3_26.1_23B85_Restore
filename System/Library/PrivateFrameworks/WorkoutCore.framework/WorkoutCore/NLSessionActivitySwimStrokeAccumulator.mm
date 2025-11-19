@interface NLSessionActivitySwimStrokeAccumulator
- (NLSessionActivitySwimStrokeAccumulator)initWithHealthStore:(id)a3;
- (NSDictionary)distanceByStrokeStyle;
- (void)_addDistancePerStrokeStyleIfPossible;
- (void)_handleAddedDistanceSamples:(id)a3;
- (void)_handleAddedStrokeSamples:(id)a3;
- (void)_incrementDictionaryValueWithDistanceSample:(id)a3 strokeSample:(id)a4;
- (void)_startQueriesWithStartDate:(id)a3;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)accumulatorDidStop;
- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4;
@end

@implementation NLSessionActivitySwimStrokeAccumulator

- (NLSessionActivitySwimStrokeAccumulator)initWithHealthStore:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v17.receiver = v3;
  v17.super_class = NLSessionActivitySwimStrokeAccumulator;
  v16 = [(NLSessionActivityHealthDataAccumulator *)&v17 initWithHealthStore:location[0]];
  v19 = v16;
  objc_storeStrong(&v19, v16);
  if (v16)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableSwimDistanceByStrokeStyle = v19->_mutableSwimDistanceByStrokeStyle;
    v19->_mutableSwimDistanceByStrokeStyle = v4;
    MEMORY[0x277D82BD8](mutableSwimDistanceByStrokeStyle);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    countedStrokeSamples = v19->_countedStrokeSamples;
    v19->_countedStrokeSamples = v6;
    MEMORY[0x277D82BD8](countedStrokeSamples);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uncountedStrokeSamples = v19->_uncountedStrokeSamples;
    v19->_uncountedStrokeSamples = v8;
    MEMORY[0x277D82BD8](uncountedStrokeSamples);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    countedDistanceSamples = v19->_countedDistanceSamples;
    v19->_countedDistanceSamples = v10;
    MEMORY[0x277D82BD8](countedDistanceSamples);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uncountedDistanceSamples = v19->_uncountedDistanceSamples;
    v19->_uncountedDistanceSamples = v12;
    MEMORY[0x277D82BD8](uncountedDistanceSamples);
  }

  v15 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v15;
}

- (NSDictionary)distanceByStrokeStyle
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [(NLSessionActivitySwimStrokeAccumulator *)self mutableSwimDistanceByStrokeStyle];
  v5 = [v3 initWithDictionary:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_startQueriesWithStartDate:(id)a3
{
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v58, v60);
  v51 = MEMORY[0x277D85DD0];
  v52 = -1073741824;
  v53 = 0;
  v54 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke;
  v55 = &unk_277D892D0;
  objc_copyWeak(&v56, &v58);
  v57 = _Block_copy(&v51);
  v44 = MEMORY[0x277D85DD0];
  v45 = -1073741824;
  v46 = 0;
  v47 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_3;
  v48 = &unk_277D892D0;
  objc_copyWeak(&v49, &v58);
  v50 = _Block_copy(&v44);
  v43 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:location[0] endDate:0 options:0];
  v18 = objc_alloc(MEMORY[0x277CCCFF0]);
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
  v16 = v43;
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_5;
  v41 = &unk_277D892F8;
  v42 = MEMORY[0x277D82BE0](v57);
  v17 = [v18 initWithType:v15 predicate:v16 anchor:0 limit:0 resultsHandler:&v37];
  [(NLSessionActivitySwimStrokeAccumulator *)v60 setStrokeQuery:v17];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v15);
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_6;
  v35 = &unk_277D892F8;
  v36 = MEMORY[0x277D82BE0](v57);
  v14 = [(NLSessionActivitySwimStrokeAccumulator *)v60 strokeQuery];
  [(HKAnchoredObjectQuery *)v14 setUpdateHandler:&v31];
  MEMORY[0x277D82BD8](v14);
  v13 = objc_alloc(MEMORY[0x277CCCFF0]);
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v11 = v43;
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_7;
  v29 = &unk_277D892F8;
  v30 = MEMORY[0x277D82BE0](v50);
  v12 = [v13 initWithType:v10 predicate:v11 anchor:0 limit:0 resultsHandler:&v25];
  [(NLSessionActivitySwimStrokeAccumulator *)v60 setDistanceQuery:v12];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v10);
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_8;
  v23 = &unk_277D892F8;
  v24 = MEMORY[0x277D82BE0](v50);
  v9 = [(NLSessionActivitySwimStrokeAccumulator *)v60 distanceQuery];
  [(HKAnchoredObjectQuery *)v9 setUpdateHandler:&v19];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v8 = [(NLSessionActivityHealthDataAccumulator *)v60 healthStore];
  v7 = [(NLSessionActivitySwimStrokeAccumulator *)v60 strokeQuery];
  [(HKHealthStore *)v8 executeQuery:?];
  MEMORY[0x277D82BD8](v7);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v6 = [(NLSessionActivityHealthDataAccumulator *)v60 healthStore];
  v5 = [(NLSessionActivitySwimStrokeAccumulator *)v60 distanceQuery];
  [(HKHealthStore *)v6 executeQuery:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v50, 0);
  objc_destroyWeak(&v49);
  objc_storeStrong(&v57, 0);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_storeStrong(location, 0);
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_2;
  v10 = &unk_277D88A38;
  objc_copyWeak(v12, a1 + 4);
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_storeStrong(location, 0);
}

double __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAddedStrokeSamples:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_4;
  v10 = &unk_277D88A38;
  objc_copyWeak(v12, a1 + 4);
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_storeStrong(location, 0);
}

double __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAddedDistanceSamples:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_5(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_6(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_7(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __69__NLSessionActivitySwimStrokeAccumulator__startQueriesWithStartDate___block_invoke_8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAddedDistanceSamples:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Stroke accumulator received distance samples: %@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [(NLSessionActivitySwimStrokeAccumulator *)v7 uncountedDistanceSamples];
    [(NSMutableArray *)v4 addObjectsFromArray:location[0]];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(NLSessionActivitySwimStrokeAccumulator *)v7 _addDistancePerStrokeStyleIfPossible];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleAddedStrokeSamples:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Stroke accumulator received stroke samples: %@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [(NLSessionActivitySwimStrokeAccumulator *)v7 uncountedStrokeSamples];
    [(NSMutableArray *)v4 addObjectsFromArray:location[0]];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(NLSessionActivitySwimStrokeAccumulator *)v7 _addDistancePerStrokeStyleIfPossible];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_addDistancePerStrokeStyleIfPossible
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = self;
  v29[1] = a2;
  v12 = objc_alloc(MEMORY[0x277CBEA60]);
  v13 = [(NLSessionActivitySwimStrokeAccumulator *)v30 uncountedStrokeSamples];
  v29[0] = [v12 initWithArray:?];
  MEMORY[0x277D82BD8](v13);
  v14 = objc_alloc(MEMORY[0x277CBEA60]);
  v15 = [(NLSessionActivitySwimStrokeAccumulator *)v30 uncountedDistanceSamples];
  v28 = [v14 initWithArray:?];
  MEMORY[0x277D82BD8](v15);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v29[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v17)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v17;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(__b[1] + 8 * v10);
      v5 = v28;
      v4 = MEMORY[0x277CCAC30];
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __78__NLSessionActivitySwimStrokeAccumulator__addDistancePerStrokeStyleIfPossible__block_invoke;
      v23 = &unk_277D89320;
      v24 = MEMORY[0x277D82BE0](v27);
      v6 = [v4 predicateWithBlock:&v19];
      v25 = [v5 filteredArrayUsingPredicate:?];
      *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      v7 = [v25 firstObject];
      *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      if (v7)
      {
        v18 = [v25 firstObject];
        [(NLSessionActivitySwimStrokeAccumulator *)v30 _incrementDictionaryValueWithDistanceSample:v18 strokeSample:v27];
        objc_storeStrong(&v18, 0);
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v29, 0);
  *MEMORY[0x277D85DE8];
}

BOOL __78__NLSessionActivitySwimStrokeAccumulator__addDistancePerStrokeStyleIfPossible__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v10 = [location[0] startDate];
  [v10 timeIntervalSinceReferenceDate];
  v13 = v3;
  v12 = [a1[4] startDate];
  [v12 timeIntervalSinceReferenceDate];
  v17 = 0;
  v15 = 0;
  v14 = 0;
  if (vabdd_f64(v13, v4) < 1.0)
  {
    v18 = [location[0] endDate];
    v17 = 1;
    [v18 timeIntervalSinceReferenceDate];
    v8 = v5;
    v16 = [a1[4] endDate];
    v15 = 1;
    [v16 timeIntervalSinceReferenceDate];
    v14 = vabdd_f64(v8, v6) < 1.0;
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v10);
  v21 = v14;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (void)_incrementDictionaryValueWithDistanceSample:(id)a3 strokeSample:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v26 = [v31 metadata];
  v30 = [v26 objectForKeyedSubscript:*MEMORY[0x277CCC518]];
  *&v4 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  if (v30)
  {
    _HKInitializeLogging();
    v29 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v34, location[0], v31);
      _os_log_impl(&dword_20AEA4000, v29, v28, "Incrementing stroke style dictionary for distance sample: %@; stroke sample: %@", v34, 0x16u);
    }

    objc_storeStrong(&v29, 0);
    v24 = [(NLSessionActivitySwimStrokeAccumulator *)v33 mutableSwimDistanceByStrokeStyle];
    v27 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:v30];
    v5 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    if (!v27)
    {
      v22 = MEMORY[0x277CCD7E8];
      v23 = [MEMORY[0x277CCDAB0] meterUnit];
      v27 = [v22 quantityWithUnit:0.0 doubleValue:?];
      MEMORY[0x277D82BD8](0);
      v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    }

    v19 = [location[0] quantity];
    v6 = [v27 _quantityByAddingQuantity:?];
    v7 = v27;
    v27 = v6;
    MEMORY[0x277D82BD8](v7);
    *&v8 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v20 = [(NLSessionActivitySwimStrokeAccumulator *)v33 mutableSwimDistanceByStrokeStyle];
    [(NSMutableDictionary *)v20 setObject:v27 forKeyedSubscript:v30];
    *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    v21 = [(NLSessionActivityDataAccumulator *)v33 updateHandler];
    *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    if (v21)
    {
      v18 = [(NLSessionActivityDataAccumulator *)v33 updateHandler];
      v18[2]();
      MEMORY[0x277D82BD8](v18);
    }

    objc_storeStrong(&v27, 0);
  }

  v14 = [(NLSessionActivitySwimStrokeAccumulator *)v33 uncountedDistanceSamples];
  [(NSMutableArray *)v14 removeObject:location[0]];
  *&v11 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = [(NLSessionActivitySwimStrokeAccumulator *)v33 countedDistanceSamples];
  [(NSMutableArray *)v15 addObject:location[0]];
  *&v12 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = [(NLSessionActivitySwimStrokeAccumulator *)v33 uncountedStrokeSamples];
  [(NSMutableArray *)v16 removeObject:v31];
  *&v13 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = [(NLSessionActivitySwimStrokeAccumulator *)v33 countedStrokeSamples];
  [(NSMutableArray *)v17 addObject:v31];
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NLSessionActivitySwimStrokeAccumulator *)v7 accumulatorDidStartWithStartDate:location[0] handler:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NLSessionActivityDataAccumulator *)v7 setUpdateHandler:v5];
  [(NLSessionActivitySwimStrokeAccumulator *)v7 _startQueriesWithStartDate:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)accumulatorDidStop
{
  v3 = [(NLSessionActivityHealthDataAccumulator *)self healthStore];
  v2 = [(NLSessionActivitySwimStrokeAccumulator *)self distanceQuery];
  [(HKHealthStore *)v3 stopQuery:?];
  MEMORY[0x277D82BD8](v2);
  v5 = [(NLSessionActivityHealthDataAccumulator *)self healthStore];
  v4 = [(NLSessionActivitySwimStrokeAccumulator *)self strokeQuery];
  [(HKHealthStore *)v5 stopQuery:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
}

@end