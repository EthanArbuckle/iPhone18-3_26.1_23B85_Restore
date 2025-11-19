@interface RTWorkoutDistanceStore
+ (id)fetchRequestForWorkoutDistanceEnumerationOptions:(id)a3 error:(id *)a4;
+ (id)predicateForObjectIDs:(id)a3;
+ (id)propertyDictionaryForIsVisited:(BOOL)a3;
- (id)_getCrossJoinPredicateForClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_deleteWorkoutDistanceWithWorkoutUUID:(id)a3 handler:(id)a4;
- (void)_fetchTotalWorkoutDistancesCountWithClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 handler:(id)a7;
- (void)_fetchTotalWorkoutDistancesCountWithHandler:(id)a3;
- (void)_fetchUniqueWorkoutUUIDsWithHandler:(id)a3;
- (void)_fetchWorkoutDistanceWithFirstWorkout:(id)a3 secondWorkout:(id)a4 handler:(id)a5;
- (void)_fetchWorkoutDistancesWithWorkout:(id)a3 handler:(id)a4;
- (void)_fetchWorkoutsWithOffset:(unint64_t)a3 limit:(unint64_t)a4 maxDistanceThreshold:(double)a5 includeVisitedRecords:(BOOL)a6 handler:(id)a7;
- (void)_updateWorkoutDistancesWithPredicate:(id)a3 propertiesDictionary:(id)a4 handler:(id)a5;
- (void)clearWithHandler:(id)a3;
- (void)deleteWorkoutDistanceWithWorkoutUUID:(id)a3 handler:(id)a4;
- (void)enumerateStoredWorkoutDistancesWithOptions:(id)a3 usingBlock:(id)a4;
- (void)fetchTotalWorkoutDistancesCountWithClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 handler:(id)a7;
- (void)fetchTotalWorkoutDistancesCountWithHandler:(id)a3;
- (void)fetchUniqueWorkoutUUIDsWithHandler:(id)a3;
- (void)fetchWorkoutDistanceWithFirstWorkout:(id)a3 secondWorkout:(id)a4 handler:(id)a5;
- (void)fetchWorkoutDistancesWithOffset:(unint64_t)a3 limit:(unint64_t)a4 maxDistanceThreshold:(double)a5 includeVisitedRecords:(BOOL)a6 handler:(id)a7;
- (void)fetchWorkoutDistancesWithWorkout:(id)a3 handler:(id)a4;
- (void)storeWorkoutDistances:(id)a3 handler:(id)a4;
- (void)updateWorkoutDistancesWithObjectIDs:(id)a3 isVisited:(BOOL)a4 handler:(id)a5;
@end

@implementation RTWorkoutDistanceStore

- (void)storeWorkoutDistances:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTWorkoutDistanceStore_storeWorkoutDistances_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (id)predicateForObjectIDs:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: objectIDs", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)propertyDictionaryForIsVisited:(BOOL)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"isVisited";
  v3 = MEMORY[0x277CCA9C0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v5 = [v3 expressionForConstantValue:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (void)updateWorkoutDistancesWithObjectIDs:(id)a3 isVisited:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__RTWorkoutDistanceStore_updateWorkoutDistancesWithObjectIDs_isVisited_handler___block_invoke;
  v13[3] = &unk_2788C4690;
  v14 = v8;
  v15 = self;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __80__RTWorkoutDistanceStore_updateWorkoutDistancesWithObjectIDs_isVisited_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = *(a1 + 40);
    v7 = [objc_opt_class() propertyDictionaryForIsVisited:*(a1 + 56)];
    [v5 _updateWorkoutDistancesWithPredicate:0 propertiesDictionary:v7 handler:*(a1 + 48)];
    goto LABEL_5;
  }

  if ([v2 count])
  {
    v3 = *(a1 + 40);
    v7 = [objc_opt_class() predicateForObjectIDs:*(a1 + 32)];
    v4 = [objc_opt_class() propertyDictionaryForIsVisited:*(a1 + 56)];
    [v3 _updateWorkoutDistancesWithPredicate:v7 propertiesDictionary:v4 handler:*(a1 + 48)];

LABEL_5:

    return;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

- (void)_updateWorkoutDistancesWithPredicate:(id)a3 propertiesDictionary:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v10 && [v10 count])
    {
      v12 = objc_autoreleasePoolPush();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__RTWorkoutDistanceStore__updateWorkoutDistancesWithPredicate_propertiesDictionary_handler___block_invoke;
      aBlock[3] = &unk_2788CB520;
      v18 = v9;
      v19 = self;
      v22 = a2;
      v20 = v10;
      v13 = v11;
      v21 = v13;
      v14 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __92__RTWorkoutDistanceStore__updateWorkoutDistancesWithPredicate_propertiesDictionary_handler___block_invoke_17;
      v15[3] = &unk_2788C48C0;
      v16 = v13;
      [(RTStore *)self _performBlock:v14 contextType:2 errorHandler:v15];

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

void __92__RTWorkoutDistanceStore__updateWorkoutDistancesWithPredicate_propertiesDictionary_handler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE380];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = +[RTWorkoutDistanceMO entity];
  v7 = [v5 initWithEntity:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(*(a1 + 64));
        v20 = *(a1 + 32);
        *buf = 138412802;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, %@, predicate, %@", buf, 0x20u);
      }

      v8 = *(a1 + 32);
    }

    [v7 setPredicate:v8];
  }

  [v7 setPropertiesToUpdate:*(a1 + 48)];
  [v7 setResultType:2];
  v29 = 0;
  v10 = [v4 executeRequest:v7 error:&v29];

  v11 = v29;
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(*(a1 + 64));
        v24 = [v10 result];
        v25 = *(a1 + 48);
        *buf = 138413314;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        v38 = 2112;
        v39 = v11;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, %@, batchupdate result, %@, properties dictionary, %@, error, %@", buf, 0x34u);
      }
    }

    v14 = *(a1 + 56);
    v15 = [v10 result];
    (*(v14 + 16))(v14, [v15 integerValue], v11);
  }

  else
  {
    if (v12)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v31 = v27;
        v32 = 2112;
        v33 = v28;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, %@, batchupdate result is nil", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)clearWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)deleteWorkoutDistanceWithWorkoutUUID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTWorkoutDistanceStore_deleteWorkoutDistanceWithWorkoutUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteWorkoutDistanceWithWorkoutUUID:(id)a3 handler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __72__RTWorkoutDistanceStore__deleteWorkoutDistanceWithWorkoutUUID_handler___block_invoke;
      v17 = &unk_2788C4F38;
      v18 = v6;
      v19 = self;
      v8 = v7;
      v20 = v8;
      v9 = _Block_copy(&v14);
      [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8, v14, v15, v16, v17];

      v10 = v18;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires valid workouts.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v13 = [v11 errorWithDomain:v12 code:0 userInfo:v10];
      (*(v7 + 2))(v7, v13);
    }
  }
}

void __72__RTWorkoutDistanceStore__deleteWorkoutDistanceWithWorkoutUUID_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) || (%K == %@)", @"firstWorkout", a1[4], @"secondWorkout", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)fetchUniqueWorkoutUUIDsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTWorkoutDistanceStore_fetchUniqueWorkoutUUIDsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchUniqueWorkoutUUIDsWithHandler:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__RTWorkoutDistanceStore__fetchUniqueWorkoutUUIDsWithHandler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  aBlock[4] = self;
  v13 = a2;
  v6 = v5;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__RTWorkoutDistanceStore__fetchUniqueWorkoutUUIDsWithHandler___block_invoke_35;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];
}

void __62__RTWorkoutDistanceStore__fetchUniqueWorkoutUUIDsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setReturnsDistinctResults:1];
  v29[0] = @"firstWorkout";
  v29[1] = @"secondWorkout";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v4 setPropertiesToFetch:v5];

  [v4 setResultType:2];
  v18 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v18];

  v7 = v18;
  v8 = objc_opt_new();
  v9 = [v6 valueForKey:@"firstWorkout"];
  v10 = [v6 valueForKey:@"secondWorkout"];
  if (v9)
  {
    [v8 addObjectsFromArray:v9];
  }

  if (v10)
  {
    [v8 addObjectsFromArray:v10];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [v6 count];
      *buf = 138413314;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v4;
      v25 = 2048;
      v26 = v17;
      v27 = 2112;
      v28 = v7;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v12 = *(a1 + 40);
  v13 = [v8 allObjects];
  (*(v12 + 16))(v12, v13, v7);
}

- (void)fetchTotalWorkoutDistancesCountWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RTWorkoutDistanceStore_fetchTotalWorkoutDistancesCountWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchTotalWorkoutDistancesCountWithHandler:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithHandler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  aBlock[4] = self;
  v13 = a2;
  v6 = v5;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithHandler___block_invoke_36;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];
}

void __70__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  v11 = 0;
  v5 = [v3 countForFetchRequest:v4 error:&v11];

  v6 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413314;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, total workout distances count, %lu, error, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchTotalWorkoutDistancesCountWithClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __134__RTWorkoutDistanceStore_fetchTotalWorkoutDistancesCountWithClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_handler___block_invoke;
  v19[3] = &unk_2788C54B8;
  v19[4] = self;
  v20 = v12;
  v22 = v14;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)_fetchTotalWorkoutDistancesCountWithClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if ([v13 count] && objc_msgSend(v14, "count"))
  {
    v16 = objc_autoreleasePoolPush();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __135__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_handler___block_invoke;
    aBlock[3] = &unk_2788CD970;
    aBlock[4] = self;
    v22 = v13;
    v23 = v14;
    v25 = a5;
    v26 = a6;
    v27 = a2;
    v17 = v15;
    v24 = v17;
    v18 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __135__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_handler___block_invoke_37;
    v19[3] = &unk_2788C48C0;
    v20 = v17;
    [(RTStore *)self _performBlock:v18 contextType:1 errorHandler:v19];

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0);
  }
}

void __135__RTWorkoutDistanceStore__fetchTotalWorkoutDistancesCountWithClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_handler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  v5 = [*(a1 + 32) _getCrossJoinPredicateForClusterSet1:*(a1 + 40) clusterSet2:*(a1 + 48) workoutActivityType:*(a1 + 64) maxDistanceThreshold:*(a1 + 72)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 80));
      v13 = [v4 predicate];
      *buf = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, predicate, %@", buf, 0x20u);
    }
  }

  v17 = 0;
  v7 = [v3 countForFetchRequest:v4 error:&v17];
  v8 = v17;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 80));
      *buf = 138413314;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v4;
      v24 = 2048;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, total workout distances count, %lu, error, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_getCrossJoinPredicateForClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v33 = a4;
  v30 = objc_autoreleasePoolPush();
  v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu AND %K <= %f", @"workoutActivityType", a5, @"distance", *&a6];
  v10 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v34)
  {
    v32 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v11;
        v12 = *(*(&v41 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v13 = v33;
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v38;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v37 + 1) + 8 * i);
              v19 = objc_autoreleasePoolPush();
              v20 = v12;
              v21 = v18;
              if ([v20 compare:v21] == 1)
              {
                v22 = v21;

                v21 = v20;
                v20 = v22;
              }

              v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ AND %K == %@", @"firstWorkout", v20, @"secondWorkout", v21];
              [v10 addObject:v23];

              objc_autoreleasePoolPop(v19);
            }

            v15 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v15);
        }

        objc_autoreleasePoolPop(context);
        v11 = v36 + 1;
      }

      while (v36 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v34);
  }

  v24 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v10];
  v25 = MEMORY[0x277CCA920];
  v45[0] = v29;
  v45[1] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  [v10 removeAllObjects];
  objc_autoreleasePoolPop(v30);

  return v27;
}

- (void)fetchWorkoutDistancesWithOffset:(unint64_t)a3 limit:(unint64_t)a4 maxDistanceThreshold:(double)a5 includeVisitedRecords:(BOOL)a6 handler:(id)a7
{
  v12 = a7;
  v13 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__RTWorkoutDistanceStore_fetchWorkoutDistancesWithOffset_limit_maxDistanceThreshold_includeVisitedRecords_handler___block_invoke;
  v15[3] = &unk_2788CD998;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(v13, v15);
}

- (void)_fetchWorkoutsWithOffset:(unint64_t)a3 limit:(unint64_t)a4 maxDistanceThreshold:(double)a5 includeVisitedRecords:(BOOL)a6 handler:(id)a7
{
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__RTWorkoutDistanceStore__fetchWorkoutsWithOffset_limit_maxDistanceThreshold_includeVisitedRecords_handler___block_invoke;
  aBlock[3] = &unk_2788CD9C0;
  v22 = a5;
  v26 = a6;
  v23 = a4;
  v24 = a3;
  aBlock[4] = self;
  v25 = a2;
  v15 = v13;
  v21 = v15;
  v16 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__RTWorkoutDistanceStore__fetchWorkoutsWithOffset_limit_maxDistanceThreshold_includeVisitedRecords_handler___block_invoke_60;
  v18[3] = &unk_2788C48C0;
  v17 = v15;
  v19 = v17;
  [(RTStore *)self _performBlock:v16 contextType:1 errorHandler:v18];

  objc_autoreleasePoolPop(v14);
}

void __108__RTWorkoutDistanceStore__fetchWorkoutsWithOffset_limit_maxDistanceThreshold_includeVisitedRecords_handler___block_invoke(uint64_t a1, void *a2)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"workoutActivityType" ascending:1];
  v45[0] = v5;
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"distance" ascending:1];
  v45[1] = v6;
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
  v45[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  [v4 setSortDescriptors:v8];

  v9 = MEMORY[0x277CCAC30];
  v10 = *(a1 + 48);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v12 = [v9 predicateWithFormat:@"(%K <= %f AND %K == %@)", @"distance", v10, @"isVisited", v11];
  [v4 setPredicate:v12];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:*(a1 + 56)];
  [v4 setFetchOffset:*(a1 + 64)];
  v33 = 0;
  v13 = [v3 executeFetchRequest:v4 error:&v33];
  v14 = v33;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 72));
      v26 = [v13 count];
      *buf = 138413314;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v4;
      v41 = 2048;
      v42 = v26;
      v43 = 2112;
      v44 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v16 = objc_opt_new();
  if (!v14 && [v13 count])
  {
    v27 = v13;
    v28 = v3;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [RTWorkoutDistance createWithManagedObject:*(*(&v29 + 1) + 8 * v21)];
          [v16 addObject:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    v13 = v27;
    v3 = v28;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchWorkoutDistanceWithFirstWorkout:(id)a3 secondWorkout:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__RTWorkoutDistanceStore_fetchWorkoutDistanceWithFirstWorkout_secondWorkout_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_fetchWorkoutDistanceWithFirstWorkout:(id)a3 secondWorkout:(id)a4 handler:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9 && v10)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__RTWorkoutDistanceStore__fetchWorkoutDistanceWithFirstWorkout_secondWorkout_handler___block_invoke;
      aBlock[3] = &unk_2788CB520;
      v21 = v9;
      v22 = v10;
      v23 = self;
      v25 = a2;
      v12 = v11;
      v24 = v12;
      v13 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__RTWorkoutDistanceStore__fetchWorkoutDistanceWithFirstWorkout_secondWorkout_handler___block_invoke_64;
      v18[3] = &unk_2788C48C0;
      v19 = v12;
      [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v18];

      v14 = v21;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v26 = *MEMORY[0x277CCA450];
      v27[0] = @"requires valid workouts.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v17 = [v15 errorWithDomain:v16 code:0 userInfo:v14];
      (*(v11 + 2))(v11, 0, v17);
    }
  }
}

void __86__RTWorkoutDistanceStore__fetchWorkoutDistanceWithFirstWorkout_secondWorkout_handler___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if ([v5 compare:v6] == 1)
  {
    v7 = v6;

    v6 = v5;
    v5 = v7;
  }

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@ AND %K == %@)", @"firstWorkout", v5, @"secondWorkout", v6];
  [v4 setPredicate:v8];

  v19 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v19];

  v10 = v19;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 64));
      v18 = [v9 count];
      *buf = 138413314;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v4;
      v26 = 2048;
      v27 = v18;
      v28 = 2112;
      v29 = v10;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v12 = objc_opt_new();
  if (!v10 && [v9 count])
  {
    v13 = [v9 firstObject];
    v14 = [RTWorkoutDistance createWithManagedObject:v13];
    [v12 addObject:v14];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchWorkoutDistancesWithWorkout:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTWorkoutDistanceStore_fetchWorkoutDistancesWithWorkout_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchWorkoutDistancesWithWorkout:(id)a3 handler:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__RTWorkoutDistanceStore__fetchWorkoutDistancesWithWorkout_handler___block_invoke;
      aBlock[3] = &unk_2788C4910;
      v18 = v7;
      v19 = self;
      v21 = a2;
      v9 = v8;
      v20 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__RTWorkoutDistanceStore__fetchWorkoutDistancesWithWorkout_handler___block_invoke_65;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"requires valid workouts.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
      (*(v8 + 2))(v8, 0, v14);
    }
  }
}

void __68__RTWorkoutDistanceStore__fetchWorkoutDistancesWithWorkout_handler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWorkoutDistanceMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) || (%K == %@)", @"firstWorkout", *(a1 + 32), @"secondWorkout", *(a1 + 32)];
  [v4 setPredicate:v5];

  v28 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v28];
  v7 = v28;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = [v6 count];
      *buf = 138413314;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v4;
      v36 = 2048;
      v37 = v21;
      v38 = 2112;
      v39 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  v9 = objc_opt_new();
  if (!v7 && [v6 count])
  {
    v23 = a1;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [RTWorkoutDistance createWithManagedObject:v15];
          [v9 addObject:v17];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    a1 = v23;
    v6 = v22;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)enumerateStoredWorkoutDistancesWithOptions:(id)a3 usingBlock:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v26 = 0;
    if (v7)
    {
      v25 = 0;
      v9 = [objc_opt_class() fetchRequestForWorkoutDistanceEnumerationOptions:v7 error:&v25];
      v10 = v25;
      if (v10)
      {
        v8[2](v8, 0, v10, &v26);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __80__RTWorkoutDistanceStore_enumerateStoredWorkoutDistancesWithOptions_usingBlock___block_invoke;
      v22 = &unk_2788CD9E8;
      v24 = buf;
      v23 = v8;
      v11 = _Block_copy(&v19);
      [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v9 enumerationBlock:v11, v19, v20, v21, v22];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"requires non-nil options.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v10 = [v13 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        *&buf[22] = 2112;
        v28 = v10;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, error, %@", buf, 0x20u);
      }

      v8[2](v8, 0, v10, &v26);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", buf, 2u);
    }
  }
}

void __80__RTWorkoutDistanceStore_enumerateStoredWorkoutDistancesWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 count];
  (*(*(a1 + 32) + 16))();

  v7 = [v6 count];
  *(*(*(a1 + 40) + 8) + 24) += v7;
}

+ (id)fetchRequestForWorkoutDistanceEnumerationOptions:(id)a3 error:(id *)a4
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[RTWorkoutDistanceMO fetchRequest];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"workoutActivityType" ascending:1];
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"distance" ascending:{1, v6}];
  v14[1] = v7;
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v5 setSortDescriptors:v9];

  if ([v4 batchSize])
  {
    v10 = [v4 batchSize];
  }

  else
  {
    v10 = 200;
  }

  [v5 setFetchBatchSize:v10];
  if ([v4 batchSize])
  {
    v11 = [v4 batchSize];
    if (v11 >= 0xC8)
    {
      v12 = 200;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 200;
  }

  [v5 setFetchLimit:v12];

  return v5;
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_13;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    if (![v9 isEqual:objc_opt_class()])
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 stringWithFormat:@"error of type, %@, is not supported", v17];

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];

      v23 = v22;
      *a5 = v22;

      goto LABEL_13;
    }

    v25 = 0;
    v10 = [objc_opt_class() fetchRequestForWorkoutDistanceEnumerationOptions:v8 error:&v25];
    v11 = v25;
    if (v11)
    {
      v12 = v11;
      *a5 = v12;

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    [v10 setFetchOffset:a4];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v10 = 0;
  }

LABEL_14:

  return v10;
}

@end