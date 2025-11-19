@interface RTPredictedContextStore
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_fetchPredictedContextAndRequestDateWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchPredictedContextRequestsWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchPredictedContextsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgePredictedContextRequestsPredating:(id)a3 handler:(id)a4;
- (void)_purgePredictedContextsPredating:(id)a3 handler:(id)a4;
- (void)_storePredictedContextRequest:(id)a3 handler:(id)a4;
- (void)fetchPredictedContextAndRequestDateWithOptions:(id)a3 handler:(id)a4;
- (void)fetchPredictedContextRequestsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchPredictedContextsWithOptions:(id)a3 handler:(id)a4;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)purgePredictedContextRequestsPredating:(id)a3 handler:(id)a4;
- (void)purgePredictedContextsPredating:(id)a3 handler:(id)a4;
- (void)storePredictedContextRequest:(id)a3 handler:(id)a4;
- (void)storePredictedContexts:(id)a3 handler:(id)a4;
@end

@implementation RTPredictedContextStore

- (void)fetchPredictedContextsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTPredictedContextStore_fetchPredictedContextsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchPredictedContextsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__RTPredictedContextStore__fetchPredictedContextsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = v7;
    v16 = a2;
    v9 = v8;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__RTPredictedContextStore__fetchPredictedContextsWithOptions_handler___block_invoke_16;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __70__RTPredictedContextStore__fetchPredictedContextsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTPredictedContextMO fetchRequest];
  v5 = [*(a1 + 32) dateInterval];
  v6 = [*(a1 + 32) limit];
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v8 = MEMORY[0x277CCAC30];
    v9 = [v5 startDate];
    [v5 endDate];
    v11 = v10 = v6;
    v12 = [v8 predicateWithFormat:@"%K >= %@ && %K <= %@", @"predictionEndDate", v9, @"predictionEndDate", v11];
    [v7 addObject:v12];

    v6 = v10;
  }

  if ([*(a1 + 32) filterContextTypeMask])
  {
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %lu) == 0", @"contextType", objc_msgSend(*(a1 + 32), "filterContextTypeMask")];
    [v7 addObject:v13];
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
    [v4 setPredicate:v14];
  }

  if (v6)
  {
    [v4 setFetchLimit:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  v15 = [*(a1 + 32) resultSortDescriptors];
  [v4 setSortDescriptors:v15];

  v53 = 0;
  v16 = [v3 executeFetchRequest:v4 error:&v53];
  v17 = v53;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(*(a1 + 48));
      v20 = [v16 count];
      *buf = 138413058;
      v56 = v19;
      v57 = 2112;
      v58 = v4;
      v59 = 2048;
      v60 = v20;
      v61 = 2112;
      v62 = v17;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v46 = v17;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v41 = v7;
    v42 = v6;
    v47 = a1;
    v43 = v5;
    v44 = v4;
    v45 = v3;
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v16;
    v22 = v16;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      v26 = MEMORY[0x277D86220];
      v27 = RTLogFacilityPredictedContext;
      v28 = 0x277D01000uLL;
      do
      {
        v29 = 0;
        v48 = v24;
        do
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v49 + 1) + 8 * v29);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(v27);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              NSStringFromSelector(*(v47 + 48));
              v32 = v25;
              v33 = v28;
              v34 = v26;
              v35 = v21;
              v36 = v22;
              v38 = v37 = v27;
              *buf = 138412547;
              v56 = v38;
              v57 = 2117;
              v58 = v30;
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, predictedContextMO, %{sensitive}@", buf, 0x16u);

              v27 = v37;
              v22 = v36;
              v21 = v35;
              v26 = v34;
              v28 = v33;
              v25 = v32;
              v24 = v48;
            }
          }

          v39 = [*(v28 + 520) createWithManagedObject:v30];
          if (v39)
          {
            [v21 addObject:v39];
          }

          ++v29;
        }

        while (v24 != v29);
        v24 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v24);
    }

    v4 = v44;
    v3 = v45;
    v6 = v42;
    v5 = v43;
    a1 = v47;
    v16 = v40;
    v7 = v41;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPredictedContextRequestsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTPredictedContextStore_fetchPredictedContextRequestsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchPredictedContextRequestsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__RTPredictedContextStore__fetchPredictedContextRequestsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = v7;
    v16 = a2;
    v9 = v8;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__RTPredictedContextStore__fetchPredictedContextRequestsWithOptions_handler___block_invoke_23;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __77__RTPredictedContextStore__fetchPredictedContextRequestsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTPredictedContextRequestMO fetchRequest];
  v5 = [*(a1 + 32) dateInterval];
  v45 = a1;
  v6 = [*(a1 + 32) limit];
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v8 = MEMORY[0x277CCAC30];
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    v11 = [v8 predicateWithFormat:@"%K >= %@ && %K <= %@", @"requestStartDate", v9, @"requestStartDate", v10];
    [v7 addObject:v11];
  }

  if ([v7 count])
  {
    v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
    [v4 setPredicate:v12];
  }

  if (v6)
  {
    [v4 setFetchLimit:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  v13 = [*(v45 + 32) resultSortDescriptors];
  [v4 setSortDescriptors:v13];

  v51 = 0;
  v14 = [v3 executeFetchRequest:v4 error:&v51];
  v15 = v51;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      NSStringFromSelector(*(v45 + 48));
      v18 = v17 = v15;
      v19 = [v14 count];
      *buf = 138413058;
      v54 = v18;
      v55 = 2112;
      v56 = v4;
      v57 = 2048;
      v58 = v19;
      v59 = 2112;
      v60 = v17;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v15 = v17;
    }
  }

  if (v15)
  {
    v20 = 0;
  }

  else
  {
    v40 = v7;
    v41 = v6;
    v42 = v5;
    v43 = v4;
    v44 = v3;
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v39 = v14;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      v25 = MEMORY[0x277D86220];
      v26 = RTLogFacilityPredictedContext;
      v27 = 0x277D01000uLL;
      do
      {
        v28 = 0;
        v46 = v23;
        do
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v47 + 1) + 8 * v28);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v30 = _rt_log_facility_get_os_log(v26);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              NSStringFromSelector(*(v45 + 48));
              v31 = v24;
              v32 = v27;
              v33 = v25;
              v34 = v20;
              v35 = v21;
              v37 = v36 = v26;
              *buf = 138412547;
              v54 = v37;
              v55 = 2117;
              v56 = v29;
              _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, predictedContextRequestMO, %{sensitive}@", buf, 0x16u);

              v26 = v36;
              v21 = v35;
              v20 = v34;
              v25 = v33;
              v27 = v32;
              v24 = v31;
              v23 = v46;
            }
          }

          v38 = [*(v27 + 576) createWithManagedObject:v29];
          if (v38)
          {
            [v20 addObject:v38];
          }

          ++v28;
        }

        while (v23 != v28);
        v23 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v23);
    }

    v4 = v43;
    v3 = v44;
    v6 = v41;
    v5 = v42;
    v14 = v39;
    v7 = v40;
    v15 = 0;
  }

  (*(*(v45 + 40) + 16))();
}

- (void)fetchPredictedContextAndRequestDateWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RTPredictedContextStore_fetchPredictedContextAndRequestDateWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchPredictedContextAndRequestDateWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__RTPredictedContextStore__fetchPredictedContextAndRequestDateWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = v7;
    v16 = a2;
    v9 = v8;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__RTPredictedContextStore__fetchPredictedContextAndRequestDateWithOptions_handler___block_invoke_25;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __83__RTPredictedContextStore__fetchPredictedContextAndRequestDateWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTPredictedContextMO fetchRequest];
  v5 = [*(a1 + 32) dateInterval];
  v6 = [*(a1 + 32) limit];
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v8 = MEMORY[0x277CCAC30];
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    v11 = [v8 predicateWithFormat:@"%K >= %@ && %K <= %@", @"predictionEndDate", v9, @"predictionEndDate", v10];
    [v7 addObject:v11];
  }

  if ([*(a1 + 32) filterContextTypeMask])
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %lu) == 0", @"contextType", objc_msgSend(*(a1 + 32), "filterContextTypeMask")];
    [v7 addObject:v12];
  }

  if ([v7 count])
  {
    v13 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
    [v4 setPredicate:v13];
  }

  if (v6)
  {
    [v4 setFetchLimit:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  v14 = [*(a1 + 32) resultSortDescriptors];
  [v4 setSortDescriptors:v14];

  v51 = 0;
  v15 = [v3 executeFetchRequest:v4 error:&v51];
  v16 = v51;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(*(a1 + 48));
      v20 = [v15 count];
      *buf = 138413058;
      v54 = v19;
      v55 = 2112;
      v56 = v4;
      v57 = 2048;
      v58 = v20;
      v59 = 2112;
      v60 = v17;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }

    v16 = v17;
  }

  v44 = v7;
  v21 = [MEMORY[0x277CBEB38] dictionary];
  if (!v16)
  {
    v39 = v15;
    v40 = v6;
    v41 = v5;
    v45 = a1;
    v42 = v4;
    v43 = v3;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = v15;
    v46 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v46)
    {
      v23 = *v48;
      v24 = 0x277D01000uLL;
      v25 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v47 + 1) + 8 * i);
          v28 = [*(v24 + 520) createWithManagedObject:v27];
          v29 = [v27 predictedContextRequest];
          v30 = [v29 requestStartDate];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              NSStringFromSelector(*(v45 + 48));
              v32 = v23;
              v33 = v21;
              v34 = v24;
              v36 = v35 = v22;
              *buf = 138412803;
              v54 = v36;
              v55 = 2117;
              v56 = v27;
              v57 = 2112;
              v58 = v30;
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, predictedContextMO, %{sensitive}@, requestDate, %@", buf, 0x20u);

              v22 = v35;
              v24 = v34;
              v21 = v33;
              v23 = v32;
              v25 = MEMORY[0x277D86220];
            }
          }

          if (v30)
          {
            v37 = v28 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = [v21 objectForKeyedSubscript:v30];
            if (!v38)
            {
              v38 = [MEMORY[0x277CBEB18] array];
            }

            [v38 addObject:v28];
            [v21 setObject:v38 forKeyedSubscript:v30];
          }
        }

        v46 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v46);
    }

    v4 = v42;
    v3 = v43;
    v6 = v40;
    v5 = v41;
    a1 = v45;
    v16 = 0;
    v15 = v39;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)storePredictedContexts:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTPredictedContextStore_storePredictedContexts_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)storePredictedContextRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTPredictedContextStore_storePredictedContextRequest_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_storePredictedContextRequest:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a3;
    v6 = MEMORY[0x277CBEA60];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v10 count:1];

    [(RTStore *)self storeWritableObjects:v9 handler:v7, v10, v11];
  }
}

- (void)purgePredictedContextsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTPredictedContextStore_purgePredictedContextsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgePredictedContextsPredating:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v7 stringFromDate];
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, purging predicted contexts with end dates predating %@", buf, 0x20u);
    }
  }

  v17 = @"predictionEndDate";
  v16 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(RTStore *)self purgePredating:v7 predicateMappings:v15 handler:v8];
}

- (void)purgePredictedContextRequestsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTPredictedContextStore_purgePredictedContextRequestsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgePredictedContextRequestsPredating:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, purging predicted context requests with end dates predating %@", buf, 0x20u);
    }
  }

  v16 = @"requestEndDate";
  v15 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(RTStore *)self purgePredating:v7 predicateMappings:v14 handler:v8];
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke_2;
  v6[3] = &unk_2788C59D0;
  v5 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v2;
  v7 = v5;
  v8 = v4;
  [v5 purgePredictedContextsPredating:v3 handler:v6];
}

void __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, contexts performPurgeOfType, error, %@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke_31;
  v10[3] = &unk_2788C4780;
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  [v6 purgePredictedContextRequestsPredating:v7 handler:v10];
}

void __71__RTPredictedContextStore_performPurgeOfType_referenceDate_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, requests performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"the visit store doesn't support enumeration";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  return 0;
}

@end