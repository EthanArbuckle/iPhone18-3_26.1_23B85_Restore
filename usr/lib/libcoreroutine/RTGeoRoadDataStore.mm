@interface RTGeoRoadDataStore
+ (id)predicateForCLRoadID:(unint64_t)d;
- (RTGeoRoadDataStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (id)fetchRequestFromStoredGeoRoadDataOptions:(id)options;
- (void)_fetchGeoRoadDataWithContext:(id)context handler:(id)handler;
- (void)_fetchGeoRoadDataWithOptions:(id)options handler:(id)handler;
- (void)_fetchTraversedCountForCLRoadID:(unint64_t)d handler:(id)handler;
- (void)_purgeGeoRoadDataWithHandler:(id)handler;
- (void)_storeGeoRoadData:(id)data handler:(id)handler;
- (void)_updateRoadDataWithPredicate:(id)predicate handler:(id)handler;
- (void)fetchGeoRoadDataWithContext:(id)context handler:(id)handler;
- (void)fetchGeoRoadDataWithOptions:(id)options handler:(id)handler;
- (void)purgeGeoRoadDataWithHandler:(id)handler;
- (void)storeCLTripSegmentRoadData:(id)data handler:(id)handler;
- (void)storeGeoRoadData:(id)data handler:(id)handler;
- (void)updateRoadDataWithCLRoadID:(unint64_t)d handler:(id)handler;
@end

@implementation RTGeoRoadDataStore

- (RTGeoRoadDataStore)initWithPersistenceManager:(id)manager
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    v13.receiver = self;
    v13.super_class = RTGeoRoadDataStore;
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

- (void)_storeGeoRoadData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__RTGeoRoadDataStore__storeGeoRoadData_handler___block_invoke;
  v9[3] = &unk_2788C4780;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  [(RTStore *)self storeWritableObjects:data handler:v9];
}

void __48__RTGeoRoadDataStore__storeGeoRoadData_handler___block_invoke(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTGeoRoadDataStore,%@,error,%@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)storeGeoRoadData:(id)data handler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *v64 = 138412546;
      *&v64[4] = v38;
      *&v64[12] = 2048;
      *&v64[14] = [dataCopy count];
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@ storeGeoRoadData invoked with roadCount,%lu", v64, 0x16u);
    }
  }

  v44 = dispatch_semaphore_create(0);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = dataCopy;
  v45 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v45)
  {
    v7 = 0;
    v43 = *v59;
    v39 = v51;
    v41 = *MEMORY[0x277D01448];
    v42 = *MEMORY[0x277CCA450];
LABEL_7:
    v8 = 0;
    v9 = v7;
    while (1)
    {
      if (*v59 != v43)
      {
        v10 = v8;
        objc_enumerationMutation(obj);
        v8 = v10;
      }

      v47 = v8;
      v11 = *(*(&v58 + 1) + 8 * v8);
      context = objc_autoreleasePoolPush();
      *v64 = 0;
      *&v64[8] = v64;
      *&v64[16] = 0x2020000000;
      v65 = 0;
      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke;
      block[3] = &unk_2788C4EF0;
      block[4] = self;
      block[5] = v11;
      v57 = v64;
      v13 = v44;
      v56 = v13;
      dispatch_async(queue, block);

      v14 = v13;
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = dispatch_time(0, 3600000000000);
      v17 = v9;
      if (dispatch_semaphore_wait(v14, v16))
      {
        v18 = [MEMORY[0x277CBEAA8] now];
        [v18 timeIntervalSinceDate:v15];
        v20 = v19;
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_96];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
        firstObject = [v24 firstObject];

        [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
        v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v27 = MEMORY[0x277CCA9B8];
        v67 = v42;
        *buf = @"semaphore wait timeout";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v67 count:1];
        v29 = [v27 errorWithDomain:v41 code:15 userInfo:v28];

        v17 = v9;
        if (v29)
        {
          v30 = v29;

          v17 = v29;
        }
      }

      v7 = v17;
      clRoadID = [v11 clRoadID];
      if (clRoadID)
      {
        if (*(*&v64[8] + 24))
        {
          queue2 = [(RTNotifier *)self queue];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_3;
          v53[3] = &unk_2788C4500;
          v53[4] = self;
          v53[5] = v11;
          v54 = handlerCopy;
          dispatch_async(queue2, v53);
        }

        else
        {
          queue3 = [(RTNotifier *)self queue];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v51[0] = __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_4;
          v51[1] = &unk_2788C4500;
          v51[2] = self;
          v51[3] = v11;
          v52 = handlerCopy;
          dispatch_async(queue3, v50);
        }
      }

      else
      {
        v33 = MEMORY[0x277CCA9B8];
        v62 = v42;
        v63 = @"clRoadID is set to zero";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v35 = [v33 errorWithDomain:v41 code:7 userInfo:v34];
        (*(handlerCopy + 2))(handlerCopy, v35);
      }

      _Block_object_dispose(v64, 8);
      objc_autoreleasePoolPop(context);
      if (!clRoadID)
      {
        break;
      }

      v8 = v47 + 1;
      v9 = v7;
      if (v45 == v47 + 1)
      {
        v45 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v45)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

void __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clRoadID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_2;
  v6[3] = &unk_2788C8028;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 _fetchTraversedCountForCLRoadID:v3 handler:v6];
}

intptr_t __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() predicateForCLRoadID:{objc_msgSend(*(a1 + 40), "clRoadID")}];
  [v2 _updateRoadDataWithPredicate:v3 handler:*(a1 + 48)];
}

void __47__RTGeoRoadDataStore_storeGeoRoadData_handler___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{a1[5], 0}];
  [v2 _storeGeoRoadData:v3 handler:a1[6]];
}

- (void)storeCLTripSegmentRoadData:(id)data handler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = dataCopy;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v39;
  v35 = *v39;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v39 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v38 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      coordinates = [v11 coordinates];
      if ([coordinates count] && objc_msgSend(v11, "clRoadID"))
      {
        roadID = [v11 roadID];

        if (!roadID)
        {
          goto LABEL_11;
        }

        coordinates2 = [v11 coordinates];
        coordinates = [coordinates2 lastObject];

        coordinates3 = [v11 coordinates];
        firstObject = [coordinates3 firstObject];

        v37 = [RTGeoRoadData alloc];
        v18 = v8;
        clRoadID = [v11 clRoadID];
        roadID2 = [v11 roadID];
        [firstObject latitude];
        v22 = v21;
        [firstObject longitude];
        v24 = v23;
        [coordinates latitude];
        v26 = v25;
        [coordinates longitude];
        v28 = v27;
        roadClass = [v11 roadClass];
        formOfWay = [v11 formOfWay];
        v31 = clRoadID;
        v8 = v18;
        v32 = [(RTGeoRoadData *)v37 initWithclRoadID:v31 geoRoadID:roadID2 roadTraversedCount:1 geoRoadStartLatitude:roadClass geoRoadStartLongitude:formOfWay geoRoadEndLatitude:v22 geoRoadEndLongitude:v24 geoRoadClass:v26 geoFormOfWay:v28];
        [array addObject:v32];

        v9 = v35;
      }

LABEL_11:
      objc_autoreleasePoolPop(v12);
    }

    v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v8);
LABEL_13:

  if ([array count])
  {
    [(RTGeoRoadDataStore *)self storeGeoRoadData:array handler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_fetchTraversedCountForCLRoadID:(unint64_t)d handler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__RTGeoRoadDataStore__fetchTraversedCountForCLRoadID_handler___block_invoke;
    aBlock[3] = &unk_2788CB7D8;
    dCopy = d;
    v8 = handlerCopy;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__RTGeoRoadDataStore__fetchTraversedCountForCLRoadID_handler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __62__RTGeoRoadDataStore__fetchTraversedCountForCLRoadID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTGeoRoadDataMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clRoadID == %llu", *(a1 + 40)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 32) + 16))();
}

- (void)_fetchGeoRoadDataWithOptions:(id)options handler:(id)handler
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
      v11 = "[RTGeoRoadDataStore _fetchGeoRoadDataWithOptions:handler:]";
      v12 = 1024;
      v13 = 182;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01110]) initWithEnumerationOptions:optionsCopy];
  [(RTGeoRoadDataStore *)self _fetchGeoRoadDataWithContext:v9 handler:handlerCopy];
}

- (void)fetchGeoRoadDataWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTGeoRoadDataStore_fetchGeoRoadDataWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchGeoRoadDataWithContext:(id)context handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__RTGeoRoadDataStore__fetchGeoRoadDataWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v23 = contextCopy;
    selfCopy = self;
    v26 = a2;
    v9 = handlerCopy;
    v25 = v9;
    v10 = _Block_copy(aBlock);
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RTGeoRoadDataStore__fetchGeoRoadDataWithContext_handler___block_invoke_60;
    block[3] = &unk_2788C8DF0;
    block[4] = self;
    v20 = v10;
    v21 = v9;
    v12 = v10;
    dispatch_async(queue, block);

    v13 = v23;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTGeoRoadDataStore _fetchGeoRoadDataWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 202;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"A handler is a required parameter.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v15;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@: A handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __59__RTGeoRoadDataStore__fetchGeoRoadDataWithContext_handler___block_invoke(uint64_t a1, void *a2)
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
  v9 = [v7 fetchRequestFromStoredGeoRoadDataOptions:v8];

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
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@: %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "fetchLimit")}];
  if (!v12)
  {
    v29 = v6;
    v30 = a1;
    v31 = v3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
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
          v22 = [RTGeoRoadData createWithManagedObject:v20];
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

    a1 = v30;
    v3 = v31;
    v6 = v29;
  }

  (*(*(a1 + 48) + 16))();
}

void __59__RTGeoRoadDataStore__fetchGeoRoadDataWithContext_handler___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__RTGeoRoadDataStore__fetchGeoRoadDataWithContext_handler___block_invoke_2;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchGeoRoadDataWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTGeoRoadDataStore_fetchGeoRoadDataWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (!optionsCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"options");
      *error = v20 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"error of type, %@, is not supported", v12];

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

    if (error)
    {
      v18 = v17;
      *error = v17;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_13;
  }

  v20 = [(RTGeoRoadDataStore *)self fetchRequestFromStoredGeoRoadDataOptions:optionsCopy];
  [v20 setFetchOffset:offset];
  if (error)
  {
    *error = 0;
  }

LABEL_13:

  return v20;
}

- (id)fetchRequestFromStoredGeoRoadDataOptions:(id)options
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (options)
  {
    v3 = +[RTGeoRoadDataMO fetchRequest];
    [v3 setReturnsObjectsAsFaults:0];
    v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"roadTraversedCount" ascending:1];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 setSortDescriptors:v5];

    array = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
    [v3 setPredicate:v7];

    [v3 setFetchBatchSize:0];
    [v3 setFetchLimit:3600];
  }

  else
  {
    array = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, array, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", v9, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)predicateForCLRoadID:(unint64_t)d
{
  if (d)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clRoadID == %llu", d];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: CLRoadID", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)updateRoadDataWithCLRoadID:(unint64_t)d handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RTGeoRoadDataStore_updateRoadDataWithCLRoadID_handler___block_invoke;
    block[3] = &unk_2788C6300;
    dCopy = d;
    block[4] = self;
    v9 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __57__RTGeoRoadDataStore_updateRoadDataWithCLRoadID_handler___block_invoke(void *a1)
{
  if (a1[6])
  {
    v2 = a1[4];
    v3 = [objc_opt_class() predicateForCLRoadID:a1[6]];
    [v2 _updateRoadDataWithPredicate:v3 handler:a1[5]];
  }
}

- (void)_updateRoadDataWithPredicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = objc_autoreleasePoolPush();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__RTGeoRoadDataStore__updateRoadDataWithPredicate_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v14 = predicateCopy;
    v9 = handlerCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__RTGeoRoadDataStore__updateRoadDataWithPredicate_handler___block_invoke_76;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:2 errorHandler:v11];

    objc_autoreleasePoolPop(v8);
  }
}

void __59__RTGeoRoadDataStore__updateRoadDataWithPredicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE380];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = +[RTGeoRoadDataMO entity];
  v7 = [v5 initWithEntity:v6];

  if (*(a1 + 32))
  {
    [v7 setPredicate:?];
  }

  v15 = @"roadTraversedCount";
  v8 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"roadTraversedCount + 1"];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v7 setPropertiesToUpdate:v9];

  [v7 setResultType:2];
  v14 = 0;
  v10 = [v4 executeRequest:v7 error:&v14];

  v11 = v14;
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "GeoRoadDataStore Increment operation failed", v13, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_purgeGeoRoadDataWithHandler:(id)handler
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

- (void)purgeGeoRoadDataWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTGeoRoadDataStore_purgeGeoRoadDataWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end