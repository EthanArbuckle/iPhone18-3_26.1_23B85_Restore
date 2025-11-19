@interface RTTripClusterRoadTransitionsStore
+ (id)predicateForClusterID:(id)a3;
+ (id)predicateForClusterIDAndRoads:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5;
- (BOOL)deleteTripClusterRoadTransitionsWithUUID:(id)a3;
- (BOOL)deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5;
- (BOOL)storeTripClusterRoadTransitions:(id)a3;
- (RTTripClusterRoadTransitionsStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6;
- (id)fetchRequestFromStoredTripClusterRoadTransitionsOptions:(id)a3 inManagedObjectContext:(id)a4;
- (id)getRoadTransitionsWithID:(id)a3;
- (void)_deleteTripClusterRoadTransitionsWithUUID:(id)a3 handler:(id)a4;
- (void)_deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 handler:(id)a6;
- (void)_fetchTripClusterRoadTransitionsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRoadTransitionsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeTripClusterRoadTransitionsWithHandler:(id)a3;
- (void)_removeTripClusterRoadTransitionsOnDateInterval:(id)a3 handler:(id)a4;
- (void)_removeTripClusterRoadTransitionsPredating:(id)a3 handler:(id)a4;
- (void)_storeTripClusterRoadTransitions:(id)a3 handler:(id)a4;
- (void)deleteTripClusterRoadTransitionsWithUUID:(id)a3 handler:(id)a4;
- (void)deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 handler:(id)a6;
- (void)fetchTripClusterRoadTransitionsWithClusterID:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRoadTransitionsWithContext:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRoadTransitionsWithOptions:(id)a3 handler:(id)a4;
- (void)purgeTripClusterRoadTransitionsWithHandler:(id)a3;
- (void)removeTripClusterRoadTransitionsOnDateInterval:(id)a3 handler:(id)a4;
- (void)removeTripClusterRoadTransitionsPredating:(id)a3 handler:(id)a4;
- (void)storeTripClusterRoadTransitions:(id)a3 handler:(id)a4;
@end

@implementation RTTripClusterRoadTransitionsStore

- (RTTripClusterRoadTransitionsStore)initWithPersistenceManager:(id)a3
{
  v3 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterRoadTransitionsStore;
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

- (void)_storeTripClusterRoadTransitions:(id)a3 handler:(id)a4
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__RTTripClusterRoadTransitionsStore__storeTripClusterRoadTransitions_handler___block_invoke;
  v9[3] = &unk_2788C4780;
  v10 = v7;
  v11 = a2;
  v8 = v7;
  [(RTStore *)self storeWritableObjects:a3 handler:v9];
}

void __78__RTTripClusterRoadTransitionsStore__storeTripClusterRoadTransitions_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTTripClusterRoadTransitionsStore,%@,error,%@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)storeTripClusterRoadTransitions:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore storeTripClusterRoadTransitions:handler:]";
      v17 = 1024;
      v18 = 79;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTTripClusterRoadTransitionsStore_storeTripClusterRoadTransitions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (BOOL)storeTripClusterRoadTransitions:(id)a3
{
  v56[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__66;
    v49 = __Block_byref_object_dispose__66;
    v50 = 0;
    v5 = dispatch_semaphore_create(0);
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __69__RTTripClusterRoadTransitionsStore_storeTripClusterRoadTransitions___block_invoke;
    v42 = &unk_2788C4618;
    v44 = &v45;
    v6 = v5;
    v43 = v6;
    [(RTTripClusterRoadTransitionsStore *)self storeTripClusterRoadTransitions:v4 handler:&v39];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      [v10 timeIntervalSinceDate:v8];
      v12 = v11;
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_52];
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
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error updating road transitions for cluster ID,%@,error,%@", buf, 0x20u);
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
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error updating road transition for cluster ID,%@,error,%@", buf, 0x20u);
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

void __69__RTTripClusterRoadTransitionsStore_storeTripClusterRoadTransitions___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchTripClusterRoadTransitionsWithClusterID:(id)a3 handler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
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
    v24 = "[RTTripClusterRoadTransitionsStore fetchTripClusterRoadTransitionsWithClusterID:handler:]";
    v25 = 1024;
    LODWORD(v26) = 125;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripClusterRoadTransitionsStore fetchTripClusterRoadTransitionsWithClusterID:handler:]";
      v25 = 1024;
      LODWORD(v26) = 126;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412802;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v7;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@:%@ invoked with clusterID,%@", buf, 0x20u);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D01398]) initWithClusterID:v7];
  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__RTTripClusterRoadTransitionsStore_fetchTripClusterRoadTransitionsWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v21 = v13;
  v22 = v9;
  v15 = v9;
  v16 = v13;
  dispatch_async(v14, block);
}

- (id)getRoadTransitionsWithID:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__66;
  v44 = __Block_byref_object_dispose__66;
  v45 = 0;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __62__RTTripClusterRoadTransitionsStore_getRoadTransitionsWithID___block_invoke;
  v35 = &unk_2788C4870;
  v36 = self;
  v6 = v4;
  v37 = v6;
  v39 = &v40;
  v7 = v5;
  v38 = v7;
  [(RTTripClusterRoadTransitionsStore *)self fetchTripClusterRoadTransitionsWithClusterID:v6 handler:&v32];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_52];
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
    v51[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v51 count:1];
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
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = v31;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore error updating road transitions for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v26;
}

void __62__RTTripClusterRoadTransitionsStore_getRoadTransitionsWithID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [*(a1 + 40) UUIDString];
      v12 = [v6 localizedDescription];
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@,Error fetching road transitions for ID,%@,error,%@", &v13, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchTripClusterRoadTransitionsWithOptions:(id)a3 handler:(id)a4
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
      v11 = "[RTTripClusterRoadTransitionsStore _fetchTripClusterRoadTransitionsWithOptions:handler:]";
      v12 = 1024;
      v13 = 173;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01390]) initWithEnumerationOptions:v6];
  [(RTTripClusterRoadTransitionsStore *)self _fetchTripClusterRoadTransitionsWithContext:v9 handler:v7];
}

- (void)fetchTripClusterRoadTransitionsWithOptions:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore fetchTripClusterRoadTransitionsWithOptions:handler:]";
      v17 = 1024;
      v18 = 184;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__RTTripClusterRoadTransitionsStore_fetchTripClusterRoadTransitionsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)_fetchTripClusterRoadTransitionsWithContext:(id)a3 handler:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__RTTripClusterRoadTransitionsStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v20 = v7;
    v21 = self;
    v23 = a2;
    v9 = v8;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__RTTripClusterRoadTransitionsStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke_79;
    v17[3] = &unk_2788C48C0;
    v18 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v17];

    v11 = v20;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTTripClusterRoadTransitionsStore _fetchTripClusterRoadTransitionsWithContext:handler:]";
      v26 = 1024;
      LODWORD(v27) = 196;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"A handler is a required parameter.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v13;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@: A handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __89__RTTripClusterRoadTransitionsStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
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
  v9 = [v7 fetchRequestFromStoredTripClusterRoadTransitionsOptions:v8 inManagedObjectContext:v3];

  [v9 setFetchOffset:{objc_msgSend(*(a1 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412802;
      v39 = v24;
      v40 = 2048;
      v41 = [v9 fetchLimit];
      v42 = 2048;
      v43 = [v9 fetchOffset];
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: using options fetch limit, %lu, fetch offset, %lu", buf, 0x20u);
    }
  }

  v36 = 0;
  v11 = [v3 executeFetchRequest:v9 error:&v36];
  v12 = v36;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(*(a1 + 56));
      v28 = [v11 count];
      *buf = 138413314;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v9;
      v44 = 2048;
      v45 = v28;
      v46 = 2112;
      v47 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@:%@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "fetchLimit")}];
  if (!v12)
  {
    v30 = v6;
    v31 = a1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v11;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [RTTripClusterRoadTransitions createWithManagedObject:v20];
          if (v22)
          {
            [v14 addObject:v22];
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v17);
    }

    a1 = v31;
    v11 = v29;
    v6 = v30;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchTripClusterRoadTransitionsWithContext:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore fetchTripClusterRoadTransitionsWithContext:handler:]";
      v17 = 1024;
      v18 = 256;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__RTTripClusterRoadTransitionsStore_fetchTripClusterRoadTransitionsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
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

    v23 = [(RTTripClusterRoadTransitionsStore *)self fetchRequestFromStoredTripClusterRoadTransitionsOptions:v10 inManagedObjectContext:v11];
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

- (id)fetchRequestFromStoredTripClusterRoadTransitionsOptions:(id)a3 inManagedObjectContext:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[RTTripClusterRoadTransitionsMO fetchRequest];
    [v5 setReturnsObjectsAsFaults:0];
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"count" ascending:1];
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v5 setSortDescriptors:v7];

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v4 clusterID];

    if (v9)
    {
      v10 = [v4 clusterID];
      v11 = [RTTripClusterRoadTransitionsStore predicateForClusterID:v10];

      [v8 addObject:v11];
    }

    v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
    [v5 setPredicate:v12];

    [v5 setFetchBatchSize:100];
    [v5 setFetchLimit:3600];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", v14, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)predicateForClusterID:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"clusterID", a3];
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

+ (id)predicateForClusterIDAndRoads:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ && %K == %llu && %K == %llu", @"clusterID", a3, @"clRoadIDFrom", a4, @"clRoadIDTo", a5];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_deleteTripClusterRoadTransitionsWithUUID:(id)a3 handler:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTTripClusterRoadTransitionsStore _deleteTripClusterRoadTransitionsWithUUID:handler:]";
      v32 = 1024;
      LODWORD(v33) = 359;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTTripClusterRoadTransitionsStore _deleteTripClusterRoadTransitionsWithUUID:handler:]";
    v32 = 1024;
    LODWORD(v33) = 358;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v7)
  {
LABEL_4:
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __87__RTTripClusterRoadTransitionsStore__deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke;
    v25 = &unk_2788C4910;
    v26 = v7;
    v27 = self;
    v29 = a2;
    v10 = v9;
    v28 = v10;
    v11 = _Block_copy(&v22);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10, v22, v23, v24, v25];

    v12 = v26;
    goto LABEL_15;
  }

LABEL_11:
  v15 = MEMORY[0x277CCA9B8];
  v16 = *MEMORY[0x277D01448];
  v34 = *MEMORY[0x277CCA450];
  v35[0] = @"requires a non-nil uuid.";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v12 = [v15 errorWithDomain:v16 code:7 userInfo:v17];

  v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    *buf = 138412546;
    v31 = v20;
    v32 = 2112;
    v33 = v21;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@:%@,requires a non-nil UUID", buf, 0x16u);
  }

  if (v9)
  {
    (v9)[2](v9, v12);
  }

LABEL_15:
}

void __87__RTTripClusterRoadTransitionsStore__deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterRoadTransitionsMO"];
  v6 = [RTTripClusterRoadTransitionsStore predicateForClusterID:*(a1 + 32)];
  [v5 setPredicate:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:2];
  v18 = 0;
  v8 = [v4 executeRequest:v7 error:&v18];

  v9 = v18;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v17 = NSStringFromClass(v11);
      v12 = NSStringFromSelector(*(a1 + 56));
      v13 = [*(a1 + 32) UUIDString];
      v14 = [v8 result];
      v15 = [v9 localizedDescription];
      *buf = 138413314;
      v20 = v17;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v16 = v15;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@:%@UUID,%@,count,%@,error,%@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 handler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "[RTTripClusterRoadTransitionsStore _deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:clRoadIDFrom:clRoadIDTo:handler:]";
    v36 = 1024;
    LODWORD(v37) = 406;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v13)
  {
LABEL_7:
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[RTTripClusterRoadTransitionsStore _deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:clRoadIDFrom:clRoadIDTo:handler:]";
      v36 = 1024;
      LODWORD(v37) = 407;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@:%@ invoked", buf, 0x16u);
    }
  }

  if (v11)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__RTTripClusterRoadTransitionsStore__deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs_clRoadIDFrom_clRoadIDTo_handler___block_invoke;
    aBlock[3] = &unk_2788CA6D8;
    v27 = v11;
    v29 = a4;
    v30 = a5;
    v31 = a2;
    v17 = v13;
    v28 = v17;
    v18 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v18 contextType:0 errorHandler:v17];

    v19 = v27;
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"requires a non-nil uuid.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [v20 errorWithDomain:v21 code:7 userInfo:v22];

    if (v13)
    {
      (v13)[2](v13, v19);
    }
  }
}

void __121__RTTripClusterRoadTransitionsStore__deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs_clRoadIDFrom_clRoadIDTo_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterRoadTransitionsMO"];
  v6 = [RTTripClusterRoadTransitionsStore predicateForClusterIDAndRoads:*(a1 + 32) clRoadIDFrom:*(a1 + 48) clRoadIDTo:*(a1 + 56)];
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
      v11 = NSStringFromSelector(*(a1 + 64));
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

- (void)deleteTripClusterRoadTransitionsWithUUID:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:handler:]";
      v17 = 1024;
      v18 = 452;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (BOOL)deleteTripClusterRoadTransitionsWithUUID:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v47 = 136315394;
      *&v47[4] = "[RTTripClusterRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:]";
      *&v47[12] = 1024;
      *&v47[14] = 462;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", v47, 0x12u);
    }
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__66;
  v49 = __Block_byref_object_dispose__66;
  v50 = 0;
  v6 = dispatch_semaphore_create(0);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __78__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUID___block_invoke;
  v39 = &unk_2788C4618;
  v41 = v47;
  v7 = v6;
  v40 = v7;
  [(RTTripClusterRoadTransitionsStore *)self deleteTripClusterRoadTransitionsWithUUID:v4 handler:&v36];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_52];
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
    v51[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v51 count:1];
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
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v4 UUIDString];
      v29 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting road transition for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!*(*&v47[8] + 40))
    {
      v30 = 1;
      goto LABEL_18;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v4 UUIDString];
      v35 = [*(*&v47[8] + 40) localizedDescription];
      *buf = 138412802;
      *&buf[4] = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error deleting road transition for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v30 = 0;
LABEL_18:

  _Block_object_dispose(v47, 8);
  return v30;
}

void __78__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5 handler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (!v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTTripClusterRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:clRoadIDFrom:clRoadIDTo:handler:]";
      v23 = 1024;
      v24 = 497;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs_clRoadIDFrom_clRoadIDTo_handler___block_invoke;
  block[3] = &unk_2788C6C20;
  block[4] = self;
  v17 = v10;
  v19 = a4;
  v20 = a5;
  v18 = v11;
  v14 = v11;
  v15 = v10;
  dispatch_async(v13, block);
}

- (BOOL)deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:(id)a3 clRoadIDFrom:(unint64_t)a4 clRoadIDTo:(unint64_t)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__66;
  v49 = __Block_byref_object_dispose__66;
  v50 = 0;
  v9 = dispatch_semaphore_create(0);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __112__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs_clRoadIDFrom_clRoadIDTo___block_invoke;
  v42 = &unk_2788C4618;
  v44 = &v45;
  v10 = v9;
  v43 = v10;
  [(RTTripClusterRoadTransitionsStore *)self deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs:v8 clRoadIDFrom:a4 clRoadIDTo:a5 handler:&v39];
  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_52];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v56[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v56 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = v25;
  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v8 UUIDString];
      v32 = [v27 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v30;
      v52 = 2112;
      v53 = v31;
      v54 = 2112;
      v55 = v32;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting road transition for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!v46[5])
    {
      v33 = 1;
      goto LABEL_14;
    }

    v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [v8 UUIDString];
      v38 = [v46[5] localizedDescription];
      *buf = 138412802;
      *&buf[4] = v36;
      v52 = 2112;
      v53 = v37;
      v54 = 2112;
      v55 = v38;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@,Error deleting road transition for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v33 = 0;
LABEL_14:

  _Block_object_dispose(&v45, 8);
  return v33;
}

void __112__RTTripClusterRoadTransitionsStore_deleteTripClusterRoadTransitionsWithUUIDAndRoadIDs_clRoadIDFrom_clRoadIDTo___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClusterRoadTransitionsWithHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTTripClusterRoadTransitionsStore _purgeTripClusterRoadTransitionsWithHandler:]";
      v15 = 1024;
      LODWORD(v16) = 543;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@:%@ invoked", buf, 0x16u);
    }
  }

  v12 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(RTStore *)self removeAll:v8 handler:v5];
}

- (void)purgeTripClusterRoadTransitionsWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTTripClusterRoadTransitionsStore purgeTripClusterRoadTransitionsWithHandler:]";
      v12 = 1024;
      v13 = 554;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__RTTripClusterRoadTransitionsStore_purgeTripClusterRoadTransitionsWithHandler___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)_removeTripClusterRoadTransitionsPredating:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v15 = @"startDate";
    v7 = a4;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v9 handler:v7];
  }

  else
  {
    v10 = a4;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTripClusterRoadTransitionsStore _removeTripClusterRoadTransitionsPredating:handler:]";
      v21 = 1024;
      v22 = 565;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"requires a valid date.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [v12 errorWithDomain:v13 code:7 userInfo:v9];
    v10[2](v10, v7);
  }
}

- (void)removeTripClusterRoadTransitionsPredating:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore removeTripClusterRoadTransitionsPredating:handler:]";
      v17 = 1024;
      v18 = 584;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTTripClusterRoadTransitionsStore_removeTripClusterRoadTransitionsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)_removeTripClusterRoadTransitionsOnDateInterval:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v15 = @"startDate";
    v7 = a4;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgeDateInterval:v6 predicateMappings:v9 purgeLimit:3600 handler:v7];
  }

  else
  {
    v10 = a4;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTripClusterRoadTransitionsStore _removeTripClusterRoadTransitionsOnDateInterval:handler:]";
      v21 = 1024;
      v22 = 596;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"requires a valid dateInterval.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [v12 errorWithDomain:v13 code:7 userInfo:v9];
    v10[2](v10, v7);
  }
}

- (void)removeTripClusterRoadTransitionsOnDateInterval:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsStore removeTripClusterRoadTransitionsOnDateInterval:handler:]";
      v17 = 1024;
      v18 = 616;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTTripClusterRoadTransitionsStore_removeTripClusterRoadTransitionsOnDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

@end