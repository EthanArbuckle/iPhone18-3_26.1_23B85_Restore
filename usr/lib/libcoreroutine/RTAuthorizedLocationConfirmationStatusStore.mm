@interface RTAuthorizedLocationConfirmationStatusStore
- (RTAuthorizedLocationConfirmationStatusStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_deleteConfirmationStatus:(id)a3;
- (void)_fetchConfirmationStatusWithContext:(id)a3 handler:(id)a4;
- (void)_fetchConfirmationStatusWithOptions:(id)a3 handler:(id)a4;
- (void)_storeConfirmationStatus:(id)a3 handler:(id)a4;
- (void)deleteConfirmationStatus:(id)a3;
- (void)fetchConfirmationStatusWithOptions:(id)a3 handler:(id)a4;
- (void)storeConfirmationStatus:(id)a3 handler:(id)a4;
@end

@implementation RTAuthorizedLocationConfirmationStatusStore

- (RTAuthorizedLocationConfirmationStatusStore)initWithPersistenceManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = RTAuthorizedLocationConfirmationStatusStore;
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

- (void)_fetchConfirmationStatusWithOptions:(id)a3 handler:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTAuthorizedLocationConfirmationStatusStore _fetchConfirmationStatusWithOptions:handler:]";
      v10 = 1024;
      v11 = 42;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v8, 0x12u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277D01070]);
  [(RTAuthorizedLocationConfirmationStatusStore *)self _fetchConfirmationStatusWithContext:v7 handler:v5];
}

- (void)fetchConfirmationStatusWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__RTAuthorizedLocationConfirmationStatusStore_fetchConfirmationStatusWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchConfirmationStatusWithContext:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__RTAuthorizedLocationConfirmationStatusStore__fetchConfirmationStatusWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = a2;
    aBlock[4] = self;
    v8 = v6;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__RTAuthorizedLocationConfirmationStatusStore__fetchConfirmationStatusWithContext_handler___block_invoke_4;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __91__RTAuthorizedLocationConfirmationStatusStore__fetchConfirmationStatusWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTAuthorizedLocationConfirmationStatusMO fetchRequest];
  [v4 setFetchBatchSize:1];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v27 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v27];
  v6 = v27;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = [v5 count];
      *buf = 138413058;
      v29 = v15;
      v30 = 2112;
      v31 = v4;
      v32 = 2048;
      v33 = v16;
      v34 = 2112;
      v35 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v6)
  {
    goto LABEL_6;
  }

  memset(v26, 0, sizeof(v26));
  v8 = v5;
  if ([v8 countByEnumeratingWithState:v26 objects:v48 count:16])
  {
    v9 = **(&v26[0] + 1);
    v10 = objc_autoreleasePoolPush();
    v11 = [RTAuthorizedLocationConfirmationStatus createWithManagedObject:v9];
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v12)
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          v25 = NSStringFromClass(v14);
          v24 = NSStringFromSelector(*(a1 + 48));
          v23 = [v11 confirmationStatus];
          v22 = [v11 confirmationStatusCode];
          v21 = [v11 confirmationStatusTime];
          v20 = [v11 zdrConfirmationStatus];
          v19 = [v11 zdrConfirmationStatusCode];
          v18 = [v11 zdrConfirmationStatusTime];
          *buf = 138414594;
          v29 = v25;
          v30 = 2112;
          v31 = v24;
          v32 = 2112;
          v33 = v9;
          v34 = 2112;
          v35 = v11;
          v36 = 2048;
          v37 = v23;
          v38 = 2048;
          v39 = v22;
          v40 = 2112;
          v41 = v21;
          v42 = 2048;
          v43 = v20;
          v44 = 2048;
          v45 = v19;
          v46 = 2112;
          v47 = v18;
          _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@ %@ invoked,result,%@,cs,%@,%ld,%ld,%@,%ld,%ld,%@", buf, 0x66u);

LABEL_19:
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v25 = NSStringFromClass(v17);
        v24 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412802;
        v29 = v25;
        v30 = 2112;
        v31 = v24;
        v32 = 2112;
        v33 = v9;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@ %@ invoked,result,%@,cs nil", buf, 0x20u);
        goto LABEL_19;
      }

LABEL_15:
    }

    (*(*(a1 + 40) + 16))();

    objc_autoreleasePoolPop(v10);
    goto LABEL_17;
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
LABEL_17:
}

- (void)_storeConfirmationStatus:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = [v7 description];
        v18 = 138412802;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@:%@,%@", &v18, 0x20u);
      }
    }

    [(RTStore *)self storeWritableObjects:v9 handler:v8];
LABEL_10:

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@:%@ Status nil", &v18, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)storeConfirmationStatus:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@:%@,status,%@", buf, 0x20u);
    }
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTAuthorizedLocationConfirmationStatusStore storeConfirmationStatus:handler:]";
      v22 = 1024;
      LODWORD(v23) = 123;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: status (in %s:%d)", buf, 0x12u);
    }
  }

  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTAuthorizedLocationConfirmationStatusStore_storeConfirmationStatus_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v18 = v7;
  v19 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

- (void)deleteConfirmationStatus:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RTAuthorizedLocationConfirmationStatusStore_deleteConfirmationStatus___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_deleteConfirmationStatus:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  v11 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(RTStore *)self removeAll:v7 handler:v5];
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Auth Location comfirmation status error";
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