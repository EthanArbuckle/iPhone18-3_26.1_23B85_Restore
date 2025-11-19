@interface RTElevationStore
+ (id)fetchRequestFromStoredElevationOptions:(id)a3;
- (RTElevationStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_fetchStoredElevationsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchStoredElevationsWithOptions:(id)a3 handler:(id)a4;
- (void)_removeElevations:(id)a3 handler:(id)a4;
- (void)_removeElevationsPredating:(id)a3 handler:(id)a4;
- (void)_removeInterimElevations:(id)a3 handler:(id)a4;
- (void)_storeElevations:(id)a3 handler:(id)a4;
- (void)fetchStoredElevationsWithContext:(id)a3 handler:(id)a4;
- (void)fetchStoredElevationsWithOptions:(id)a3 handler:(id)a4;
- (void)removeElevations:(id)a3 handler:(id)a4;
- (void)removeElevationsPredating:(id)a3 handler:(id)a4;
- (void)removeInterimElevations:(id)a3 handler:(id)a4;
- (void)storeElevations:(id)a3 handler:(id)a4;
@end

@implementation RTElevationStore

- (RTElevationStore)initWithPersistenceManager:(id)a3
{
  v3 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = RTElevationStore;
    v5 = [(RTStore *)&v13 initWithPersistenceManager:?];
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
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

    v3 = v5;
    v7 = v3;
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

- (void)_storeElevations:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", &v17, 0x16u);
    }
  }

  [(RTStore *)self storeWritableObjects:v7 handler:v8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ completed", &v17, 0x16u);
    }
  }
}

- (void)storeElevations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTElevationStore_storeElevations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredElevationsWithOptions:(id)a3 handler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTElevationStore _fetchStoredElevationsWithOptions:handler:]";
      v12 = 1024;
      v13 = 65;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01300]) initWithEnumerationOptions:v6];
  [(RTElevationStore *)self _fetchStoredElevationsWithContext:v9 handler:v7];
}

- (void)fetchStoredElevationsWithOptions:(id)a3 handler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 dateInterval];

  if (v8)
  {
    v9 = [(RTNotifier *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__RTElevationStore_fetchStoredElevationsWithOptions_handler___block_invoke;
    v14[3] = &unk_2788C4500;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    dispatch_async(v9, v14);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires valid dateInterval";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:7 userInfo:v12];
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)_fetchStoredElevationsWithContext:(id)a3 handler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__RTElevationStore__fetchStoredElevationsWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v23 = v7;
    v24 = self;
    v26 = a2;
    v9 = v8;
    v25 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__RTElevationStore__fetchStoredElevationsWithContext_handler___block_invoke_10;
    block[3] = &unk_2788C8DF0;
    block[4] = self;
    v20 = v10;
    v21 = v9;
    v12 = v10;
    dispatch_async(v11, block);

    v13 = v23;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTElevationStore _fetchStoredElevationsWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 92;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"A handler is a required parameter.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
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

void __62__RTElevationStore__fetchStoredElevationsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
  v7 = objc_opt_class();
  v8 = [v6 options];
  v9 = [v7 fetchRequestFromStoredElevationOptions:v8];

  [v9 setFetchOffset:{objc_msgSend(*(a1 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412802;
      v39 = v24;
      v40 = 2048;
      v41 = [v9 fetchLimit];
      v42 = 2048;
      v43 = [v9 fetchOffset];
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: using options fetch limit, %lu, fetch offset, %lu", buf, 0x20u);
    }
  }

  v36 = 0;
  v11 = [v3 executeFetchRequest:v9 error:&v36];
  v12 = v36;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(*(a1 + 56));
      v28 = [v11 count];
      *buf = 138413314;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v9;
      v44 = 2048;
      v45 = v28;
      v46 = 2112;
      v47 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@: %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "fetchLimit")}];
  if (!v12)
  {
    v29 = a1;
    v30 = v6;
    v31 = v3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [MEMORY[0x277D010E0] createWithManagedObject:v20];
          if (v22)
          {
            [v14 addObject:v22];
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v17);
    }

    v6 = v30;
    v3 = v31;
    a1 = v29;
  }

  (*(*(a1 + 48) + 16))();
}

void __62__RTElevationStore__fetchStoredElevationsWithContext_handler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__RTElevationStore__fetchStoredElevationsWithContext_handler___block_invoke_2;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredElevationsWithContext:(id)a3 handler:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 options];
  v9 = [v8 dateInterval];

  if (!v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"requires valid dateInterval";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v13 = [v10 errorWithDomain:v11 code:7 userInfo:v12];
    v7[2](v7, 0, v13);
  }

  v14 = [(RTNotifier *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__RTElevationStore_fetchStoredElevationsWithContext_handler___block_invoke;
  v17[3] = &unk_2788C4500;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v15 = v7;
  v16 = v6;
  dispatch_async(v14, v17);
}

- (void)_removeElevationsPredating:(id)a3 handler:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
      }
    }

    v20 = @"endDate";
    v19 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    [(RTStore *)self purgePredating:v7 predicateMappings:v11 purgeLimit:5760 handler:v8];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTElevationStore _removeElevationsPredating:handler:]";
      v24 = 1024;
      LODWORD(v25) = 168;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"requires a valid date.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v13 errorWithDomain:v14 code:7 userInfo:v11];
    v8[2](v8, v15);
  }
}

- (void)removeElevationsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTElevationStore_removeElevationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_removeInterimElevations:(id)a3 handler:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__RTElevationStore__removeInterimElevations_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v21 = v7;
    v22 = self;
    v10 = v8;
    v23 = v10;
    v11 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];

    v12 = v21;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTElevationStore _removeInterimElevations:handler:]";
      v26 = 1024;
      LODWORD(v27) = 199;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"requires a valid date interval.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = [v14 errorWithDomain:v15 code:7 userInfo:v12];
    (*(v8 + 2))(v8, v16);
  }
}

void __53__RTElevationStore__removeInterimElevations_handler___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTElevationMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) startDate];
  v7 = [*(a1 + 32) endDate];
  v8 = [v5 predicateWithFormat:@"%@ =< %K AND %K =< %@ AND %K != %@", v6, @"endDate", @"endDate", v7, @"estimationStatus", &unk_28459D188];
  [v4 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v9 setResultType:2];
  v10 = *(a1 + 40);
  v12[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v10 executeDeleteRequests:v11 context:v3 handler:*(a1 + 48)];
}

- (void)removeInterimElevations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTElevationStore_removeInterimElevations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_removeElevations:(id)a3 handler:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__RTElevationStore__removeElevations_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v21 = v7;
    v22 = self;
    v10 = v8;
    v23 = v10;
    v11 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];

    v12 = v21;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTElevationStore _removeElevations:handler:]";
      v26 = 1024;
      LODWORD(v27) = 249;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"requires a valid date interval.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = [v14 errorWithDomain:v15 code:7 userInfo:v12];
    (*(v8 + 2))(v8, v16);
  }
}

void __46__RTElevationStore__removeElevations_handler___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTElevationMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) startDate];
  v7 = [*(a1 + 32) endDate];
  v8 = [v5 predicateWithFormat:@"%@ =< %K AND %K =< %@", v6, @"endDate", @"endDate", v7];
  [v4 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v9 setResultType:2];
  v10 = *(a1 + 40);
  v12[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v10 executeDeleteRequests:v11 context:v3 handler:*(a1 + 48)];
}

- (void)removeElevations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RTElevationStore_removeElevations_handler___block_invoke;
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
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    if ([v9 isEqual:objc_opt_class()])
    {
      v10 = [objc_opt_class() fetchRequestFromStoredElevationOptions:v8];
      [v10 setFetchOffset:a4];
      goto LABEL_13;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"error of type, %@, is not supported", v15];

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v17 errorWithDomain:v18 code:7 userInfo:v19];

    v21 = v20;
    *a5 = v20;

    goto LABEL_12;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  _RTErrorInvalidParameterCreate(@"options");
  *a5 = v10 = 0;
LABEL_13:

  return v10;
}

+ (id)fetchRequestFromStoredElevationOptions:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = +[RTElevationMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = MEMORY[0x277CCAC30];
    v6 = [v3 dateInterval];
    v7 = [v6 startDate];
    v8 = [v3 dateInterval];
    v9 = [v8 endDate];
    v10 = [v5 predicateWithFormat:@"%@ =< %K AND %K =< %@", v7, @"endDate", @"endDate", v9];
    [v4 setPredicate:v10];

    v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"endDate" ascending:1];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v4 setSortDescriptors:v12];

    [v4 setFetchBatchSize:100];
    if ([v3 batchSize])
    {
      v13 = [v3 batchSize];
      if (v13 >= 0xE10)
      {
        v14 = 3600;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 3600;
    }

    [v4 setFetchLimit:v14];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end