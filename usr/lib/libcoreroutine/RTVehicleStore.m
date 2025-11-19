@interface RTVehicleStore
- (RTVehicleStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_fetchVehiclesWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeVehiclesPredating:(id)a3 handler:(id)a4;
- (void)_storeVehicle:(id)a3 handler:(id)a4;
- (void)fetchVehiclesWithOptions:(id)a3 handler:(id)a4;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)purgeVehiclesPredating:(id)a3 handler:(id)a4;
- (void)storeVehicle:(id)a3 handler:(id)a4;
@end

@implementation RTVehicleStore

- (RTVehicleStore)initWithPersistenceManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTVehicleStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:a3];
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

- (void)_fetchVehiclesWithOptions:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
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
    v18 = v7;
    v20 = a2;
    v10 = v8;
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

- (void)fetchVehiclesWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTVehicleStore_fetchVehiclesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_storeVehicle:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v16 = [v7 description];
        *buf = 138412802;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked on Vehicle %@", buf, 0x20u);
      }
    }

    v17 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(RTStore *)self storeWritableObjects:v10 handler:v8];
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
    v8[2](v8, v10);
  }
}

- (void)storeVehicle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RTVehicleStore_storeVehicle_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgeVehiclesPredating:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
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

  [(RTStore *)self purgePredating:v7 predicateMappings:v11 handler:v8];
}

- (void)purgeVehiclesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTVehicleStore_purgeVehiclesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTVehicleStore_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = v10;
  v18 = a3;
  v15 = v9;
  v16 = self;
  v19 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
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

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"The vehicle store doesn't support enumeration";
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