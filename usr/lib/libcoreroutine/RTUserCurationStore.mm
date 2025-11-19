@interface RTUserCurationStore
- (RTUserCurationStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_fetchStoredUserCurationWithIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchStoredUserCurationsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeUserCurationsPredating:(id)a3 handler:(id)a4;
- (void)_storeUserCuration:(id)a3 handler:(id)a4;
- (void)_updateUserCuration:(id)a3 handler:(id)a4;
- (void)fetchStoredUserCurationWithIdentifier:(id)a3 handler:(id)a4;
- (void)fetchStoredUserCurationsWithOptions:(id)a3 handler:(id)a4;
- (void)purgeUserCurationsPredating:(id)a3 handler:(id)a4;
- (void)storeUserCuration:(id)a3 handler:(id)a4;
- (void)updateUserCuration:(id)a3 handler:(id)a4;
@end

@implementation RTUserCurationStore

- (RTUserCurationStore)initWithPersistenceManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTUserCurationStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:a3];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
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

- (void)fetchStoredUserCurationWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTUserCurationStore_fetchStoredUserCurationWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredUserCurationWithIdentifier:(id)a3 handler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__RTUserCurationStore__fetchStoredUserCurationWithIdentifier_handler___block_invoke;
      v17[3] = &unk_2788C4FB0;
      v18 = v7;
      v20 = a2;
      v19 = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__RTUserCurationStore__fetchStoredUserCurationWithIdentifier_handler___block_invoke_13;
      v15[3] = &unk_2788C48C0;
      v16 = v19;
      [(RTStore *)self _performBlock:v17 contextType:1 errorHandler:v15];

      v10 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTUserCurationStore _fetchStoredUserCurationWithIdentifier:handler:]";
      v25 = 1024;
      v26 = 49;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22 = @"identifier is required";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v10];
      (v9)[2](v9, 0, v14);

      goto LABEL_10;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[RTUserCurationStore _fetchStoredUserCurationWithIdentifier:handler:]";
    v25 = 1024;
    v26 = 50;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_10:
}

void __70__RTUserCurationStore__fetchStoredUserCurationWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[RTUserCurationMO fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v10 = 0;
  v4 = [v2 execute:&v10];
  v5 = v10;
  v6 = [v4 firstObject];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v12 = v9;
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, result, %@, error, %@", buf, 0x2Au);
    }
  }

  v8 = 0;
  if (!v5 && v6)
  {
    v8 = [MEMORY[0x277D01410] createWithManagedObject:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchStoredUserCurationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTUserCurationStore_fetchStoredUserCurationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredUserCurationsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__RTUserCurationStore__fetchStoredUserCurationsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = v7;
    v9 = v8;
    v15 = v9;
    v16 = a2;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__RTUserCurationStore__fetchStoredUserCurationsWithOptions_handler___block_invoke_36;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __68__RTUserCurationStore__fetchStoredUserCurationsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v89[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTUserCurationMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [*(a1 + 32) submissionDateInterval];

  if (v7)
  {
    v8 = [*(a1 + 32) submissionDateInterval];
    v9 = [v8 startDate];

    v10 = [*(a1 + 32) submissionDateInterval];
    v11 = [v10 endDate];

    v6 = v11;
    v5 = v9;
  }

  v67 = v5;
  v69 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ =< %K AND %K =< %@", v5, @"submissionDate", @"submissionDate", v6];
  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 32) visitDateInterval];

  if (v14)
  {
    v15 = [*(a1 + 32) visitDateInterval];
    v16 = [v15 startDate];

    v17 = [*(a1 + 32) visitDateInterval];
    v18 = [v17 endDate];

    v13 = v18;
    v12 = v16;
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ =< %K AND %K =< %@", v12, @"visitEntryDate", @"visitExitDate", v13];
  v20 = MEMORY[0x277CCA920];
  v89[0] = v69;
  v89[1] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  [v4 setPredicate:v22];

  v23 = [*(a1 + 32) sortIndex];
  if (v23 == 1)
  {
    v24 = @"submissionDate";
  }

  else
  {
    if (v23 != 2)
    {
      v32 = v6;
      v70 = objc_alloc(MEMORY[0x277CCA9B8]);
      v34 = *MEMORY[0x277D01448];
      v87 = *MEMORY[0x277CCA450];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"options submitted with an invalid sortIndex value"];
      v88 = v35;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v36 = v4;
      v37 = v19;
      v38 = v3;
      v39 = v12;
      v41 = v40 = v13;
      v29 = [v70 initWithDomain:v34 code:0 userInfo:v41];

      v13 = v40;
      v12 = v39;
      v3 = v38;
      v19 = v37;
      v4 = v36;

      (*(*(a1 + 40) + 16))();
      v42 = v67;
      v30 = v69;
      goto LABEL_33;
    }

    v24 = @"visitEntryDate";
  }

  v25 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:v24 ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v86 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  [v4 setSortDescriptors:v26];

  v27 = [*(a1 + 32) limit];

  if (v27)
  {
    v28 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v28, "unsignedIntegerValue")}];
  }

  v76 = 0;
  v66 = [v3 executeFetchRequest:v4 error:&v76];
  v29 = v76;
  v30 = v69;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 48));
      v57 = v65 = v29;
      v58 = [v66 count];
      *buf = 138413058;
      v79 = v57;
      v80 = 2112;
      v81 = v4;
      v82 = 2048;
      v83 = v58;
      v84 = 2112;
      v85 = v65;
      _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v29 = v65;
    }
  }

  if (v29)
  {
    v32 = v6;
    v33 = 0;
  }

  else
  {
    v64 = v3;
    v59 = v19;
    v60 = v12;
    v61 = v13;
    v62 = v6;
    v68 = a1;
    v63 = v4;
    v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v66, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v43 = v66;
    v44 = [v43 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v73;
      v47 = 0x277D01000uLL;
      v48 = MEMORY[0x277D86220];
      do
      {
        v49 = 0;
        do
        {
          if (*v73 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v50 = *(*(&v72 + 1) + 8 * v49);
          v51 = objc_autoreleasePoolPush();
          v52 = [*(v47 + 1040) createWithManagedObject:v50];
          if (v52)
          {
            [v33 addObject:v52];
          }

          else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v53 = v33;
            v54 = v43;
            v55 = v48;
            v56 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v71 = NSStringFromSelector(*(v68 + 48));
              *buf = 138412546;
              v79 = v71;
              v80 = 2112;
              v81 = v50;
              _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "%@, failed to convert RTUserCurationMO to RTUserCuration, %@", buf, 0x16u);
            }

            v48 = v55;
            v43 = v54;
            v33 = v53;
            v47 = 0x277D01000;
          }

          objc_autoreleasePoolPop(v51);
          ++v49;
        }

        while (v45 != v49);
        v45 = [v43 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v45);
    }

    v4 = v63;
    v3 = v64;
    v13 = v61;
    v32 = v62;
    a1 = v68;
    v30 = v69;
    v19 = v59;
    v12 = v60;
    v29 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v42 = v67;
LABEL_33:
}

- (void)_storeUserCuration:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(RTStore *)self storeWritableObjects:v9 handler:v7, v10, v11];
}

- (void)storeUserCuration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTUserCurationStore_storeUserCuration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_updateUserCuration:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(RTStore *)self updateWritableObjects:v9 handler:v7, v10, v11];
}

- (void)updateUserCuration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTUserCurationStore_updateUserCuration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)purgeUserCurationsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTUserCurationStore_purgeUserCurationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgeUserCurationsPredating:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v15 = @"submissionDate";
    v7 = a4;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v9 handler:v7];
  }

  else
  {
    v10 = a4;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTUserCurationStore _purgeUserCurationsPredating:handler:]";
      v21 = 1024;
      v22 = 258;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"requires a valid date.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [v12 errorWithDomain:v13 code:7 userInfo:v9];
    v10[2](v10, v7);
  }
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"The user curation store doesn't support enumeration";
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