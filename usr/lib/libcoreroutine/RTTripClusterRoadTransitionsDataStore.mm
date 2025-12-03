@interface RTTripClusterRoadTransitionsDataStore
+ (id)predicateForClusterID:(id)d;
- (BOOL)deleteTripClusterRoadTransitionsWithClusterID:(id)d maxDeleteAttempts:(unint64_t)attempts;
- (BOOL)deleteTripClusterRoadTransitionsWithUUID:(id)d;
- (BOOL)storeTripClusterRoadTransitions:(id)transitions;
- (RTTripClusterRoadTransitionsDataStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error inManagedObjectContext:(id)context;
- (id)fetchRequestFromStoredTripClusterRoadTransitionsOptions:(id)options inManagedObjectContext:(id)context;
- (id)getRoadTransitionsWithID:(id)d;
- (unint64_t)getTripClusterRoadTransitionsDataCountForClusterID:(id)d;
- (void)_deleteTripClusterRoadTransitionsWithUUID:(id)d handler:(id)handler;
- (void)_fetchCountForClusterID:(id)d handler:(id)handler;
- (void)_fetchTripClusterRoadTransitionsWithContext:(id)context handler:(id)handler;
- (void)_fetchTripClusterRoadTransitionsWithOptions:(id)options handler:(id)handler;
- (void)_purgeTripClusterRoadTransitionsWithHandler:(id)handler;
- (void)_storeTripClusterRoadTransitions:(id)transitions handler:(id)handler;
- (void)deleteTripClusterRoadTransitionsWithUUID:(id)d handler:(id)handler;
- (void)fetchTripClusterRoadTransitionsWithClusterID:(id)d handler:(id)handler;
- (void)fetchTripClusterRoadTransitionsWithContext:(id)context handler:(id)handler;
- (void)fetchTripClusterRoadTransitionsWithOptions:(id)options handler:(id)handler;
- (void)purgeTripClusterRoadTransitionsWithHandler:(id)handler;
- (void)storeTripClusterRoadTransitions:(id)transitions handler:(id)handler;
@end

@implementation RTTripClusterRoadTransitionsDataStore

- (RTTripClusterRoadTransitionsDataStore)initWithPersistenceManager:(id)manager
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterRoadTransitionsDataStore;
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

    selfCopy = v5;
    v7 = selfCopy;
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

- (void)_storeTripClusterRoadTransitions:(id)transitions handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__RTTripClusterRoadTransitionsDataStore__storeTripClusterRoadTransitions_handler___block_invoke;
  v9[3] = &unk_2788C4780;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  [(RTStore *)self storeWritableObjects:transitions handler:v9];
}

void __82__RTTripClusterRoadTransitionsDataStore__storeTripClusterRoadTransitions_handler___block_invoke(uint64_t a1, void *a2)
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

- (void)storeTripClusterRoadTransitions:(id)transitions handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTTripClusterRoadTransitionsDataStore storeTripClusterRoadTransitions:handler:]";
      v26 = 1024;
      LODWORD(v27) = 81;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [transitionsCopy count];
      *buf = 138412546;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@ storeTripClusterRoadTransitions invoked with transition arrayCount,%lu", buf, 0x16u);
    }
  }

  v13 = [RTTripClusterRoadTransitions getRoadTransitionsDataFromRoadTransitions:transitionsCopy];
  if (v13)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__RTTripClusterRoadTransitionsDataStore_storeTripClusterRoadTransitions_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v20 = v13;
    v21 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Requires valid lat lon, coordinates passed in are 0.0";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v15 errorWithDomain:v16 code:0 userInfo:v17];

    (*(handlerCopy + 2))(handlerCopy, v18);
  }
}

- (BOOL)storeTripClusterRoadTransitions:(id)transitions
{
  v56[1] = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  if ([transitionsCopy count])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__2;
    v49 = __Block_byref_object_dispose__2;
    v50 = 0;
    v5 = dispatch_semaphore_create(0);
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __73__RTTripClusterRoadTransitionsDataStore_storeTripClusterRoadTransitions___block_invoke;
    v42 = &unk_2788C4618;
    v44 = &v45;
    v6 = v5;
    v43 = v6;
    [(RTTripClusterRoadTransitionsDataStore *)self storeTripClusterRoadTransitions:transitionsCopy handler:&v39];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      [v10 timeIntervalSinceDate:v8];
      v12 = v11;
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
      firstObject = [v16 firstObject];

      [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
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
        firstObject2 = [transitionsCopy firstObject];
        clusterID = [firstObject2 clusterID];
        uUIDString = [clusterID UUIDString];
        localizedDescription = [v24 localizedDescription];
        *buf = 138412802;
        *&buf[4] = v27;
        v52 = 2112;
        v53 = uUIDString;
        v54 = 2112;
        v55 = localizedDescription;
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
        firstObject3 = [transitionsCopy firstObject];
        clusterID2 = [firstObject3 clusterID];
        uUIDString2 = [clusterID2 UUIDString];
        localizedDescription2 = [v46[5] localizedDescription];
        *buf = 138412802;
        *&buf[4] = v34;
        v52 = 2112;
        v53 = uUIDString2;
        v54 = 2112;
        v55 = localizedDescription2;
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

void __73__RTTripClusterRoadTransitionsDataStore_storeTripClusterRoadTransitions___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchTripClusterRoadTransitionsWithClusterID:(id)d handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (dCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[RTTripClusterRoadTransitionsDataStore fetchTripClusterRoadTransitionsWithClusterID:handler:]";
    v25 = 1024;
    LODWORD(v26) = 139;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripClusterRoadTransitionsDataStore fetchTripClusterRoadTransitionsWithClusterID:handler:]";
      v25 = 1024;
      LODWORD(v26) = 140;
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
      v28 = dCopy;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@:%@ invoked with clusterID,%@", buf, 0x20u);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D01398]) initWithClusterID:dCopy];
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__RTTripClusterRoadTransitionsDataStore_fetchTripClusterRoadTransitionsWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v21 = v13;
  v22 = v9;
  v15 = v9;
  v16 = v13;
  dispatch_async(queue, block);
}

- (id)getRoadTransitionsWithID:(id)d
{
  v51[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2;
  v44 = __Block_byref_object_dispose__2;
  v45 = 0;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __66__RTTripClusterRoadTransitionsDataStore_getRoadTransitionsWithID___block_invoke;
  v35 = &unk_2788C4870;
  selfCopy = self;
  v6 = dCopy;
  v37 = v6;
  v39 = &v40;
  v7 = v5;
  v38 = v7;
  [(RTTripClusterRoadTransitionsDataStore *)self fetchTripClusterRoadTransitionsWithClusterID:v6 handler:&v32];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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
      uUIDString = [v6 UUIDString];
      localizedDescription = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v47 = 2112;
      v48 = uUIDString;
      v49 = 2112;
      v50 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore error updating road transitions for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v26;
}

void __66__RTTripClusterRoadTransitionsDataStore_getRoadTransitionsWithID___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchCountForClusterID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__RTTripClusterRoadTransitionsDataStore__fetchCountForClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v13 = dCopy;
    v8 = handlerCopy;
    v14 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__RTTripClusterRoadTransitionsDataStore__fetchCountForClusterID_handler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __73__RTTripClusterRoadTransitionsDataStore__fetchCountForClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTTripClusterRoadTransitionsData2MO fetchRequest];
  v5 = [RTTripClusterRoadTransitionsDataStore predicateForClusterID:*(a1 + 32)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)getTripClusterRoadTransitionsDataCountForClusterID:(id)d
{
  v49[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v5 = dispatch_semaphore_create(0);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __92__RTTripClusterRoadTransitionsDataStore_getTripClusterRoadTransitionsDataCountForClusterID___block_invoke;
  v35 = &unk_2788C48E8;
  selfCopy = self;
  v6 = dCopy;
  v37 = v6;
  v39 = &v40;
  v7 = v5;
  v38 = v7;
  [(RTTripClusterRoadTransitionsDataStore *)self _fetchCountForClusterID:v6 handler:&v32];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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
      uUIDString = [v6 UUIDString];
      localizedDescription = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v45 = 2112;
      v46 = uUIDString;
      v47 = 2112;
      v48 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching road transitions count for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v41[3];

  _Block_object_dispose(&v40, 8);
  return v26;
}

void __92__RTTripClusterRoadTransitionsDataStore_getTripClusterRoadTransitionsDataCountForClusterID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@,Error fetching road transitions count for cluster ID,%@,error,%@", &v11, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchTripClusterRoadTransitionsWithOptions:(id)options handler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTTripClusterRoadTransitionsDataStore _fetchTripClusterRoadTransitionsWithOptions:handler:]";
      v12 = 1024;
      v13 = 241;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01390]) initWithEnumerationOptions:optionsCopy];
  [(RTTripClusterRoadTransitionsDataStore *)self _fetchTripClusterRoadTransitionsWithContext:v9 handler:handlerCopy];
}

- (void)fetchTripClusterRoadTransitionsWithOptions:(id)options handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsDataStore fetchTripClusterRoadTransitionsWithOptions:handler:]";
      v17 = 1024;
      v18 = 252;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTTripClusterRoadTransitionsDataStore_fetchTripClusterRoadTransitionsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = optionsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchTripClusterRoadTransitionsWithContext:(id)context handler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__RTTripClusterRoadTransitionsDataStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v20 = contextCopy;
    selfCopy = self;
    v23 = a2;
    v9 = handlerCopy;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __93__RTTripClusterRoadTransitionsDataStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke_86;
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
      v25 = "[RTTripClusterRoadTransitionsDataStore _fetchTripClusterRoadTransitionsWithContext:handler:]";
      v26 = 1024;
      LODWORD(v27) = 264;
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

void __93__RTTripClusterRoadTransitionsDataStore__fetchTripClusterRoadTransitionsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v58 = a1;
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

  [v9 setFetchOffset:{objc_msgSend(*(v58 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138412802;
      v72 = v46;
      v73 = 2048;
      v74 = [v9 fetchLimit];
      v75 = 2048;
      v76 = [v9 fetchOffset];
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: using options fetch limit, %lu, fetch offset, %lu", buf, 0x20u);
    }
  }

  v68 = 0;
  v11 = [v3 executeFetchRequest:v9 error:&v68];
  v12 = v68;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = NSStringFromSelector(*(v58 + 56));
      v50 = [v11 count];
      *buf = 138413314;
      v72 = v48;
      v73 = 2112;
      v74 = v49;
      v75 = 2112;
      v76 = v9;
      v77 = 2048;
      v78 = v50;
      v79 = 2112;
      v80 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@:%@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v12 localizedDescription];
        *buf = 138412546;
        v72 = v16;
        v73 = 2112;
        v74 = v17;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Error during fetch,%@", buf, 0x16u);
      }

      v18 = 0;
LABEL_47:

      goto LABEL_48;
    }
  }

  else if ([v11 count])
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v11;
    v19 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v51 = v11;
      v52 = v9;
      v53 = v6;
      v54 = v3;
      v21 = *v65;
      v22 = MEMORY[0x277D86220];
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v65 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [RTTripClusterRoadTransitionsData createWithManagedObject:*(*(&v64 + 1) + 8 * i)];
          if (v24)
          {
            v56 = v24;
            v25 = [RTTripClusterRoadTransitions getRoadTransitionsFromRoadTransitionsData:v24];
            [v18 addObjectsFromArray:v25];

            if ([v18 count])
            {
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v18 = v18;
              v30 = [v18 countByEnumeratingWithState:&v60 objects:v69 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v61;
                v33 = MEMORY[0x277D86220];
                v57 = *v61;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v61 != v32)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v35 = *(*(&v60 + 1) + 8 * j);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                    {
                      v36 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                      {
                        v37 = objc_opt_class();
                        v59 = NSStringFromClass(v37);
                        v38 = [v35 clusterID];
                        v39 = [v38 UUIDString];
                        v40 = v18;
                        v41 = [v35 clRoadIDTo];
                        v42 = v33;
                        v43 = [v35 clRoadIDFrom];
                        [v35 familiarityMetric];
                        *buf = 138413314;
                        v72 = v59;
                        v73 = 2112;
                        v74 = v39;
                        v75 = 2048;
                        v76 = v41;
                        v18 = v40;
                        v77 = 2048;
                        v78 = v43;
                        v33 = v42;
                        v79 = 2048;
                        v80 = v44;
                        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, Fetched roadTransition,clusterID,%@,clRoadIDTo,%llu,clRoadIDFrom,%llu,familiarityMetric,%f", buf, 0x34u);

                        v32 = v57;
                      }
                    }
                  }

                  v31 = [v18 countByEnumeratingWithState:&v60 objects:v69 count:16];
                }

                while (v31);
              }

              goto LABEL_45;
            }

            v26 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
            v24 = v56;
            if (v26)
            {
              v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = objc_opt_class();
                v29 = NSStringFromClass(v28);
                *buf = 138412290;
                v72 = v29;
                _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@,Error creating RTTripClusterRoadTransitions from roadTransitionsMO", buf, 0xCu);
              }

              v24 = v56;
            }
          }
        }

        v20 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_45:
      v6 = v53;
      v3 = v54;
      v12 = 0;
      v9 = v52;
      v11 = v51;
    }

    v14 = obj;
    goto LABEL_47;
  }

  v18 = 0;
LABEL_48:
  (*(*(v58 + 48) + 16))();
}

- (void)fetchTripClusterRoadTransitionsWithContext:(id)context handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsDataStore fetchTripClusterRoadTransitionsWithContext:handler:]";
      v17 = 1024;
      v18 = 340;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTTripClusterRoadTransitionsDataStore_fetchTripClusterRoadTransitionsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = contextCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error inManagedObjectContext:(id)context
{
  v28[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  if (!error)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (optionsCopy)
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
      *error = v20;

LABEL_8:
      v23 = 0;
      goto LABEL_13;
    }

    v23 = [(RTTripClusterRoadTransitionsDataStore *)self fetchRequestFromStoredTripClusterRoadTransitionsOptions:optionsCopy inManagedObjectContext:contextCopy];
    [v23 setFetchOffset:offset];
    *error = 0;
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
    *error = v23 = 0;
  }

LABEL_13:

  return v23;
}

- (id)fetchRequestFromStoredTripClusterRoadTransitionsOptions:(id)options inManagedObjectContext:(id)context
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v5 = +[RTTripClusterRoadTransitionsData2MO fetchRequest];
    [v5 setReturnsObjectsAsFaults:0];
    array = [MEMORY[0x277CBEB18] array];
    clusterID = [optionsCopy clusterID];

    if (clusterID)
    {
      clusterID2 = [optionsCopy clusterID];
      v9 = [RTTripClusterRoadTransitionsDataStore predicateForClusterID:clusterID2];

      [array addObject:v9];
    }

    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
    [v5 setPredicate:v10];

    [v5 setFetchBatchSize:100];
    [v5 setFetchLimit:3600];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", v13, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)predicateForClusterID:(id)d
{
  if (d)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"clusterID", d];
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

- (void)_deleteTripClusterRoadTransitionsWithUUID:(id)d handler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (dCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTTripClusterRoadTransitionsDataStore _deleteTripClusterRoadTransitionsWithUUID:handler:]";
      v32 = 1024;
      LODWORD(v33) = 426;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[RTTripClusterRoadTransitionsDataStore _deleteTripClusterRoadTransitionsWithUUID:handler:]";
    v32 = 1024;
    LODWORD(v33) = 425;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (dCopy)
  {
LABEL_4:
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __91__RTTripClusterRoadTransitionsDataStore__deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke;
    v25 = &unk_2788C4910;
    v26 = dCopy;
    selfCopy = self;
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

void __91__RTTripClusterRoadTransitionsDataStore__deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterRoadTransitionsData2MO"];
  v6 = [RTTripClusterRoadTransitionsDataStore predicateForClusterID:*(a1 + 32)];
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

- (void)deleteTripClusterRoadTransitionsWithUUID:(id)d handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRoadTransitionsDataStore deleteTripClusterRoadTransitionsWithUUID:handler:]";
      v17 = 1024;
      v18 = 471;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__RTTripClusterRoadTransitionsDataStore_deleteTripClusterRoadTransitionsWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)deleteTripClusterRoadTransitionsWithUUID:(id)d
{
  v51[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v47 = 136315394;
      *&v47[4] = "[RTTripClusterRoadTransitionsDataStore deleteTripClusterRoadTransitionsWithUUID:]";
      *&v47[12] = 1024;
      *&v47[14] = 481;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", v47, 0x12u);
    }
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = 0;
  v6 = dispatch_semaphore_create(0);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __82__RTTripClusterRoadTransitionsDataStore_deleteTripClusterRoadTransitionsWithUUID___block_invoke;
  v39 = &unk_2788C4618;
  v41 = v47;
  v7 = v6;
  v40 = v7;
  [(RTTripClusterRoadTransitionsDataStore *)self deleteTripClusterRoadTransitionsWithUUID:dCopy handler:&v36];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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
      uUIDString = [dCopy UUIDString];
      localizedDescription = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v27;
      v43 = 2112;
      v44 = uUIDString;
      v45 = 2112;
      v46 = localizedDescription;
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
      uUIDString2 = [dCopy UUIDString];
      localizedDescription2 = [*(*&v47[8] + 40) localizedDescription];
      *buf = 138412802;
      *&buf[4] = v33;
      v43 = 2112;
      v44 = uUIDString2;
      v45 = 2112;
      v46 = localizedDescription2;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error deleting road transition for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v30 = 0;
LABEL_18:

  _Block_object_dispose(v47, 8);
  return v30;
}

void __82__RTTripClusterRoadTransitionsDataStore_deleteTripClusterRoadTransitionsWithUUID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)deleteTripClusterRoadTransitionsWithClusterID:(id)d maxDeleteAttempts:(unint64_t)attempts
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (attempts - 11 <= 0xFFFFFFFFFFFFFFF5)
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

  attemptsCopy = 10;
  if (attempts < 0xA)
  {
    attemptsCopy = attempts;
  }

  if (attemptsCopy <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = attemptsCopy;
  }

  v12 = 1;
  v13 = MEMORY[0x277D86220];
  *&v8 = 138413058;
  v23 = v8;
  v24 = v11;
  do
  {
    v14 = [(RTTripClusterRoadTransitionsDataStore *)self deleteTripClusterRoadTransitionsWithUUID:dCopy, v23];
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
        uUIDString = [dCopy UUIDString];
        *buf = v23;
        v26 = v17;
        v27 = 1024;
        *v28 = v12;
        *&v28[4] = 1024;
        *&v28[6] = v24;
        *v29 = 2112;
        *&v29[2] = uUIDString;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,Delete road transitions attempt,%d/%d,failed for clusterID,%@", buf, 0x22u);
      }
    }

    ++v12;
    --v11;
  }

  while (v11);

  return v14;
}

- (void)_purgeTripClusterRoadTransitionsWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTTripClusterRoadTransitionsDataStore _purgeTripClusterRoadTransitionsWithHandler:]";
      v15 = 1024;
      LODWORD(v16) = 539;
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
  [(RTStore *)self removeAll:v8 handler:handlerCopy];
}

- (void)purgeTripClusterRoadTransitionsWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTTripClusterRoadTransitionsDataStore purgeTripClusterRoadTransitionsWithHandler:]";
      v12 = 1024;
      v13 = 550;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__RTTripClusterRoadTransitionsDataStore_purgeTripClusterRoadTransitionsWithHandler___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

@end