@interface RTTripClusterWaypointDataStore
+ (id)predicateForClusterID:(id)d;
- (BOOL)deleteTripClusterWaypointWithClusterID:(id)d;
- (BOOL)deleteTripClusterWaypointWithClusterID:(id)d maxDeleteAttempts:(unint64_t)attempts;
- (BOOL)storeTripClusterWaypoint:(id)waypoint;
- (RTTripClusterWaypointDataStore)initWithPersistenceManager:(id)manager defaultsManager:(id)defaultsManager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error inManagedObjectContext:(id)context;
- (id)fetchRequestFromStoredTripClusterWaypointsOptions:(id)options inManagedObjectContext:(id)context;
- (id)getTripClusterWaypointWithOptions:(id)options;
- (unint64_t)getTripClusterWaypointDataCountForClusterID:(id)d;
- (void)_deleteTripClusterWaypointWithUUID:(id)d handler:(id)handler;
- (void)_fetchCountForClusterID:(id)d handler:(id)handler;
- (void)_fetchTripClusterWaypointWithContext:(id)context handler:(id)handler;
- (void)_fetchTripClusterWaypointWithOptions:(id)options handler:(id)handler;
- (void)_purgeTripClusterWaypointWithHandler:(id)handler;
- (void)_storeTripClusterWaypoint:(id)waypoint handler:(id)handler;
- (void)deleteTripClusterWaypointWithClusterID:(id)d handler:(id)handler;
- (void)fetchTripClusterWaypointWithClusterID:(id)d handler:(id)handler;
- (void)fetchTripClusterWaypointWithOptions:(id)options handler:(id)handler;
- (void)purgeTripClusterWaypointWithHandler:(id)handler;
- (void)storeTripClusterWaypoint:(id)waypoint handler:(id)handler;
@end

@implementation RTTripClusterWaypointDataStore

- (RTTripClusterWaypointDataStore)initWithPersistenceManager:(id)manager defaultsManager:(id)defaultsManager
{
  v27 = *MEMORY[0x277D85DE8];
  defaultsManagerCopy = defaultsManager;
  if (manager)
  {
    v22.receiver = self;
    v22.super_class = RTTripClusterWaypointDataStore;
    v8 = [(RTStore *)&v22 initWithPersistenceManager:manager];
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v24 = v20;
          v25 = 2112;
          v26 = v21;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ success.", buf, 0x16u);
        }
      }

      v10 = [defaultsManagerCopy objectForKey:@"RTDefaultsTripSegmentClusterWaypointMaxPerChunk"];
      v11 = v10;
      if (v10)
      {
        intValue = [v10 intValue];
      }

      else
      {
        intValue = 500;
      }

      v8->_maxWaypointsPerChunk = intValue;
      v15 = [defaultsManagerCopy objectForKey:@"RTDefaultsTripSegmentClusterRejectDuplicateWaypointsKey"];
      v16 = v15;
      if (v15)
      {
        bOOLValue = [v15 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v8->_rejectDuplicateWaypoints = bOOLValue;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_storeTripClusterWaypoint:(id)waypoint handler:(id)handler
{
  waypointCopy = waypoint;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__RTTripClusterWaypointDataStore__storeTripClusterWaypoint_handler___block_invoke;
  v10[3] = &unk_2788C4EC8;
  v10[4] = self;
  v11 = waypointCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = waypointCopy;
  [(RTStore *)self storeWritableObjects:v9 handler:v10];
}

void __68__RTTripClusterWaypointDataStore__storeTripClusterWaypoint_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3 localizedDescription];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@,Error storing waypoints data,%@", &v12, 0x16u);

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);
    v10 = [*(a1 + 40) count];
    v12 = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@,Successfully stored waypoints data for %lu clusters", &v12, 0x16u);
LABEL_8:
  }

LABEL_9:

LABEL_10:
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)storeTripClusterWaypoint:(id)waypoint handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v23 = v10;
      v24 = 2048;
      v25 = [waypointCopy count];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@ storeTripClusterWaypoint invoked with waypoint arrayCount,%lu", buf, 0x16u);
    }
  }

  v11 = [RTTripClusterWaypoint getWaypointDataFromWaypoints:waypointCopy maxWaypointsPerChunk:self->_maxWaypointsPerChunk];
  if (v11)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__RTTripClusterWaypointDataStore_storeTripClusterWaypoint_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v18 = v11;
    v19 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Requires valid lat lon, coordinates passed in are 0.0";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v13 errorWithDomain:v14 code:0 userInfo:v15];

    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

- (BOOL)storeTripClusterWaypoint:(id)waypoint
{
  v56[1] = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  if ([waypointCopy count])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__5;
    v49 = __Block_byref_object_dispose__5;
    v50 = 0;
    v5 = dispatch_semaphore_create(0);
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __59__RTTripClusterWaypointDataStore_storeTripClusterWaypoint___block_invoke;
    v42 = &unk_2788C4618;
    v44 = &v45;
    v6 = v5;
    v43 = v6;
    [(RTTripClusterWaypointDataStore *)self storeTripClusterWaypoint:waypointCopy handler:&v39];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      [v10 timeIntervalSinceDate:v8];
      v12 = v11;
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_184];
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
        firstObject2 = [waypointCopy firstObject];
        clusterID = [firstObject2 clusterID];
        uUIDString = [clusterID UUIDString];
        localizedDescription = [v24 localizedDescription];
        *buf = 138412802;
        *&buf[4] = v27;
        v52 = 2112;
        v53 = uUIDString;
        v54 = 2112;
        v55 = localizedDescription;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore error storing cluster waypoint for cluster ID,%@,error,%@", buf, 0x20u);
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
        firstObject3 = [waypointCopy firstObject];
        clusterID2 = [firstObject3 clusterID];
        uUIDString2 = [clusterID2 UUIDString];
        localizedDescription2 = [v46[5] localizedDescription];
        *buf = 138412802;
        *&buf[4] = v34;
        v52 = 2112;
        v53 = uUIDString2;
        v54 = 2112;
        v55 = localizedDescription2;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error storing cluster waypoint for cluster ID,%@,error,%@", buf, 0x20u);
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

void __59__RTTripClusterWaypointDataStore_storeTripClusterWaypoint___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchTripClusterWaypointWithClusterID:(id)d handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      uUIDString = [dCopy UUIDString];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = uUIDString;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetching waypoints with clusterID,%@", buf, 0x16u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D013C8]) initWithClusterID:dCopy];
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTTripClusterWaypointDataStore_fetchTripClusterWaypointWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v17 = v12;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = v12;
  dispatch_async(queue, block);
}

- (void)fetchTripClusterWaypointWithOptions:(id)options handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      batchSize = [optionsCopy batchSize];
      clusterID = [optionsCopy clusterID];
      uUIDString = [clusterID UUIDString];
      *buf = 138412802;
      v21 = v10;
      v22 = 2048;
      v23 = batchSize;
      v24 = 2112;
      v25 = uUIDString;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetching waypoints with options,batchSize,%lu,clusterID,%@", buf, 0x20u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTTripClusterWaypointDataStore_fetchTripClusterWaypointWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)getTripClusterWaypointWithOptions:(id)options
{
  v52[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__5;
  v45 = __Block_byref_object_dispose__5;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __68__RTTripClusterWaypointDataStore_getTripClusterWaypointWithOptions___block_invoke;
  v36 = &unk_2788C4870;
  selfCopy = self;
  v6 = optionsCopy;
  v38 = v6;
  v40 = &v41;
  v7 = v5;
  v39 = v7;
  [(RTTripClusterWaypointDataStore *)self fetchTripClusterWaypointWithOptions:v6 handler:&v33];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_184];
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
      clusterID = [v6 clusterID];
      uUIDString = [clusterID UUIDString];
      localizedDescription = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v48 = 2112;
      v49 = uUIDString;
      v50 = 2112;
      v51 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching waypoints for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v26;
}

void __68__RTTripClusterWaypointDataStore_getTripClusterWaypointWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
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
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error fetching waypoints for cluster with cluster ID,%@,error,%@", &v14, 0x20u);
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

- (void)_fetchCountForClusterID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__RTTripClusterWaypointDataStore__fetchCountForClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v13 = dCopy;
    v8 = handlerCopy;
    v14 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__RTTripClusterWaypointDataStore__fetchCountForClusterID_handler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __66__RTTripClusterWaypointDataStore__fetchCountForClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTTripClusterWaypointDataMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)getTripClusterWaypointDataCountForClusterID:(id)d
{
  v50[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v5 = dispatch_semaphore_create(0);
  queue = [(RTNotifier *)self queue];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __78__RTTripClusterWaypointDataStore_getTripClusterWaypointDataCountForClusterID___block_invoke;
  v36 = &unk_2788C4EF0;
  selfCopy = self;
  v7 = dCopy;
  v38 = v7;
  v40 = &v41;
  v8 = v5;
  v39 = v8;
  dispatch_async(queue, &v33);

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_184];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v50[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v50 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      uUIDString = [v7 UUIDString];
      localizedDescription = [v25 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v30;
      v46 = 2112;
      v47 = uUIDString;
      v48 = 2112;
      v49 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching waypoint count for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v27 = v42[3];

  _Block_object_dispose(&v41, 8);
  return v27;
}

void __78__RTTripClusterWaypointDataStore_getTripClusterWaypointDataCountForClusterID___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__RTTripClusterWaypointDataStore_getTripClusterWaypointDataCountForClusterID___block_invoke_2;
  v6[3] = &unk_2788C48E8;
  v6[4] = v3;
  v7 = v2;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  [v3 _fetchCountForClusterID:v7 handler:v6];
}

void __78__RTTripClusterWaypointDataStore_getTripClusterWaypointDataCountForClusterID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,Error fetching waypoint count for cluster ID,%@,error,%@", &v11, 0x20u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchTripClusterWaypointWithOptions:(id)options handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTTripClusterWaypointDataStore _fetchTripClusterWaypointWithOptions:handler:]";
      v18 = 1024;
      LODWORD(v19) = 249;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v16, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = optionsCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Starting fetch operation with options,%@", &v16, 0x16u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D013C0]) initWithEnumerationOptions:optionsCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@,Starting fetch operation with context,%@", &v16, 0x16u);
    }
  }

  [(RTTripClusterWaypointDataStore *)self _fetchTripClusterWaypointWithContext:v12 handler:handlerCopy];
}

- (void)_fetchTripClusterWaypointWithContext:(id)context handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    aBlock[4] = self;
    v8 = contextCopy;
    v25 = v8;
    v9 = handlerCopy;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke_70;
    block[3] = &unk_2788C4F88;
    block[4] = self;
    v21 = v8;
    v22 = v10;
    v23 = v9;
    v12 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTTripClusterWaypointDataStore _fetchTripClusterWaypointWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 260;
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
        localizedDescription = [v15 localizedDescription];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = localizedDescription;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Error,%@", buf, 0x16u);
      }
    }
  }
}

void __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v62 = a1;
  v5 = [*(a1 + 40) options];
  v6 = [v4 fetchRequestFromStoredTripClusterWaypointsOptions:v5 inManagedObjectContext:v3];

  v7 = [v6 predicate];

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v6 predicate];
        *buf = 138412546;
        v72 = v11;
        v73 = 2112;
        v74 = v12;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Fetch predicate,%@", buf, 0x16u);

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v11 = NSStringFromClass(v13);
      *buf = 138412290;
      v72 = v11;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Fetch predicate is missing!", buf, 0xCu);
      goto LABEL_8;
    }

LABEL_9:
  }

  v67 = 0;
  v14 = [v3 executeFetchRequest:v6 error:&v67];
  v15 = v67;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v14 count];
      *buf = 138412802;
      v72 = v18;
      v73 = 2048;
      v74 = v19;
      v75 = 2112;
      v76 = v15;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Fetch results,count,%lu,error,%@", buf, 0x20u);
    }
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v15 localizedDescription];
        *buf = 138412546;
        v72 = v22;
        v73 = 2112;
        v74 = v23;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@,Error during fetch,%@", buf, 0x16u);
      }

      v24 = 0;
      goto LABEL_19;
    }

    v24 = 0;
    goto LABEL_52;
  }

  if (![v14 count])
  {
    v24 = 0;
    goto LABEL_51;
  }

  v60 = v6;
  v61 = v3;
  v24 = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = v14;
  v25 = v14;
  v26 = [v25 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = v26;
  v28 = *v64;
  v29 = off_2788C2000;
  v30 = MEMORY[0x277D86220];
  do
  {
    v31 = 0;
    do
    {
      if (*v64 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v32 = *(*(&v63 + 1) + 8 * v31);
      v33 = objc_autoreleasePoolPush();
      v34 = [(__objc2_class *)v29[18] createWithManagedObject:v32];
      if (v34)
      {
        v35 = [RTTripClusterWaypoint getWaypointsFromWaypointData:v34];
        [v24 addObjectsFromArray:v35];
LABEL_28:

        goto LABEL_29;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          NSStringFromClass(v36);
          v37 = v25;
          v38 = v30;
          v40 = v39 = v24;
          *buf = 138412290;
          v72 = v40;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@,Error creating RTTripClusterWaypoint from waypointMO", buf, 0xCu);

          v24 = v39;
          v30 = v38;
          v25 = v37;
          v29 = off_2788C2000;
        }

        goto LABEL_28;
      }

LABEL_29:

      objc_autoreleasePoolPop(v33);
      ++v31;
    }

    while (v27 != v31);
    v41 = [v25 countByEnumeratingWithState:&v63 objects:v70 count:16];
    v27 = v41;
  }

  while (v41);
LABEL_35:

  if (![v24 count])
  {
    v15 = 0;
    v6 = v60;
    v3 = v61;
    v14 = v59;
    goto LABEL_52;
  }

  [v24 sortUsingComparator:&__block_literal_global_4];
  v6 = v60;
  v3 = v61;
  if (*(*(v62 + 32) + 72) == 1 && [v24 count] >= 2)
  {
    v42 = [v24 objectAtIndexedSubscript:0];
    if ([v42 sequence] == 1)
    {
      v43 = [v24 objectAtIndexedSubscript:1];
      v44 = [v43 sequence];

      if (v44 == 1)
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v56 = [v24 firstObject];
          v57 = [v56 clusterID];
          v58 = [v57 UUIDString];
          *buf = 138412546;
          v72 = v55;
          v73 = 2112;
          v74 = v58;
          _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@,Duplicate sequence number 1 detected,clusterID,%@", buf, 0x16u);
        }

        [v24 removeAllObjects];
        v46 = MEMORY[0x277CCA9B8];
        v47 = *MEMORY[0x277D01448];
        v68 = *MEMORY[0x277CCA450];
        v69 = @"Duplicate sequence numbers detected in waypoint data";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v15 = [v46 errorWithDomain:v47 code:11 userInfo:v20];
        v14 = v59;
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v14 = v59;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_51:
    v15 = 0;
    goto LABEL_52;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v24 firstObject];
    v51 = [v50 clusterID];
    v52 = [v51 UUIDString];
    v53 = [v24 count];
    *buf = 138412802;
    v72 = v49;
    v73 = 2112;
    v74 = v52;
    v75 = 2048;
    v76 = v53;
    _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@,Fetched waypoints,clusterID,%@,count,%lu", buf, 0x20u);
  }

  v15 = 0;
LABEL_19:

LABEL_52:
  (*(*(v62 + 48) + 16))();
}

uint64_t __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sequence];
  if (v6 >= [v5 sequence])
  {
    v8 = [v4 sequence];
    v7 = v8 > [v5 sequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke_70(uint64_t a1)
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
  v10[2] = __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke_71;
  v10[3] = &unk_2788C4F60;
  v10[4] = v8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v8 _performBlock:v9 contextType:1 errorHandler:v10];
}

void __79__RTTripClusterWaypointDataStore__fetchTripClusterWaypointWithContext_handler___block_invoke_71(uint64_t a1, void *a2)
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

    v23 = [(RTTripClusterWaypointDataStore *)self fetchRequestFromStoredTripClusterWaypointsOptions:optionsCopy inManagedObjectContext:contextCopy];
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

- (id)fetchRequestFromStoredTripClusterWaypointsOptions:(id)options inManagedObjectContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  if (optionsCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        batchSize = [optionsCopy batchSize];
        clusterID = [optionsCopy clusterID];
        uUIDString = [clusterID UUIDString];
        *buf = 138412802;
        v35 = v9;
        v36 = 2048;
        v37 = batchSize;
        v38 = 2112;
        v39 = uUIDString;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Creating fetch request from options,batchSize,%lu,clusterID,%@", buf, 0x20u);
      }
    }

    v13 = +[RTTripClusterWaypointDataMO fetchRequest];
    [v13 setReturnsObjectsAsFaults:0];
    array = [MEMORY[0x277CBEB18] array];
    clusterID2 = [optionsCopy clusterID];

    if (clusterID2)
    {
      v16 = MEMORY[0x277CCAC30];
      clusterID3 = [optionsCopy clusterID];
      v18 = [v16 predicateWithFormat:@"clusterID == %@", clusterID3];

      [array addObject:v18];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          clusterID4 = [optionsCopy clusterID];
          uUIDString2 = [clusterID4 UUIDString];
          *buf = 138412546;
          v35 = v21;
          v36 = 2112;
          v37 = uUIDString2;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@,Added predicate for clusterID,%@", buf, 0x16u);
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_18:
        v25 = +[RTCloudManagedObject notTombstonedPredicate];
        [array addObject:v25];
        if ([array count])
        {
          v26 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
          [v13 setPredicate:v26];
        }

        if ([optionsCopy batchSize])
        {
          batchSize2 = [optionsCopy batchSize];
        }

        else
        {
          batchSize2 = 3600;
        }

        [v13 setFetchLimit:batchSize2];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            predicate = [v13 predicate];
            fetchLimit = [v13 fetchLimit];
            *buf = 138412802;
            v35 = v30;
            v36 = 2112;
            v37 = predicate;
            v38 = 2048;
            v39 = fetchLimit;
            _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@,Final fetch request,predicate,%@,limit,%lu", buf, 0x20u);
          }
        }

        goto LABEL_28;
      }

      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v19 = NSStringFromClass(v24);
        *buf = 138412290;
        v35 = v19;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@,Error,missing clusterID in options. This will fetch all waypoints", buf, 0xCu);
LABEL_16:
      }
    }

    goto LABEL_18;
  }

  array = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, array, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  v13 = 0;
LABEL_28:

  return v13;
}

+ (id)predicateForClusterID:(id)d
{
  if (d)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", d];
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

- (void)_deleteTripClusterWaypointWithUUID:(id)d handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
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
    v29 = "[RTTripClusterWaypointDataStore _deleteTripClusterWaypointWithUUID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 429;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterWaypointDataStore _deleteTripClusterWaypointWithUUID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 430;
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

  if (dCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__RTTripClusterWaypointDataStore__deleteTripClusterWaypointWithUUID_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v23 = dCopy;
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

void __77__RTTripClusterWaypointDataStore__deleteTripClusterWaypointWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterWaypointDataMO"];
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

- (void)deleteTripClusterWaypointWithClusterID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTTripClusterWaypointDataStore_deleteTripClusterWaypointWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)deleteTripClusterWaypointWithClusterID:(id)d maxDeleteAttempts:(unint64_t)attempts
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
    v14 = [(RTTripClusterWaypointDataStore *)self deleteTripClusterWaypointWithClusterID:dCopy, v23];
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
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,Delete waypoints attempt,%d/%d,failed for clusterID,%@", buf, 0x22u);
      }
    }

    ++v12;
    --v11;
  }

  while (v11);

  return v14;
}

- (BOOL)deleteTripClusterWaypointWithClusterID:(id)d
{
  v52[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__5;
  v45 = __Block_byref_object_dispose__5;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __73__RTTripClusterWaypointDataStore_deleteTripClusterWaypointWithClusterID___block_invoke;
  v38 = &unk_2788C4618;
  v40 = &v41;
  v6 = v5;
  v39 = v6;
  [(RTTripClusterWaypointDataStore *)self deleteTripClusterWaypointWithClusterID:dCopy handler:&v35];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_184];
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
      uUIDString = [dCopy UUIDString];
      localizedDescription = [v23 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v26;
      v48 = 2112;
      v49 = uUIDString;
      v50 = 2112;
      v51 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error deleting Cluster Waypoint for cluster ID,%@,error,%@", buf, 0x20u);
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
      uUIDString2 = [dCopy UUIDString];
      localizedDescription2 = [v42[5] localizedDescription];
      *buf = 138412802;
      *&buf[4] = v32;
      v48 = 2112;
      v49 = uUIDString2;
      v50 = 2112;
      v51 = localizedDescription2;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Error deleting Cluster Waypoint for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v29 = 0;
LABEL_14:

  _Block_object_dispose(&v41, 8);
  return v29;
}

void __73__RTTripClusterWaypointDataStore_deleteTripClusterWaypointWithClusterID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClusterWaypointWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  [(RTStore *)self removeAll:v7 handler:handlerCopy];
}

- (void)purgeTripClusterWaypointWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTTripClusterWaypointDataStore_purgeTripClusterWaypointWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end