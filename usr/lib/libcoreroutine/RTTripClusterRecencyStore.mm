@interface RTTripClusterRecencyStore
+ (id)_predicateForClusterID:(id)a3;
- (BOOL)deleteTripClusterRecencyPredating:(id)a3;
- (BOOL)deleteTripClusterRecencyWithClusterID:(id)a3;
- (RTTripClusterRecencyStore)initWithPersistenceManager:(id)a3;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6;
- (id)fetchRequestFromStoredTripClusterRecencyOptions:(id)a3 inManagedObjectContext:(id)a4;
- (id)getTripClusterRecencyWithOptions:(id)a3;
- (void)_deleteTripClusterRecencyPredating:(id)a3 handler:(id)a4;
- (void)_deleteTripClusterRecencyWithClusterID:(id)a3 handler:(id)a4;
- (void)_fetchClusterRecencyCountForClusterID:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRecencyWithContext:(id)a3 handler:(id)a4;
- (void)_fetchTripClusterRecencyWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeTripClusterRecencyWithHandler:(id)a3;
- (void)_storeTripClusterRecency:(id)a3 handler:(id)a4;
- (void)deleteTripClusterRecencyPredating:(id)a3 handler:(id)a4;
- (void)deleteTripClusterRecencyWithClusterID:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRecencyWithContext:(id)a3 handler:(id)a4;
- (void)fetchTripClusterRecencyWithOptions:(id)a3 handler:(id)a4;
- (void)purgeTripClusterRecencyWithHandler:(id)a3;
- (void)storeTripClusterRecency:(id)a3;
- (void)storeTripClusterRecency:(id)a3 handler:(id)a4;
@end

@implementation RTTripClusterRecencyStore

- (RTTripClusterRecencyStore)initWithPersistenceManager:(id)a3
{
  v3 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterRecencyStore;
    v5 = [(RTStore *)&v13 initWithPersistenceManager:?];
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
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

- (void)_storeTripClusterRecency:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__RTTripClusterRecencyStore__storeTripClusterRecency_handler___block_invoke;
  v8[3] = &unk_2788C4F60;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(RTStore *)self storeWritableObjects:a3 handler:v8];
}

void __62__RTTripClusterRecencyStore__storeTripClusterRecency_handler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v3 localizedDescription];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@,Error storing trip cluster recency,%@", &v9, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)storeTripClusterRecency:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterRecencyStore storeTripClusterRecency:handler:]";
      v17 = 1024;
      v18 = 70;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterRecencys (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTTripClusterRecencyStore_storeTripClusterRecency_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)storeTripClusterRecency:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = dispatch_semaphore_create(0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__RTTripClusterRecencyStore_storeTripClusterRecency___block_invoke;
    v29[3] = &unk_2788C7E48;
    v29[4] = self;
    v6 = v5;
    v30 = v6;
    [(RTTripClusterRecencyStore *)self storeTripClusterRecency:v4 handler:v29];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v8];
      v11 = v10;
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_120];
      v14 = [MEMORY[0x277CCACC8] callStackSymbols];
      v15 = [v14 filteredArrayUsingPredicate:v13];
      v16 = [v15 firstObject];

      [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v34[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v34 count:1];
      v21 = [v18 errorWithDomain:v19 code:15 userInfo:v20];

      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = v21;
    if (v23)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v23 localizedDescription];
        *buf = 138412546;
        *&buf[4] = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore Error updating cluster recency,error,%@", buf, 0x16u);
      }
    }
  }
}

void __53__RTTripClusterRecencyStore_storeTripClusterRecency___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 localizedDescription];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error storing cluster recency,error,%@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_fetchClusterRecencyCountForClusterID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTTripClusterRecencyStore__fetchClusterRecencyCountForClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v13 = v6;
    v8 = v7;
    v14 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__RTTripClusterRecencyStore__fetchClusterRecencyCountForClusterID_handler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __75__RTTripClusterRecencyStore__fetchClusterRecencyCountForClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTTripClusterRecencyMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchTripClusterRecencyWithOptions:(id)a3 handler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[RTTripClusterRecencyStore _fetchTripClusterRecencyWithOptions:handler:]";
    v13 = 1024;
    v14 = 132;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v11, 0x12u);
  }

  if (!v6)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTTripClusterRecencyStore _fetchTripClusterRecencyWithOptions:handler:]";
      v13 = 1024;
      v14 = 133;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", &v11, 0x12u);
    }
  }

LABEL_10:
  v10 = [objc_alloc(MEMORY[0x277D01380]) initWithEnumerationOptions:v6];
  [(RTTripClusterRecencyStore *)self _fetchTripClusterRecencyWithContext:v10 handler:v7];
}

- (void)fetchTripClusterRecencyWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTTripClusterRecencyStore_fetchTripClusterRecencyWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchTripClusterRecencyWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTTripClusterRecencyStore_fetchTripClusterRecencyWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)getTripClusterRecencyWithOptions:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__143;
  v45 = __Block_byref_object_dispose__143;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __62__RTTripClusterRecencyStore_getTripClusterRecencyWithOptions___block_invoke;
  v36 = &unk_2788C4870;
  v37 = self;
  v6 = v4;
  v38 = v6;
  v40 = &v41;
  v7 = v5;
  v39 = v7;
  [(RTTripClusterRecencyStore *)self fetchTripClusterRecencyWithOptions:v6 handler:&v33];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_120];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v52[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v6 clusterID];
      v31 = [v30 UUIDString];
      v32 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v29;
      v48 = 2112;
      v49 = v31;
      v50 = 2112;
      v51 = v32;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error fetching Recencys for cluster with cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v26 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v26;
}

void __62__RTTripClusterRecencyStore_getTripClusterRecencyWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [*(a1 + 40) clusterID];
      v12 = [v11 UUIDString];
      v13 = [v6 localizedDescription];
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@,Error fetching Recencys for cluster with cluster ID,%@,error,%@", &v14, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_fetchTripClusterRecencyWithContext:(id)a3 handler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    aBlock[4] = self;
    v8 = v6;
    v25 = v8;
    v9 = v7;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke_38;
    block[3] = &unk_2788C4F88;
    block[4] = self;
    v21 = v8;
    v22 = v10;
    v23 = v9;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTTripClusterRecencyStore _fetchTripClusterRecencyWithContext:handler:]";
      v29 = 1024;
      LODWORD(v30) = 188;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Handler is a required parameter.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v15 localizedDescription];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,Error,%@", buf, 0x16u);
      }
    }
  }
}

void __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v40 = a1;
  v5 = [*(a1 + 40) options];
  v6 = [v4 fetchRequestFromStoredTripClusterRecencyOptions:v5 inManagedObjectContext:v3];

  v7 = [v6 predicate];

  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v48 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetch predicate is missing!", buf, 0xCu);
    }
  }

  v45 = 0;
  v11 = [v3 executeFetchRequest:v6 error:&v45];
  v12 = v45;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v11 count];
      *buf = 138412802;
      v48 = v15;
      v49 = 2048;
      v50 = v16;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@,Fetch results,count,%lu,error,%@", buf, 0x20u);
    }
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  if (!v12)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = v11;
    v22 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = v11;
      v38 = v6;
      v39 = v3;
      v24 = *v42;
      v25 = off_2788C2000;
      v26 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          v29 = objc_autoreleasePoolPush();
          v30 = [*v25 createWithManagedObject:v28];
          if (v30)
          {
            [v17 addObject:v30];
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = objc_opt_class();
              NSStringFromClass(v32);
              v33 = v17;
              v34 = v18;
              v36 = v35 = v26;
              *buf = 138412290;
              v48 = v36;
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@,Error creating RTTripClusterRecency from recencyMO", buf, 0xCu);

              v26 = v35;
              v18 = v34;
              v17 = v33;
              v25 = off_2788C2000;
            }
          }

          objc_autoreleasePoolPop(v29);
        }

        v23 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v23);
      v6 = v38;
      v3 = v39;
      v11 = v37;
      v12 = 0;
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v12 localizedDescription];
      *buf = 138412546;
      v48 = v20;
      v49 = 2112;
      v50 = v21;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@,Error during fetch,%@", buf, 0x16u);
    }

LABEL_28:
  }

  (*(*(v40 + 48) + 16))();
}

void __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke_38(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [*(a1 + 40) options];
      v6 = [v5 clusterID];
      v7 = [v6 UUIDString];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Dispatching fetch block for clusterID,%@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke_39;
  v10[3] = &unk_2788C4F60;
  v10[4] = v8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v8 _performBlock:v9 contextType:1 errorHandler:v10];
}

void __73__RTTripClusterRecencyStore__fetchTripClusterRecencyWithContext_handler___block_invoke_39(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 localizedDescription];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error performing fetch block,%@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (!a5)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v13 stringWithFormat:@"error of type, %@, is not supported", v15];

      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v20 = [v17 errorWithDomain:v18 code:7 userInfo:v19];

      v21 = v20;
      *a5 = v20;

LABEL_8:
      v23 = 0;
      goto LABEL_13;
    }

    v23 = [(RTTripClusterRecencyStore *)self fetchRequestFromStoredTripClusterRecencyOptions:v10 inManagedObjectContext:v11];
    [v23 setFetchOffset:a4];
    *a5 = 0;
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v23 = 0;
  }

LABEL_13:

  return v23;
}

- (id)fetchRequestFromStoredTripClusterRecencyOptions:(id)a3 inManagedObjectContext:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[RTTripClusterRecencyMO fetchRequest];
    [v7 setReturnsObjectsAsFaults:0];
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startTime" ascending:1];
    v24[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v7 setSortDescriptors:v9];

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [v5 clusterID];

    if (v11)
    {
      v12 = MEMORY[0x277CCAC30];
      v13 = [v5 clusterID];
      v14 = [v12 predicateWithFormat:@"clusterID == %@", v13];

      [v10 addObject:v14];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412290;
        v23 = v20;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Error,missing clusterID in options. This will fetch all clusters", buf, 0xCu);
      }
    }

LABEL_5:
    v15 = [RTTripClusterDeviceHelper currentDevicePredicateWithPropertyName:@"device" inManagedObjectContext:v6];
    if (v15)
    {
      [v10 addObject:v15];
    }

    v16 = +[RTCloudManagedObject notTombstonedPredicate];
    [v10 addObject:v16];
    if ([v10 count])
    {
      v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
      [v7 setPredicate:v17];
    }

    if ([v5 batchSize])
    {
      v18 = [v5 batchSize];
    }

    else
    {
      v18 = 3600;
    }

    [v7 setFetchLimit:v18];

    goto LABEL_19;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  v7 = 0;
LABEL_19:

  return v7;
}

+ (id)_predicateForClusterID:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_deleteTripClusterRecencyWithClusterID:(id)a3 handler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[RTTripClusterRecencyStore _deleteTripClusterRecencyWithClusterID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 326;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterRecencyStore _deleteTripClusterRecencyWithClusterID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 327;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@ %@ invoked", buf, 0x16u);
    }
  }

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__RTTripClusterRecencyStore__deleteTripClusterRecencyWithClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v23 = v7;
    v25 = a2;
    v13 = v9;
    v24 = v13;
    v14 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v14 contextType:0 errorHandler:v13];

    v15 = v23;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"requires a non-nil uuid.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

    if (v9)
    {
      (v9)[2](v9, v15);
    }
  }
}

void __76__RTTripClusterRecencyStore__deleteTripClusterRecencyWithClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterRecencyMO"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"clusterID", *(a1 + 32)];
  [v5 setPredicate:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:2];
  v13 = 0;
  v8 = [v4 executeRequest:v7 error:&v13];

  v9 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [v8 result];
      *buf = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,request,%@,deleted count,%@,error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteTripClusterRecencyWithClusterID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTTripClusterRecencyStore_deleteTripClusterRecencyWithClusterID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)deleteTripClusterRecencyWithClusterID:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__143;
  v45 = __Block_byref_object_dispose__143;
  v46 = 0;
  v5 = dispatch_semaphore_create(0);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __67__RTTripClusterRecencyStore_deleteTripClusterRecencyWithClusterID___block_invoke;
  v38 = &unk_2788C4618;
  v40 = &v41;
  v6 = v5;
  v39 = v6;
  [(RTTripClusterRecencyStore *)self deleteTripClusterRecencyWithClusterID:v4 handler:&v35];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_120];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v52[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v4 UUIDString];
      v28 = [v23 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v26;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error deleting Cluster Recency for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!v42[5])
    {
      v29 = 1;
      goto LABEL_14;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v4 UUIDString];
      v34 = [v42[5] localizedDescription];
      *buf = 138412802;
      *&buf[4] = v32;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Error deleting Cluster Recency for cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v29 = 0;
LABEL_14:

  _Block_object_dispose(&v41, 8);
  return v29;
}

void __67__RTTripClusterRecencyStore_deleteTripClusterRecencyWithClusterID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_deleteTripClusterRecencyPredating:(id)a3 handler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[RTTripClusterRecencyStore _deleteTripClusterRecencyPredating:handler:]";
    v30 = 1024;
    LODWORD(v31) = 409;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterRecencyStore _deleteTripClusterRecencyPredating:handler:]";
      v30 = 1024;
      LODWORD(v31) = 410;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateFormat:@"YYYY-MM-dd"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v22 = [v12 stringFromDate:v7];
      *buf = 138412802;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@ %@ invoked for date,%@", buf, 0x20u);
    }
  }

  if (v7)
  {
    v24 = @"startTime";
    v23 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v25 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    [(RTStore *)self purgePredating:v7 predicateMappings:v15 handler:v9];
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"requires a valid date.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

    if (v9)
    {
      (v9)[2](v9, v15);
    }
  }
}

- (void)deleteTripClusterRecencyPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTTripClusterRecencyStore_deleteTripClusterRecencyPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)deleteTripClusterRecencyPredating:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"YYYY-MM-dd"];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__143;
  v44 = __Block_byref_object_dispose__143;
  v45 = 0;
  v6 = dispatch_semaphore_create(0);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __63__RTTripClusterRecencyStore_deleteTripClusterRecencyPredating___block_invoke;
  v37[3] = &unk_2788C4618;
  v39 = &v40;
  v7 = v6;
  v38 = v7;
  v36 = v4;
  [(RTTripClusterRecencyStore *)self deleteTripClusterRecencyPredating:v4 handler:v37];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_120];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v51[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v51 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v5 stringFromDate:v36];
      v29 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore error deleting Cluster Recency Predating,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!v41[5])
    {
      v30 = 1;
      goto LABEL_14;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v5 stringFromDate:v36];
      v35 = [v41[5] localizedDescription];
      *buf = 138412802;
      *&buf[4] = v33;
      v47 = 2112;
      v48 = v34;
      v49 = 2112;
      v50 = v35;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error deleting Cluster Recency Predating,%@,error,%@", buf, 0x20u);
    }
  }

  v30 = 0;
LABEL_14:

  _Block_object_dispose(&v40, 8);
  return v30;
}

void __63__RTTripClusterRecencyStore_deleteTripClusterRecencyPredating___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClusterRecencyWithHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
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

- (void)purgeTripClusterRecencyWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTTripClusterRecencyStore_purgeTripClusterRecencyWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end