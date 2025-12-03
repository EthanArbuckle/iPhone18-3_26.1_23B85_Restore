@interface RTTripSegmentStore
- (RTTripSegmentStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (id)getTripSegmentsWithOptions:(id)options;
- (void)_deleteTripSegmentWithUUID:(id)d handler:(id)handler;
- (void)_fetchTripSegmentsWithOptions:(id)options handler:(id)handler;
- (void)_fetchTripSegmentsWithUUID:(id)d handler:(id)handler;
- (void)_purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler;
- (void)_purgeTripSegmentsPredating:(id)predating handler:(id)handler;
- (void)_storeTripSegment:(id)segment handler:(id)handler;
- (void)deleteTripSegmentWithDateInterval:(id)interval;
- (void)deleteTripSegmentWithUUID:(id)d;
- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler;
- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler;
- (void)fetchTripSegmentsWithUUID:(id)d handler:(id)handler;
- (void)purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler;
- (void)purgeTripSegmentsPredating:(id)predating handler:(id)handler;
- (void)storeTripSegment:(id)segment;
- (void)storeTripSegment:(id)segment handler:(id)handler;
@end

@implementation RTTripSegmentStore

- (RTTripSegmentStore)initWithPersistenceManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTTripSegmentStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:manager];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
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

- (void)_fetchTripSegmentsWithOptions:(id)options handler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked.", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__RTTripSegmentStore__fetchTripSegmentsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v18 = optionsCopy;
    v20 = a2;
    v10 = handlerCopy;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__RTTripSegmentStore__fetchTripSegmentsWithOptions_handler___block_invoke_20;
    v15[3] = &unk_2788C48C0;
    v16 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v15];
  }
}

void __60__RTTripSegmentStore__fetchTripSegmentsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTTripSegmentMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) dateInterval];

  v6 = 0x277CBE000;
  v50 = v3;
  v51 = v4;
  if (v5)
  {
    v41 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    v49 = [*(a1 + 32) dateInterval];
    v47 = [v49 startDate];
    v48 = [*(a1 + 32) dateInterval];
    v46 = [v48 endDate];
    v45 = [v7 predicateWithFormat:@"%@ <= %K AND %K <= %@", v47, @"startDate", @"endDate", v46];
    v67[0] = v45;
    v8 = MEMORY[0x277CCAC30];
    v44 = [*(a1 + 32) dateInterval];
    v42 = [v44 startDate];
    v43 = [*(a1 + 32) dateInterval];
    v40 = [v43 endDate];
    v39 = [v8 predicateWithFormat:@"%@ < %K AND %K < %@", v42, @"startDate", @"startDate", v40];
    v67[1] = v39;
    v9 = MEMORY[0x277CCAC30];
    v38 = [*(a1 + 32) dateInterval];
    v36 = [v38 startDate];
    v37 = [*(a1 + 32) dateInterval];
    v10 = [v37 endDate];
    v11 = [v9 predicateWithFormat:@"%@ < %K AND %K < %@", v36, @"endDate", @"endDate", v10];
    v67[2] = v11;
    v12 = MEMORY[0x277CCAC30];
    v13 = [*(a1 + 32) dateInterval];
    v14 = [v13 startDate];
    v15 = [*(a1 + 32) dateInterval];
    v16 = [v15 endDate];
    v17 = [v12 predicateWithFormat:@"%K <= %@ AND %@ <= %K", @"startDate", v14, v16, @"endDate"];
    v67[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v19 = [v41 orPredicateWithSubpredicates:v18];
    [v51 setPredicate:v19];

    v4 = v51;
    v3 = v50;

    v6 = 0x277CBE000uLL;
  }

  v20 = [*(a1 + 32) limit];

  if (v20)
  {
    v21 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v21, "unsignedIntegerValue")}];
  }

  v22 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 32), "isAscending")}];
  v66 = v22;
  v23 = [*(v6 + 2656) arrayWithObjects:&v66 count:1];
  [v4 setSortDescriptors:v23];

  [v4 setFetchBatchSize:10];
  v56 = 0;
  v24 = [v3 executeFetchRequest:v4 error:&v56];
  v25 = v56;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v34 = NSStringFromSelector(*(a1 + 48));
      v35 = [v24 count];
      *buf = 138413058;
      v59 = v34;
      v60 = 2112;
      v61 = v4;
      v62 = 2048;
      v63 = v35;
      v64 = 2112;
      v65 = v25;
      _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v24;
    v29 = [v28 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v53;
      do
      {
        v32 = 0;
        do
        {
          if (*v53 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [MEMORY[0x277D013D0] createWithManagedObject:*(*(&v52 + 1) + 8 * v32)];
          if (v33)
          {
            [v27 addObject:v33];
          }

          ++v32;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v30);
    }

    v3 = v50;
    v4 = v51;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTripSegmentStore_fetchTripSegmentsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchTripSegmentsWithUUID:(id)d handler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked.", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__RTTripSegmentStore__fetchTripSegmentsWithUUID_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v18 = dCopy;
    v20 = a2;
    v10 = handlerCopy;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__RTTripSegmentStore__fetchTripSegmentsWithUUID_handler___block_invoke_29;
    v15[3] = &unk_2788C48C0;
    v16 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v15];
  }
}

void __57__RTTripSegmentStore__fetchTripSegmentsWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTTripSegmentMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ == %K", *(a1 + 32), @"identifier"];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:1];
  v36[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v4 setSortDescriptors:v7];

  [v4 setFetchLimit:10];
  [v4 setFetchBatchSize:10];
  v26 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v26];
  v9 = v26;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = [v8 count];
      *buf = 138413058;
      v29 = v18;
      v30 = 2112;
      v31 = v4;
      v32 = 2048;
      v33 = v19;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v20 = a1;
    v21 = v3;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277D013D0] createWithManagedObject:*(*(&v22 + 1) + 8 * v16)];
          if (v17)
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    a1 = v20;
    v3 = v21;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchTripSegmentsWithUUID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTTripSegmentStore_fetchTripSegmentsWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_storeTripSegment:(id)segment handler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [segmentCopy description];
      *buf = 138412290;
      v13 = v10;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "CRTSM,RTTripSegmentStore,storeTripSegment,%@", buf, 0xCu);
    }
  }

  v11 = segmentCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(RTStore *)self storeWritableObjects:v9 handler:handlerCopy];
}

- (void)storeTripSegment:(id)segment handler:(id)handler
{
  segmentCopy = segment;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTTripSegmentStore_storeTripSegment_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = segmentCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = segmentCopy;
  dispatch_async(queue, block);
}

- (void)storeTripSegment:(id)segment
{
  v39[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  v5 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__RTTripSegmentStore_storeTripSegment___block_invoke;
  v31[3] = &unk_2788CB988;
  v31[4] = self;
  v6 = segmentCopy;
  v32 = v6;
  v7 = v5;
  v33 = v7;
  [(RTTripSegmentStore *)self storeTripSegment:v6 handler:v31];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_107];
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
    v21 = *MEMORY[0x277D01448];
    v39[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v39 count:1];
    v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

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
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      identifier = [v6 identifier];
      localizedDescription = [v25 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v28;
      v35 = 2112;
      v36 = identifier;
      v37 = 2112;
      v38 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Semaphore error storing tripSegment with UUID,%@,error,%@", buf, 0x20u);
    }
  }
}

void __39__RTTripSegmentStore_storeTripSegment___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v9 = objc_opt_class();
    v6 = NSStringFromClass(v9);
    v7 = [*(a1 + 40) identifier];
    v8 = [v7 UUIDString];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,error storing tripSegment with UUID,%@", &v10, 0x16u);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [*(a1 + 40) identifier];
    v8 = [0 localizedDescription];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,stored tripSegment with UUID,%@,error,%@", &v10, 0x20u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_purgeTripSegmentsPredating:(id)predating handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  v16 = @"endDate";
  v15 = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(RTStore *)self purgePredating:predatingCopy predicateMappings:v11 purgeLimit:100 handler:handlerCopy];
}

- (void)purgeTripSegmentsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTTripSegmentStore_purgeTripSegmentsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)_purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      *buf = 138413058;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = startDate;
      v34 = 2112;
      v35 = endDate;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked,startDate,%@,endDate,%@", buf, 0x2Au);
    }
  }

  if (intervalCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__RTTripSegmentStore__purgeTripSegmentsOnDateInterval_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v23 = intervalCopy;
    selfCopy = self;
    v10 = handlerCopy;
    v25 = v10;
    v11 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];

    v12 = v23;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripSegmentStore _purgeTripSegmentsOnDateInterval:handler:]";
      v30 = 1024;
      LODWORD(v31) = 280;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"requires a non-nil dateInterval.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v12 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }
}

void __63__RTTripSegmentStore__purgeTripSegmentsOnDateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v24 = objc_opt_new();
  v20 = +[RTTripSegmentMO fetchRequest];
  v17 = MEMORY[0x277CCA920];
  v3 = MEMORY[0x277CCAC30];
  v22 = [*(a1 + 32) startDate];
  v23 = [*(a1 + 32) endDate];
  v21 = [v3 predicateWithFormat:@"%@ <= %K AND %K <= %@", v22, @"startDate", @"endDate", v23];
  v26[0] = v21;
  v4 = MEMORY[0x277CCAC30];
  v19 = [*(a1 + 32) startDate];
  v18 = [*(a1 + 32) endDate];
  v16 = [v4 predicateWithFormat:@"%@ < %K AND %K < %@", v19, @"startDate", @"startDate", v18];
  v26[1] = v16;
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) startDate];
  v7 = [*(a1 + 32) endDate];
  v8 = [v5 predicateWithFormat:@"%@ < %K AND %K < %@", v6, @"endDate", @"endDate", v7];
  v26[2] = v8;
  v9 = MEMORY[0x277CCAC30];
  v10 = [*(a1 + 32) startDate];
  v11 = [*(a1 + 32) endDate];
  v12 = [v9 predicateWithFormat:@"%K <= %@ AND %@ <= %K", @"startDate", v10, v11, @"endDate"];
  v26[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v14 = [v17 orPredicateWithSubpredicates:v13];
  [v20 setPredicate:v14];

  [v20 setFetchLimit:100];
  v15 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v20];
  [v15 setResultType:2];
  [v24 addObject:v15];
  [*(a1 + 40) executeDeleteRequests:v24 context:v25 handler:*(a1 + 48)];
}

- (void)purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTTripSegmentStore_purgeTripSegmentsOnDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = intervalCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)_deleteTripSegmentWithUUID:(id)d handler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[RTTripSegmentStore _deleteTripSegmentWithUUID:handler:]";
      v43 = 1024;
      LODWORD(v44) = 356;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      *buf = 138412546;
      v42 = v23;
      v43 = 2112;
      v44 = v24;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  v39 = @"identifier";
  v38 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v40 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  if (dCopy)
  {
    if (v12)
    {
      allKeys = [v12 allKeys];
      if ([allKeys count])
      {
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __57__RTTripSegmentStore__deleteTripSegmentWithUUID_handler___block_invoke;
        v28 = &unk_2788C7F10;
        allKeys = allKeys;
        v29 = allKeys;
        v30 = v12;
        v31 = dCopy;
        selfCopy = self;
        v14 = handlerCopy;
        v33 = v14;
        v15 = _Block_copy(&v25);
        [(RTStore *)self _performBlock:v15 contextType:0 errorHandler:v14, v25, v26, v27, v28];
      }

      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"requires a non-nil mappings.";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v35;
    v20 = &v34;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37 = @"requires a non-nil uuid.";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v37;
    v20 = &v36;
  }

  v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
  allKeys = [v16 errorWithDomain:v17 code:7 userInfo:v21];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, allKeys);
  }

LABEL_17:
}

void __57__RTTripSegmentStore__deleteTripSegmentWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v23 + 1) + 8 * v4);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            v10 = 0;
            do
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v19 + 1) + 8 * v10) fetchRequest];
              v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", v5, *(a1 + 48)];
              [v11 setPredicate:v12];

              v13 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v11];
              [v13 setResultType:2];
              [v3 addObject:v13];

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  [*(a1 + 56) executeDeleteRequests:v3 context:v14 handler:*(a1 + 64)];
}

- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTTripSegmentStore_deleteTripSegmentWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)deleteTripSegmentWithDateInterval:(id)interval
{
  v38[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = dispatch_semaphore_create(0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__RTTripSegmentStore_deleteTripSegmentWithDateInterval___block_invoke;
  v30[3] = &unk_2788CB988;
  v30[4] = self;
  v6 = intervalCopy;
  v31 = v6;
  v7 = v5;
  v32 = v7;
  [(RTTripSegmentStore *)self purgeTripSegmentsOnDateInterval:v6 handler:v30];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_107];
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
    v21 = *MEMORY[0x277D01448];
    v38[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v38 count:1];
    v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

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
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      localizedDescription = [v25 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v28;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting tripSegment with dateInterval,%@,error,%@", buf, 0x20u);
    }
  }
}

void __56__RTTripSegmentStore_deleteTripSegmentWithDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    v9 = *(a1 + 40);
    v10 = [v3 localizedDescription];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error deleting tripSegment with dateInterval,%@,error,%@", &v11, 0x20u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 40);
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Deleted tripSegment with dateInterval,%@", &v11, 0x16u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)deleteTripSegmentWithUUID:(id)d
{
  v39[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __48__RTTripSegmentStore_deleteTripSegmentWithUUID___block_invoke;
  v31[3] = &unk_2788CB988;
  v31[4] = self;
  v6 = dCopy;
  v32 = v6;
  v7 = v5;
  v33 = v7;
  [(RTTripSegmentStore *)self deleteTripSegmentWithUUID:v6 handler:v31];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_107];
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
    v21 = *MEMORY[0x277D01448];
    v39[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v39 count:1];
    v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

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
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      uUIDString = [v6 UUIDString];
      localizedDescription = [v25 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v28;
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting tripSegment with UUID,%@,error,%@", buf, 0x20u);
    }
  }
}

void __48__RTTripSegmentStore_deleteTripSegmentWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    v7 = [*(a1 + 40) UUIDString];
    v9 = [v3 localizedDescription];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error deleting tripSegment with UUID,%@,error,%@", &v10, 0x20u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [*(a1 + 40) UUIDString];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Deleted tripSegment with UUID,%@", &v10, 0x16u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)getTripSegmentsWithOptions:(id)options
{
  v42[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__130;
  v37 = __Block_byref_object_dispose__130;
  v38 = 0;
  v5 = dispatch_semaphore_create(0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__RTTripSegmentStore_getTripSegmentsWithOptions___block_invoke;
  v30[3] = &unk_2788C5330;
  v30[4] = self;
  v32 = &v33;
  v6 = v5;
  v31 = v6;
  [(RTTripSegmentStore *)self fetchTripSegmentsWithOptions:optionsCopy handler:v30];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_107];
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
    v42[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:1];
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
  if (v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      localizedDescription = [v23 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v26;
      v40 = 2112;
      v41 = localizedDescription;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@,Error,failed to load trip segments,error,%@", buf, 0x16u);
    }
  }

  v28 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v28;
}

void __49__RTTripSegmentStore_getTripSegmentsWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
        v10 = [v6 localizedDescription];
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error,fetching trip segments,error,%@", &v12, 0x16u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"the trip segment store doesn't support enumeration";
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