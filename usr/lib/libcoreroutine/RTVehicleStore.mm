@interface RTVehicleStore
- (RTVehicleStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (void)_fetchVehiclesWithOptions:(id)options handler:(id)handler;
- (void)_purgeVehiclesPredating:(id)predating handler:(id)handler;
- (void)_storeVehicle:(id)vehicle handler:(id)handler;
- (void)fetchVehiclesWithOptions:(id)options handler:(id)handler;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)purgeVehiclesPredating:(id)predating handler:(id)handler;
- (void)storeVehicle:(id)vehicle handler:(id)handler;
@end

@implementation RTVehicleStore

- (RTVehicleStore)initWithPersistenceManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTVehicleStore;
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

- (void)_fetchVehiclesWithOptions:(id)options handler:(id)handler
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
    aBlock[2] = __52__RTVehicleStore__fetchVehiclesWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v18 = optionsCopy;
    v20 = a2;
    v10 = handlerCopy;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__RTVehicleStore__fetchVehiclesWithOptions_handler___block_invoke_16;
    v15[3] = &unk_2788C48C0;
    v16 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v15];
  }
}

void __52__RTVehicleStore__fetchVehiclesWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTVehicleMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) dateInterval];

  v47 = v3;
  v48 = v4;
  if (v5)
  {
    v38 = MEMORY[0x277CCA920];
    v6 = MEMORY[0x277CCAC30];
    v46 = [*(a1 + 32) dateInterval];
    v44 = [v46 startDate];
    v45 = [*(a1 + 32) dateInterval];
    v43 = [v45 endDate];
    v42 = [v6 predicateWithFormat:@"%@ <= %K AND %K <= %@", v44, @"startDate", @"endDate", v43];
    v63[0] = v42;
    v7 = MEMORY[0x277CCAC30];
    v41 = [*(a1 + 32) dateInterval];
    v39 = [v41 startDate];
    v40 = [*(a1 + 32) dateInterval];
    v37 = [v40 endDate];
    v36 = [v7 predicateWithFormat:@"%@ <= %K AND %K <= %@", v39, @"startDate", @"startDate", v37];
    v63[1] = v36;
    v8 = MEMORY[0x277CCAC30];
    v35 = [*(a1 + 32) dateInterval];
    v33 = [v35 startDate];
    v34 = [*(a1 + 32) dateInterval];
    v9 = [v34 endDate];
    v10 = [v8 predicateWithFormat:@"%@ <= %K AND %K <= %@", v33, @"endDate", @"endDate", v9];
    v63[2] = v10;
    v11 = MEMORY[0x277CCAC30];
    v12 = [*(a1 + 32) dateInterval];
    v13 = [v12 startDate];
    v14 = [*(a1 + 32) dateInterval];
    v15 = [v14 endDate];
    v16 = [v11 predicateWithFormat:@"%K <= %@ AND %@ <= %K", @"startDate", v13, v15, @"endDate"];
    v63[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    v18 = [v38 orPredicateWithSubpredicates:v17];
    [v48 setPredicate:v18];

    v4 = v48;
    v3 = v47;
  }

  v19 = [*(a1 + 32) limit];

  if (v19)
  {
    v20 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v20, "unsignedIntegerValue")}];
  }

  [v4 setFetchBatchSize:100];
  v53 = 0;
  v21 = [v3 executeFetchRequest:v4 error:&v53];
  v22 = v53;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v31 = NSStringFromSelector(*(a1 + 48));
      v32 = [v21 count];
      *buf = 138413058;
      v56 = v31;
      v57 = 2112;
      v58 = v4;
      v59 = 2048;
      v60 = v32;
      v61 = 2112;
      v62 = v22;
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v21;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        v29 = 0;
        do
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [MEMORY[0x277D01418] createWithManagedObject:*(*(&v49 + 1) + 8 * v29)];
          if (v30)
          {
            [v24 addObject:v30];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v27);
    }

    v3 = v47;
    v4 = v48;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVehiclesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTVehicleStore_fetchVehiclesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_storeVehicle:(id)vehicle handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  handlerCopy = handler;
  if (vehicleCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v16 = [vehicleCopy description];
        *buf = 138412802;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked on Vehicle %@", buf, 0x20u);
      }
    }

    v17 = vehicleCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(RTStore *)self storeWritableObjects:v10 handler:handlerCopy];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "RTVehicleStore::storeVehicle invoked with nil vehicle, not storing nil vehicle.", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [v12 initWithDomain:*MEMORY[0x277D01448] code:7 userInfo:0];
    handlerCopy[2](handlerCopy, v10);
  }
}

- (void)storeVehicle:(id)vehicle handler:(id)handler
{
  vehicleCopy = vehicle;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RTVehicleStore_storeVehicle_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = vehicleCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = vehicleCopy;
  dispatch_async(queue, block);
}

- (void)_purgeVehiclesPredating:(id)predating handler:(id)handler
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

  [(RTStore *)self purgePredating:predatingCopy predicateMappings:v11 handler:handlerCopy];
}

- (void)purgeVehiclesPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTVehicleStore_purgeVehiclesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTVehicleStore_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = completionCopy;
  typeCopy = type;
  v15 = dateCopy;
  selfCopy = self;
  v19 = a2;
  v12 = completionCopy;
  v13 = dateCopy;
  dispatch_async(queue, block);
}

void __62__RTVehicleStore_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__RTVehicleStore_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 purgeVehiclesPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __62__RTVehicleStore_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"The vehicle store doesn't support enumeration";
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