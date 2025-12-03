@interface RTTripSegmentInertialDataStore
- (RTTripSegmentInertialDataStore)initWithPersistenceManager:(id)manager;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (id)fetchRequestFromStoredTripSegmentInertialDataOptions:(id)options;
- (void)_fetchStoredTripSegmentInertialDataWithContext:(id)context handler:(id)handler;
- (void)_fetchStoredTripSegmentInertialDataWithOptions:(id)options handler:(id)handler;
- (void)_purgeTripSegmentInertialDataPredating:(id)predating handler:(id)handler;
- (void)fetchStoredTripSegmentInertialDataWithContext:(id)context handler:(id)handler;
- (void)fetchStoredTripSegmentInertialDataWithOptions:(id)options handler:(id)handler;
- (void)purgeTripSegmentInertialDataPredating:(id)predating handler:(id)handler;
- (void)storeTripSegmentInertialData:(id)data handler:(id)handler;
@end

@implementation RTTripSegmentInertialDataStore

- (RTTripSegmentInertialDataStore)initWithPersistenceManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTTripSegmentInertialDataStore;
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

- (void)storeTripSegmentInertialData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTTripSegmentInertialDataStore_storeTripSegmentInertialData_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dataCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredTripSegmentInertialDataWithContext:(id)context handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (contextCopy)
  {
    if (handlerCopy)
    {
LABEL_3:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__RTTripSegmentInertialDataStore__fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke;
      aBlock[3] = &unk_2788C4898;
      v24 = contextCopy;
      v9 = v8;
      v25 = v9;
      v10 = _Block_copy(aBlock);
      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__RTTripSegmentInertialDataStore__fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke_2;
      block[3] = &unk_2788C8DF0;
      block[4] = self;
      v21 = v10;
      v22 = v9;
      v12 = v10;
      dispatch_async(queue, block);

      v13 = v24;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTTripSegmentInertialDataStore _fetchStoredTripSegmentInertialDataWithContext:handler:]";
      v28 = 1024;
      LODWORD(v29) = 61;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "[RTTripSegmentInertialDataStore _fetchStoredTripSegmentInertialDataWithContext:handler:]";
    v28 = 1024;
    LODWORD(v29) = 62;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  v30 = *MEMORY[0x277CCA450];
  v31[0] = @"A handler is a required parameter.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];
  v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412546;
    v27 = v19;
    v28 = 2112;
    v29 = v16;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@: A handler is a required parameter, %@", buf, 0x16u);
  }

LABEL_12:
}

void __89__RTTripSegmentInertialDataStore__fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v37 = a2;
  v3 = +[RTTripSegmentInertialDataMO fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:1];
  v45[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  [v3 setSortDescriptors:v5];

  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CCAC30];
  v8 = a1;
  v36 = a1;
  v34 = [*(a1 + 32) options];
  v9 = [v34 dateInterval];
  v10 = [v9 startDate];
  v11 = [v7 predicateWithFormat:@"%@ <= %K", v10, @"timestamp"];
  v44[0] = v11;
  v12 = MEMORY[0x277CCAC30];
  v13 = [*(v8 + 32) options];
  v14 = [v13 dateInterval];
  v15 = [v14 endDate];
  v16 = [v12 predicateWithFormat:@"%K <= %@", @"timestamp", v15];
  v44[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v18 = [v6 andPredicateWithSubpredicates:v17];
  [v3 setPredicate:v18];

  v19 = v3;
  v20 = v37;

  v42 = 0;
  v21 = [v37 executeFetchRequest:v3 error:&v42];
  v22 = v42;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = v36;
  if (!v22)
  {
    v33 = v21;
    v35 = v19;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = v21;
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      do
      {
        v29 = 0;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v38 + 1) + 8 * v29);
          v31 = objc_autoreleasePoolPush();
          v32 = [MEMORY[0x277CBFC88] createWithManagedObject:v30];
          if (v32)
          {
            [v23 addObject:v32];
          }

          objc_autoreleasePoolPop(v31);
          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v27);
    }

    v24 = v36;
    v20 = v37;
    v21 = v33;
    v19 = v35;
  }

  (*(*(v24 + 40) + 16))();
}

void __89__RTTripSegmentInertialDataStore__fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __89__RTTripSegmentInertialDataStore__fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredTripSegmentInertialDataWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__RTTripSegmentInertialDataStore_fetchStoredTripSegmentInertialDataWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredTripSegmentInertialDataWithOptions:(id)options handler:(id)handler
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
      v11 = "[RTTripSegmentInertialDataStore _fetchStoredTripSegmentInertialDataWithOptions:handler:]";
      v12 = 1024;
      v13 = 127;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D013E0]) initWithEnumerationOptions:optionsCopy];
  [(RTTripSegmentInertialDataStore *)self _fetchStoredTripSegmentInertialDataWithContext:v9 handler:handlerCopy];
}

- (void)fetchStoredTripSegmentInertialDataWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__RTTripSegmentInertialDataStore_fetchStoredTripSegmentInertialDataWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_purgeTripSegmentInertialDataPredating:(id)predating handler:(id)handler
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
      v20 = "[RTTripSegmentInertialDataStore _purgeTripSegmentInertialDataPredating:handler:]";
      v21 = 1024;
      v22 = 148;
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

- (void)purgeTripSegmentInertialDataPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTTripSegmentInertialDataStore_purgeTripSegmentInertialDataPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
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

    v21 = [(RTTripSegmentInertialDataStore *)self fetchRequestFromStoredTripSegmentInertialDataOptions:v9];
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

- (id)fetchRequestFromStoredTripSegmentInertialDataOptions:(id)options
{
  v27[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (optionsCopy)
  {
    v4 = +[RTTripSegmentInertialDataMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:1];
    v27[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
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

    v11 = distantPast;

    dateInterval2 = [optionsCopy dateInterval];
    endDate = [dateInterval2 endDate];
    v14 = endDate;
    if (endDate)
    {
      distantFuture = endDate;
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v16 = distantFuture;

    array = [MEMORY[0x277CBEB18] array];
    v18 = MEMORY[0x277CCA920];
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", v11, @"timestamp"];
    v26[0] = v19;
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"timestamp", v16];
    v26[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v22 = [v18 andPredicateWithSubpredicates:v21];

    [array addObject:v22];
    v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
    [v4 setPredicate:v23];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end