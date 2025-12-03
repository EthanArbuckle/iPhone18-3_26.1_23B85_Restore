@interface RTSynthesizedLocationStore
- (BOOL)removeLocationsPredating:(id)predating;
- (RTSynthesizedLocationStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (id)fetchRequestFromStoredLocationOptions:(id)options;
- (void)_fetchStoredLocationsCountWithContext:(id)context handler:(id)handler;
- (void)_fetchStoredLocationsCountWithOptions:(id)options handler:(id)handler;
- (void)_fetchStoredLocationsWithContext:(id)context handler:(id)handler;
- (void)_fetchStoredLocationsWithOptions:(id)options handler:(id)handler;
- (void)_removeLocationsOnDateInterval:(id)interval handler:(id)handler;
- (void)_removeLocationsPredating:(id)predating handler:(id)handler;
- (void)_storeLocations:(id)locations handler:(id)handler;
- (void)_storeLocationsByBatches:(id)batches handler:(id)handler;
- (void)_storeLocationsForBatch:(id)batch batchNo:(unint64_t)no batchSize:(unint64_t)size handler:(id)handler;
- (void)fetchStoredLocationsCountWithOptions:(id)options handler:(id)handler;
- (void)fetchStoredLocationsWithContext:(id)context handler:(id)handler;
- (void)fetchStoredLocationsWithOptions:(id)options handler:(id)handler;
- (void)removeLocationsOnDateInterval:(id)interval handler:(id)handler;
- (void)removeLocationsPredating:(id)predating handler:(id)handler;
- (void)storeLocations:(id)locations handler:(id)handler;
@end

@implementation RTSynthesizedLocationStore

- (RTSynthesizedLocationStore)initWithPersistenceManager:(id)manager
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    v13.receiver = self;
    v13.super_class = RTSynthesizedLocationStore;
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

- (void)_storeLocations:(id)locations handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [locationsCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v25 = v11;
            _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "CRTSM,RTSynthesizedLocationStore,storeLocations,%{sensitive}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [locationsCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__RTSynthesizedLocationStore__storeLocations_handler___block_invoke;
  v17[3] = &unk_2788C4780;
  v18 = handlerCopy;
  v19 = a2;
  v13 = handlerCopy;
  [(RTStore *)self storeWritableObjects:locationsCopy handler:v17];
}

void __54__RTSynthesizedLocationStore__storeLocations_handler___block_invoke(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTSynthesizedLocationStore,%@,error,%@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_storeLocationsForBatch:(id)batch batchNo:(unint64_t)no batchSize:(unint64_t)size handler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  handlerCopy = handler;
  v13 = [batchCopy count];
  if (size * no + size >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = size * no + size;
  }

  v15 = [batchCopy subarrayWithRange:{size * no, v14 - size * no}];
  v16 = [batchCopy count];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__RTSynthesizedLocationStore__storeLocationsForBatch_batchNo_batchSize_handler___block_invoke;
  v24[3] = &unk_2788CA108;
  v26 = handlerCopy;
  noCopy = no;
  v24[4] = self;
  v25 = batchCopy;
  v17 = (size + v16 - 1) / size;
  v28 = v17;
  sizeCopy = size;
  v18 = batchCopy;
  v19 = handlerCopy;
  [(RTSynthesizedLocationStore *)self _storeLocations:v15 handler:v24];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138413314;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      v34 = 1024;
      noCopy2 = no;
      v36 = 1024;
      v37 = v17;
      v38 = 1024;
      sizeCopy2 = size;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@,%@,stored location batch,%d,totalBatchs,%d,batchSize,%d", buf, 0x28u);
    }
  }
}

void __80__RTSynthesizedLocationStore__storeLocationsForBatch_batchNo_batchSize_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_8:
      v5();
    }
  }

  else if (*(a1 + 56) >= (*(a1 + 64) - 1))
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      v5 = *(v12 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__RTSynthesizedLocationStore__storeLocationsForBatch_batchNo_batchSize_handler___block_invoke_2;
    block[3] = &unk_2788C6C20;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v8 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v14 = v8;
    v11 = *(a1 + 72);
    v16 = v10;
    v17 = v11;
    v15 = v9;
    dispatch_async(v6, block);
  }
}

- (void)_storeLocationsByBatches:(id)batches handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  batchesCopy = batches;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2048;
      v18 = [batchesCopy count];
      v19 = 2048;
      v20 = 100;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@,%@ storeLocations in batches,locationCount,%lu,batchSize,%lu", &v13, 0x2Au);
    }
  }

  [(RTSynthesizedLocationStore *)self _storeLocationsForBatch:batchesCopy batchNo:0 batchSize:100 handler:handlerCopy];
}

- (void)storeLocations:(id)locations handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      v18 = v13;
      v19 = 2048;
      v20 = [locationsCopy count];
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@ storeLocations invoked with locationCount,%lu", buf, 0x16u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTSynthesizedLocationStore_storeLocations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = locationsCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = locationsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredLocationsCountWithContext:(id)context handler:(id)handler
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__RTSynthesizedLocationStore__fetchStoredLocationsCountWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v22 = contextCopy;
    selfCopy = self;
    v8 = handlerCopy;
    v24 = v8;
    v9 = _Block_copy(aBlock);
    queue = [(RTNotifier *)self queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__RTSynthesizedLocationStore__fetchStoredLocationsCountWithContext_handler___block_invoke_67;
    v18[3] = &unk_2788C8DF0;
    v18[4] = self;
    v19 = v9;
    v20 = v8;
    v11 = v9;
    dispatch_async(queue, v18);

    v12 = v22;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTSynthesizedLocationStore _fetchStoredLocationsCountWithContext:handler:]";
      v27 = 1024;
      LODWORD(v28) = 148;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"A handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@: A handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __76__RTSynthesizedLocationStore__fetchStoredLocationsCountWithContext_handler___block_invoke(void *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v7 = a1[5];
  v8 = [v5 options];
  v9 = [v7 fetchRequestFromStoredLocationOptions:v8];

  [v9 setFetchLimit:604800];
  v40 = 0;
  v10 = [v3 countForFetchRequest:v9 error:&v40];
  v11 = v40;
  v12 = [v6 options];
  v13 = [v12 preferredDownsamplingLevel];

  if (v13 >= 1 && !v10)
  {
    v14 = MEMORY[0x277D86220];
    do
    {
      v15 = v11;
      v39 = v11;
      v16 = [v3 countForFetchRequest:v9 error:&v39];
      v11 = v39;

      if (!v16)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v24 = objc_opt_class();
            v34 = NSStringFromClass(v24);
            v35 = [v6 options];
            v33 = [v35 preferredDownsamplingLevel];
            v25 = MEMORY[0x277D01350];
            v26 = [v6 options];
            v27 = [v25 NextLessDecimatedDownsamplingPreference:{objc_msgSend(v26, "preferredDownsamplingLevel")}];
            *buf = 138412802;
            v42 = v34;
            v43 = 2048;
            v44 = v33;
            v45 = 2048;
            v46 = v27;
            _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@: No locations found at downsamplingLevel %ld, trying %ld", buf, 0x20u);
          }
        }

        v18 = MEMORY[0x277D01350];
        v19 = [v6 options];
        v20 = [v18 NextLessDecimatedDownsamplingPreference:{objc_msgSend(v19, "preferredDownsamplingLevel")}];
        v21 = [v6 options];
        [v21 setPreferredDownsamplingLevel:v20];
      }

      v22 = [v6 options];
      v23 = [v22 preferredDownsamplingLevel];
    }

    while (!v16 && v23 > 0);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v36 = NSStringFromClass(v29);
      v30 = [v6 options];
      v31 = [v30 preferredDownsamplingLevel];
      v38 = v11;
      v32 = [v3 countForFetchRequest:v9 error:&v38];
      v37 = v38;

      *buf = 138412802;
      v42 = v36;
      v43 = 2048;
      v44 = v31;
      v45 = 2048;
      v46 = v32;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@: selected downsampling level is %ld, location count is %lu", buf, 0x20u);

      v11 = v37;
    }
  }

  (*(a1[6] + 16))();
}

void __76__RTSynthesizedLocationStore__fetchStoredLocationsCountWithContext_handler___block_invoke_67(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__RTSynthesizedLocationStore__fetchStoredLocationsCountWithContext_handler___block_invoke_2;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)_fetchStoredLocationsCountWithOptions:(id)options handler:(id)handler
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
      v11 = "[RTSynthesizedLocationStore _fetchStoredLocationsCountWithOptions:handler:]";
      v12 = 1024;
      v13 = 202;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01348]) initWithEnumerationOptions:optionsCopy];
  [(RTSynthesizedLocationStore *)self _fetchStoredLocationsCountWithContext:v9 handler:handlerCopy];
}

- (void)fetchStoredLocationsCountWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTSynthesizedLocationStore_fetchStoredLocationsCountWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredLocationsWithOptions:(id)options handler:(id)handler
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
      v11 = "[RTSynthesizedLocationStore _fetchStoredLocationsWithOptions:handler:]";
      v12 = 1024;
      v13 = 222;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01348]) initWithEnumerationOptions:optionsCopy];
  [(RTSynthesizedLocationStore *)self _fetchStoredLocationsWithContext:v9 handler:handlerCopy];
}

- (void)fetchStoredLocationsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTSynthesizedLocationStore_fetchStoredLocationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredLocationsWithContext:(id)context handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__RTSynthesizedLocationStore__fetchStoredLocationsWithContext_handler___block_invoke;
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
    block[2] = __71__RTSynthesizedLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_70;
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
      v28 = "[RTSynthesizedLocationStore _fetchStoredLocationsWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 243;
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

void __71__RTSynthesizedLocationStore__fetchStoredLocationsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v63 = a1;
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

  v71 = 0;
  v10 = [v3 countForFetchRequest:v9 error:&v71];
  v11 = v71;
  v12 = [v6 options];
  v13 = [v12 preferredDownsamplingLevel];

  if (v13 < 1 || v10)
  {
    v23 = v9;
  }

  else
  {
    do
    {
      v14 = v11;
      v70 = v11;
      v15 = [v3 countForFetchRequest:v9 error:&v70];
      v11 = v70;

      if (!v15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v61 = [v6 options];
            v59 = [v61 preferredDownsamplingLevel];
            v28 = MEMORY[0x277D01350];
            v29 = [v6 options];
            v30 = [v28 NextLessDecimatedDownsamplingPreference:{objc_msgSend(v29, "preferredDownsamplingLevel")}];
            *buf = 138412802;
            v74 = v27;
            v75 = 2048;
            v76 = v59;
            v77 = 2048;
            v78 = v30;
            _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@: No locations found at downsamplingLevel %lu, trying %lu", buf, 0x20u);
          }
        }

        v17 = MEMORY[0x277D01350];
        v18 = [v6 options];
        v19 = [v17 NextLessDecimatedDownsamplingPreference:{objc_msgSend(v18, "preferredDownsamplingLevel")}];
        v20 = [v6 options];
        [v20 setPreferredDownsamplingLevel:v19];
      }

      v21 = *(v63 + 40);
      v22 = [v6 options];
      v23 = [v21 fetchRequestFromStoredLocationOptions:v22];

      v24 = [v6 options];
      v25 = [v24 preferredDownsamplingLevel];

      if (v15)
      {
        break;
      }

      v9 = v23;
    }

    while (v25 > 0);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v6 options];
      v48 = [v47 preferredDownsamplingLevel];
      v69 = v11;
      v49 = [v3 countForFetchRequest:v23 error:&v69];
      v50 = v69;

      *buf = 138412802;
      v74 = v46;
      v75 = 2048;
      v76 = v48;
      v77 = 2048;
      v78 = v49;
      _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@: selected downsampling level is %ld, location count is %lu", buf, 0x20u);

      v11 = v50;
    }
  }

  [v23 setFetchOffset:{objc_msgSend(*(v63 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = [v23 fetchLimit];
      v54 = [v23 fetchOffset];
      *buf = 138412802;
      v74 = v52;
      v75 = 2048;
      v76 = v53;
      v77 = 2048;
      v78 = v54;
      _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "%@: using options fetch limit, %lu, fetch offset, %lu", buf, 0x20u);
    }
  }

  v68 = v11;
  v33 = [v3 executeFetchRequest:v23 error:&v68];
  v34 = v68;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(*(v63 + 56));
      v58 = [v33 count];
      *buf = 138413315;
      v74 = v56;
      v75 = 2112;
      v76 = v57;
      v77 = 2117;
      v78 = v23;
      v79 = 2048;
      v80 = v58;
      v81 = 2112;
      v82 = v34;
      _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@: %@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "fetchLimit")}];
  if (!v34)
  {
    v62 = v3;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v60 = v33;
    v37 = v33;
    v38 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v65;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v65 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v64 + 1) + 8 * i);
          v43 = objc_autoreleasePoolPush();
          v44 = [RTSynthesizedLocation createWithManagedObject:v42];
          if (v44)
          {
            [v36 addObject:v44];
          }

          objc_autoreleasePoolPop(v43);
        }

        v39 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v39);
    }

    v34 = 0;
    v3 = v62;
    v33 = v60;
  }

  (*(*(v63 + 48) + 16))();
}

void __71__RTSynthesizedLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__RTSynthesizedLocationStore__fetchStoredLocationsWithContext_handler___block_invoke_2;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTSynthesizedLocationStore_fetchStoredLocationsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_removeLocationsPredating:(id)predating handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  if (predatingCopy)
  {
    v15 = @"timestamp";
    handlerCopy = handler;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTSynthesizedLocationStore _removeLocationsPredating:handler:]";
      v21 = 1024;
      v22 = 332;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"requires a valid date.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    handlerCopy = [v12 errorWithDomain:v13 code:7 userInfo:v9];
    handlerCopy2[2](handlerCopy2, handlerCopy);
  }
}

- (void)removeLocationsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTSynthesizedLocationStore_removeLocationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (BOOL)removeLocationsPredating:(id)predating
{
  v48[1] = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  if (!predatingCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315394;
      *&v44[4] = "[RTSynthesizedLocationStore removeLocationsPredating:]";
      *&v44[12] = 1024;
      *&v44[14] = 357;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", v44, 0x12u);
    }
  }

  *v44 = 0;
  *&v44[8] = v44;
  *&v44[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__62;
  v46 = __Block_byref_object_dispose__62;
  v47 = 0;
  v6 = dispatch_semaphore_create(0);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __55__RTSynthesizedLocationStore_removeLocationsPredating___block_invoke;
  v34[3] = &unk_2788C4618;
  v36 = v44;
  v7 = v6;
  v35 = v7;
  [(RTSynthesizedLocationStore *)self removeLocationsPredating:predatingCopy handler:v34];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_47];
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
    v48[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v48 count:1];
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
  v25 = *(*&v44[8] + 40) | v24;
  v26 = v25 == 0;
  if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = *(*&v44[8] + 40);
      *buf = 138413058;
      *&buf[4] = v29;
      v38 = 2112;
      v39 = v30;
      v40 = 2112;
      v41 = v31;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@:%@,deleteTripSegmentLocError,%@,semaDeleteTripSegmentLocError,%@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(v44, 8);
  return v26;
}

void __55__RTSynthesizedLocationStore_removeLocationsPredating___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_removeLocationsOnDateInterval:(id)interval handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (intervalCopy)
  {
    v15 = @"timestamp";
    handlerCopy = handler;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgeDateInterval:intervalCopy predicateMappings:v9 purgeLimit:3600 handler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTSynthesizedLocationStore _removeLocationsOnDateInterval:handler:]";
      v21 = 1024;
      v22 = 381;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"requires a valid dateInterval.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    handlerCopy = [v12 errorWithDomain:v13 code:7 userInfo:v9];
    handlerCopy2[2](handlerCopy2, handlerCopy);
  }
}

- (void)removeLocationsOnDateInterval:(id)interval handler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTSynthesizedLocationStore_removeLocationsOnDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = intervalCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = intervalCopy;
  dispatch_async(queue, block);
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v9 = optionsCopy;
  if (!error)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (optionsCopy)
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
      *error = v18;

LABEL_8:
      v21 = 0;
      goto LABEL_13;
    }

    v21 = [(RTSynthesizedLocationStore *)self fetchRequestFromStoredLocationOptions:v9];
    [v21 setFetchOffset:offset];
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
    *error = v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)fetchRequestFromStoredLocationOptions:(id)options
{
  v65[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (optionsCopy)
  {
    v4 = +[RTSynthesizedLocationMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:1];
    v65[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    [v4 setSortDescriptors:v6];

    dateInterval = [optionsCopy dateInterval];
    startDate = [dateInterval startDate];
    v9 = startDate;
    if (startDate)
    {
      distantPast = startDate;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    log = distantPast;

    dateInterval2 = [optionsCopy dateInterval];
    endDate = [dateInterval2 endDate];
    v13 = endDate;
    if (endDate)
    {
      distantFuture = endDate;
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v15 = distantFuture;

    preferredDownsamplingLevel = [optionsCopy preferredDownsamplingLevel];
    if ([optionsCopy batchSize])
    {
      batchSize = [optionsCopy batchSize];
      v18 = 3600;
      if (batchSize < 0xE10)
      {
        v18 = batchSize;
      }
    }

    else
    {
      v18 = 3600;
    }

    v58 = v18;
    array = [MEMORY[0x277CBEB18] array];
    v20 = MEMORY[0x277CCA920];
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", log, @"timestamp"];
    v64[0] = v21;
    v59 = v15;
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timestamp", v15];
    v64[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    v24 = [v20 andPredicateWithSubpredicates:v23];

    v57 = v24;
    [array addObject:v24];
    v25 = MEMORY[0x277CCAC30];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:preferredDownsamplingLevel];
    v27 = [v25 predicateWithFormat:@"%K >= %@", @"downsamplingLevel", v26];

    [array addObject:v27];
    boundingBoxLocation = [optionsCopy boundingBoxLocation];

    if (boundingBoxLocation)
    {
      *buf = 0;
      boundingBoxLocation2 = [optionsCopy boundingBoxLocation];
      [boundingBoxLocation2 coordinate];
      boundingBoxLocation3 = [optionsCopy boundingBoxLocation];
      [boundingBoxLocation3 coordinate];
      boundingBoxLocation4 = [optionsCopy boundingBoxLocation];
      [boundingBoxLocation4 horizontalAccuracy];
      RTCommonCalculateBoundingBox();

      v52 = MEMORY[0x277CCA920];
      v32 = MEMORY[0x277CCAC30];
      v54 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v55 = v27;
      v53 = [v32 predicateWithFormat:@"%@ <= %K", v54, @"longitude"];
      v63[0] = v53;
      v33 = MEMORY[0x277CCAC30];
      v34 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v35 = [v33 predicateWithFormat:@"%K <= %@", @"longitude", v34];
      v63[1] = v35;
      v56 = v4;
      v36 = MEMORY[0x277CCAC30];
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v38 = [v36 predicateWithFormat:@"%@ <= %K", v37, @"latitude"];
      v63[2] = v38;
      v39 = MEMORY[0x277CCAC30];
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v41 = [v39 predicateWithFormat:@"%K <= %@", @"latitude", v40];
      v63[3] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
      v43 = [v52 andPredicateWithSubpredicates:v42];

      v4 = v56;
      v27 = v55;

      [array addObject:v43];
    }

    v44 = MEMORY[0x277CCA920];
    v45 = MEMORY[0x277CCAC30];
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v47 = [v45 predicateWithFormat:@"%K > %@", @"horizontalAccuracy", v46];
    v62 = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v49 = [v44 andPredicateWithSubpredicates:v48];

    [array addObject:v49];
    v50 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
    [v4 setPredicate:v50];

    [v4 setFetchBatchSize:100];
    [v4 setFetchLimit:v58];
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