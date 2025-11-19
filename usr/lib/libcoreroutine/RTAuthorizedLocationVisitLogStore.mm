@interface RTAuthorizedLocationVisitLogStore
- (BOOL)setTrustedTimeRecentAvailability:(BOOL)a3;
- (BOOL)wasTrustedTimeRecentlyAvailable;
- (RTAuthorizedLocationVisitLogStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (int64_t)getEraseInstallRetroRegistrationStatus;
- (void)_deleteVisitLogWithUUID:(id)a3 handler:(id)a4;
- (void)_fetchVisitLogWithUUID:(id)a3 handler:(id)a4;
- (void)_fetchVisitLogsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeVisitLogsOnDateInterval:(id)a3 handler:(id)a4;
- (void)_storeVisitLog:(id)a3 handler:(id)a4;
- (void)_updateVisitLogDistantFutureFlagWithStatus:(int64_t)a3 TrustedTimeAvailability:(BOOL)a4 isRetroRegistration:(BOOL)a5;
- (void)deleteVisitLogWithUUID:(id)a3 handler:(id)a4;
- (void)fetchVisitLogWithUUID:(id)a3 handler:(id)a4;
- (void)fetchVisitLogsWithOptions:(id)a3 handler:(id)a4;
- (void)purgeVisitLogsOnDateInterval:(id)a3 handler:(id)a4;
- (void)purgeVisitLogsPredating:(id)a3 handler:(id)a4;
- (void)setEraseInstallRetroRegistrationStatus:(int64_t)a3;
- (void)storeVisitLog:(id)a3 handler:(id)a4;
@end

@implementation RTAuthorizedLocationVisitLogStore

- (RTAuthorizedLocationVisitLogStore)initWithPersistenceManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTAuthorizedLocationVisitLogStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:a3];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
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

- (void)_fetchVisitLogsWithOptions:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
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
    aBlock[2] = __72__RTAuthorizedLocationVisitLogStore__fetchVisitLogsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v18 = v7;
    v20 = a2;
    v10 = v8;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__RTAuthorizedLocationVisitLogStore__fetchVisitLogsWithOptions_handler___block_invoke_20;
    v15[3] = &unk_2788C48C0;
    v16 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v15];
  }
}

void __72__RTAuthorizedLocationVisitLogStore__fetchVisitLogsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTAuthorizedLocationVisitLogMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) dateInterval];

  v6 = 0x277CBE000;
  v36 = v3;
  if (v5)
  {
    v34 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    v8 = [*(a1 + 32) dateInterval];
    v9 = [v8 startDate];
    v10 = [v7 predicateWithFormat:@"%@ <= %K", v9, @"registrationDate"];
    v52[0] = v10;
    v11 = MEMORY[0x277CCAC30];
    v12 = [*(a1 + 32) dateInterval];
    v13 = [v12 endDate];
    v14 = [v11 predicateWithFormat:@"%K <= %@", @"registrationDate", v13];
    v52[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v16 = [v34 andPredicateWithSubpredicates:v15];
    [v4 setPredicate:v16];

    v3 = v36;
    v6 = 0x277CBE000uLL;
  }

  v17 = v6;
  v18 = [*(a1 + 32) limit];

  if (v18)
  {
    v19 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v19, "unsignedIntegerValue")}];
  }

  v20 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"registrationDate" ascending:{objc_msgSend(*(a1 + 32), "isAscending")}];
  v51 = v20;
  v21 = [*(v17 + 2656) arrayWithObjects:&v51 count:1];
  [v4 setSortDescriptors:v21];

  [v4 setFetchBatchSize:10];
  v41 = 0;
  v22 = [v3 executeFetchRequest:v4 error:&v41];
  v23 = v41;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v32 = NSStringFromSelector(*(a1 + 48));
      v33 = [v22 count];
      *buf = 138413058;
      v44 = v32;
      v45 = 2112;
      v46 = v4;
      v47 = 2048;
      v48 = v33;
      v49 = 2112;
      v50 = v23;
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v22;
    v26 = v22;
    v27 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v38;
      do
      {
        v30 = 0;
        do
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [RTAuthorizedLocationVisitLog createWithManagedObject:*(*(&v37 + 1) + 8 * v30)];
          if (v31)
          {
            [v25 addObject:v31];
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v28);
    }

    v22 = v35;
    v3 = v36;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitLogsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTAuthorizedLocationVisitLogStore_fetchVisitLogsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchVisitLogWithUUID:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
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
    aBlock[2] = __68__RTAuthorizedLocationVisitLogStore__fetchVisitLogWithUUID_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v18 = v7;
    v20 = a2;
    v10 = v8;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__RTAuthorizedLocationVisitLogStore__fetchVisitLogWithUUID_handler___block_invoke_29;
    v15[3] = &unk_2788C48C0;
    v16 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v15];
  }
}

void __68__RTAuthorizedLocationVisitLogStore__fetchVisitLogWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTAuthorizedLocationVisitLogMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ == %K", *(a1 + 32), @"visitIdentifier"];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"registrationDate" ascending:1];
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
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
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

          v17 = [RTAuthorizedLocationVisitLog createWithManagedObject:*(*(&v22 + 1) + 8 * v16)];
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

- (void)fetchVisitLogWithUUID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTAuthorizedLocationVisitLogStore_fetchVisitLogWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_storeVisitLog:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = [v7 description];
      *buf = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@:%@,%@", buf, 0x20u);
    }
  }

  v15 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(RTStore *)self storeWritableObjects:v10 handler:v8];
}

- (void)storeVisitLog:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTAuthorizedLocationVisitLogStore_storeVisitLog_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)purgeVisitLogsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTAuthorizedLocationVisitLogStore_purgeVisitLogsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__RTAuthorizedLocationVisitLogStore_purgeVisitLogsPredating_handler___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v2 = [*(a1 + 32) laterDate:v5];
  v3 = *(a1 + 40);
  v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v2];
  [v3 _purgeVisitLogsOnDateInterval:v4 handler:*(a1 + 48)];
}

- (void)_purgeVisitLogsOnDateInterval:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTAuthorizedLocationVisitLogStore _purgeVisitLogsOnDateInterval:handler:]";
      v28 = 1024;
      LODWORD(v29) = 210;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTAuthorizedLocationVisitLogStore__purgeVisitLogsOnDateInterval_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v21 = v7;
    v22 = self;
    v11 = v8;
    v23 = v11;
    v12 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v12 contextType:0 errorHandler:v11];

    v13 = v21;
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"requires a non-nil dateInterval.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

    if (v8)
    {
      (*(v8 + 2))(v8, v13);
    }
  }
}

void __75__RTAuthorizedLocationVisitLogStore__purgeVisitLogsOnDateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = +[RTAuthorizedLocationVisitLogMO fetchRequest];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CCAC30];
  v8 = [*(a1 + 32) startDate];
  v9 = [v7 predicateWithFormat:@"%@ < %K", v8, @"registrationDate"];
  v16[0] = v9;
  v10 = MEMORY[0x277CCAC30];
  v11 = [*(a1 + 32) endDate];
  v12 = [v10 predicateWithFormat:@"%K < %@", @"registrationDate", v11];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v6 andPredicateWithSubpredicates:v13];
  [v5 setPredicate:v14];

  v15 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v15 setResultType:2];
  [v4 addObject:v15];
  [*(a1 + 40) executeDeleteRequests:v4 context:v3 handler:*(a1 + 48)];
}

- (void)purgeVisitLogsOnDateInterval:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTAuthorizedLocationVisitLogStore_purgeVisitLogsOnDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteVisitLogWithUUID:(id)a3 handler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[RTAuthorizedLocationVisitLogStore _deleteVisitLogWithUUID:handler:]";
      v43 = 1024;
      LODWORD(v44) = 263;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
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

  v39 = @"visitIdentifier";
  v38 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v40 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  if (v7)
  {
    if (v12)
    {
      v13 = [v12 allKeys];
      if ([v13 count])
      {
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __69__RTAuthorizedLocationVisitLogStore__deleteVisitLogWithUUID_handler___block_invoke;
        v28 = &unk_2788C7F10;
        v13 = v13;
        v29 = v13;
        v30 = v12;
        v31 = v7;
        v32 = self;
        v14 = v8;
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
  v13 = [v16 errorWithDomain:v17 code:7 userInfo:v21];

  if (v8)
  {
    (*(v8 + 2))(v8, v13);
  }

LABEL_17:
}

void __69__RTAuthorizedLocationVisitLogStore__deleteVisitLogWithUUID_handler___block_invoke(uint64_t a1, void *a2)
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

- (void)deleteVisitLogWithUUID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTAuthorizedLocationVisitLogStore_deleteVisitLogWithUUID_handler___block_invoke;
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
  v13[0] = @"the authorized location visit log store doesn't support enumeration";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  return 0;
}

- (void)_updateVisitLogDistantFutureFlagWithStatus:(int64_t)a3 TrustedTimeAvailability:(BOOL)a4 isRetroRegistration:(BOOL)a5
{
  v86 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v57 = a4;
    v60 = a5;
    v6 = @"00001111-2222-3333-4444-555566667777";
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v57 = a4;
    v60 = a5;
    v6 = @"11112222-3333-4444-5555-666677778888";
LABEL_5:
    oslog = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    v62 = [v7 initWithTimeInterval:v8 sinceDate:-120.0];

    v63 = [MEMORY[0x277CBEAA8] distantFuture];
    v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v62 endDate:v63];
    v10 = dispatch_semaphore_create(0);
    *v80 = 0;
    *&v80[8] = v80;
    *&v80[16] = 0x3032000000;
    v81 = __Block_byref_object_copy__33;
    v82 = __Block_byref_object_dispose__33;
    v83 = 0;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __124__RTAuthorizedLocationVisitLogStore__updateVisitLogDistantFutureFlagWithStatus_TrustedTimeAvailability_isRetroRegistration___block_invoke;
    v71[3] = &unk_2788C4618;
    v73 = v80;
    v11 = v10;
    v72 = v11;
    v56 = v9;
    [(RTAuthorizedLocationVisitLogStore *)self purgeVisitLogsOnDateInterval:v9 handler:v71];
    v13 = (*&v80[8] + 40);
    v12 = *(*&v80[8] + 40);
    dsema = v11;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_28];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      *v85 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v85 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v12 = v27;
      }
    }

    objc_storeStrong(v13, v12);
    v29 = objc_alloc(MEMORY[0x277CBEAA8]);
    v30 = [MEMORY[0x277CBEAA8] distantFuture];
    v31 = [v29 initWithTimeInterval:v30 sinceDate:-60.0];

    v61 = [RTAuthorizedLocationVisitLog encodeTimeSourceWithValue:v31 isTrusted:v57 isRetroRegistration:v60];

    v32 = [[RTAuthorizedLocationVisitLog alloc] initWithVisitIdentifier:oslog registrationDate:v61 locationTechnologyAvailability:0];
    v33 = dispatch_semaphore_create(0);
    *buf = 0;
    v75 = buf;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__33;
    v78 = __Block_byref_object_dispose__33;
    v79 = 0;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __124__RTAuthorizedLocationVisitLogStore__updateVisitLogDistantFutureFlagWithStatus_TrustedTimeAvailability_isRetroRegistration___block_invoke_2;
    v66[3] = &unk_2788C7F38;
    v69 = buf;
    v66[4] = self;
    v70 = a2;
    v34 = v32;
    v67 = v34;
    v35 = v33;
    v68 = v35;
    [(RTAuthorizedLocationVisitLogStore *)self storeVisitLog:v34 handler:v66];
    v36 = (v75 + 40);
    obja = *(v75 + 5);
    v37 = v35;
    v38 = [MEMORY[0x277CBEAA8] now];
    v39 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v37, v39))
    {
      v40 = [MEMORY[0x277CBEAA8] now];
      [v40 timeIntervalSinceDate:v38];
      v42 = v41;
      v43 = objc_opt_new();
      v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_28];
      v45 = [MEMORY[0x277CCACC8] callStackSymbols];
      v46 = [v45 filteredArrayUsingPredicate:v44];
      v47 = [v46 firstObject];

      [v43 submitToCoreAnalytics:v47 type:1 duration:v42];
      v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *v85 = 0;
        _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v85, 2u);
      }

      v49 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA450];
      *v85 = @"semaphore wait timeout";
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
      v51 = [v49 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v50];

      if (v51)
      {
        v52 = v51;

        obja = v51;
      }
    }

    objc_storeStrong(v36, obja);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v80, 8);
    goto LABEL_18;
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = NSStringFromSelector(a2);
    *v80 = 138412546;
    *&v80[4] = v54;
    *&v80[12] = 2112;
    *&v80[14] = v55;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "%@ %@, cannot update VisitLogDistantFutureFlag to RTEraseInstallRetroRegistrationStatusHasNotRun", v80, 0x16u);
  }

LABEL_18:
}

void __124__RTAuthorizedLocationVisitLogStore__updateVisitLogDistantFutureFlagWithStatus_TrustedTimeAvailability_isRetroRegistration___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __124__RTAuthorizedLocationVisitLogStore__updateVisitLogDistantFutureFlagWithStatus_TrustedTimeAvailability_isRetroRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@, registered visit retro registration event: %@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (int64_t)getEraseInstallRetroRegistrationStatus
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00001111-2222-3333-4444-555566667777"];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"11112222-3333-4444-5555-666677778888"];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v35 = [v6 initWithTimeInterval:v7 sinceDate:-120.0];

  v36 = [MEMORY[0x277CBEAA8] distantFuture];
  v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v35 endDate:v36];
  v8 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:0 dateInterval:v33 limit:&unk_28459CEB8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v9 = dispatch_semaphore_create(0);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__33;
  v49 = __Block_byref_object_dispose__33;
  v50 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __75__RTAuthorizedLocationVisitLogStore_getEraseInstallRetroRegistrationStatus__block_invoke;
  v37[3] = &unk_2788C7F60;
  v42 = &v45;
  v31 = v4;
  v38 = v31;
  v39 = self;
  v43 = &v51;
  v44 = a2;
  v32 = v5;
  v40 = v32;
  v10 = v9;
  v41 = v10;
  v34 = v8;
  [(RTAuthorizedLocationVisitLogStore *)self fetchVisitLogsWithOptions:v8 handler:v37];
  v12 = (v46 + 5);
  v11 = v46[5];
  v13 = v10;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_28];
    v21 = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 firstObject];

    [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v55 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;

      v11 = v27;
    }
  }

  objc_storeStrong(v12, v11);
  v29 = v52[3];

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v29;
}

void __75__RTAuthorizedLocationVisitLogStore_getEraseInstallRetroRegistrationStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  if (!v6)
  {
    v7 = [v5 firstObject];
    v8 = [v7 visitIdentifier];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(*(a1 + 80));
        v14 = [v5 firstObject];
        v15 = [v14 visitIdentifier];
        v23 = 138412802;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v15;
        v16 = "%@:%@, successfully fetched retro-registration flag, %@, indicating that it is running.";
LABEL_8:
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, v16, &v23, 0x20u);

LABEL_11:
      }
    }

    else
    {
      v17 = [v5 firstObject];
      v18 = [v17 visitIdentifier];
      v19 = [v18 isEqual:*(a1 + 48)];

      v20 = *(*(a1 + 72) + 8);
      if (v19)
      {
        *(v20 + 24) = 2;
        v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v12 = NSStringFromClass(v21);
          v13 = NSStringFromSelector(*(a1 + 80));
          v14 = [v5 firstObject];
          v15 = [v14 visitIdentifier];
          v23 = 138412802;
          v24 = v12;
          v25 = 2112;
          v26 = v13;
          v27 = 2112;
          v28 = v15;
          v16 = "%@:%@, successfully fetched retro-registration flag, %@, indicating that it has already run.";
          goto LABEL_8;
        }
      }

      else
      {
        *(v20 + 24) = 0;
        v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          v12 = NSStringFromClass(v22);
          v13 = NSStringFromSelector(*(a1 + 80));
          v23 = 138412546;
          v24 = v12;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@, successfully fetched zero retro-registration flags, indicating that we have not already run.", &v23, 0x16u);
          goto LABEL_11;
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)setEraseInstallRetroRegistrationStatus:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, setting status, %d.", &v10, 0x1Cu);
  }

  [(RTAuthorizedLocationVisitLogStore *)self _updateVisitLogDistantFutureFlagWithStatus:a3 TrustedTimeAvailability:0 isRetroRegistration:1];
}

- (BOOL)wasTrustedTimeRecentlyAvailable
{
  v67[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"11112222-3333-4444-5555-666677778888"];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v40 = [v3 initWithTimeInterval:v4 sinceDate:-120.0];

  v41 = [MEMORY[0x277CBEAA8] distantFuture];
  v35 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:v41];
  v5 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:0 dateInterval:v35 limit:&unk_28459CEB8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__33;
  v60 = __Block_byref_object_dispose__33;
  v61 = 0;
  v6 = dispatch_semaphore_create(0);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__33;
  v54 = __Block_byref_object_dispose__33;
  v55 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __68__RTAuthorizedLocationVisitLogStore_wasTrustedTimeRecentlyAvailable__block_invoke;
  v43[3] = &unk_2788C7F88;
  v47 = &v50;
  v34 = v2;
  v44 = v34;
  v45 = self;
  v48 = &v56;
  v49 = a2;
  v7 = v6;
  v46 = v7;
  v36 = v5;
  [(RTAuthorizedLocationVisitLogStore *)self fetchVisitLogsWithOptions:v5 handler:v43];
  v8 = (v51 + 5);
  obj = v51[5];
  v9 = v7;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_28];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v67[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v67 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;

      obj = v23;
    }
  }

  objc_storeStrong(v8, obj);
  v25 = v57[5];
  if (v25)
  {
    LOBYTE(v67[0]) = 0;
    v42 = 0;
    v26 = [v25 registrationDate];
    v27 = [RTAuthorizedLocationVisitLog decodeTimeSourceWithValue:v26 isRetroRegistration:v67 isTrusted:&v42];

    LODWORD(v26) = v42;
    v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v29 = v27 & v26;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v32;
      v63 = 2112;
      v64 = v33;
      v65 = 1024;
      v66 = v29;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@:%@, decoded  trusted-time availability flag. trustedTimeWasAvailable, %d.", buf, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v29;
}

void __68__RTAuthorizedLocationVisitLogStore_wasTrustedTimeRecentlyAvailable__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!v6)
  {
    v7 = [v5 firstObject];
    v8 = [v7 visitIdentifier];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      v10 = [v5 firstObject];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(*(a1 + 72));
        v17 = [v5 firstObject];
        v18 = [v17 visitIdentifier];
        v20 = 138412802;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@, successfully fetched trusted-time availability flag, %@.", &v20, 0x20u);

LABEL_7:
      }
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v15 = NSStringFromClass(v19);
        v16 = NSStringFromSelector(*(a1 + 72));
        v20 = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@, successfully fetched zero trusted-time availability flags.", &v20, 0x16u);
        goto LABEL_7;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)setTrustedTimeRecentAvailability:(BOOL)a3
{
  v3 = a3;
  v5 = [(RTAuthorizedLocationVisitLogStore *)self getEraseInstallRetroRegistrationStatus];
  if (v5 == 2)
  {
    [(RTAuthorizedLocationVisitLogStore *)self _updateVisitLogDistantFutureFlagWithStatus:2 TrustedTimeAvailability:v3 isRetroRegistration:0];
  }

  return v5 == 2;
}

@end