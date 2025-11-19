@interface RTVisitStore
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_fetchVisitsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeVisitsPredating:(id)a3 handler:(id)a4;
- (void)_storeVisit:(id)a3 handler:(id)a4;
- (void)fetchVisitsWithOptions:(id)a3 handler:(id)a4;
- (void)purgeVisitsPredating:(id)a3 handler:(id)a4;
- (void)storeVisit:(id)a3 handler:(id)a4;
@end

@implementation RTVisitStore

- (void)_fetchVisitsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__RTVisitStore__fetchVisitsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = v7;
    v16 = a2;
    v9 = v8;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__RTVisitStore__fetchVisitsWithOptions_handler___block_invoke_26;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __48__RTVisitStore__fetchVisitsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v55 = a2;
  v3 = +[RTVisitMO fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [*(a1 + 32) confidence];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = [*(a1 + 32) confidence];
    v8 = [v6 predicateWithFormat:@"%K == %@", @"confidence", v7];
    [v4 addObject:v8];
  }

  v57 = v4;
  v9 = [*(a1 + 32) dateInterval];

  v10 = 0x277CCA000uLL;
  v56 = v3;
  if (v9)
  {
    v11 = MEMORY[0x277CCA920];
    v12 = MEMORY[0x277CCAC30];
    v54 = [*(a1 + 32) dateInterval];
    v52 = [v54 startDate];
    v53 = [*(a1 + 32) dateInterval];
    v51 = [v53 endDate];
    v50 = [v12 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"entryDate", v52, @"entryDate", v51];
    v78[0] = v50;
    v13 = MEMORY[0x277CCAC30];
    v14 = [*(a1 + 32) dateInterval];
    v15 = [v14 startDate];
    v16 = [*(a1 + 32) dateInterval];
    v17 = [v16 endDate];
    v18 = [v13 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"exitDate", v15, @"exitDate", v17];
    v78[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    v20 = [v11 orPredicateWithSubpredicates:v19];
    [v57 addObject:v20];

    v10 = 0x277CCA000;
    v3 = v56;
  }

  v21 = [*(a1 + 32) sources];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [MEMORY[0x277CBEB18] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v24 = [*(a1 + 32) sources];
    v25 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v64;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v64 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"source", *(*(&v63 + 1) + 8 * i)];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v26);
    }

    v10 = 0x277CCA000uLL;
    v30 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v23];
    [v57 addObject:v30];

    v3 = v56;
  }

  v31 = v57;
  if ([v57 count])
  {
    v32 = [*(v10 + 2336) andPredicateWithSubpredicates:v57];
    [v3 setPredicate:v32];
  }

  v33 = [*(a1 + 32) limit];

  v34 = v55;
  if (v33)
  {
    v35 = [*(a1 + 32) limit];
    [v3 setFetchLimit:{objc_msgSend(v35, "unsignedIntegerValue")}];
  }

  v36 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"detectionDate" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v76 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  [v3 setSortDescriptors:v37];

  [v3 setFetchBatchSize:10];
  v62 = 0;
  v38 = [v55 executeFetchRequest:v3 error:&v62];
  v39 = v62;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v48 = NSStringFromSelector(*(a1 + 48));
      v49 = [v38 count];
      *buf = 138413058;
      v69 = v48;
      v70 = 2112;
      v71 = v3;
      v72 = 2048;
      v73 = v49;
      v74 = 2112;
      v75 = v39;
      _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = v38;
    v43 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v59;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v59 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [MEMORY[0x277D01428] createWithManagedObject:*(*(&v58 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v44);
    }

    v34 = v55;
    v3 = v56;
    v31 = v57;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTVisitStore_fetchVisitsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_storeVisit:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(RTStore *)self storeWritableObjects:v9 handler:v7, v10, v11];
}

- (void)storeVisit:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RTVisitStore_storeVisit_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgeVisitsPredating:(id)a3 handler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"detectionDate";
  v6 = a4;
  v7 = a3;
  v10 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTStore *)self purgePredating:v7 predicateMappings:v9 handler:v6];
}

- (void)purgeVisitsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RTVisitStore_purgeVisitsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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