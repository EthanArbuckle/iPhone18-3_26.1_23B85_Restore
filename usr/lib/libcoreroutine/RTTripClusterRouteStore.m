@interface RTTripClusterRouteStore
+ (id)predicateForClusterID:(id)a3;
- (BOOL)deleteTripClusterRouteWithClusterID:(id)a3;
- (BOOL)deleteTripClusterRouteWithClusterID:(id)a3 maxDeleteAttempts:(unint64_t)a4;
- (BOOL)storeTripClusterRoute:(id)a3;
- (RTTripClusterRouteStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6;
- (id)fetchRequestFromStoredTripClusterLocationsOptions:(id)a3 inManagedObjectContext:(id)a4;
- (id)getTripClusterRouteWithOptions:(id)a3;
- (unint64_t)getTripClusterRouteCountWithClusterID:(id)a3;
- (void)_deleteTripClusterRouteWithUUID:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRouteCountWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRouteWithContext:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRouteWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeTripClusterRouteWithHandler:(id)a3;
- (void)_storeTripClusterRoute:(id)a3 handler:(id)a4;
- (void)deleteTripClusterRouteWithClusterID:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRouteCountWithClusterID:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRouteWithClusterID:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRouteWithOptions:(id)a3 handler:(id)a4;
- (void)purgeTripClusterRouteWithHandler:(id)a3;
- (void)storeTripClusterRoute:(id)a3 handler:(id)a4;
@end

@implementation RTTripClusterRouteStore

- (RTTripClusterRouteStore)initWithPersistenceManager:(id)a3
{
  v3 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterRouteStore;
    v5 = [(RTStore *)&v13 initWithPersistenceManager:?];
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ success.", buf, 0x16u);
      }
    }

    v3 = v5;
    v7 = v3;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_storeTripClusterRoute:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RTTripClusterRouteStore__storeTripClusterRoute_handler___block_invoke;
  v8[3] = &unk_2788C4F60;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(RTStore *)self storeWritableObjects:a3 handler:v8];
}

void __58__RTTripClusterRouteStore__storeTripClusterRoute_handler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 localizedDescription];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Error storing routes,%@", &v9, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)storeTripClusterRoute:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v18 = v10;
      v19 = 2048;
      v20 = [v6 count];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@ storeTripClusterRoute invoked with route arrayCount,%lu", buf, 0x16u);
    }
  }

  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTTripClusterRouteStore_storeTripClusterRoute_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(v11, block);
}

- (BOOL)storeTripClusterRoute:(id)a3
{
  v56[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__115;
    v49 = __Block_byref_object_dispose__115;
    v50 = 0;
    v5 = dispatch_semaphore_create(0);
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __49__RTTripClusterRouteStore_storeTripClusterRoute___block_invoke;
    v42 = &unk_2788C4618;
    v44 = &v45;
    v6 = v5;
    v43 = v6;
    [(RTTripClusterRouteStore *)self storeTripClusterRoute:v4 handler:&v39];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      [v10 timeIntervalSinceDate:v8];
      v12 = v11;
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_95];
      v15 = [MEMORY[0x277CCACC8] callStackSymbols];
      v16 = [v15 filteredArrayUsingPredicate:v14];
      v17 = [v16 firstObject];

      [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v56[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v56 count:1];
      v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      v21 = 0;
    }

    v24 = v21;
    if (v24)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [v4 firstObject];
        v29 = [v28 clusterID];
        v30 = [v29 UUIDString];
        v31 = [v24 localizedDescription];
        *buf = 138412802;
        *&buf[4] = v27;
        v52 = 2112;
        v53 = v30;
        v54 = 2112;
        v55 = v31;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore error storing cluster route for cluster ID,%@,error,%@", buf, 0x20u);
      }
    }

    else
    {
      if (!v46[5])
      {
        v23 = 1;
        goto LABEL_16;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [v4 firstObject];
        v36 = [v35 clusterID];
        v37 = [v36 UUIDString];
        v38 = [v46[5] localizedDescription];
        *buf = 138412802;
        *&buf[4] = v34;
        v52 = 2112;
        v53 = v37;
        v54 = 2112;
        v55 = v38;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error storing cluster route for cluster ID,%@,error,%@", buf, 0x20u);
      }
    }

    v23 = 0;
LABEL_16:

    _Block_object_dispose(&v45, 8);
    goto LABEL_17;
  }

  v23 = 0;
LABEL_17:

  return v23;
}

void __49__RTTripClusterRouteStore_storeTripClusterRoute___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchTripClusterRouteWithClusterID:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v6 UUIDString];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetching routes with clusterID,%@", buf, 0x16u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:v6];
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTTripClusterRouteStore_fetchTripClusterRouteWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v17 = v12;
  v18 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (void)fetchTripClusterRouteWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTTripClusterRouteStore_fetchTripClusterRouteWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)getTripClusterRouteWithOptions:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__115;
  v45 = __Block_byref_object_dispose__115;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __58__RTTripClusterRouteStore_getTripClusterRouteWithOptions___block_invoke;
  v36 = &unk_2788C4870;
  v37 = self;
  v6 = v4;
  v38 = v6;
  v40 = &v41;
  v7 = v5;
  v39 = v7;
  [(RTTripClusterRouteStore *)self fetchTripClusterRouteWithOptions:v6 handler:&v33];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_95];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v52[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v6 clusterID];
      v31 = [v30 UUIDString];
      v32 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v48 = 2112;
      v49 = v31;
      v50 = 2112;
      v51 = v32;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching routes for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v26;
}

void __58__RTTripClusterRouteStore_getTripClusterRouteWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [*(a1 + 40) clusterID];
        v11 = [v10 UUIDString];
        v12 = [v6 localizedDescription];
        v14 = 138412802;
        v15 = v9;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error fetching routes for cluster with cluster ID,%@,error,%@", &v14, 0x20u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)fetchTripClusterRouteCountWithClusterID:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v6 UUIDString];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetching route count with clusterID,%@", buf, 0x16u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:v6];
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTTripClusterRouteStore_fetchTripClusterRouteCountWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v17 = v12;
  v18 = v7;
  v14 = v7;
  v15 = v12;
  dispatch_async(v13, block);
}

- (unint64_t)getTripClusterRouteCountWithClusterID:(id)a3
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v5 = dispatch_semaphore_create(0);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __65__RTTripClusterRouteStore_getTripClusterRouteCountWithClusterID___block_invoke;
  v35 = &unk_2788C48E8;
  v36 = self;
  v6 = v4;
  v37 = v6;
  v39 = &v40;
  v7 = v5;
  v38 = v7;
  [(RTTripClusterRouteStore *)self fetchTripClusterRouteCountWithClusterID:v6 handler:&v32];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_95];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v49[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v49 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v6 UUIDString];
      v31 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v45 = 2112;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching route count for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v41[3];

  _Block_object_dispose(&v40, 8);
  return v26;
}

void __65__RTTripClusterRouteStore_getTripClusterRouteCountWithClusterID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [*(a1 + 40) UUIDString];
        v10 = [v5 localizedDescription];
        v11 = 138412802;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,Error fetching route count for cluster with cluster ID,%@,error,%@", &v11, 0x20u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchTripClusterRouteWithOptions:(id)a3 handler:(id)a4
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
      v11 = "[RTTripClusterRouteStore _fetchTripClusterRouteWithOptions:handler:]";
      v12 = 1024;
      v13 = 210;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D013A0]) initWithEnumerationOptions:v6];
  [(RTTripClusterRouteStore *)self _fetchTripClusterRouteWithContext:v9 handler:v7];
}

- (void)_fetchTripClusterRouteWithContext:(id)a3 handler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    aBlock[4] = self;
    v8 = v6;
    v25 = v8;
    v9 = v7;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke_47;
    block[3] = &unk_2788C4F88;
    block[4] = self;
    v21 = v8;
    v22 = v10;
    v23 = v9;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTTripClusterRouteStore _fetchTripClusterRouteWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 219;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Handler is a required parameter.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v15 localizedDescription];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Error,%@", buf, 0x16u);
      }
    }
  }
}

void __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v36 = a1;
  v5 = [*(a1 + 40) options];
  v6 = [v4 fetchRequestFromStoredTripClusterLocationsOptions:v5 inManagedObjectContext:v3];

  v41 = 0;
  v7 = [v3 executeFetchRequest:v6 error:&v41];
  v8 = v41;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 count];
      *buf = 138412802;
      v44 = v11;
      v45 = 2048;
      v46 = v12;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Fetch results,count,%lu,error,%@", buf, 0x20u);
    }
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if (!v8)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v7;
    v18 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v33 = v7;
      v34 = v6;
      v35 = v3;
      v20 = *v38;
      v21 = off_2788C2000;
      v22 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          v26 = [(__objc2_class *)v21[9] createWithManagedObject:v24];
          if (v26)
          {
            [v13 addObject:v26];
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = objc_opt_class();
              NSStringFromClass(v28);
              v29 = v13;
              v30 = v14;
              v32 = v31 = v22;
              *buf = 138412290;
              v44 = v32;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@,Error creating RTTripClusterRoute from routeMO", buf, 0xCu);

              v22 = v31;
              v14 = v30;
              v13 = v29;
              v21 = off_2788C2000;
            }
          }

          objc_autoreleasePoolPop(v25);
        }

        v19 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
      v6 = v34;
      v3 = v35;
      v7 = v33;
      v8 = 0;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v8 localizedDescription];
      *buf = 138412546;
      v44 = v16;
      v45 = 2112;
      v46 = v17;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Error during fetch,%@", buf, 0x16u);
    }

LABEL_23:
  }

  (*(*(v36 + 48) + 16))();
}

void __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke_47(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [*(a1 + 40) options];
      v6 = [v5 clusterID];
      v7 = [v6 UUIDString];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Dispatching fetch block for clusterID,%@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke_48;
  v10[3] = &unk_2788C4F60;
  v10[4] = v8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v8 _performBlock:v9 contextType:1 errorHandler:v10];
}

void __69__RTTripClusterRouteStore__fetchTripClusterRouteWithContext_handler___block_invoke_48(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 localizedDescription];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error performing fetch block,%@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchTripClusterRouteCountWithOptions:(id)a3 handler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    aBlock[4] = self;
    v8 = v6;
    v25 = v8;
    v9 = v7;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke_49;
    block[3] = &unk_2788C4F88;
    block[4] = self;
    v21 = v8;
    v22 = v10;
    v23 = v9;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTTripClusterRouteStore _fetchTripClusterRouteCountWithOptions:handler:]";
      v29 = 1024;
      LODWORD(v30) = 268;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Handler is a required parameter.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v15 localizedDescription];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Error,%@", buf, 0x16u);
      }
    }
  }
}

void __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 fetchRequestFromStoredTripClusterLocationsOptions:v4 inManagedObjectContext:v5];
  v12 = 0;
  v7 = [v5 countForFetchRequest:v6 error:&v12];

  v8 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412802;
      v14 = v11;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Count fetch results,count,%lu,error,%@", buf, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

void __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke_49(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [*(a1 + 40) clusterID];
      v6 = [v5 UUIDString];
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Dispatching count fetch block for clusterID,%@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke_50;
  v9[3] = &unk_2788C4F60;
  v9[4] = v7;
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v7 _performBlock:v8 contextType:1 errorHandler:v9];
}

void __74__RTTripClusterRouteStore__fetchTripClusterRouteCountWithOptions_handler___block_invoke_50(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 localizedDescription];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error performing count fetch block,%@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (!a5)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v13 stringWithFormat:@"error of type, %@, is not supported", v15];

      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v20 = [v17 errorWithDomain:v18 code:7 userInfo:v19];

      v21 = v20;
      *a5 = v20;

LABEL_8:
      v23 = 0;
      goto LABEL_13;
    }

    v23 = [(RTTripClusterRouteStore *)self fetchRequestFromStoredTripClusterLocationsOptions:v10 inManagedObjectContext:v11];
    [v23 setFetchOffset:a4];
    *a5 = 0;
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v23 = 0;
  }

LABEL_13:

  return v23;
}

- (id)fetchRequestFromStoredTripClusterLocationsOptions:(id)a3 inManagedObjectContext:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[RTTripClusterRouteMO fetchRequest];
    [v5 setReturnsObjectsAsFaults:0];
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"sequence" ascending:1];
    v20[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [v5 setSortDescriptors:v7];

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v4 clusterID];

    if (v9)
    {
      v10 = MEMORY[0x277CCAC30];
      v11 = [v4 clusterID];
      v12 = [v10 predicateWithFormat:@"clusterID == %@", v11];

      [v8 addObject:v12];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,Error,missing clusterID in options. This will fetch all routes", buf, 0xCu);
      }
    }

LABEL_5:
    if ([v8 count])
    {
      v13 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
      [v5 setPredicate:v13];
    }

    if ([v4 batchSize])
    {
      v14 = [v4 batchSize];
    }

    else
    {
      v14 = 3600;
    }

    [v5 setFetchLimit:v14];
    goto LABEL_17;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  v5 = 0;
LABEL_17:

  return v5;
}

+ (id)predicateForClusterID:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_deleteTripClusterRouteWithUUID:(id)a3 handler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[RTTripClusterRouteStore _deleteTripClusterRouteWithUUID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 377;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterRouteStore _deleteTripClusterRouteWithUUID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 378;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__RTTripClusterRouteStore__deleteTripClusterRouteWithUUID_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v23 = v7;
    v25 = a2;
    v13 = v9;
    v24 = v13;
    v14 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v14 contextType:0 errorHandler:v13];

    v15 = v23;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"requires a non-nil uuid.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

    if (v9)
    {
      (v9)[2](v9, v15);
    }
  }
}

void __67__RTTripClusterRouteStore__deleteTripClusterRouteWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterRouteMO"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"clusterID", *(a1 + 32)];
  [v5 setPredicate:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:2];
  v13 = 0;
  v8 = [v4 executeRequest:v7 error:&v13];

  v9 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [v8 result];
      *buf = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,request,%@,deleted count,%@,error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteTripClusterRouteWithClusterID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTTripClusterRouteStore_deleteTripClusterRouteWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)deleteTripClusterRouteWithClusterID:(id)a3 maxDeleteAttempts:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 - 11 <= 0xFFFFFFFFFFFFFFF5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *buf = 138413058;
      v26 = v21;
      v27 = 2112;
      *v28 = v22;
      *&v28[8] = 2048;
      *v29 = 1;
      *&v29[8] = 2048;
      v30 = 10;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@,%@,maxDeleteAttempts out of range. Clamping to between %lu and %lu", buf, 0x2Au);
    }
  }

  v10 = 10;
  if (a4 < 0xA)
  {
    v10 = a4;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1;
  v13 = MEMORY[0x277D86220];
  *&v8 = 138413058;
  v23 = v8;
  v24 = v11;
  do
  {
    v14 = [(RTTripClusterRouteStore *)self deleteTripClusterRouteWithClusterID:v7, v23];
    if (v14)
    {
      break;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v7 UUIDString];
        *buf = v23;
        v26 = v17;
        v27 = 1024;
        *v28 = v12;
        *&v28[4] = 1024;
        *&v28[6] = v24;
        *v29 = 2112;
        *&v29[2] = v18;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,Delete routes attempt,%d/%d,failed for clusterID,%@", buf, 0x22u);
      }
    }

    ++v12;
    --v11;
  }

  while (v11);

  return v14;
}

- (BOOL)deleteTripClusterRouteWithClusterID:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__115;
  v45 = __Block_byref_object_dispose__115;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __63__RTTripClusterRouteStore_deleteTripClusterRouteWithClusterID___block_invoke;
  v38 = &unk_2788C4618;
  v40 = &v41;
  v6 = v5;
  v39 = v6;
  [(RTTripClusterRouteStore *)self deleteTripClusterRouteWithClusterID:v4 handler:&v35];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_95];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v52[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v4 UUIDString];
      v28 = [v23 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v26;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error deleting Cluster Route for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!v42[5])
    {
      v29 = 1;
      goto LABEL_14;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v4 UUIDString];
      v34 = [v42[5] localizedDescription];
      *buf = 138412802;
      *&buf[4] = v32;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Error deleting Cluster Route for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v29 = 0;
LABEL_14:

  _Block_object_dispose(&v41, 8);
  return v29;
}

void __63__RTTripClusterRouteStore_deleteTripClusterRouteWithClusterID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClusterRouteWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  v11 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(RTStore *)self removeAll:v7 handler:v5];
}

- (void)purgeTripClusterRouteWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTTripClusterRouteStore_purgeTripClusterRouteWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end