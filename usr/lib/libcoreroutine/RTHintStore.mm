@interface RTHintStore
+ (BOOL)batchInsertHintsDictionary:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)fetchRequestForHintEnumerationOptions:(id)a3 error:(id *)a4;
+ (id)predicateForSourceFilter:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_clearHintsForSourceFilter:(id)a3 handler:(id)a4;
- (void)_fetchHintStatsNearLocation:(id)a3 handler:(id)a4;
- (void)_purgeHintsPredating:(id)a3 handler:(id)a4;
- (void)_regenerateLOIHintsWithHandler:(id)a3;
- (void)clearHintsForSourceFilter:(id)a3 handler:(id)a4;
- (void)clearWithHandler:(id)a3;
- (void)enumerateStoredHintsWithOptions:(id)a3 usingBlock:(id)a4;
- (void)fetchHintStatsNearLocation:(id)a3 handler:(id)a4;
- (void)fetchIsHintNearLocation:(id)a3 withHandler:(id)a4;
- (void)purgeHintsPredating:(id)a3 handler:(id)a4;
- (void)regenerateLOIHintsWithHandler:(id)a3;
@end

@implementation RTHintStore

- (void)clearWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)clearHintsForSourceFilter:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTHintStore_clearHintsForSourceFilter_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_clearHintsForSourceFilter:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() predicateForSourceFilter:v7];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__RTHintStore__clearHintsForSourceFilter_handler___block_invoke;
  aBlock[3] = &unk_2788C4F38;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v9 = v6;
  v10 = v8;
  v11 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v9];
}

void __50__RTHintStore__clearHintsForSourceFilter_handler___block_invoke(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTHintMO fetchRequest];
  [v4 setPredicate:a1[4]];
  v5 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  v6 = a1[5];
  v8[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v6 executeDeleteRequests:v7 context:v3 handler:a1[6]];
}

- (void)regenerateLOIHintsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__RTHintStore_regenerateLOIHintsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_regenerateLOIHintsWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTHintStore _regenerateLOIHintsWithHandler:]";
      v12 = 1024;
      v13 = 85;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke;
  v8[3] = &unk_2788C51C8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(RTHintStore *)self clearHintsForSourceFilter:v6 handler:v8];
}

void __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_2;
    v6[3] = &unk_2788C4938;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

void __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_3;
  aBlock[3] = &unk_2788C4898;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v8 = v2;
  v3 = _Block_copy(aBlock);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_49;
  v5[3] = &unk_2788C48C0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _performBlock:v3 contextType:2 errorHandler:v5];
}

void __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v18 = objc_opt_new();
  v3 = 0;
  v4 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[RTLearnedLocationOfInterestMO fetchRequest];
    v34[0] = @"locationLatitude";
    v34[1] = @"locationLongitude";
    v34[2] = @"locationHorizontalUncertainty";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    [v6 setPropertiesToFetch:v7];

    [v6 setResultType:2];
    [v6 setFetchLimit:512];
    [v6 setFetchOffset:v4];
    v27 = 0;
    v8 = [v2 executeFetchRequest:v6 error:&v27];
    v9 = v27;

    v10 = [v8 count];
    v11 = [MEMORY[0x277CBEAA8] now];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_30;
    v21[3] = &unk_2788C51A0;
    v12 = v11;
    v22 = v12;
    v13 = v18;
    v14 = *(a1 + 32);
    v23 = v13;
    v24 = v14;
    v15 = v2;
    v25 = v15;
    v26 = &v28;
    [v8 enumerateObjectsUsingBlock:v21];

    objc_autoreleasePoolPop(v5);
    if (v29[5])
    {
      break;
    }

    v4 += v10;
    v3 = v8;
    if (![v8 count])
    {
      if (!v29[5] && [v13 count])
      {
        v16 = objc_opt_class();
        v17 = (v29 + 5);
        obj = v29[5];
        [v16 batchInsertHintsDictionary:v13 context:v15 error:&obj];
        objc_storeStrong(v17, obj);
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v28, 8);
}

void __46__RTHintStore__regenerateLOIHintsWithHandler___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 objectForKeyedSubscript:@"locationLatitude"];
  v7 = [v4 objectForKeyedSubscript:@"locationLongitude"];
  v8 = [v4 objectForKeyedSubscript:@"locationHorizontalUncertainty"];

  v9 = [v5 initWithObjectsAndKeys:{v6, @"latitude", v7, @"longitude", v8, @"horizontalUncertainty", *(a1 + 32), @"date", &unk_28459C6C0, @"source", 0}];
  [*(a1 + 40) addObject:v9];
  if ([*(a1 + 40) count] == 1024)
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    [v10 batchInsertHintsDictionary:v11 context:v12 error:&v14];
    objc_storeStrong((v13 + 40), v14);
    [*(a1 + 40) removeAllObjects];
  }
}

+ (BOOL)batchInsertHintsDictionary:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__RTHintStore_batchInsertHintsDictionary_context_error___block_invoke;
  v13[3] = &unk_2788C51F0;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v17;
  [v10 performBlockAndWait:v13];
  if (a5)
  {
    *a5 = v18[5];
  }

  v11 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __56__RTHintStore_batchInsertHintsDictionary_context_error___block_invoke(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE370]);
  v3 = +[RTHintMO entity];
  v4 = [v2 initWithEntity:v3 objects:a1[4]];

  v5 = a1[5];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
}

+ (id)predicateForSourceFilter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = -1;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = objc_autoreleasePoolPush();
      if (([v3 integerValue] & (1 << (v5 + 1))) != 0)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v10 = [v3 integerValue];
            *buf = 134218240;
            v14 = v5;
            v15 = 2048;
            v16 = v10;
            _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "Setting up predicate for hintSource, %ld, sourceFilter, %ld", buf, 0x16u);
          }
        }

        v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lld", @"source", v5];
        [v4 addObject:v9];
      }

      objc_autoreleasePoolPop(v7);
      ++v5;
    }

    while (v5 != 12);
    v11 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:2 subpredicates:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchRequestForHintEnumerationOptions:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[RTHintMO fetchRequest];
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(v5, "ascending")}];
  v42[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  [v6 setSortDescriptors:v8];

  v9 = [v5 referenceLocation];

  if (v9 && ([v5 referenceLocation], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "distance"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "doubleValue"), v39 = 0, v12 = objc_msgSend(v6, "setupBoundingBoxFetchRequestForLocation:distance:entityCanBeLocationShifted:locationShifter:resultExpansionPredicates:resultFilteringPredicates:error:", v10, 0, 0, 0, 0, &v39), v9 = v39, v11, v10, (v12 & 1) == 0))
  {
    if (a4)
    {
      v22 = v9;
      v23 = 0;
      *a4 = v9;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v13 = [v5 sourceFilter];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v5 sourceFilter];
      v16 = [v14 predicateForSourceFilter:v15];

      if (v16)
      {
        v17 = [v6 predicate];

        if (v17)
        {
          v18 = MEMORY[0x277CCA920];
          v19 = [v6 predicate];
          v41[0] = v19;
          v41[1] = v16;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
          v21 = [v18 andPredicateWithSubpredicates:v20];
          [v6 setPredicate:v21];
        }

        else
        {
          [v6 setPredicate:v16];
        }
      }
    }

    v24 = [v5 dateInterval];

    if (v24)
    {
      v25 = MEMORY[0x277CCAC30];
      v26 = [v5 dateInterval];
      v27 = [v26 startDate];
      v28 = [v5 dateInterval];
      v29 = [v28 endDate];
      v30 = [v25 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"date", v27, @"date", v29];

      v31 = [v6 predicate];

      if (v31)
      {
        v32 = MEMORY[0x277CCA920];
        v33 = [v6 predicate];
        v40[0] = v33;
        v40[1] = v30;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
        v35 = [v32 andPredicateWithSubpredicates:v34];
        [v6 setPredicate:v35];
      }

      else
      {
        [v6 setPredicate:v30];
      }
    }

    if ([v5 batchSize])
    {
      v36 = [v5 batchSize];
      if (v36 >= 0x400)
      {
        v37 = 1024;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 1024;
    }

    [v6 setFetchLimit:v37];
    [v6 setFetchBatchSize:1024];
    v23 = v6;
  }

  return v23;
}

- (void)enumerateStoredHintsWithOptions:(id)a3 usingBlock:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v22 = 0;
    if (v7)
    {
      v21 = 0;
      v9 = [objc_opt_class() fetchRequestForHintEnumerationOptions:v7 error:&v21];
      v10 = v21;
      if (v10)
      {
        v8[2](v8, 0, v10, &v22);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v24 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__RTHintStore_enumerateStoredHintsWithOptions_usingBlock___block_invoke;
      aBlock[3] = &unk_2788C5218;
      v20 = buf;
      v18 = v7;
      v19 = v8;
      v11 = _Block_copy(aBlock);
      [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v9 enumerationBlock:v11];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"requires non-nil options.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v10 = [v13 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v8[2](v8, 0, v10, &v22);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", buf, 2u);
    }
  }
}

void __58__RTHintStore_enumerateStoredHintsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = *(*(*(a1 + 48) + 8) + 24);
  v9 = [v13 count];
  if ([*(a1 + 32) limit])
  {
    v10 = v9 + v8;
    if (v10 > [*(a1 + 32) limit])
    {
      v11 = [v13 subarrayWithRange:{0, v10 - objc_msgSend(*(a1 + 32), "limit")}];

      v13 = v11;
    }
  }

  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) += [v13 count];
  if ([*(a1 + 32) limit])
  {
    v12 = *(*(*(a1 + 48) + 8) + 24);
    if (v12 >= [*(a1 + 32) limit])
    {
      *a4 = 1;
    }
  }
}

- (void)_purgeHintsPredating:(id)a3 handler:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12 = @"date";
    v11 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v9 handler:v7];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", v10, 2u);
    }
  }
}

- (void)purgeHintsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RTHintStore_purgeHintsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchHintStatsNearLocation:(id)a3 handler:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      *buf = 0;
      v29 = buf;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__8;
      v32 = __Block_byref_object_dispose__8;
      v33 = 0;
      v9 = [MEMORY[0x277CBEB38] dictionary];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __51__RTHintStore__fetchHintStatsNearLocation_handler___block_invoke;
      aBlock[3] = &unk_2788C5240;
      v23 = v7;
      v10 = v8;
      v25 = v10;
      v26 = buf;
      v27 = a2;
      v11 = v9;
      v24 = v11;
      v12 = _Block_copy(aBlock);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__RTHintStore__fetchHintStatsNearLocation_handler___block_invoke_80;
      v20[3] = &unk_2788C48C0;
      v21 = v10;
      [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v20];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v15 = MEMORY[0x277CCACA8];
      v16 = NSStringFromSelector(a2);
      v17 = [v15 stringWithFormat:@"%@ requires a valid location.", v16];
      v35[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v19 = [v14 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v18];

      (*(v8 + 2))(v8, 0, v19);
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __51__RTHintStore__fetchHintStatsNearLocation_handler___block_invoke(uint64_t a1, void *a2)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTHintMO fetchRequest];
  v5 = *(a1 + 32);
  v38 = 0;
  v6 = [v4 setupBoundingBoxFetchRequestForLocation:v5 distance:0 entityCanBeLocationShifted:0 locationShifter:0 resultExpansionPredicates:0 resultFilteringPredicates:&v38 error:130.0];
  v7 = v38;
  v8 = v7;
  if (v6)
  {
    v31 = v7;
    v9 = objc_opt_new();
    [v9 setName:@"count"];
    v10 = MEMORY[0x277CCA9C0];
    v11 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"source"];
    v50[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v13 = [v10 expressionForFunction:@"count:" arguments:v12];
    [v9 setExpression:v13];

    [v9 setExpressionResultType:300];
    v49[0] = @"source";
    v49[1] = v9;
    v30 = v9;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    [v4 setPropertiesToFetch:v14];

    v48 = @"source";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v4 setPropertiesToGroupBy:v15];

    [v4 setResultType:2];
    [v4 setFetchBatchSize:1024];
    v16 = *(*(a1 + 56) + 8);
    obj = *(v16 + 40);
    v17 = [v3 executeFetchRequest:v4 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v27 = NSStringFromSelector(*(a1 + 64));
        v28 = [v17 count];
        v29 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138413058;
        v41 = v27;
        v42 = 2112;
        v43 = v4;
        v44 = 2048;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
      }
    }

    v32 = v3;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"source"];
          v26 = [v24 objectForKeyedSubscript:@"count"];
          [*(a1 + 40) setObject:v26 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v21);
    }

    (*(*(a1 + 48) + 16))();
    v8 = v31;
    v3 = v32;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchHintStatsNearLocation:(id)a3 handler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__RTHintStore_fetchHintStatsNearLocation_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v19 = v7;
    v20 = v9;
    dispatch_async(v10, block);
  }

  else if (v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 stringWithFormat:@"%@ requires a valid location.", v14];
    v22[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v11 errorWithDomain:v12 code:7 userInfo:v16];

    (v9)[2](v9, 0, v17);
  }
}

- (void)fetchIsHintNearLocation:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__RTHintStore_fetchIsHintNearLocation_withHandler___block_invoke;
  v8[3] = &unk_2788C5268;
  v9 = v6;
  v7 = v6;
  [(RTHintStore *)self fetchHintStatsNearLocation:a3 handler:v8];
}

void __51__RTHintStore_fetchIsHintNearLocation_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 allValues];
  v6 = [v7 valueForKeyPath:@"@sum.self"];
  (*(v4 + 16))(v4, [v6 integerValue] > 0, v5);
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_13;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    if (![v9 isEqual:objc_opt_class()])
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 stringWithFormat:@"error of type, %@, is not supported", v17];

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];

      v23 = v22;
      *a5 = v22;

      goto LABEL_13;
    }

    v25 = 0;
    v10 = [objc_opt_class() fetchRequestForHintEnumerationOptions:v8 error:&v25];
    v11 = v25;
    if (v11)
    {
      v12 = v11;
      *a5 = v12;

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    [v10 setFetchOffset:a4];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v10 = 0;
  }

LABEL_14:

  return v10;
}

@end