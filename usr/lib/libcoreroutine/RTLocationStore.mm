@interface RTLocationStore
- (RTLocationStore)initWithPersistenceManager:(id)a3;
- (RTLocationStore)initWithPersistenceManager:(id)a3 timerManager:(id)a4;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)fetchRequestFromStoredLocationOptions:(id)a3;
- (void)_fetchLastLocationWithHandler:(id)a3;
- (void)_fetchMetricsWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7;
- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)_flushCachedLocationsWithHandler:(id)a3;
- (void)_invalidateFlushTimer;
- (void)_removeLocationsPredating:(id)a3 handler:(id)a4;
- (void)_shutdownWithHandler:(id)a3;
- (void)_startFlushTimer;
- (void)_storeLocations:(id)a3 handler:(id)a4;
- (void)enumerateStoredLocationsWithContext:(id)a3 usingBlock:(id)a4;
- (void)fetchLastLocationWithHandler:(id)a3;
- (void)fetchMetricsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7;
- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)removeLocationsPredating:(id)a3 handler:(id)a4;
- (void)storeLocations:(id)a3 handler:(id)a4;
@end

@implementation RTLocationStore

- (void)_startFlushTimer
{
  if (!self->_flushTimer)
  {
    objc_initWeak(&location, self);
    timerManager = self->_timerManager;
    v4 = [(RTNotifier *)self queue];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __35__RTLocationStore__startFlushTimer__block_invoke;
    v10 = &unk_2788C5908;
    objc_copyWeak(&v11, &location);
    v5 = [(RTTimerManager *)timerManager timerWithIdentifier:@"com.apple.routined.locationStore.flushTimer" queue:v4 handler:&v7];
    flushTimer = self->_flushTimer;
    self->_flushTimer = v5;

    [(RTTimer *)self->_flushTimer fireAfterDelay:75.0 interval:75.0 leeway:15.0, v7, v8, v9, v10];
    [(RTTimer *)self->_flushTimer resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __35__RTLocationStore__startFlushTimer__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "flushTimer timer expiry", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flushCachedLocationsWithHandler:&__block_literal_global_81];
}

- (void)_invalidateFlushTimer
{
  [(RTTimer *)self->_flushTimer invalidate];
  flushTimer = self->_flushTimer;
  self->_flushTimer = 0;
}

void __35__RTLocationStore__startFlushTimer__block_invoke_20(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "flushed cached locations, error, %@", &v4, 0xCu);
    }
  }
}

- (RTLocationStore)initWithPersistenceManager:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RTLocationStore *)self initWithPersistenceManager:v4 timerManager:v5];

  return v6;
}

- (RTLocationStore)initWithPersistenceManager:(id)a3 timerManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v13 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: persistenceManager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_12;
  }

  v17.receiver = self;
  v17.super_class = RTLocationStore;
  v9 = [(RTStore *)&v17 initWithPersistenceManager:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timerManager, a4);
    v11 = [MEMORY[0x277CBEB18] array];
    locations = v10->_locations;
    v10->_locations = v11;
  }

  self = v10;
  v13 = self;
LABEL_10:

  return v13;
}

- (void)_shutdownWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__RTLocationStore__shutdownWithHandler___block_invoke;
  v6[3] = &unk_2788C48C0;
  v7 = v4;
  v5 = v4;
  [(RTLocationStore *)self _flushCachedLocationsWithHandler:v6];
}

uint64_t __40__RTLocationStore__shutdownWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_flushCachedLocationsWithHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(NSMutableArray *)self->_locations count])
  {
    v6 = [(NSMutableArray *)self->_locations copy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 count];
        v9 = [v6 firstObject];
        v10 = [v6 lastObject];
        *buf = 134218499;
        v15 = v8;
        v16 = 2117;
        v17 = v9;
        v18 = 2117;
        v19 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "flushing %lu locations to cache, first, %{sensitive}@, last, %{sensitive}@", buf, 0x20u);
      }
    }

    [(NSMutableArray *)self->_locations removeAllObjects];
    [(RTLocationStore *)self _invalidateFlushTimer];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__RTLocationStore__flushCachedLocationsWithHandler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = self;
    v13 = a2;
    v12 = v5;
    [(RTStore *)self storeWritableObjects:v6 handler:v11];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void __52__RTLocationStore__flushCachedLocationsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  if (v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, error, %@", &v9, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_storeLocations:(id)a3 handler:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RTService *)self isShuttingDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v31 = [v7 count];
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Ignoring %lu locations for storage, shutdown in progress", buf, 0xCu);
      }
    }

LABEL_19:
    if (v8)
    {
      v8[2](v8, 0);
    }

    goto LABEL_21;
  }

  if ([v7 count])
  {
    [(NSMutableArray *)self->_locations addObjectsFromArray:v7];
    if ([(NSMutableArray *)self->_locations count])
    {
      if (!self->_flushTransaction)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = [v10 stringWithFormat:@"%@-%@", v12, v13];
        [v14 UTF8String];
        v15 = os_transaction_create();
        flushTransaction = self->_flushTransaction;
        self->_flushTransaction = v15;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v29 = NSStringFromSelector(a2);
            *buf = 138412546;
            v31 = v28;
            v32 = 2112;
            v33 = v29;
            _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
          }
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v7 count];
        v24 = [v7 firstObject];
        v25 = [v7 lastObject];
        v26 = [(NSMutableArray *)self->_locations count];
        *buf = 134218755;
        v31 = v23;
        v32 = 2117;
        v33 = v24;
        v34 = 2117;
        v35 = v25;
        v36 = 2048;
        v37 = v26;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "added %lu locations to cache, first, %{sensitive}@, last, %{sensitive}@, total, %lu", buf, 0x2Au);
      }
    }

    [(RTLocationStore *)self _startFlushTimer];
    if ([(NSMutableArray *)self->_locations count]>= 0x97)
    {
      [(RTLocationStore *)self _flushCachedLocationsWithHandler:&__block_literal_global_32_0];
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D01448];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"requires valid locations.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];
    (v8)[2](v8, v22);
  }

LABEL_21:
}

void __43__RTLocationStore__storeLocations_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "flushed cached locations, error, %@", &v4, 0xCu);
    }
  }
}

- (void)storeLocations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RTLocationStore_storeLocations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[RTLocationStore _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
      v47 = 1024;
      v48 = 235;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toDate (in %s:%d)", buf, 0x12u);
    }

    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[RTLocationStore _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
      v47 = 1024;
      v48 = 236;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_19;
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "[RTLocationStore _fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler:]";
    v47 = 1024;
    v48 = 234;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromDate (in %s:%d)", buf, 0x12u);
  }

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v13 && v14)
  {
    if ([v13 compare:v14] != 1)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke;
      aBlock[3] = &unk_2788CCBA8;
      v35 = v13;
      v36 = v14;
      v38 = a5;
      v39 = a6;
      v40 = a2;
      v28 = v15;
      v37 = v28;
      v29 = _Block_copy(aBlock);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke_58;
      v31[3] = &unk_2788CCBD0;
      v31[4] = self;
      v32 = v29;
      v33 = v28;
      v30 = v29;
      [(RTLocationStore *)self _flushCachedLocationsWithHandler:v31];

      v19 = v35;
      goto LABEL_19;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v41 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v19 = [v13 stringFromDate];
    v20 = [v14 stringFromDate];
    v21 = [v18 stringWithFormat:@"fromDate, %@, postdates toDate, %@", v19, v20];
    v42 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v23 = [v16 errorWithDomain:v17 code:7 userInfo:v22];
    (*(v15 + 2))(v15, 0, v23);
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v43 = *MEMORY[0x277CCA450];
    v44 = @"requires valid dates.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v20 = [v26 errorWithDomain:v27 code:7 userInfo:v19];
    (*(v15 + 2))(v15, 0, v20);
  }

LABEL_19:
}

void __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTCLLocationMO fetchRequest];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:1];
  v29[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v4 setSortDescriptors:v6];

  v7 = MEMORY[0x277CCA920];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", *(a1 + 32), @"timestamp"];
  v28[0] = v8;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timestamp", *(a1 + 40)];
  v28[1] = v9;
  v10 = MEMORY[0x277CCAC30];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v12 = [v10 predicateWithFormat:@"%K <= %@", @"horizontalAccuracy", v11];
  v28[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v14 = [v7 andPredicateWithSubpredicates:v13];
  [v4 setPredicate:v14];

  [v4 setFetchBatchSize:3600];
  [v4 setFetchLimit:*(a1 + 64)];
  v19 = 0;
  v15 = [v3 countForFetchRequest:v4 error:&v19];

  v16 = v19;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 72));
      *buf = 138413058;
      v21 = v18;
      v22 = 2112;
      v23 = v4;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke_58(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke_2;
  block[3] = &unk_2788C8DF0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__RTLocationStore__fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__RTLocationStore_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_handler___block_invoke;
  v19[3] = &unk_2788C54B8;
  v19[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTLocationStore _fetchStoredLocationsWithOptions:handler:]";
      v12 = 1024;
      v13 = 321;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01318]) initWithEnumerationOptions:v6];
  [(RTLocationStore *)self _fetchStoredLocationsWithContext:v9 handler:v7];
}

- (void)fetchLastLocationWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTLocationStore_fetchLastLocationWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchLastLocationWithHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke;
    aBlock[3] = &unk_2788CB7D8;
    v19 = a2;
    v7 = v5;
    v18 = v7;
    v8 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke_64;
    v14[3] = &unk_2788CCBF8;
    v14[4] = self;
    v15 = v7;
    v16 = v8;
    v9 = v8;
    [(RTLocationStore *)self _flushCachedLocationsWithHandler:v14];

    v10 = v18;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTLocationStore _fetchLastLocationWithHandler:]";
      v24 = 1024;
      v25 = 338;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v20 = *MEMORY[0x277CCA450];
    v21 = @"A handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "A handler is a required parameter, %@", buf, 0xCu);
    }
  }
}

void __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTCLLocationMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:0];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v4 setSortDescriptors:v6];

  [v4 setFetchLimit:1];
  v14 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v14];

  v8 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 40));
      v13 = [v7 count];
      *buf = 138413058;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      v19 = 2048;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 firstObject];
    v10 = [MEMORY[0x277CE41F8] createWithManagedObject:v11];
  }

  (*(*(a1 + 32) + 16))();
}

void __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke_64(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[5] + 2);

    v3();
  }

  else
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke_2;
    block[3] = &unk_2788C8DF0;
    block[4] = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__RTLocationStore__fetchLastLocationWithHandler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLocationStore_fetchStoredLocationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v20 = v7;
    v21 = self;
    v23 = a2;
    v9 = v8;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_65;
    v16[3] = &unk_2788CCBF8;
    v16[4] = self;
    v17 = v9;
    v18 = v10;
    v11 = v10;
    [(RTLocationStore *)self _flushCachedLocationsWithHandler:v16];

    v12 = v20;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTLocationStore _fetchStoredLocationsWithContext:handler:]";
      v28 = 1024;
      v29 = 406;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v24 = *MEMORY[0x277CCA450];
    v25 = @"A handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "A handler is a required parameter, %@", buf, 0xCu);
    }
  }
}

void __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v7 = *(a1 + 40);
  v8 = [v5 options];
  v9 = [v7 fetchRequestFromStoredLocationOptions:v8];

  [v9 setFetchOffset:{objc_msgSend(*(a1 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v35 = [v9 fetchLimit];
      v36 = 2048;
      v37 = [v9 fetchOffset];
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "using options fetch limit, %lu, fetch offset, %lu", buf, 0x16u);
    }
  }

  v32 = 0;
  v11 = [v3 executeFetchRequest:v9 error:&v32];
  v12 = v32;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v23 = NSStringFromSelector(*(a1 + 56));
      v24 = [v11 count];
      *buf = 138413059;
      v35 = v23;
      v36 = 2117;
      v37 = v9;
      v38 = 2048;
      v39 = v24;
      v40 = 2112;
      v41 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "fetchLimit")}];
  if (!v12)
  {
    v25 = a1;
    v26 = v6;
    v27 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [MEMORY[0x277CE41F8] createWithManagedObject:v20];
          if (v22)
          {
            [v14 addObject:v22];
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }

    v6 = v26;
    v3 = v27;
    a1 = v25;
  }

  (*(*(a1 + 48) + 16))();
}

void __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_65(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[5] + 2);

    v3();
  }

  else
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_2;
    block[3] = &unk_2788C8DF0;
    block[4] = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__RTLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLocationStore_fetchStoredLocationsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)enumerateStoredLocationsWithContext:(id)a3 usingBlock:(id)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v46 = 0;
    if (v7)
    {
      v9 = dispatch_semaphore_create(0);
      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke;
      block[3] = &unk_2788C5020;
      block[4] = self;
      v45 = a2;
      v11 = v9;
      v44 = v11;
      dispatch_async(v10, block);

      v12 = v11;
      v13 = [MEMORY[0x277CBEAA8] now];
      v14 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v12, v14))
      {
        v39 = [MEMORY[0x277CBEAA8] now];
        v40 = v13;
        [v39 timeIntervalSinceDate:v13];
        v16 = v15;
        v17 = objc_opt_new();
        v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_208];
        v19 = [MEMORY[0x277CCACC8] callStackSymbols];
        v20 = [v19 filteredArrayUsingPredicate:v18];
        v21 = [v20 firstObject];

        v38 = v17;
        [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
        v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277D01448];
        v52[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v25 = 1;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
        v27 = [v23 errorWithDomain:v24 code:15 userInfo:v26];

        if (v27)
        {
          v28 = v27;

          v25 = 0;
        }

        v13 = v40;
      }

      else
      {
        v27 = 0;
        v25 = 1;
      }

      v33 = v27;
      if (v25)
      {
        v34 = [v7 options];
        v35 = [(RTLocationStore *)self fetchRequestFromStoredLocationOptions:v34];

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_69;
        aBlock[3] = &unk_2788CCC20;
        v42 = v8;
        v36 = _Block_copy(aBlock);
        [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v35 enumerationBlock:v36];
      }

      else
      {
        (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], v33, &v46);
      }
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277D01448];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"requires non-nil options.";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v12 = [v29 errorWithDomain:v30 code:7 userInfo:v31];

      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v37;
        v48 = 2112;
        v49 = v12;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], v12, &v46);
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

void __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_2;
  v4[3] = &unk_2788C4D10;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _flushCachedLocationsWithHandler:v4];
}

void __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error, %@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __66__RTLocationStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_69(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  (*(*(a1 + 32) + 16))();
  if (a3 || ![v7 count])
  {
    *a4 = 1;
  }
}

- (void)_removeLocationsPredating:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = a4;
    v9 = [v7 predicateWithFormat:@"%K < %@", @"timestamp", v6];
    [(NSMutableArray *)self->_locations filterUsingPredicate:v9];
    v17 = @"timestamp";
    v16 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v11 purgeLimit:43200 handler:v8];
  }

  else
  {
    v12 = a4;
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTLocationStore _removeLocationsPredating:handler:]";
      v23 = 1024;
      v24 = 538;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"requires a valid date.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v14 errorWithDomain:v15 code:7 userInfo:v9];
    v12[2](v12, v11);
  }
}

- (void)removeLocationsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTLocationStore_removeLocationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchMetricsWithOptions:(id)a3 handler:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [v7 dateInterval];

    if (v9)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v21 = v7;
      v23 = a2;
      v10 = v8;
      v22 = v10;
      v11 = _Block_copy(aBlock);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke_95;
      v17[3] = &unk_2788CCBD0;
      v17[4] = self;
      v18 = v11;
      v19 = v10;
      v12 = v11;
      [(RTLocationStore *)self _flushCachedLocationsWithHandler:v17];

      v13 = v21;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"requires valid dateInterval.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v16 = [v14 errorWithDomain:v15 code:7 userInfo:v13];
      (*(v8 + 2))(v8, 0, v16);
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

void __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v75 = a2;
  v3 = objc_opt_new();
  v78 = objc_opt_new();
  v72 = +[RTCLLocationMO fetchRequest];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:? ascending:?];
  v103[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
  [v72 setSortDescriptors:v5];

  obja = MEMORY[0x277CCA920];
  v6 = MEMORY[0x277CCAC30];
  v82 = [*(a1 + 32) dateInterval];
  v80 = [v82 startDate];
  v7 = [v6 predicateWithFormat:@"%@ <= %K", v80, @"timestamp"];
  v102[0] = v7;
  v8 = MEMORY[0x277CCAC30];
  v9 = a1;
  v79 = a1;
  v10 = [*(a1 + 32) dateInterval];
  v11 = [v10 endDate];
  v12 = [v8 predicateWithFormat:@"%K <= %@", @"timestamp", v11];
  v102[1] = v12;
  v13 = MEMORY[0x277CCAC30];
  v14 = MEMORY[0x277CCABB0];
  [*(v9 + 32) uncertaintyThreshold];
  v15 = [v14 numberWithDouble:?];
  v16 = [v13 predicateWithFormat:@"%K <= %@", @"horizontalAccuracy", v15];
  v102[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];
  v18 = [obja andPredicateWithSubpredicates:v17];
  v19 = v72;
  [v72 setPredicate:v18];

  [v72 setIncludesPendingChanges:0];
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"latitude", @"longitude", @"timestamp", 0}];
  if ([*(v79 + 32) includeFixMetrics])
  {
    [v20 addObject:@"type"];
    [v20 addObject:@"horizontalAccuracy"];
  }

  if ([*(v79 + 32) includeSignalEnvironment])
  {
    [v20 addObject:@"signalEnvironmentType"];
  }

  v71 = v20;
  [v72 setPropertiesToFetch:v20];
  [v72 setResultType:2];
  [v72 setFetchLimit:3600];
  [v72 setFetchOffset:0];
  v21 = 0;
  v22 = 0;
  obj = 0;
  v23 = 0;
  v24 = 1.79769313e308;
  v25 = -1.79769313e308;
  v26 = -1.79769313e308;
  v27 = 1.79769313e308;
  do
  {
    context = objc_autoreleasePoolPush();
    v90 = 0;
    v28 = [v75 executeFetchRequest:v19 error:&v90];
    v74 = v90;

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v28;
    v83 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v83)
    {
      v29 = 0;
      v81 = *v87;
      do
      {
        v30 = 0;
        do
        {
          v31 = v23;
          v32 = v21;
          if (*v87 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v86 + 1) + 8 * v30);
          v34 = objc_autoreleasePoolPush();
          if (!(([v3 count] != 0) | v29 & 1))
          {
            if ([*(v79 + 32) includeFixMetrics])
            {
              v35 = [v33 objectForKeyedSubscript:@"type"];
              [v3 setFirstFixType:{objc_msgSend(v35, "unsignedIntValue")}];

              v36 = [v33 objectForKeyedSubscript:@"horizontalAccuracy"];
              [v36 doubleValue];
              [v3 setFirstFixHorizontalUncertainty:?];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v37 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v38 = [v3 firstFixType];
                  [v3 firstFixHorizontalUncertainty];
                  *buf = 134218240;
                  v92 = v38;
                  v93 = 2048;
                  v94 = v39;
                  _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "type, %lu, uncertainty %f", buf, 0x16u);
                }
              }
            }

            if ([*(v79 + 32) includeSignalEnvironment])
            {
              v40 = [v33 objectForKeyedSubscript:@"signalEnvironmentType"];
              [v3 setSignalEnvironment:{objc_msgSend(v40, "unsignedIntValue")}];
            }

            v29 = 1;
          }

          v41 = [v33 objectForKeyedSubscript:@"timestamp"];
          if (v41)
          {
            if (!v31)
            {
              goto LABEL_25;
            }

LABEL_22:
            [v41 timeIntervalSinceDate:v31];
            v43 = v42;
            [v3 maxIntervalBetweenLocations];
            if (v43 >= v44)
            {
              v44 = v43;
            }

            [v3 setMaxIntervalBetweenLocations:v44];
            goto LABEL_25;
          }

          v58 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v92 = "[RTLocationStore _fetchMetricsWithOptions:handler:]_block_invoke";
            v93 = 1024;
            LODWORD(v94) = 655;
            _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timestamp (in %s:%d)", buf, 0x12u);
          }

          if (v31)
          {
            goto LABEL_22;
          }

LABEL_25:
          v23 = v41;

          v45 = [v33 objectForKeyedSubscript:@"latitude"];
          [v45 doubleValue];
          v47 = v46;

          v48 = [v33 objectForKeyedSubscript:@"longitude"];
          [v48 doubleValue];
          v50 = v49;

          if (v47 == 0.0)
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v92 = "[RTLocationStore _fetchMetricsWithOptions:handler:]_block_invoke";
              v93 = 1024;
              LODWORD(v94) = 666;
              _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: latitude (in %s:%d)", buf, 0x12u);
            }
          }

          if (v50 == 0.0)
          {
            v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v92 = "[RTLocationStore _fetchMetricsWithOptions:handler:]_block_invoke";
              v93 = 1024;
              LODWORD(v94) = 667;
              _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: longitude (in %s:%d)", buf, 0x12u);
            }
          }

          if (v47 < v27)
          {
            v27 = v47;
          }

          if (v47 > v26)
          {
            v26 = v47;
          }

          if (v50 < v24)
          {
            v24 = v50;
          }

          if (v50 > v25)
          {
            v25 = v50;
          }

          v21 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:v47 horizontalUncertainty:v50 date:0.0];
          if (v32)
          {
            v85 = v22;
            [v78 distanceFromLocation:v32 toLocation:v21 error:&v85];
            v54 = v53;
            v55 = v85;

            [v3 distanceTraveled];
            [v3 setDistanceTraveled:v54 + v56];
            if (v55)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v57 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v92 = v55;
                  _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
                }
              }

              v22 = v55;
            }

            else
            {
              v22 = 0;
            }
          }

          objc_autoreleasePoolPop(v34);
          ++v30;
        }

        while (v83 != v30);
        v83 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
      }

      while (v83);
    }

    [v3 setCount:{objc_msgSend(v3, "count") + objc_msgSend(obj, "count")}];
    v19 = v72;
    [v72 setFetchOffset:{objc_msgSend(v3, "count")}];
    [v75 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([obj count] && !v74);
  if (v27 == 1.79769313e308 || v24 == 1.79769313e308 || v26 == -2.22507386e-308 || v25 == -2.22507386e-308)
  {
    v63 = v22;
  }

  else
  {
    v59 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:v27 horizontalUncertainty:v24 date:0.0];
    v60 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:v26 horizontalUncertainty:v25 date:0.0];
    v84 = v22;
    [v78 distanceFromLocation:v59 toLocation:v60 error:&v84];
    v62 = v61;
    v63 = v84;

    [v3 setSpread:v62 * 0.5];
    if (v63 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v64 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v92 = v63;
        _os_log_debug_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v69 = NSStringFromSelector(*(v79 + 48));
      v70 = [v72 fetchOffset];
      *buf = 138413314;
      v92 = v69;
      v93 = 2112;
      v94 = v72;
      v95 = 2048;
      v96 = v70;
      v97 = 2112;
      v98 = v3;
      v99 = 2112;
      v100 = v74;
      _os_log_debug_impl(&dword_2304B3000, v65, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, metrics, %@, error, %@", buf, 0x34u);
    }
  }

  v66 = *(v79 + 40);
  v67 = _RTSafeArray();
  v68 = _RTMultiErrorCreate();
  (*(v66 + 16))(v66, v3, v68);
}

void __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke_95(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C8DF0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__RTLocationStore__fetchMetricsWithOptions_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchMetricsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTLocationStore_fetchMetricsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!a5)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"error of type, %@, is not supported", v13];

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v14;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];

      v19 = v18;
      *a5 = v18;

LABEL_8:
      v21 = 0;
      goto LABEL_13;
    }

    v21 = [(RTLocationStore *)self fetchRequestFromStoredLocationOptions:v9];
    [v21 setFetchOffset:a4];
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)fetchRequestFromStoredLocationOptions:(id)a3
{
  v63[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = +[RTCLLocationMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:{objc_msgSend(v3, "ascending")}];
    v63[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    [v4 setSortDescriptors:v6];

    v7 = [v3 dateInterval];
    v8 = [v7 startDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA8] distantPast];
    }

    log = v10;

    v11 = [v3 dateInterval];
    v12 = [v11 endDate];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v15 = v14;

    [v3 horizontalAccuracy];
    if (v16 == 0.0)
    {
      v18 = 1.79769313e308;
    }

    else
    {
      [v3 horizontalAccuracy];
      v18 = v17;
    }

    if ([v3 batchSize])
    {
      v19 = [v3 batchSize];
      v20 = 3600;
      if (v19 < 0xE10)
      {
        v20 = v19;
      }
    }

    else
    {
      v20 = 3600;
    }

    v57 = v20;
    v56 = [v3 type];
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", log, @"timestamp"];
    v62[0] = v23;
    v58 = v15;
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timestamp", v15];
    v62[1] = v24;
    v25 = MEMORY[0x277CCAC30];
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    v27 = [v25 predicateWithFormat:@"%K <= %@", @"horizontalAccuracy", v26];
    v62[2] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
    v29 = [v22 andPredicateWithSubpredicates:v28];

    v55 = v29;
    [v21 addObject:v29];
    v30 = [v3 boundingBoxLocation];

    if (v30)
    {
      *buf = 0;
      v31 = [v3 boundingBoxLocation];
      [v31 coordinate];
      v32 = [v3 boundingBoxLocation];
      [v32 coordinate];
      v33 = [v3 boundingBoxLocation];
      [v33 horizontalAccuracy];
      RTCommonCalculateBoundingBox();

      v51 = MEMORY[0x277CCA920];
      v34 = MEMORY[0x277CCAC30];
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v52 = [v34 predicateWithFormat:@"%@ <= %K", v53, @"longitude"];
      v61[0] = v52;
      v35 = MEMORY[0x277CCAC30];
      v36 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v37 = [v35 predicateWithFormat:@"%K <= %@", @"longitude", v36];
      v61[1] = v37;
      v54 = v4;
      v38 = MEMORY[0x277CCAC30];
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v40 = [v38 predicateWithFormat:@"%@ <= %K", v39, @"latitude"];
      v61[2] = v40;
      v41 = MEMORY[0x277CCAC30];
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v43 = [v41 predicateWithFormat:@"%K <= %@", @"latitude", v42];
      v61[3] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
      v45 = [v51 andPredicateWithSubpredicates:v44];

      v4 = v54;
      [v21 addObject:v45];
    }

    if (v56 <= 0xD)
    {
      v46 = MEMORY[0x277CCAC30];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      v48 = [v46 predicateWithFormat:@"%K == %@", @"type", v47];

      [v21 addObject:v48];
    }

    v49 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
    [v4 setPredicate:v49];

    [v4 setFetchBatchSize:100];
    [v4 setFetchLimit:v57];
  }

  else
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end