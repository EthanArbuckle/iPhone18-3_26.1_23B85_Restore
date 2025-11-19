@interface RTTripClusterStore
+ (id)_predicateForClusterID:(id)a3;
+ (id)_predicateForCommuteID:(id)a3;
- (BOOL)deleteTripClusterWithCommuteID:(id)a3;
- (BOOL)deleteTripClusterWithUUID:(id)a3;
- (RTTripClusterStore)initWithPersistenceManager:(id)a3;
- (id)_predicateForEndVisitLocation:(double)a3 endLongitude:(double)a4;
- (id)_predicateForStartVisitLocation:(double)a3 startLongitude:(double)a4;
- (id)_predicateForVisitLocation:(double)a3 longitude:(double)a4 entityNameLatitude:(id)a5 entityNameLongitude:(id)a6;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5 inManagedObjectContext:(id)a6;
- (id)fetchRequestFromStoredTripClustersOptions:(id)a3 inManagedObjectContext:(id)a4;
- (id)getTripClustersWithOptions:(id)a3;
- (void)_deleteTripClusterWithCommuteID:(id)a3 handler:(id)a4;
- (void)_deleteTripClusterWithUUID:(id)a3 handler:(id)a4;
- (void)_fetchTraversedCountForClusterID:(id)a3 handler:(id)a4;
- (void)_fetchTripClustersWithContext:(id)a3 handler:(id)a4;
- (void)_fetchTripClustersWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeTripClustersWithHandler:(id)a3;
- (void)_storeTripCluster:(id)a3 handler:(id)a4;
- (void)_updateTripClusterLockStatusWithPredicate:(id)a3 isLocked:(BOOL)a4 handler:(id)a5;
- (void)_updateTripClusterWithPredicate:(id)a3 tripCluster:(id)a4 handler:(id)a5;
- (void)deleteTripClusterWithCommuteID:(id)a3 handler:(id)a4;
- (void)deleteTripClusterWithUUID:(id)a3 handler:(id)a4;
- (void)fetchTripClustersWithContext:(id)a3 handler:(id)a4;
- (void)fetchTripClustersWithOptions:(id)a3 handler:(id)a4;
- (void)purgeTripClustersWithHandler:(id)a3;
- (void)storeTripClusters:(id)a3;
- (void)storeTripClusters:(id)a3 handler:(id)a4;
- (void)updateLockStatusForClusterId:(id)a3 isLocked:(BOOL)a4;
- (void)updateLockStatusForClusterId:(id)a3 isLocked:(BOOL)a4 handler:(id)a5;
- (void)updateTripCluster:(id)a3 handler:(id)a4;
@end

@implementation RTTripClusterStore

- (RTTripClusterStore)initWithPersistenceManager:(id)a3
{
  v3 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = RTTripClusterStore;
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

- (void)_storeTripCluster:(id)a3 handler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v15 = v10;
      v16 = 2048;
      v17 = [v6 count];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Storing trip clusters,Count,%lu", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__RTTripClusterStore__storeTripCluster_handler___block_invoke;
  v12[3] = &unk_2788C4F60;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(RTStore *)self storeWritableObjects:v6 handler:v12];
}

void __48__RTTripClusterStore__storeTripCluster_handler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 localizedDescription];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Error storing trip clusters,%@", &v9, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)storeTripClusters:(id)a3 handler:(id)a4
{
  v89[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v51 = a4;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v85 = 136315394;
      *&v85[4] = "[RTTripClusterStore storeTripClusters:handler:]";
      *&v85[12] = 1024;
      *&v85[14] = 80;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusters (in %s:%d)", v85, 0x12u);
    }
  }

  v57 = dispatch_semaphore_create(0);
  *v85 = 0;
  *&v85[8] = v85;
  *&v85[16] = 0x3032000000;
  v86 = __Block_byref_object_copy__172;
  v87 = __Block_byref_object_dispose__172;
  v88 = 0;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
  v8 = 0;
  if (v7)
  {
    v56 = *v74;
    v52 = *MEMORY[0x277D01448];
    v53 = *MEMORY[0x277CCA450];
LABEL_7:
    v9 = 0;
    v10 = v8;
    v55 = v7;
    while (1)
    {
      if (*v74 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v59 = *(*(&v73 + 1) + 8 * v9);
      context = objc_autoreleasePoolPush();
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v11 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__RTTripClusterStore_storeTripClusters_handler___block_invoke;
      block[3] = &unk_2788D1B80;
      block[4] = self;
      block[5] = v59;
      v67 = v85;
      v68 = &v69;
      v12 = v57;
      v66 = v12;
      dispatch_async(v11, block);

      v13 = v12;
      v14 = [MEMORY[0x277CBEAA8] now];
      v15 = dispatch_time(0, 3600000000000);
      v16 = v10;
      if (dispatch_semaphore_wait(v13, v15))
      {
        v17 = [MEMORY[0x277CBEAA8] now];
        [v17 timeIntervalSinceDate:v14];
        v19 = v18;
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
        v22 = [MEMORY[0x277CCACC8] callStackSymbols];
        v23 = [v22 filteredArrayUsingPredicate:v21];
        v24 = [v23 firstObject];

        [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
        v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v26 = MEMORY[0x277CCA9B8];
        v89[0] = v53;
        *buf = @"semaphore wait timeout";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v89 count:1];
        v28 = [v26 errorWithDomain:v52 code:15 userInfo:v27];

        v16 = v10;
        if (v28)
        {
          v29 = v28;

          v16 = v28;
        }
      }

      v8 = v16;
      if (v8 || *(*&v85[8] + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = [v59 clusterID];
            v34 = [v33 UUIDString];
            v35 = *(*&v85[8] + 40);
            *buf = 138413058;
            *&buf[4] = v32;
            v78 = 2112;
            v79 = v34;
            v80 = 2112;
            v81 = v8;
            v82 = 2112;
            v83 = v35;
            _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@,Error during traversal count fetch for Cluster ID,%@,semaError,%@,fetchError,%@", buf, 0x2Au);
          }
        }

        v36 = 0;
      }

      else
      {
        if (v70[3])
        {
          v37 = [(RTNotifier *)self queue];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_85;
          v63[3] = &unk_2788C4500;
          v63[4] = self;
          v63[5] = v59;
          v64 = v51;
          dispatch_async(v37, v63);
        }

        else
        {
          v38 = [(RTNotifier *)self queue];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_86;
          v61[3] = &unk_2788C4500;
          v61[4] = self;
          v61[5] = v59;
          v62 = v51;
          dispatch_async(v38, v61);
        }

        v36 = 1;
      }

      _Block_object_dispose(&v69, 8);
      objc_autoreleasePoolPop(context);
      if (!v36)
      {
        break;
      }

      ++v9;
      v10 = v8;
      if (v55 == v9)
      {
        v7 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
        if (v7)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v39 = [MEMORY[0x277CBEB18] array];
  if (v51 && v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [v8 localizedDescription];
        *buf = 138412546;
        *&buf[4] = v42;
        v78 = 2112;
        v79 = v43;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@,Semaphore error during store operation,%@", buf, 0x16u);
      }
    }

    [v39 addObject:v8];
  }

  else if (v51)
  {
    v44 = *(*&v85[8] + 40);
    if (v44)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = [*(*&v85[8] + 40) localizedDescription];
          *buf = 138412546;
          *&buf[4] = v47;
          v78 = 2112;
          v79 = v48;
          _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@,Cluster fetch error during store operation,%@", buf, 0x16u);
        }

        v44 = *(*&v85[8] + 40);
      }

      [v39 addObject:v44];
      v49 = _RTSafeArray();
      v50 = _RTMultiErrorCreate();
    }
  }

  _Block_object_dispose(v85, 8);
}

void __48__RTTripClusterStore_storeTripClusters_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clusterID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6[2] = __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_2;
  v6[3] = &unk_2788D1B58;
  v9 = *(a1 + 64);
  v4 = v5;
  v8 = v5;
  [v2 _fetchTraversedCountForClusterID:v3 handler:v6];
}

void __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [*(a1 + 40) clusterID];
        v11 = [v10 UUIDString];
        v12 = [v6 localizedDescription];
        v15 = 138412802;
        v16 = v9;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error fetching traversal count for Cluster ID,%@,%@", &v15, 0x20u);

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        v10 = [*(a1 + 40) clusterID];
        v11 = [v10 UUIDString];
        v14 = *(*(*(a1 + 64) + 8) + 24);
        v15 = 138412802;
        v16 = v9;
        v17 = 2112;
        v18 = v11;
        v19 = 2048;
        v20 = v14;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Cluster ID,%@,Existing traversal count,%lu", &v15, 0x20u);
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_85(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [*(a1 + 40) clusterID];
      v6 = [v5 UUIDString];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Updating existing cluster,ID,%@", &v8, 0x16u);
    }
  }

  return [*(a1 + 32) updateTripCluster:*(a1 + 40) handler:*(a1 + 48)];
}

void __48__RTTripClusterStore_storeTripClusters_handler___block_invoke_86(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [*(a1 + 40) clusterID];
      v6 = [v5 UUIDString];
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Storing new cluster,ID,%@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v7 _storeTripCluster:v8 handler:*(a1 + 48)];
}

- (void)storeTripClusters:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = dispatch_semaphore_create(0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__RTTripClusterStore_storeTripClusters___block_invoke;
    v29[3] = &unk_2788C7E48;
    v29[4] = self;
    v6 = v5;
    v30 = v6;
    [(RTTripClusterStore *)self storeTripClusters:v4 handler:v29];
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v8];
      v11 = v10;
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
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
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore Error updating clusters,error,%@", buf, 0x16u);
      }
    }
  }
}

void __40__RTTripClusterStore_storeTripClusters___block_invoke(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error updating clusters,error,%@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)updateLockStatusForClusterId:(id)a3 isLocked:(BOOL)a4 handler:(id)a5
{
  v67[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v63 = 136315394;
      *&v63[4] = "[RTTripClusterStore updateLockStatusForClusterId:isLocked:handler:]";
      *&v63[12] = 1024;
      *&v63[14] = 164;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID (in %s:%d)", v63, 0x12u);
    }
  }

  v10 = dispatch_semaphore_create(0);
  *v63 = 0;
  *&v63[8] = v63;
  *&v63[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__172;
  v65 = __Block_byref_object_dispose__172;
  v66 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke;
  block[3] = &unk_2788D1B80;
  block[4] = self;
  v42 = v7;
  v48 = v42;
  v50 = v63;
  v51 = &v52;
  v12 = v10;
  v49 = v12;
  dispatch_async(v11, block);

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
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
    v67[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v67 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  if (!v29 && !*(*&v63[8] + 40))
  {
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v42 UUIDString];
      v34 = *(*&v63[8] + 40);
      *buf = 138413058;
      *&buf[4] = v32;
      v57 = 2112;
      v58 = v33;
      v59 = 2112;
      v60 = v29;
      v61 = 2112;
      v62 = v34;
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@,Error during traversal count fetch for Cluster ID,%@,semaError,%@,fetchError,%@", buf, 0x2Au);
    }
  }

  if (v8)
  {
    v35 = _RTSafeArray();
    v36 = _RTMultiErrorCreate();
    v8[2](v8, v36);
  }

  else
  {
LABEL_27:
    if (v53[3])
    {
      v37 = [(RTNotifier *)self queue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke_88;
      v43[3] = &unk_2788C4690;
      v43[4] = self;
      v44 = v42;
      v46 = a4;
      v45 = v8;
      dispatch_async(v37, v43);
    }

    else
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@,Error trying to lock non-existent cluster", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v63, 8);
}

void __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke_2;
  v4[3] = &unk_2788D1B58;
  v7 = *(a1 + 56);
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _fetchTraversedCountForClusterID:v5 handler:v4];
}

void __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [*(a1 + 40) UUIDString];
        v11 = [v6 localizedDescription];
        v12 = 138412802;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Error fetching traversal count for Cluster ID,%@,%@", &v12, 0x20u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __68__RTTripClusterStore_updateLockStatusForClusterId_isLocked_handler___block_invoke_88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _predicateForClusterID:*(a1 + 40)];
  [v2 _updateTripClusterLockStatusWithPredicate:v3 isLocked:*(a1 + 56) handler:*(a1 + 48)];
}

- (void)updateLockStatusForClusterId:(id)a3 isLocked:(BOOL)a4
{
  v4 = a4;
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterStore updateLockStatusForClusterId:isLocked:]";
      v35 = 1024;
      LODWORD(v36) = 209;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterID (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = dispatch_semaphore_create(0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __60__RTTripClusterStore_updateLockStatusForClusterId_isLocked___block_invoke;
  v32[3] = &unk_2788C7E48;
  v32[4] = self;
  v9 = v8;
  v33 = v9;
  [(RTTripClusterStore *)self updateLockStatusForClusterId:v6 isLocked:v4 handler:v32];
  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D01448];
    v37[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v37 count:1];
    v25 = [v22 errorWithDomain:v23 code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = v25;
  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v27 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v30;
      v35 = 2112;
      v36 = v31;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@,Semaphore Error locking clusters,error,%@", buf, 0x16u);
    }
  }
}

void __60__RTTripClusterStore_updateLockStatusForClusterId_isLocked___block_invoke(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error locking clusters,error,%@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_fetchTraversedCountForClusterID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__RTTripClusterStore__fetchTraversedCountForClusterID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v13 = v6;
    v8 = v7;
    v14 = v8;
    v9 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__RTTripClusterStore__fetchTraversedCountForClusterID_handler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v11 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v10];
  }
}

void __63__RTTripClusterStore__fetchTraversedCountForClusterID_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTTripClusterMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v7 = 0;
  [v3 countForFetchRequest:v4 error:&v7];

  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchTripClustersWithOptions:(id)a3 handler:(id)a4
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
    v12 = "[RTTripClusterStore _fetchTripClustersWithOptions:handler:]";
    v13 = 1024;
    v14 = 261;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v11, 0x12u);
  }

  if (!v6)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTTripClusterStore _fetchTripClustersWithOptions:handler:]";
      v13 = 1024;
      v14 = 262;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", &v11, 0x12u);
    }
  }

LABEL_10:
  v10 = [objc_alloc(MEMORY[0x277D01360]) initWithEnumerationOptions:v6];
  [(RTTripClusterStore *)self _fetchTripClustersWithContext:v10 handler:v7];
}

- (void)fetchTripClustersWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTripClusterStore_fetchTripClustersWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)getTripClustersWithOptions:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__172;
  v37 = __Block_byref_object_dispose__172;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__RTTripClusterStore_getTripClustersWithOptions___block_invoke;
  v30[3] = &unk_2788C5330;
  v30[4] = self;
  v32 = &v33;
  v6 = v5;
  v31 = v6;
  [(RTTripClusterStore *)self fetchTripClustersWithOptions:v4 handler:v30];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
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
    v42[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:1];
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
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v23 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v28;
      v40 = 2112;
      v41 = v29;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error fetching clusters with options,error,%@", buf, 0x16u);
    }
  }

  v25 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v25;
}

void __49__RTTripClusterStore_getTripClustersWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v6 localizedDescription];
      v12 = [v6 localizedDescription];
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@,Error fetching clusters with options,%@,error,%@", &v13, 0x20u);
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

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)fetchTripClustersWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTripClusterStore_fetchTripClustersWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchTripClustersWithContext:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTripClusterStore _fetchTripClustersWithContext:handler:]";
      v21 = 1024;
      v22 = 319;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__RTTripClusterStore__fetchTripClustersWithContext_handler___block_invoke;
  aBlock[3] = &unk_2788C4F38;
  v16 = v6;
  v17 = self;
  v9 = v7;
  v18 = v9;
  v10 = v6;
  v11 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__RTTripClusterStore__fetchTripClustersWithContext_handler___block_invoke_98;
  v13[3] = &unk_2788C4F60;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v13];
}

void __60__RTTripClusterStore__fetchTripClustersWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
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
  v7 = *(a1 + 40);
  v8 = [v5 options];
  v9 = [v7 fetchRequestFromStoredTripClustersOptions:v8 inManagedObjectContext:v3];

  v40 = 0;
  v10 = [v3 executeFetchRequest:v9 error:&v40];
  v11 = v40;
  if (v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v11 localizedDescription];
      *buf = 138412546;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@,Fetch request failed: %@", buf, 0x16u);
    }

    (*(*(v35 + 48) + 16))();
  }

  else
  {
    v33 = v9;
    v34 = v6;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        v18 = 0;
        do
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          v21 = [RTTripCluster createWithManagedObject:v19];
          if (v21)
          {
            [v13 addObject:v21];
          }

          else
          {
            v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412290;
              v43 = v24;
              _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@,Failed to create RTTripCluster from ManagedObject", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v20);
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v16);
    }

    v6 = v34;
    v9 = v33;
    v10 = v32;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [v13 count];
        *buf = 138412546;
        v43 = v27;
        v44 = 2048;
        v45 = v28;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@,Successfully fetched %lu clusters", buf, 0x16u);
      }
    }

    (*(*(v35 + 48) + 16))();

    v11 = 0;
  }
}

void __60__RTTripClusterStore__fetchTripClustersWithContext_handler___block_invoke_98(uint64_t a1, void *a2)
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

    v23 = [(RTTripClusterStore *)self fetchRequestFromStoredTripClustersOptions:v10 inManagedObjectContext:v11];
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

- (id)fetchRequestFromStoredTripClustersOptions:(id)a3 inManagedObjectContext:(id)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[RTTripClusterMO fetchRequest];
    [v8 setReturnsObjectsAsFaults:0];
    v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"countOfTraversal" ascending:0];
    v61[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    [v8 setSortDescriptors:v10];

    v11 = [MEMORY[0x277CBEB18] array];
    [v6 startLatitude];
    if (fabs(v12) <= 2.22044605e-16 || ([v6 startLongitude], fabs(v13) <= 2.22044605e-16))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_9:
        [v6 endLatitude];
        if (fabs(v23) <= 2.22044605e-16 || ([v6 endLongitude], fabs(v24) <= 2.22044605e-16))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_16;
          }

          v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            [v6 endLatitude];
            v32 = v31;
            [v6 endLongitude];
            *buf = 138412803;
            v52 = v30;
            v53 = 2053;
            v54 = v32;
            v55 = 2053;
            v56 = v33;
            _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@,end location invalid,%{sensitive}.7lf,%{sensitive}.7lf,skipping predicate", buf, 0x20u);
          }
        }

        else
        {
          [v6 endLatitude];
          v26 = v25;
          [v6 endLongitude];
          v28 = [(RTTripClusterStore *)self _predicateForEndVisitLocation:v26 endLongitude:v27];
          [v11 addObject:v28];
        }

LABEL_16:
        v34 = [RTTripClusterDeviceHelper currentDevicePredicateWithPropertyName:@"device" inManagedObjectContext:v7];
        if (v34)
        {
          [v11 addObject:v34];
        }

        v35 = +[RTCloudManagedObject notTombstonedPredicate];
        [v11 addObject:v35];
        if ([v6 minCountOfTraversal])
        {
          v36 = -[RTTripClusterStore _predicateForMinCountOfTraversal:](self, "_predicateForMinCountOfTraversal:", [v6 minCountOfTraversal]);
          [v11 addObject:v36];
        }

        if ([v11 count])
        {
          v37 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v11];
          [v8 setPredicate:v37];
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            *buf = 138412290;
            v52 = v40;
            _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@,No valid predicates added,fetching all clusters", buf, 0xCu);
          }
        }

LABEL_23:
        if ([v6 batchSize])
        {
          v38 = [v6 batchSize];
        }

        else
        {
          v38 = 3600;
        }

        [v8 setFetchBatchSize:v38];
        [v8 setFetchLimit:3600];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            [v8 predicate];
            v44 = v50 = v35;
            v45 = [v8 sortDescriptors];
            v46 = v7;
            v47 = [v8 fetchBatchSize];
            v48 = [v8 fetchLimit];
            *buf = 138413315;
            v52 = v43;
            v53 = 2117;
            v54 = v44;
            v55 = 2112;
            v56 = v45;
            v57 = 2048;
            v58 = v47;
            v7 = v46;
            v59 = 2048;
            v60 = v48;
            _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@,fetchRequest,predicate,%{sensitive}@,sordDescriptors,%@,batchSize,%lu,limit,%lu", buf, 0x34u);

            v35 = v50;
          }
        }

        goto LABEL_37;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        [v6 startLatitude];
        v21 = v20;
        [v6 startLongitude];
        *buf = 138412803;
        v52 = v19;
        v53 = 2053;
        v54 = v21;
        v55 = 2053;
        v56 = v22;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@,start location invalid,%{sensitive}.7lf,%{sensitive}.7lf,skipping predicate", buf, 0x20u);
      }
    }

    else
    {
      [v6 startLatitude];
      v15 = v14;
      [v6 startLongitude];
      v17 = [(RTTripClusterStore *)self _predicateForStartVisitLocation:v15 startLongitude:v16];
      [v11 addObject:v17];
    }

    goto LABEL_9;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
  }

  v8 = 0;
LABEL_37:

  return v8;
}

- (void)updateTripCluster:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
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
    *buf = 136315394;
    v23 = "[RTTripClusterStore updateTripCluster:handler:]";
    v24 = 1024;
    LODWORD(v25) = 478;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (!v6)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTTripClusterStore updateTripCluster:handler:]";
      v24 = 1024;
      LODWORD(v25) = 479;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripCluster (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v6 clusterID];
      v14 = [v13 UUIDString];
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Updating trip cluster,ID,%@", buf, 0x16u);
    }
  }

  v15 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTTripClusterStore_updateTripCluster_handler___block_invoke;
  block[3] = &unk_2788C4500;
  v19 = v6;
  v20 = self;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  dispatch_async(v15, block);
}

void __48__RTTripClusterStore_updateTripCluster_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clusterID];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = objc_opt_class();
    v6 = [*(a1 + 32) clusterID];
    v5 = [v4 _predicateForClusterID:v6];
    [v3 _updateTripClusterWithPredicate:v5 tripCluster:*(a1 + 32) handler:*(a1 + 48)];
  }
}

- (void)_updateTripClusterWithPredicate:(id)a3 tripCluster:(id)a4 handler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTTripClusterStore _updateTripClusterWithPredicate:tripCluster:handler:]";
      v27 = 1024;
      v28 = 503;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v12 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__RTTripClusterStore__updateTripClusterWithPredicate_tripCluster_handler___block_invoke;
  aBlock[3] = &unk_2788D1BA8;
  v13 = v9;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v23 = self;
  v15 = v10;
  v24 = v15;
  v16 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__RTTripClusterStore__updateTripClusterWithPredicate_tripCluster_handler___block_invoke_123;
  v18[3] = &unk_2788C48C0;
  v17 = v15;
  v19 = v17;
  [(RTStore *)self _performBlock:v16 contextType:2 errorHandler:v18];

  objc_autoreleasePoolPop(v12);
}

void __74__RTTripClusterStore__updateTripClusterWithPredicate_tripCluster_handler___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE380];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = +[RTTripClusterMO entity];
  v7 = [v5 initWithEntity:v6];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [*(a1 + 32) clusterOrder];
  v10 = MEMORY[0x277CCA9C0];
  if (v9)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "countOfTraversal")}];
    v12 = [v10 expressionForConstantValue:v11];
    [v8 setObject:v12 forKeyedSubscript:@"countOfTraversal"];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"countOfTraversal + 1"];
    [v8 setObject:v11 forKeyedSubscript:@"countOfTraversal"];
  }

  v13 = MEMORY[0x277CCA9C0];
  v14 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgTripDistance];
  v15 = [v14 numberWithDouble:?];
  v16 = [v13 expressionForConstantValue:v15];
  [v8 setObject:v16 forKeyedSubscript:@"avgTripDistance"];

  v17 = MEMORY[0x277CCA9C0];
  v18 = MEMORY[0x277CCABB0];
  [*(a1 + 32) maxTripDistance];
  v19 = [v18 numberWithDouble:?];
  v20 = [v17 expressionForConstantValue:v19];
  [v8 setObject:v20 forKeyedSubscript:@"maxTripDistance"];

  v21 = MEMORY[0x277CCA9C0];
  v22 = MEMORY[0x277CCABB0];
  [*(a1 + 32) minTripDistance];
  v23 = [v22 numberWithDouble:?];
  v24 = [v21 expressionForConstantValue:v23];
  [v8 setObject:v24 forKeyedSubscript:@"minTripDistance"];

  v25 = MEMORY[0x277CCA9C0];
  v26 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgTripTime];
  v27 = [v26 numberWithDouble:?];
  v28 = [v25 expressionForConstantValue:v27];
  [v8 setObject:v28 forKeyedSubscript:@"avgTripTime"];

  v29 = MEMORY[0x277CCA9C0];
  v30 = MEMORY[0x277CCABB0];
  [*(a1 + 32) maxTripTime];
  v31 = [v30 numberWithDouble:?];
  v32 = [v29 expressionForConstantValue:v31];
  [v8 setObject:v32 forKeyedSubscript:@"maxTripTime"];

  v33 = MEMORY[0x277CCA9C0];
  v34 = MEMORY[0x277CCABB0];
  [*(a1 + 32) minTripTime];
  v35 = [v34 numberWithDouble:?];
  v36 = [v33 expressionForConstantValue:v35];
  [v8 setObject:v36 forKeyedSubscript:@"minTripTime"];

  v37 = MEMORY[0x277CCA9C0];
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isLocked")}];
  v39 = [v37 expressionForConstantValue:v38];
  [v8 setObject:v39 forKeyedSubscript:@"isLocked"];

  v40 = [*(a1 + 32) lastTimeTaken];
  [v8 setObject:v40 forKeyedSubscript:@"lastTimeTaken"];

  v41 = [*(a1 + 32) commuteID];
  [v8 setObject:v41 forKeyedSubscript:@"commuteID"];

  v42 = MEMORY[0x277CCA9C0];
  v43 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgBikeTime];
  v44 = [v43 numberWithDouble:?];
  v45 = [v42 expressionForConstantValue:v44];
  [v8 setObject:v45 forKeyedSubscript:@"avgBikeTime"];

  v46 = MEMORY[0x277CCA9C0];
  v47 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgBikeDistance];
  v48 = [v47 numberWithDouble:?];
  v49 = [v46 expressionForConstantValue:v48];
  [v8 setObject:v49 forKeyedSubscript:@"avgBikeDistance"];

  v50 = MEMORY[0x277CCA9C0];
  v51 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgWalkTime];
  v52 = [v51 numberWithDouble:?];
  v53 = [v50 expressionForConstantValue:v52];
  [v8 setObject:v53 forKeyedSubscript:@"avgWalkTime"];

  v54 = MEMORY[0x277CCA9C0];
  v55 = MEMORY[0x277CCABB0];
  [*(a1 + 32) avgWalkDistance];
  v56 = [v55 numberWithDouble:?];
  v57 = [v54 expressionForConstantValue:v56];
  [v8 setObject:v57 forKeyedSubscript:@"avgWalkDistance"];

  v58 = MEMORY[0x277CCA9C0];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "countOfBikeTraversal")}];
  v60 = [v58 expressionForConstantValue:v59];
  [v8 setObject:v60 forKeyedSubscript:@"countOfBikeTraversal"];

  v61 = MEMORY[0x277CCA9C0];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "countOfWalkTraversal")}];
  v63 = [v61 expressionForConstantValue:v62];
  [v8 setObject:v63 forKeyedSubscript:@"countOfWalkTraversal"];

  v64 = MEMORY[0x277CCA9C0];
  v65 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(*(a1 + 32), "clusterOrder")}];
  v66 = [v64 expressionForConstantValue:v65];
  [v8 setObject:v66 forKeyedSubscript:@"clusterOrder"];

  [v7 setPropertiesToUpdate:v8];
  if (*(a1 + 40))
  {
    [v7 setPredicate:?];
  }

  [v7 setResultType:2];
  v73 = 0;
  v67 = [v4 executeRequest:v7 error:&v73];

  v68 = v73;
  v69 = v68;
  if (!v67 || v68)
  {
    v70 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      *buf = 138412546;
      v75 = v72;
      v76 = 2112;
      v77 = v69;
      _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "%@ update TripCluster operation failed,err,%@", buf, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_updateTripClusterLockStatusWithPredicate:(id)a3 isLocked:(BOOL)a4 handler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripClusterStore _updateTripClusterLockStatusWithPredicate:isLocked:handler:]";
      v25 = 1024;
      v26 = 563;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v11 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__RTTripClusterStore__updateTripClusterLockStatusWithPredicate_isLocked_handler___block_invoke;
  aBlock[3] = &unk_2788D1BD0;
  v22 = a4;
  v12 = v8;
  v19 = v12;
  v20 = self;
  v13 = v9;
  v21 = v13;
  v14 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__RTTripClusterStore__updateTripClusterLockStatusWithPredicate_isLocked_handler___block_invoke_124;
  v16[3] = &unk_2788C48C0;
  v15 = v13;
  v17 = v15;
  [(RTStore *)self _performBlock:v14 contextType:2 errorHandler:v16];

  objc_autoreleasePoolPop(v11);
}

void __81__RTTripClusterStore__updateTripClusterLockStatusWithPredicate_isLocked_handler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE380];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = +[RTTripClusterMO entity];
  v7 = [v5 initWithEntity:v6];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277CCA9C0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v11 = [v9 expressionForConstantValue:v10];
  [v8 setObject:v11 forKeyedSubscript:@"isLocked"];

  [v7 setPropertiesToUpdate:v8];
  if (*(a1 + 32))
  {
    [v7 setPredicate:?];
  }

  [v7 setResultType:2];
  v18 = 0;
  v12 = [v4 executeRequest:v7 error:&v18];

  v13 = v18;
  v14 = v13;
  if (!v12 || v13)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@ update TripCluster Lock status failed,err,%@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)_predicateForClusterID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [v3 UUIDString];
        *buf = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,_predicate for cluster,ID,%@", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clusterID == %@", v3];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterID", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_predicateForCommuteID:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"commuteID", a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: commuteID", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)_predicateForStartVisitLocation:(double)a3 startLongitude:(double)a4
{
  if (a3 == 0.0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v5 = "Invalid parameter not satisfying: (startLatitude != 0.0)";
      v6 = &v10;
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 == 0.0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v5 = "Invalid parameter not satisfying: (startLongitude != 0.0)";
      v6 = &v9;
      goto LABEL_12;
    }

LABEL_6:

    v7 = 0;
    goto LABEL_7;
  }

  v7 = [RTTripClusterStore _predicateForVisitLocation:"_predicateForVisitLocation:longitude:entityNameLatitude:entityNameLongitude:" longitude:@"startLatitude" entityNameLatitude:@"startLongitude" entityNameLongitude:?];
LABEL_7:

  return v7;
}

- (id)_predicateForEndVisitLocation:(double)a3 endLongitude:(double)a4
{
  if (a3 == 0.0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v5 = "Invalid parameter not satisfying: (endLatitude != 0.0)";
      v6 = &v10;
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 == 0.0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v5 = "Invalid parameter not satisfying: (endLongitude != 0.0)";
      v6 = &v9;
      goto LABEL_12;
    }

LABEL_6:

    v7 = 0;
    goto LABEL_7;
  }

  v7 = [RTTripClusterStore _predicateForVisitLocation:"_predicateForVisitLocation:longitude:entityNameLatitude:entityNameLongitude:" longitude:@"endLatitude" entityNameLatitude:@"endLongitude" entityNameLongitude:?];
LABEL_7:

  return v7;
}

- (id)_predicateForVisitLocation:(double)a3 longitude:(double)a4 entityNameLatitude:(id)a5 entityNameLongitude:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if (a3 == 0.0)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v18 = 0;
LABEL_19:

      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: (inputLatitude != 0.0)";
LABEL_24:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_18;
  }

  if (a4 == 0.0)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: (inputLongitude != 0.0)";
    goto LABEL_24;
  }

  v11 = cos(a3 * 0.0174532925) * 111320.0;
  v12 = 300.0 / v11;
  v13 = v11 == 0.0;
  v14 = 0.00269493352;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = a4 - v14;
  if (a4 - v14 <= -180.0)
  {
    v15 = a4 - v14 + 360.0;
  }

  v16 = v14 + a4;
  if (v16 >= 180.0)
  {
    v16 = v16 + -360.0;
  }

  if (v15 >= v16)
  {
    v17 = @"(%K >= %f AND %K <= %f) AND (%K <= %f OR %K >= %f)";
  }

  else
  {
    v17 = @"(%K >= %f AND %K <= %f) AND (%K >= %f AND %K <= %f)";
  }

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:v17, v9, a3 + -0.0027131152, v9, a3 + 0.0027131152, v10, *&v15, v10, *&v16];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412546;
      v25 = v21;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@,Generated Visit Predicate:,%@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:

  return v18;
}

- (void)_deleteTripClusterWithUUID:(id)a3 handler:(id)a4
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
    v29 = "[RTTripClusterStore _deleteTripClusterWithUUID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 677;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterStore _deleteTripClusterWithUUID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 678;
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
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@:%@ invoked", buf, 0x16u);
    }
  }

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__RTTripClusterStore__deleteTripClusterWithUUID_handler___block_invoke;
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

void __57__RTTripClusterStore__deleteTripClusterWithUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterMO"];
  v6 = [RTTripClusterStore _predicateForClusterID:*(a1 + 32)];
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

- (void)deleteTripClusterWithUUID:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterStore deleteTripClusterWithUUID:handler:]";
      v17 = 1024;
      v18 = 721;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTTripClusterStore_deleteTripClusterWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (BOOL)deleteTripClusterWithUUID:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v47 = 136315394;
      *&v47[4] = "[RTTripClusterStore deleteTripClusterWithUUID:]";
      *&v47[12] = 1024;
      *&v47[14] = 731;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", v47, 0x12u);
    }
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__172;
  v49 = __Block_byref_object_dispose__172;
  v50 = 0;
  v6 = dispatch_semaphore_create(0);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __48__RTTripClusterStore_deleteTripClusterWithUUID___block_invoke;
  v39 = &unk_2788C4618;
  v41 = v47;
  v7 = v6;
  v40 = v7;
  [(RTTripClusterStore *)self deleteTripClusterWithUUID:v4 handler:&v36];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
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
      v28 = [v4 UUIDString];
      v29 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!*(*&v47[8] + 40))
    {
      v30 = 1;
      goto LABEL_18;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v4 UUIDString];
      v35 = [*(*&v47[8] + 40) localizedDescription];
      *buf = 138412802;
      *&buf[4] = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error deleting cluster ID,%@,error,%@", buf, 0x20u);
    }
  }

  v30 = 0;
LABEL_18:

  _Block_object_dispose(v47, 8);
  return v30;
}

void __48__RTTripClusterStore_deleteTripClusterWithUUID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_deleteTripClusterWithCommuteID:(id)a3 handler:(id)a4
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
    v29 = "[RTTripClusterStore _deleteTripClusterWithCommuteID:handler:]";
    v30 = 1024;
    LODWORD(v31) = 764;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: commuteID (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTTripClusterStore _deleteTripClusterWithCommuteID:handler:]";
      v30 = 1024;
      LODWORD(v31) = 765;
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
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@:%@ invoked", buf, 0x16u);
    }
  }

  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__RTTripClusterStore__deleteTripClusterWithCommuteID_handler___block_invoke;
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
    v27 = @"requires a non-nil commute ID.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v16 errorWithDomain:v17 code:7 userInfo:v18];

    if (v9)
    {
      (v9)[2](v9, v15);
    }
  }
}

void __62__RTTripClusterStore__deleteTripClusterWithCommuteID_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:@"RTTripClusterMO"];
  v6 = [RTTripClusterStore _predicateForCommuteID:*(a1 + 32)];
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

- (void)deleteTripClusterWithCommuteID:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTTripClusterStore deleteTripClusterWithCommuteID:handler:]";
      v17 = 1024;
      v18 = 808;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTTripClusterStore_deleteTripClusterWithCommuteID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (BOOL)deleteTripClusterWithCommuteID:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v47 = 136315394;
      *&v47[4] = "[RTTripClusterStore deleteTripClusterWithCommuteID:]";
      *&v47[12] = 1024;
      *&v47[14] = 818;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: commuteID (in %s:%d)", v47, 0x12u);
    }
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__172;
  v49 = __Block_byref_object_dispose__172;
  v50 = 0;
  v6 = dispatch_semaphore_create(0);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __53__RTTripClusterStore_deleteTripClusterWithCommuteID___block_invoke;
  v39 = &unk_2788C4618;
  v41 = v47;
  v7 = v6;
  v40 = v7;
  [(RTTripClusterStore *)self deleteTripClusterWithCommuteID:v4 handler:&v36];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
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
      v28 = [v4 UUIDString];
      v29 = [v24 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error deleting commute ID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    if (!*(*&v47[8] + 40))
    {
      v30 = 1;
      goto LABEL_18;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v4 UUIDString];
      v35 = [*(*&v47[8] + 40) localizedDescription];
      *buf = 138412802;
      *&buf[4] = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error deleting commute ID,%@,error,%@", buf, 0x20u);
    }
  }

  v30 = 0;
LABEL_18:

  _Block_object_dispose(v47, 8);
  return v30;
}

void __53__RTTripClusterStore_deleteTripClusterWithCommuteID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_purgeTripClustersWithHandler:(id)a3
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

- (void)purgeTripClustersWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTTripClusterStore_purgeTripClustersWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end