@interface RTTripClusterScheduleStore
+ (id)_predicateForClusterAndTimeID:(id)d timeID:(int)iD;
+ (id)_predicateForClusterID:(id)d;
- (BOOL)deleteTripClusterScheduleWithClusterID:(id)d;
- (RTTripClusterScheduleStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error inManagedObjectContext:(id)context;
- (id)fetchRequestFromStoredTripClusterScheduleOptions:(id)options inManagedObjectContext:(id)context;
- (id)getTripClusterScheduleWithOptions:(id)options;
- (int64_t)getCountForClusterID:(id)d timeID:(int)iD;
- (void)_deleteTripClusterScheduleWithClusterID:(id)d handler:(id)handler;
- (void)_fetchClusterScheduleForClusterID:(id)d handler:(id)handler;
- (void)_fetchCountForClusterID:(id)d timeID:(int)iD handler:(id)handler;
- (void)_fetchTripClusterScheduleWithContext:(id)context handler:(id)handler;
- (void)_fetchTripClusterScheduleWithOptions:(id)options handler:(id)handler;
- (void)_purgeTripClusterScheduleWithHandler:(id)handler;
- (void)_storeTripClusterSchedule:(id)schedule handler:(id)handler;
- (void)_updateTripClusterScheduleWithPredicate:(id)predicate tripClusterSchedule:(id)schedule handler:(id)handler;
- (void)deleteTripClusterScheduleWithClusterID:(id)d handler:(id)handler;
- (void)fetchTripClusterScheduleWithContext:(id)context handler:(id)handler;
- (void)fetchTripClusterScheduleWithOptions:(id)options handler:(id)handler;
- (void)purgeTripClusterScheduleWithHandler:(id)handler;
- (void)storeTripClusterSchedule:(id)schedule;
- (void)storeTripClusterSchedule:(id)schedule handler:(id)handler;
- (void)updateTripClusterSchedule:(id)schedule handler:(id)handler;
@end

@implementation RTTripClusterScheduleStore

- (RTTripClusterScheduleStore)initWithPersistenceManager:(id)manager
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterScheduleStore;
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
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@:%@ success.", buf, 0x16u);
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

- (void)_storeTripClusterSchedule:(id)schedule handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RTTripClusterScheduleStore__storeTripClusterSchedule_handler___block_invoke;
  v8[3] = &unk_2788C4F60;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(RTStore *)self storeWritableObjects:schedule handler:v8];
}

void __64__RTTripClusterScheduleStore__storeTripClusterSchedule_handler___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Error storing trip cluster schedule,%@", &v9, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)storeTripClusterSchedule:(id)schedule handler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!scheduleCopy)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: tripClusterSchedules";
LABEL_30:
    _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    goto LABEL_28;
  }

  if (!handlerCopy)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: handler";
    goto LABEL_30;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = scheduleCopy;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v34 = scheduleCopy;
    v35 = v39;
    v12 = MEMORY[0x277D86220];
    v36 = v8;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            clusterID = [v14 clusterID];
            uUIDString = [clusterID UUIDString];
            *buf = 138412546;
            v48 = v18;
            v49 = 2112;
            v50 = uUIDString;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Attempting to store trip cluster schedule,ID,%@", buf, 0x16u);

            v12 = MEMORY[0x277D86220];
            v8 = v36;
          }
        }

        clusterID2 = [v14 clusterID];
        v22 = -[RTTripClusterScheduleStore getCountForClusterID:timeID:](self, "getCountForClusterID:timeID:", clusterID2, [v14 timeID]);

        if (v22 < 0)
        {
          v30 = MEMORY[0x277CCA9B8];
          v31 = *MEMORY[0x277D01448];
          v45 = *MEMORY[0x277CCA450];
          v46 = @"could not fetch count for cluster schedule";
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v33 = [v30 errorWithDomain:v31 code:5 userInfo:v32];

          (v8)[2](v8, v33);
          objc_autoreleasePoolPop(v15);
          goto LABEL_26;
        }

        if (v22)
        {
          [v14 setCount:(v22 + 1)];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              clusterID3 = [v14 clusterID];
              uUIDString2 = [clusterID3 UUIDString];
              *buf = 138412546;
              v48 = v25;
              v49 = 2112;
              v50 = uUIDString2;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@,Updating existing cluster,ID,%@", buf, 0x16u);

              v8 = v36;
              v12 = MEMORY[0x277D86220];
            }
          }

          [(RTTripClusterScheduleStore *)self updateTripClusterSchedule:v14 handler:v8];
        }

        else
        {
          queue = [(RTNotifier *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          v39[0] = __63__RTTripClusterScheduleStore_storeTripClusterSchedule_handler___block_invoke;
          v39[1] = &unk_2788C4500;
          v39[2] = self;
          v39[3] = v14;
          v40 = v8;
          dispatch_async(queue, block);
        }

        objc_autoreleasePoolPop(v15);
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_26:
    scheduleCopy = v34;
  }

LABEL_28:
}

void __63__RTTripClusterScheduleStore_storeTripClusterSchedule_handler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Storing new cluster,ID,%@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v7 _storeTripClusterSchedule:v8 handler:*(a1 + 48)];
}

- (int64_t)getCountForClusterID:(id)d timeID:(int)iD
{
  v49[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTTripClusterScheduleStore_getCountForClusterID_timeID___block_invoke;
  block[3] = &unk_2788D09A0;
  block[4] = self;
  v9 = dCopy;
  iDCopy = iD;
  v36 = v9;
  v38 = &v40;
  v10 = v7;
  v37 = v10;
  dispatch_async(queue, block);

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_131];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
    firstObject = [v20 firstObject];

    [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v49[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v49 count:1];
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
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      uUIDString = [v9 UUIDString];
      localizedDescription = [v27 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v32;
      v45 = 2112;
      v46 = uUIDString;
      v47 = 2112;
      v48 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching Schedules for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }

    v29 = -1;
    v41[3] = -1;
  }

  else
  {
    v29 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  return v29;
}

void __58__RTTripClusterScheduleStore_getCountForClusterID_timeID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTTripClusterScheduleStore_getCountForClusterID_timeID___block_invoke_2;
  v7[3] = &unk_2788D0978;
  v6 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(&v6 + 1);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  v8 = v6;
  v9 = v5;
  [v6 _fetchCountForClusterID:v4 timeID:v2 handler:v7];
}

void __58__RTTripClusterScheduleStore_getCountForClusterID_timeID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,Error fetching schedule count for Cluster ID,%@,%@", &v11, 0x20u);
      }
    }

    a2 = -1;
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchCountForClusterID:(id)d timeID:(int)iD handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__RTTripClusterScheduleStore__fetchCountForClusterID_timeID_handler___block_invoke;
    aBlock[3] = &unk_2788D09C8;
    v15 = dCopy;
    iDCopy = iD;
    v10 = handlerCopy;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__RTTripClusterScheduleStore__fetchCountForClusterID_timeID_handler___block_invoke_2;
    v12[3] = &unk_2788C48C0;
    v13 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v12];
  }
}

void __69__RTTripClusterScheduleStore__fetchCountForClusterID_timeID_handler___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTTripClusterScheduleMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", *(a1 + 32)];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timeID == %d", *(a1 + 48)];
  v7 = MEMORY[0x277CCA920];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  v11 = 0;
  [v3 countForFetchRequest:v4 error:&v11];

  v10 = v11;
  (*(*(a1 + 40) + 16))();
}

- (void)storeTripClusterSchedule:(id)schedule
{
  v34[1] = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  if ([scheduleCopy count])
  {
    v5 = dispatch_semaphore_create(0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__RTTripClusterScheduleStore_storeTripClusterSchedule___block_invoke;
    v29[3] = &unk_2788C7E48;
    v29[4] = self;
    v6 = v5;
    v30 = v6;
    [(RTTripClusterScheduleStore *)self storeTripClusterSchedule:scheduleCopy handler:v29];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v8];
      v11 = v10;
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_131];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v15 = [callStackSymbols filteredArrayUsingPredicate:v13];
      firstObject = [v15 firstObject];

      [v12 submitToCoreAnalytics:firstObject type:1 duration:v11];
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v34[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v34 count:1];
      v21 = [v18 errorWithDomain:v19 code:15 userInfo:v20];

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
        localizedDescription = [v23 localizedDescription];
        *buf = 138412546;
        *&buf[4] = v26;
        v32 = 2112;
        v33 = localizedDescription;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore Error updating clusters,error,%@", buf, 0x16u);
      }
    }
  }
}

void __55__RTTripClusterScheduleStore_storeTripClusterSchedule___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error storing cluster schedule,error,%@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_fetchClusterScheduleForClusterID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__RTTripClusterScheduleStore__fetchClusterScheduleForClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v14 = dCopy;
    v8 = handlerCopy;
    v15 = v8;
    v9 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__RTTripClusterScheduleStore__fetchClusterScheduleForClusterID_handler___block_invoke_2;
    v11[3] = &unk_2788C48C0;
    v12 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v11];

    v10 = v14;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __72__RTTripClusterScheduleStore__fetchClusterScheduleForClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTTripClusterScheduleMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchTripClusterScheduleWithOptions:(id)options handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[RTTripClusterScheduleStore _fetchTripClusterScheduleWithOptions:handler:]";
    v13 = 1024;
    v14 = 209;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v11, 0x12u);
  }

  if (!optionsCopy)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTTripClusterScheduleStore _fetchTripClusterScheduleWithOptions:handler:]";
      v13 = 1024;
      v14 = 210;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", &v11, 0x12u);
    }
  }

LABEL_10:
  v10 = [objc_alloc(MEMORY[0x277D013B0]) initWithEnumerationOptions:optionsCopy];
  [(RTTripClusterScheduleStore *)self _fetchTripClusterScheduleWithContext:v10 handler:handlerCopy];
}

- (void)fetchTripClusterScheduleWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTTripClusterScheduleStore_fetchTripClusterScheduleWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)fetchTripClusterScheduleWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTTripClusterScheduleStore_fetchTripClusterScheduleWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (id)getTripClusterScheduleWithOptions:(id)options
{
  v52[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__157;
  v45 = __Block_byref_object_dispose__157;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __64__RTTripClusterScheduleStore_getTripClusterScheduleWithOptions___block_invoke;
  v36 = &unk_2788C4870;
  selfCopy = self;
  v6 = optionsCopy;
  v38 = v6;
  v40 = &v41;
  v7 = v5;
  v39 = v7;
  [(RTTripClusterScheduleStore *)self fetchTripClusterScheduleWithOptions:v6 handler:&v33];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_131];
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
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching Schedules for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v26;
}

void __64__RTTripClusterScheduleStore_getTripClusterScheduleWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
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
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error fetching Schedules for cluster with cluster ID,%@,error,%@", &v14, 0x20u);
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

- (void)_fetchTripClusterScheduleWithContext:(id)context handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke;
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
    block[2] = __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke_47;
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
      v28 = "[RTTripClusterScheduleStore _fetchTripClusterScheduleWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 265;
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

void __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v46 = a1;
  v5 = [*(a1 + 40) options];
  v6 = [v4 fetchRequestFromStoredTripClusterScheduleOptions:v5 inManagedObjectContext:v3];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138413058;
      v54 = v9;
      v55 = 2112;
      v56 = v6;
      v57 = 2048;
      v58 = [v6 fetchOffset];
      v59 = 2048;
      v60 = [v6 fetchLimit];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Executing fetch with request,%@,offset,%lu,limit,%lu", buf, 0x2Au);
    }
  }

  v10 = [v6 predicate];

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v6 predicate];
    *buf = 138412546;
    v54 = v14;
    v55 = 2112;
    v56 = v15;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,Fetch predicate,%@", buf, 0x16u);

    goto LABEL_12;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138412290;
    v54 = v14;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,Fetch predicate is missing!", buf, 0xCu);
LABEL_12:
  }

LABEL_13:

LABEL_14:
  v51 = 0;
  v17 = [v3 executeFetchRequest:v6 error:&v51];
  v18 = v51;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v17 count];
      *buf = 138412802;
      v54 = v21;
      v55 = 2048;
      v56 = v22;
      v57 = 2112;
      v58 = v18;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@,Fetch results,count,%lu,error,%@", buf, 0x20u);
    }
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
  if (!v18)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = v17;
    v28 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v43 = v17;
      v44 = v6;
      v45 = v3;
      v30 = *v48;
      v31 = off_2788C2000;
      v32 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          v35 = objc_autoreleasePoolPush();
          v36 = [(__objc2_class *)v31[12] createWithManagedObject:v34];
          if (v36)
          {
            [v23 addObject:v36];
          }

          else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = objc_opt_class();
              NSStringFromClass(v38);
              v39 = v23;
              v40 = v24;
              v42 = v41 = v32;
              *buf = 138412290;
              v54 = v42;
              _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@,Error creating RTTripClusterSchedule from scheduleMO", buf, 0xCu);

              v32 = v41;
              v24 = v40;
              v23 = v39;
              v31 = off_2788C2000;
            }
          }

          objc_autoreleasePoolPop(v35);
        }

        v29 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v29);
      v6 = v44;
      v3 = v45;
      v17 = v43;
      v18 = 0;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v18 localizedDescription];
      *buf = 138412546;
      v54 = v26;
      v55 = 2112;
      v56 = v27;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@,Error during fetch,%@", buf, 0x16u);
    }

LABEL_36:
  }

  (*(*(v46 + 48) + 16))();
}

void __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke_47(uint64_t a1)
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
  v10[2] = __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke_48;
  v10[3] = &unk_2788C4F60;
  v10[4] = v8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v8 _performBlock:v9 contextType:1 errorHandler:v10];
}

void __75__RTTripClusterScheduleStore__fetchTripClusterScheduleWithContext_handler___block_invoke_48(uint64_t a1, void *a2)
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

    v23 = [(RTTripClusterScheduleStore *)self fetchRequestFromStoredTripClusterScheduleOptions:optionsCopy inManagedObjectContext:contextCopy];
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

- (id)fetchRequestFromStoredTripClusterScheduleOptions:(id)options inManagedObjectContext:(id)context
{
  v37[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  if (optionsCopy)
  {
    v7 = +[RTTripClusterScheduleMO fetchRequest];
    [v7 setReturnsObjectsAsFaults:0];
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"count" ascending:0];
    v37[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [v7 setSortDescriptors:v9];

    array = [MEMORY[0x277CBEB18] array];
    clusterID = [optionsCopy clusterID];

    if (clusterID)
    {
      v12 = MEMORY[0x277CCAC30];
      clusterID2 = [optionsCopy clusterID];
      v14 = [v12 predicateWithFormat:@"clusterID == %@", clusterID2];

      [array addObject:v14];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          clusterID3 = [optionsCopy clusterID];
          uUIDString = [clusterID3 UUIDString];
          *buf = 138412546;
          v32 = v17;
          v33 = 2112;
          v34 = uUIDString;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,Added predicate for clusterID,%@", buf, 0x16u);
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_14:
        v21 = [RTTripClusterDeviceHelper currentDevicePredicateWithPropertyName:@"device" inManagedObjectContext:contextCopy];
        if (v21)
        {
          [array addObject:v21];
        }

        v22 = +[RTCloudManagedObject notTombstonedPredicate];
        [array addObject:v22];
        if ([array count])
        {
          v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
          [v7 setPredicate:v23];
        }

        if ([optionsCopy batchSize])
        {
          batchSize = [optionsCopy batchSize];
        }

        else
        {
          batchSize = 3600;
        }

        [v7 setFetchLimit:batchSize];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            predicate = [v7 predicate];
            fetchLimit = [v7 fetchLimit];
            *buf = 138412802;
            v32 = v27;
            v33 = 2112;
            v34 = predicate;
            v35 = 2048;
            v36 = fetchLimit;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@,Final fetch request,predicate,%@,limit,%lu", buf, 0x20u);
          }
        }

        goto LABEL_26;
      }

      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v15 = NSStringFromClass(v20);
        *buf = 138412290;
        v32 = v15;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Error,missing clusterID in options. This will fetch all clusters", buf, 0xCu);
LABEL_12:
      }
    }

    goto LABEL_14;
  }

  array = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, array, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  v7 = 0;
LABEL_26:

  return v7;
}

- (void)updateTripClusterSchedule:(id)schedule handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (scheduleCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[RTTripClusterScheduleStore updateTripClusterSchedule:handler:]";
    v25 = 1024;
    LODWORD(v26) = 401;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (!scheduleCopy)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripClusterScheduleStore updateTripClusterSchedule:handler:]";
      v25 = 1024;
      LODWORD(v26) = 402;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterSchedule (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      clusterID = [scheduleCopy clusterID];
      uUIDString = [clusterID UUIDString];
      timeID = [scheduleCopy timeID];
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = uUIDString;
      v27 = 1024;
      v28 = timeID;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Updating trip cluster schedule,ID,%@,timeID,%d", buf, 0x1Cu);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTTripClusterScheduleStore_updateTripClusterSchedule_handler___block_invoke;
  block[3] = &unk_2788C4500;
  v20 = scheduleCopy;
  selfCopy = self;
  v22 = handlerCopy;
  v17 = handlerCopy;
  v18 = scheduleCopy;
  dispatch_async(queue, block);
}

void __64__RTTripClusterScheduleStore_updateTripClusterSchedule_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clusterID];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = objc_opt_class();
    v6 = [*(a1 + 32) clusterID];
    v5 = [v4 _predicateForClusterAndTimeID:v6 timeID:{objc_msgSend(*(a1 + 32), "timeID")}];
    [v3 _updateTripClusterScheduleWithPredicate:v5 tripClusterSchedule:*(a1 + 32) handler:*(a1 + 48)];
  }
}

- (void)_updateTripClusterScheduleWithPredicate:(id)predicate tripClusterSchedule:(id)schedule handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  scheduleCopy = schedule;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripClusterScheduleStore _updateTripClusterScheduleWithPredicate:tripClusterSchedule:handler:]";
      v25 = 1024;
      v26 = 427;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v12 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__RTTripClusterScheduleStore__updateTripClusterScheduleWithPredicate_tripClusterSchedule_handler___block_invoke;
  aBlock[3] = &unk_2788C4F38;
  v13 = predicateCopy;
  v20 = v13;
  selfCopy = self;
  v14 = handlerCopy;
  v22 = v14;
  v15 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__RTTripClusterScheduleStore__updateTripClusterScheduleWithPredicate_tripClusterSchedule_handler___block_invoke_69;
  v17[3] = &unk_2788C48C0;
  v16 = v14;
  v18 = v16;
  [(RTStore *)self _performBlock:v15 contextType:2 errorHandler:v17];

  objc_autoreleasePoolPop(v12);
}

void __98__RTTripClusterScheduleStore__updateTripClusterScheduleWithPredicate_tripClusterSchedule_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE380];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = +[RTTripClusterScheduleMO entity];
  v7 = [v5 initWithEntity:v6];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"count + 1"];
  [v8 setObject:v9 forKeyedSubscript:@"count"];

  [v7 setPropertiesToUpdate:v8];
  if (*(a1 + 32))
  {
    [v7 setPredicate:?];
  }

  [v7 setResultType:2];
  v16 = 0;
  v10 = [v4 executeRequest:v7 error:&v16];

  v11 = v16;
  v12 = v11;
  if (!v10 || v11)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@ update TripCluster operation failed,err,%@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)_predicateForClusterID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        uUIDString = [dCopy UUIDString];
        *buf = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = uUIDString;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,_predicate for cluster,ID,%@", buf, 0x16u);
      }
    }

    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", dCopy];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    dCopy = 0;
  }

  return dCopy;
}

+ (id)_predicateForClusterAndTimeID:(id)d timeID:(int)iD
{
  v4 = *&iD;
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        uUIDString = [dCopy UUIDString];
        *buf = 138412802;
        v18 = v8;
        v19 = 2112;
        v20 = uUIDString;
        v21 = 1024;
        v22 = v4;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,_predicate for cluster,ID,%@,timeID,%d", buf, 0x1Cu);
      }
    }

    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", dCopy];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timeID == %d", v4];
    v12 = MEMORY[0x277CCA920];
    v16[0] = dCopy;
    v16[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    dCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, dCopy, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_deleteTripClusterScheduleWithClusterID:(id)d handler:(id)handler
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
    v29 = "[RTTripClusterScheduleStore _deleteTripClusterScheduleWithClusterID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 484;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterScheduleStore _deleteTripClusterScheduleWithClusterID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 485;
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
    aBlock[2] = __78__RTTripClusterScheduleStore__deleteTripClusterScheduleWithClusterID_handler___block_invoke;
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

void __78__RTTripClusterScheduleStore__deleteTripClusterScheduleWithClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterScheduleMO"];
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

- (void)deleteTripClusterScheduleWithClusterID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTTripClusterScheduleStore_deleteTripClusterScheduleWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (BOOL)deleteTripClusterScheduleWithClusterID:(id)d
{
  v52[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__157;
  v45 = __Block_byref_object_dispose__157;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __69__RTTripClusterScheduleStore_deleteTripClusterScheduleWithClusterID___block_invoke;
  v38 = &unk_2788C4618;
  v40 = &v41;
  v6 = v5;
  v39 = v6;
  [(RTTripClusterScheduleStore *)self deleteTripClusterScheduleWithClusterID:dCopy handler:&v35];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_131];
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
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error deleting Cluster Schedule for cluster ID,%@,error,%@", buf, 0x20u);
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
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Error deleting Cluster Schedule for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v29 = 0;
LABEL_14:

  _Block_object_dispose(&v41, 8);
  return v29;
}

void __69__RTTripClusterScheduleStore_deleteTripClusterScheduleWithClusterID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClusterScheduleWithHandler:(id)handler
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

- (void)purgeTripClusterScheduleWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTTripClusterScheduleStore_purgeTripClusterScheduleWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end