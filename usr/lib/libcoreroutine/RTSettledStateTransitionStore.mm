@interface RTSettledStateTransitionStore
- (void)_purgeSettledStateTransitionsPredating:(id)predating handler:(id)handler;
- (void)clearWithHandler:(id)handler;
- (void)enumerateStoredSettledStateTransitionsWithOptions:(id)options enumerationBlock:(id)block;
- (void)purgeSettledStateTransitionsPredating:(id)predating handler:(id)handler;
@end

@implementation RTSettledStateTransitionStore

- (void)enumerateStoredSettledStateTransitionsWithOptions:(id)options enumerationBlock:(id)block
{
  v43[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  blockCopy = block;
  if (blockCopy)
  {
    v35 = 1;
    if (optionsCopy)
    {
      v9 = +[RTSettledStateTransitionMO fetchRequest];
      v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(optionsCopy, "ascending")}];
      v37 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v9 setSortDescriptors:v11];

      dateInterval = [optionsCopy dateInterval];

      if (dateInterval)
      {
        v13 = MEMORY[0x277CCA920];
        v14 = MEMORY[0x277CCAC30];
        dateInterval2 = [optionsCopy dateInterval];
        startDate = [dateInterval2 startDate];
        [optionsCopy dateInterval];
        v17 = v32 = self;
        endDate = [v17 endDate];
        v19 = [v14 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"date", startDate, @"date", endDate];
        v36 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v21 = [v13 orPredicateWithSubpredicates:v20];
        [v9 setPredicate:v21];

        self = v32;
      }

      limit = [optionsCopy limit];

      if (limit)
      {
        limit2 = [optionsCopy limit];
        -[NSObject setFetchLimit:](v9, "setFetchLimit:", [limit2 unsignedIntegerValue]);
      }

      if ([optionsCopy batchSize])
      {
        batchSize = [optionsCopy batchSize];
        if (batchSize >= 0x400)
        {
          v25 = 1024;
        }

        else
        {
          v25 = batchSize;
        }
      }

      else
      {
        v25 = 1024;
      }

      [v9 setFetchBatchSize:1024];
      [v9 setFetchLimit:v25];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __100__RTSettledStateTransitionStore_enumerateStoredSettledStateTransitionsWithOptions_enumerationBlock___block_invoke;
      aBlock[3] = &unk_2788CCC20;
      v34 = blockCopy;
      v30 = _Block_copy(aBlock);
      [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v9 enumerationBlock:v30];
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277D01448];
      v42 = *MEMORY[0x277CCA450];
      v43[0] = @"requires non-nil options.";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v9 = [v26 errorWithDomain:v27 code:7 userInfo:v28];

      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        *buf = 138412546;
        v39 = v31;
        v40 = 2112;
        v41 = v9;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      (*(blockCopy + 2))(blockCopy, 0, v9, &v35);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", buf, 2u);
    }
  }
}

- (void)clearWithHandler:(id)handler
{
  v6[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:handlerCopy];
}

- (void)_purgeSettledStateTransitionsPredating:(id)predating handler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  if (predatingCopy)
  {
    v12 = @"date";
    v11 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", v10, 2u);
    }
  }
}

- (void)purgeSettledStateTransitionsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTSettledStateTransitionStore_purgeSettledStateTransitionsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

@end