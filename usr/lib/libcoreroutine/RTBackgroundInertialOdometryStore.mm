@interface RTBackgroundInertialOdometryStore
- (RTBackgroundInertialOdometryStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)fetchRequestFromStoredBackgroundInertialOdometrySampleOptions:(id)a3;
- (void)_fetchStoredBackgroundInertialOdometrySamplesWithContext:(id)a3 handler:(id)a4;
- (void)_fetchStoredBackgroundInertialOdometrySamplesWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeBackgroundInertialOdometrySamplesPredating:(id)a3 handler:(id)a4;
- (void)fetchStoredBackgroundInertialOdometrySamplesWithContext:(id)a3 handler:(id)a4;
- (void)fetchStoredBackgroundInertialOdometrySamplesWithOptions:(id)a3 handler:(id)a4;
- (void)purgeBackgroundInertialOdometrySamplesPredating:(id)a3 handler:(id)a4;
- (void)storeBackgroundInertialOdometrySamples:(id)a3 handler:(id)a4;
@end

@implementation RTBackgroundInertialOdometryStore

- (RTBackgroundInertialOdometryStore)initWithPersistenceManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTBackgroundInertialOdometryStore;
  v4 = [(RTStore *)&v10 initWithPersistenceManager:a3];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
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

- (void)storeBackgroundInertialOdometrySamples:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RTBackgroundInertialOdometryStore_storeBackgroundInertialOdometrySamples_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredBackgroundInertialOdometrySamplesWithContext:(id)a3 handler:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
LABEL_3:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __102__RTBackgroundInertialOdometryStore__fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke;
      aBlock[3] = &unk_2788C4898;
      v24 = v6;
      v9 = v8;
      v25 = v9;
      v10 = _Block_copy(aBlock);
      v11 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__RTBackgroundInertialOdometryStore__fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke_2;
      block[3] = &unk_2788C8DF0;
      block[4] = self;
      v21 = v10;
      v22 = v9;
      v12 = v10;
      dispatch_async(v11, block);

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
      v27 = "[RTBackgroundInertialOdometryStore _fetchStoredBackgroundInertialOdometrySamplesWithContext:handler:]";
      v28 = 1024;
      LODWORD(v29) = 64;
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
    v27 = "[RTBackgroundInertialOdometryStore _fetchStoredBackgroundInertialOdometrySamplesWithContext:handler:]";
    v28 = 1024;
    LODWORD(v29) = 65;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  v30 = *MEMORY[0x277CCA450];
  v31[0] = @"A handler is a required parameter.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];
  v17 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
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

void __102__RTBackgroundInertialOdometryStore__fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v37 = a2;
  v3 = +[RTBackgroundInertialOdometrySampleMO fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"cfAbsTimestamp" ascending:1];
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
  v11 = [v7 predicateWithFormat:@"%@ <= %K", v10, @"cfAbsTimestamp"];
  v44[0] = v11;
  v12 = MEMORY[0x277CCAC30];
  v13 = [*(v8 + 32) options];
  v14 = [v13 dateInterval];
  v15 = [v14 endDate];
  v16 = [v12 predicateWithFormat:@"%K <= %@", @"cfAbsTimestamp", v15];
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
          v32 = [MEMORY[0x277CBFBB0] createWithManagedObject:v30];
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

void __102__RTBackgroundInertialOdometryStore__fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__RTBackgroundInertialOdometryStore__fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredBackgroundInertialOdometrySamplesWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__RTBackgroundInertialOdometryStore_fetchStoredBackgroundInertialOdometrySamplesWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredBackgroundInertialOdometrySamplesWithOptions:(id)a3 handler:(id)a4
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
      v11 = "[RTBackgroundInertialOdometryStore _fetchStoredBackgroundInertialOdometrySamplesWithOptions:handler:]";
      v12 = 1024;
      v13 = 130;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01098]) initWithEnumerationOptions:v6];
  [(RTBackgroundInertialOdometryStore *)self _fetchStoredBackgroundInertialOdometrySamplesWithContext:v9 handler:v7];
}

- (void)fetchStoredBackgroundInertialOdometrySamplesWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__RTBackgroundInertialOdometryStore_fetchStoredBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgeBackgroundInertialOdometrySamplesPredating:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v15 = @"cfAbsTimestamp";
    v7 = a4;
    v14 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v9 purgeLimit:7200 handler:v7];
  }

  else
  {
    v10 = a4;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTBackgroundInertialOdometryStore _purgeBackgroundInertialOdometrySamplesPredating:handler:]";
      v21 = 1024;
      v22 = 151;
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

- (void)purgeBackgroundInertialOdometrySamplesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__RTBackgroundInertialOdometryStore_purgeBackgroundInertialOdometrySamplesPredating_handler___block_invoke;
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
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!a5)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v8)
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
      *a5 = v18;

LABEL_8:
      v21 = 0;
      goto LABEL_13;
    }

    v21 = [(RTBackgroundInertialOdometryStore *)self fetchRequestFromStoredBackgroundInertialOdometrySampleOptions:v9];
    [v21 setFetchOffset:a4];
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
    *a5 = v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)fetchRequestFromStoredBackgroundInertialOdometrySampleOptions:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = +[RTBackgroundInertialOdometrySampleMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"cfAbsTimestamp" ascending:1];
    v27[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v4 setSortDescriptors:v6];

    v7 = [v3 dateInterval];
    v8 = [v7 startDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v11 = v10;

    v12 = [v3 dateInterval];
    v13 = [v12 endDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v16 = v15;

    v17 = [MEMORY[0x277CBEB18] array];
    v18 = MEMORY[0x277CCA920];
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", v11, @"cfAbsTimestamp"];
    v26[0] = v19;
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"cfAbsTimestamp", v16];
    v26[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v22 = [v18 andPredicateWithSubpredicates:v21];

    [v17 addObject:v22];
    v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v17];
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