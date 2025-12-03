@interface RTElevationProvider
- (RTElevationProvider)initWithAltimeter:(id)altimeter;
- (void)_fetchElevations:(id)elevations handler:(id)handler;
- (void)fetchElevations:(id)elevations handler:(id)handler;
@end

@implementation RTElevationProvider

- (RTElevationProvider)initWithAltimeter:(id)altimeter
{
  altimeterCopy = altimeter;
  v15.receiver = self;
  v15.super_class = RTElevationProvider;
  v6 = [(RTElevationProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTElevationProvider *)v8 UTF8String];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v8];
      uTF8String = [v11 UTF8String];
    }

    v12 = dispatch_queue_create(uTF8String, v9);

    queue = v8->_queue;
    v8->_queue = v12;

    objc_storeStrong(&v8->_altimeter, altimeter);
  }

  return v7;
}

- (void)_fetchElevations:(id)elevations handler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  elevationsCopy = elevations;
  handlerCopy = handler;
  if ([(RTElevationProvider *)self hasAltimeter])
  {
    v8 = dispatch_semaphore_create(0);
    batchSize = [elevationsCopy batchSize];
    if (batchSize)
    {
      v10 = batchSize;
    }

    else
    {
      v10 = 100;
    }

    altimeter = self->_altimeter;
    dateInterval = [elevationsCopy dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [elevationsCopy dateInterval];
    endDate = [dateInterval2 endDate];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__RTElevationProvider__fetchElevations_handler___block_invoke;
    v35[3] = &unk_2788C5EB8;
    v35[4] = self;
    v37 = handlerCopy;
    v16 = v8;
    v36 = v16;
    v38 = v10;
    [(CMAltimeter *)altimeter queryElevationProfileFromDate:startDate toDate:endDate withBatchSize:v10 withHandler:v35];

    v17 = v16;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v17, v19))
    {
      v34 = [MEMORY[0x277CBEAA8] now];
      [v34 timeIntervalSinceDate:v18];
      v21 = v20;
      v22 = objc_opt_new();
      v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_13];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
      firstObject = [v25 firstObject];

      [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
      v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D01448];
      v39 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v39 count:1];
      v31 = [v28 errorWithDomain:v29 code:15 userInfo:v30];

      if (v31)
      {
        v32 = v31;
      }
    }
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = [v33 initWithDomain:*MEMORY[0x277D01448] code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], v17);
  }
}

void __48__RTElevationProvider__fetchElevations_handler___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138412546;
        v45 = v34;
        v46 = 2112;
        v47 = v8;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@: received error from queryElevationProfileFromDate: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v35 = a3;
    v37 = a1;
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v16 = objc_alloc(MEMORY[0x277CBEAA8]);
          [v15 timestamp];
          v17 = [v16 initWithTimeIntervalSinceReferenceDate:?];
          v18 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v17 sinceDate:-2.56];
          v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v17];
          v20 = objc_alloc(MEMORY[0x277D010E0]);
          [v15 altitude];
          v22 = v21;
          [v15 accuracy];
          v24 = [v20 initWithElevation:v19 dateInterval:0 elevationUncertainty:v22 estimationStatus:v23];
          if ([v24 isValid])
          {
            [v39 addObject:v24];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v25 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = objc_opt_class();
              v38 = NSStringFromClass(v26);
              *buf = 138412546;
              v45 = v38;
              v46 = 2112;
              v47 = v24;
              _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "%@: received invalid elevation, %@", buf, 0x16u);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v12);
    }

    v8 = 0;
    v7 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v39 count];
        v31 = *(v37 + 56);
        v32 = *v35;
        *buf = 138413058;
        v45 = v29;
        v46 = 2048;
        v47 = v30;
        v48 = 2048;
        v49 = v31;
        v50 = 2048;
        v51 = v32;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@: received elevations, %lu, batchSize: %lu, lastBatch, %lu", buf, 0x2Au);
      }
    }

    (*(*(v37 + 48) + 16))();
    if (*v35 == 1)
    {
      dispatch_semaphore_signal(*(v37 + 40));
    }
  }
}

- (void)fetchElevations:(id)elevations handler:(id)handler
{
  elevationsCopy = elevations;
  handlerCopy = handler;
  queue = [(RTElevationProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTElevationProvider_fetchElevations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = elevationsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = elevationsCopy;
  dispatch_async(queue, block);
}

@end