@interface RTSettledStateTransitionStore
- (void)_purgeSettledStateTransitionsPredating:(id)a3 handler:(id)a4;
- (void)clearWithHandler:(id)a3;
- (void)enumerateStoredSettledStateTransitionsWithOptions:(id)a3 enumerationBlock:(id)a4;
- (void)purgeSettledStateTransitionsPredating:(id)a3 handler:(id)a4;
@end

@implementation RTSettledStateTransitionStore

- (void)enumerateStoredSettledStateTransitionsWithOptions:(id)a3 enumerationBlock:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v35 = 1;
    if (v7)
    {
      v9 = +[RTSettledStateTransitionMO fetchRequest];
      v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(v7, "ascending")}];
      v37 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v9 setSortDescriptors:v11];

      v12 = [v7 dateInterval];

      if (v12)
      {
        v13 = MEMORY[0x277CCA920];
        v14 = MEMORY[0x277CCAC30];
        v15 = [v7 dateInterval];
        v16 = [v15 startDate];
        [v7 dateInterval];
        v17 = v32 = self;
        v18 = [v17 endDate];
        v19 = [v14 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"date", v16, @"date", v18];
        v36 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v21 = [v13 orPredicateWithSubpredicates:v20];
        [v9 setPredicate:v21];

        self = v32;
      }

      v22 = [v7 limit];

      if (v22)
      {
        v23 = [v7 limit];
        -[NSObject setFetchLimit:](v9, "setFetchLimit:", [v23 unsignedIntegerValue]);
      }

      if ([v7 batchSize])
      {
        v24 = [v7 batchSize];
        if (v24 >= 0x400)
        {
          v25 = 1024;
        }

        else
        {
          v25 = v24;
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
      v34 = v8;
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

      (*(v8 + 2))(v8, 0, v9, &v35);
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

- (void)clearWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)_purgeSettledStateTransitionsPredating:(id)a3 handler:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12 = @"date";
    v11 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v9 handler:v7];
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

- (void)purgeSettledStateTransitionsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTSettledStateTransitionStore_purgeSettledStateTransitionsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end