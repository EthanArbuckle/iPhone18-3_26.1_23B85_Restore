@interface RTAuthorizedLocationZDRLocationsStore
- (RTAuthorizedLocationZDRLocationsStore)initWithPersistenceManager:(id)manager;
- (double)_getSecondsFromDateWithTimezoneAdjustment:(id)adjustment;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (void)_deleteAllZDRLocation:(id)location;
- (void)_deleteZDRLocation:(id)location handler:(id)handler;
- (void)_fetchZDRLocationWithContext:(id)context handler:(id)handler;
- (void)_fetchZDRLocationWithOptions:(id)options handler:(id)handler;
- (void)_storeZDRLocation:(id)location handler:(id)handler;
- (void)deleteAllZDRLocations:(id)locations;
- (void)deleteZDRLocation:(id)location handler:(id)handler;
- (void)fetchZDRLocationWithOptions:(id)options handler:(id)handler;
- (void)storeZDRLocation:(id)location handler:(id)handler;
@end

@implementation RTAuthorizedLocationZDRLocationsStore

- (RTAuthorizedLocationZDRLocationsStore)initWithPersistenceManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTAuthorizedLocationZDRLocationsStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:manager];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@ %@ success.", buf, 0x16u);
    }
  }

  return v4;
}

- (double)_getSecondsFromDateWithTimezoneAdjustment:(id)adjustment
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = MEMORY[0x277CBEBB0];
  adjustmentCopy = adjustment;
  systemTimeZone = [v4 systemTimeZone];
  v7 = [v3 dateWithTimeInterval:adjustmentCopy sinceDate:{-objc_msgSend(systemTimeZone, "secondsFromGMT")}];

  [v7 timeIntervalSince1970];
  v9 = v8;

  return v9;
}

- (void)fetchZDRLocationWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTAuthorizedLocationZDRLocationsStore_fetchZDRLocationWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchZDRLocationWithOptions:(id)options handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTAuthorizedLocationZDRLocationsStore _fetchZDRLocationWithOptions:handler:]";
      v16 = 1024;
      v17 = 64;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__RTAuthorizedLocationZDRLocationsStore__fetchZDRLocationWithOptions_handler___block_invoke;
  v11[3] = &unk_2788C96D0;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v10 = handlerCopy;
  [(RTAuthorizedLocationZDRLocationsStore *)self _fetchZDRLocationWithContext:optionsCopy handler:v11];
}

void __78__RTAuthorizedLocationZDRLocationsStore__fetchZDRLocationWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@ %@ fetch failed.", &v10, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

- (void)_fetchZDRLocationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__RTAuthorizedLocationZDRLocationsStore__fetchZDRLocationWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788CB718;
    v14 = contextCopy;
    v17 = a2;
    v9 = handlerCopy;
    selfCopy = self;
    v16 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__RTAuthorizedLocationZDRLocationsStore__fetchZDRLocationWithContext_handler___block_invoke_20;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __78__RTAuthorizedLocationZDRLocationsStore__fetchZDRLocationWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTAuthorizedLocationZDRLocationsMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) startDate];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) endDate];

    if (v7)
    {
      v8 = MEMORY[0x277CCA920];
      v9 = MEMORY[0x277CCAC30];
      v10 = [*(a1 + 32) startDate];
      v11 = [v9 predicateWithFormat:@"%@ <= %K", v10, @"zdrLocationDbEntryTimeCfatSec"];
      v78[0] = v11;
      v12 = MEMORY[0x277CCAC30];
      v13 = [*(a1 + 32) endDate];
      v14 = [v12 predicateWithFormat:@"%K <= %@", @"zdrLocationLastSeenTimeCfatSec", v13];
      v78[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
      v16 = [v8 andPredicateWithSubpredicates:v15];
      [v4 setPredicate:v16];
    }
  }

  v17 = [*(a1 + 32) maximumNumberOfItems];

  if (v17)
  {
    v18 = [*(a1 + 32) maximumNumberOfItems];
    [v4 setFetchLimit:{objc_msgSend(v18, "unsignedIntegerValue")}];
  }

  [v4 setFetchBatchSize:100];
  v60 = 0;
  v19 = [v3 executeFetchRequest:v4 error:&v60];
  v20 = v60;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v43 = NSStringFromSelector(*(a1 + 56));
      v44 = [v19 count];
      *buf = 138413058;
      v62 = v43;
      v63 = 2112;
      v64 = v4;
      v65 = 2048;
      v66 = v44;
      v67 = 2112;
      v68 = v20;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v20)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v55 = a1;
    v46 = v4;
    v47 = v3;
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = v19;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v57;
      v27 = MEMORY[0x277D86220];
      v28 = 0x2788C1000uLL;
      do
      {
        v29 = 0;
        do
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v56 + 1) + 8 * v29);
          v31 = objc_autoreleasePoolPush();
          v32 = [*(v28 + 912) createWithManagedObject:v30];
          v33 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
          if (v32)
          {
            if (v33)
            {
              v34 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v36 = objc_opt_class();
                v53 = NSStringFromClass(v36);
                v51 = NSStringFromSelector(*(v55 + 56));
                v50 = [v32 zdrLocationUUID];
                v49 = [v32 zdrLocationType];
                [v32 zdrLocationLatitudeDeg];
                v38 = v37;
                [v32 zdrLocationLongitudeDeg];
                v40 = v39;
                v48 = [v32 zdrLocationLastSeenTimeCfatSec];
                *buf = 138414083;
                v62 = v53;
                v63 = 2112;
                v64 = v51;
                v65 = 2117;
                v66 = v30;
                v67 = 2114;
                v68 = v50;
                v69 = 2050;
                v70 = v49;
                v71 = 2053;
                v72 = v38;
                v73 = 2053;
                v74 = v40;
                v75 = 2114;
                v76 = v48;
                _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "%@ %@ invoked,result,%{sensitive}@,zdrLocationUUID,%{public}@,zdrLocType,%{public}ld,zdrLocLat,%{sensitive}.7lf,zdrLocLon,%{sensitive}.7lf,zdrLocLastSeen,%{public}@", buf, 0x52u);
              }

              v28 = 0x2788C1000;
            }

            [v22 addObject:v32];
          }

          else if (v33)
          {
            v35 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v41 = objc_opt_class();
              v54 = NSStringFromClass(v41);
              v52 = NSStringFromSelector(*(v55 + 56));
              *buf = 138412802;
              v62 = v54;
              v63 = 2112;
              v64 = v52;
              v65 = 2114;
              v66 = v30;
              _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@ %@ invoked,result,%{public}@,zdrLoc nil", buf, 0x20u);
            }

            v28 = 0x2788C1000;
          }

          objc_autoreleasePoolPop(v31);
          ++v29;
        }

        while (v25 != v29);
        v25 = [v23 countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v25);
    }

    if ([v22 count])
    {
      v42 = v22;
    }

    else
    {
      v42 = 0;
    }

    (*(*(v55 + 48) + 16))(*(v55 + 48), v42, 0);

    v4 = v46;
    v3 = v47;
    v20 = 0;
    v19 = v45;
  }
}

- (void)_storeZDRLocation:(id)location handler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (locationCopy)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:locationCopy];
    [(RTStore *)self storeWritableObjects:v9 handler:handlerCopy];
LABEL_6:

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@:%@ Status nil", &v13, 0x16u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)storeZDRLocation:(id)location handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (!locationCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTAuthorizedLocationZDRLocationsStore storeZDRLocation:handler:]";
      v22 = 1024;
      LODWORD(v23) = 158;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: zdrLocation (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2114;
      v25 = locationCopy;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@:%@zdrLocation,%{public}@", buf, 0x20u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTAuthorizedLocationZDRLocationsStore_storeZDRLocation_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v18 = locationCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = locationCopy;
  dispatch_async(queue, block);
}

- (void)_deleteZDRLocation:(id)location handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__RTAuthorizedLocationZDRLocationsStore__deleteZDRLocation_handler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v18 = handlerCopy;
  v19 = a2;
  v17 = locationCopy;
  v10 = handlerCopy;
  v11 = locationCopy;
  v12 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v12 contextType:0 errorHandler:v10];
}

void __68__RTAuthorizedLocationZDRLocationsStore__deleteZDRLocation_handler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTAuthorizedLocationZDRLocationsMO"];
  v6 = [*(a1 + 32) zdrLocationUUID];
  v7 = [*(a1 + 32) zdrLocationDbEntryTimeCfatSec];
  v8 = [*(a1 + 32) zdrLocationType];
  [*(a1 + 32) zdrLocationLatitudeDeg];
  v10 = v9;
  [*(a1 + 32) zdrLocationLongitudeDeg];
  v12 = v11;
  v13 = [*(a1 + 32) zdrLocationLastSeenTimeCfatSec];
  v14 = [RTAuthorizedLocationZDRLocationsStore predicateForZDRLocation:v6 zdrLocationDbEntryTimeCfatSec:v7 zdrLocationType:v8 zdrLocationLatitudeDeg:v13 zdrLocationLongitudeDeg:v10 zdrLocationLastSeenTimeCfatSec:v12];
  [v5 setPredicate:v14];

  v15 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v15 setResultType:2];
  v21 = 0;
  v16 = [v4 executeRequest:v15 error:&v21];

  v17 = v21;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(*(a1 + 48));
      v20 = [v16 result];
      *buf = 138413058;
      v23 = v19;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@,request,%@,deleted count,%@,error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteAllZDRLocations:(id)locations
{
  locationsCopy = locations;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTAuthorizedLocationZDRLocationsStore_deleteAllZDRLocations___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = locationsCopy;
  v6 = locationsCopy;
  dispatch_async(queue, v7);
}

- (void)_deleteAllZDRLocation:(id)location
{
  v18 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RTAuthorizedLocationZDRLocationsStore__deleteAllZDRLocation___block_invoke;
  v12[3] = &unk_2788C4938;
  v12[4] = self;
  v13 = locationCopy;
  v8 = locationCopy;
  dispatch_async(queue, v12);
}

void __63__RTAuthorizedLocationZDRLocationsStore__deleteAllZDRLocation___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  [*(a1 + 32) removeAll:v2 handler:*(a1 + 40)];
}

- (void)deleteZDRLocation:(id)location handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTAuthorizedLocationZDRLocationsStore_deleteZDRLocation_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = locationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = locationCopy;
  dispatch_async(queue, block);
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Auth Location comfirmation status error";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return 0;
}

@end