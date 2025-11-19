@interface SMSessionStore
+ (BOOL)areSessionConfigsInTheSameInterval:(id)a3 config2:(id)a4 timeInADayInterval:(id)a5 error:(id *)a6;
+ (BOOL)isDateBetweenStartDate:(id)a3 endDate:(id)a4 targetDate:(id)a5 error:(id *)a6;
+ (id)getDateUsingYearMonthDayFromDate:(id)a3 hoursMinsSecsFromDate:(id)a4;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_clearSessionMonitorStatesWithHandler:(id)a3;
- (void)_clearSessionsWithHandler:(id)a3;
- (void)_clearTriggerDestinationStatesWithHandler:(id)a3;
- (void)_deleteSMLocationMOPredating:(id)a3 handler:(id)a4;
- (void)_deleteSMWorkoutEventMOPredating:(id)a3 handler:(id)a4;
- (void)_deleteSessionMonitorStatesPredating:(id)a3 handler:(id)a4;
- (void)_deleteSessionsAssociatedWithSessionConfiguration:(id)a3 handler:(id)a4;
- (void)_deleteSessionsPredating:(id)a3 handler:(id)a4;
- (void)_deleteTriggerDestinationStatesPredating:(id)a3 handler:(id)a4;
- (void)_fetchMostRecentSessionManagerStateWithHandler:(id)a3;
- (void)_fetchMostRecentSessionMonitorStateWithSessionID:(id)a3 handler:(id)a4;
- (void)_fetchSessionConfigurationsWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchSessionCountWithDateInterval:(id)a3 handler:(id)a4;
- (void)_fetchSessionManagerStatesWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchTriggerDestinationStateWithSessionID:(id)a3 handler:(id)a4;
- (void)_logStoreWithReason:(id)a3 handler:(id)a4;
- (void)clearSessionMonitorStatesWithHandler:(id)a3;
- (void)clearSessionsWithHandler:(id)a3;
- (void)clearTriggerDestinationStatesWithHandler:(id)a3;
- (void)deleteSMLocationMOPredating:(id)a3 handler:(id)a4;
- (void)deleteSMWorkoutEventMOPredating:(id)a3 handler:(id)a4;
- (void)deleteSessionMonitorStatesPredating:(id)a3 handler:(id)a4;
- (void)deleteSessionsAssociatedWithSessionConfiguration:(id)a3 handler:(id)a4;
- (void)deleteSessionsPredating:(id)a3 handler:(id)a4;
- (void)deleteTriggerDestinationStatesPredating:(id)a3 handler:(id)a4;
- (void)fetchMostRecentSessionManagerStateWithHandler:(id)a3;
- (void)fetchMostRecentSessionMonitorStateWithSessionID:(id)a3 handler:(id)a4;
- (void)fetchSessionConfigurationsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchSessionCountWithDateInterval:(id)a3 handler:(id)a4;
- (void)fetchSessionManagerStatesWithOptions:(id)a3 handler:(id)a4;
- (void)fetchSessionStatusWithHandler:(id)a3;
- (void)fetchTriggerDestinationStateWithSessionID:(id)a3 handler:(id)a4;
- (void)logStoreWithReason:(id)a3 handler:(id)a4;
- (void)removeSessionManagerStatus:(id)a3 handler:(id)a4;
- (void)storeSessionConfigurations:(id)a3 handler:(id)a4;
- (void)storeSessionManagerStates:(id)a3 handler:(id)a4;
- (void)storeSessionManagerStatus:(id)a3 handler:(id)a4;
- (void)storeSessionMonitorStates:(id)a3 handler:(id)a4;
- (void)storeTriggerDestinationStates:(id)a3 handler:(id)a4;
- (void)updateSessionManagerStatus:(id)a3 handler:(id)a4;
@end

@implementation SMSessionStore

- (void)fetchSessionStatusWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SMSessionStore_fetchSessionStatusWithHandler___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__SMSessionStore_fetchSessionStatusWithHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__SMSessionStore_fetchSessionStatusWithHandler___block_invoke_20;
    aBlock[3] = &unk_2788C7170;
    v13 = v2;
    v3 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SMSessionStore_fetchSessionStatusWithHandler___block_invoke_2;
    v10[3] = &unk_2788C48C0;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v4 _performBlock:v3 contextType:1 errorHandler:v10];

    v5 = v13;
  }

  else
  {
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"handler is a required parameter.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v5];
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __48__SMSessionStore_fetchSessionStatusWithHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionManagerStatusMO fetchRequest];
  v20 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v20];
  v6 = v20;
  v7 = objc_opt_new();
  if (!v6 && [v5 count])
  {
    v14 = a1;
    v15 = v3;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x277D4ABB8] createWithManagedObject:{*(*(&v16 + 1) + 8 * v12), v14, v15, v16}];
          if (v13)
          {
            [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    a1 = v14;
    v3 = v15;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchMostRecentSessionManagerStateWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SMSessionStore_fetchMostRecentSessionManagerStateWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchMostRecentSessionManagerStateWithHandler:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D4ABF0]) initWithBatchSize:1 fetchLimit:1 sortByCreationDate:1 ascending:0 dateInterval:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__SMSessionStore__fetchMostRecentSessionManagerStateWithHandler___block_invoke;
    v11[3] = &unk_2788C6D60;
    v12 = v4;
    [(SMSessionStore *)self _fetchSessionManagerStatesWithOptions:v5 handler:v11];
    v6 = v12;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSessionStore _fetchMostRecentSessionManagerStateWithHandler:]";
      v15 = 1024;
      LODWORD(v16) = 96;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"handler is a required parameter.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v5];
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __65__SMSessionStore__fetchMostRecentSessionManagerStateWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[SMSessionStore _fetchMostRecentSessionManagerStateWithHandler:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, most recent state fetch failed with error, %@", &v11, 0x16u);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 firstObject];
      v11 = 136315394;
      v12 = "[SMSessionStore _fetchMostRecentSessionManagerStateWithHandler:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, fetched most recent state, %@", &v11, 0x16u);
    }
  }

LABEL_5:
  v8 = *(a1 + 32);
  v9 = [v5 firstObject];
  (*(v8 + 16))(v8, v9, v6);
}

- (void)fetchSessionManagerStatesWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMSessionStore_fetchSessionManagerStatesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchSessionManagerStatesWithOptions:(id)a3 handler:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__SMSessionStore__fetchSessionManagerStatesWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v19 = v6;
    v8 = v7;
    v20 = v8;
    v9 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__SMSessionStore__fetchSessionManagerStatesWithOptions_handler___block_invoke_69;
    v16[3] = &unk_2788C48C0;
    v17 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v16];

    v10 = v19;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[SMSessionStore _fetchSessionManagerStatesWithOptions:handler:]";
      v23 = 1024;
      LODWORD(v24) = 140;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __64__SMSessionStore__fetchSessionManagerStatesWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 136315394;
      *&buf[4] = "[SMSessionStore _fetchSessionManagerStatesWithOptions:handler:]_block_invoke";
      v70 = 2112;
      v71 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, options, %@", buf, 0x16u);
    }
  }

  v6 = +[SMSessionManagerStateMO fetchRequest];
  v7 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) sortByCreationDate])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
    v77[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
    [v6 setSortDescriptors:v9];
  }

  v10 = [*(a1 + 32) dateInterval];

  if (v10)
  {
    v11 = MEMORY[0x277CCAC30];
    v12 = [*(a1 + 32) dateInterval];
    v13 = [v12 startDate];
    v14 = [*(a1 + 32) dateInterval];
    v15 = [v14 endDate];
    v16 = [v11 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"date", v13, @"date", v15];
    [v7 addObject:v16];
  }

  if ([*(a1 + 32) sessionState])
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu", @"sessionState", objc_msgSend(*(a1 + 32), "sessionState")];
    [v7 addObject:v17];
  }

  v18 = [*(a1 + 32) locationBoundingBox];

  if (v18)
  {
    *buf = 0;
    memset(&v67[1], 0, 24);
    v19 = [*(a1 + 32) locationBoundingBox];
    [v19 coordinate];
    v20 = [*(a1 + 32) locationBoundingBox];
    [v20 coordinate];
    v21 = [*(a1 + 32) boundingBoxRadius];
    [v21 doubleValue];
    RTCommonCalculateBoundingBox();

    v53 = MEMORY[0x277CCA920];
    v22 = MEMORY[0x277CCAC30];
    v58 = v6;
    [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v62 = v60 = a1;
    v55 = [v22 predicateWithFormat:@"%@ <= %K", v62, @"locationLongitude"];
    v76[0] = v55;
    v23 = MEMORY[0x277CCAC30];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v25 = [v23 predicateWithFormat:@"%K <= %@", @"locationLongitude", v24];
    v76[1] = v25;
    v57 = v7;
    v26 = MEMORY[0x277CCAC30];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
    v28 = [v26 predicateWithFormat:@"%@ <= %K", v27, @"locationLatitude"];
    v76[2] = v28;
    v29 = MEMORY[0x277CCAC30];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v31 = [v29 predicateWithFormat:@"%K <= %@", @"locationLatitude", v30];
    v76[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
    v33 = [v53 andPredicateWithSubpredicates:v32];

    v7 = v57;
    v6 = v58;

    a1 = v60;
    [v57 addObject:v33];
  }

  v34 = [*(a1 + 32) sessionIdentifier];

  if (v34)
  {
    v35 = MEMORY[0x277CCAC30];
    v36 = [*(a1 + 32) sessionIdentifier];
    v37 = [v35 predicateWithFormat:@"%K.%K == %@", @"sessionConfiguration", @"sessionIdentifier", v36];
    [v7 addObject:v37];
  }

  if ([v7 count])
  {
    v38 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
    [v6 setPredicate:v38];
  }

  [v6 setFetchBatchSize:{objc_msgSend(*(a1 + 32), "batchSize")}];
  [v6 setFetchLimit:{objc_msgSend(*(a1 + 32), "fetchLimit")}];
  [v6 setReturnsObjectsAsFaults:0];
  v67[0] = 0;
  v39 = [v3 executeFetchRequest:v6 error:v67];
  v40 = v67[0];
  v41 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = [v39 count];
      *buf = 136315907;
      *&buf[4] = "[SMSessionStore _fetchSessionManagerStatesWithOptions:handler:]_block_invoke";
      v70 = 2117;
      v71 = v6;
      v72 = 2048;
      v73 = v43;
      v74 = 2112;
      v75 = v40;
      _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%s, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (!v40 && [v39 count])
  {
    v54 = v39;
    v59 = v6;
    v61 = a1;
    v56 = v3;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = v39;
    v45 = [v44 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v64;
      v48 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v63 + 1) + 8 * i);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 136315395;
              *&buf[4] = "[SMSessionStore _fetchSessionManagerStatesWithOptions:handler:]_block_invoke";
              v70 = 2117;
              v71 = v50;
              _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%s, sessionManagerState, %{sensitive}@", buf, 0x16u);
            }
          }

          v52 = [MEMORY[0x277D4ABB0] createWithManagedObject:v50];
          [v41 addObject:v52];
        }

        v46 = [v44 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v46);
    }

    v3 = v56;
    v6 = v59;
    a1 = v61;
    v39 = v54;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSessionConfigurationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SMSessionStore_fetchSessionConfigurationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchSessionConfigurationsWithOptions:(id)a3 handler:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v19 = v6;
    v20 = self;
    v8 = v7;
    v21 = v8;
    v9 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_3;
    v16[3] = &unk_2788C48C0;
    v17 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v16];

    v10 = v19;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSessionStore _fetchSessionConfigurationsWithOptions:handler:]";
      v24 = 1024;
      LODWORD(v25) = 255;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke(int8x16_t *a1, void *a2)
{
  v229[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[2].i64[0];
      *buf = 136315395;
      *&buf[4] = "[SMSessionStore _fetchSessionConfigurationsWithOptions:handler:]_block_invoke";
      v210 = 2117;
      v211 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, options, %{sensitive}@", buf, 0x16u);
    }
  }

  v156 = v3;
  v6 = +[SMSessionConfigurationMO fetchRequest];
  v7 = 0x277CBE000uLL;
  v8 = [MEMORY[0x277CBEB18] array];
  if ([a1[2].i64[0] sortBySessionStartDate])
  {
    v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"sessionStartDate" ascending:{objc_msgSend(a1[2].i64[0], "ascending")}];
    v229[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:1];
    [v6 setSortDescriptors:v10];
  }

  v157 = v6;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %ld", @"sessionManagerState", @"sessionState", 2];
  [v8 addObject:v12];

  v13 = [a1[2].i64[0] timeInADayInterval];

  if (v13)
  {
    v14 = MEMORY[0x277CCAC30];
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_80;
    v207[3] = &unk_2788C7198;
    v180 = a1[2];
    v15 = v180.i64[0];
    v208 = vextq_s8(v180, v180, 8uLL);
    v16 = [v14 predicateWithBlock:v207];
    [v11 addObject:v16];
  }

  v155 = v11;
  v17 = [a1[2].i64[0] startBoundingBoxLocation];

  v18 = 0x277CCA000uLL;
  v159 = a1;
  v158 = v8;
  if (v17)
  {
    *buf = 0;
    v206 = 0;
    v205 = 0;
    v204 = 0;
    v19 = [a1[2].i64[0] startBoundingBoxLocation];
    [v19 coordinate];
    v20 = [a1[2].i64[0] startBoundingBoxLocation];
    [v20 coordinate];
    v21 = [a1[2].i64[0] boundingBoxRadius];
    [v21 doubleValue];
    RTCommonCalculateBoundingBox();

    v173 = MEMORY[0x277CCA920];
    v22 = MEMORY[0x277CCAC30];
    v181 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v176 = [v22 predicateWithFormat:@"%@ <= %K.%K", v181, @"sessionManagerState", @"locationLongitude"];
    v228[0] = v176;
    v23 = MEMORY[0x277CCAC30];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v25 = [v23 predicateWithFormat:@"%K.%K <= %@", @"sessionManagerState", @"locationLongitude", v24];
    v228[1] = v25;
    v26 = MEMORY[0x277CCAC30];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
    v28 = [v26 predicateWithFormat:@"%@ <= %K.%K", v27, @"sessionManagerState", @"locationLatitude"];
    v228[2] = v28;
    v29 = MEMORY[0x277CCAC30];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v31 = [v29 predicateWithFormat:@"%K.%K <= %@", @"sessionManagerState", @"locationLatitude", v30];
    v228[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v228 count:4];
    v33 = [v173 andPredicateWithSubpredicates:v32];

    v7 = 0x277CBE000;
    a1 = v159;

    v8 = v158;
    v18 = 0x277CCA000uLL;

    [v158 addObject:v33];
  }

  v34 = [a1[2].i64[0] destinationBoundingBoxLocation];

  if (v34)
  {
    *buf = 0;
    v206 = 0;
    v205 = 0;
    v204 = 0;
    v35 = [a1[2].i64[0] destinationBoundingBoxLocation];
    [v35 coordinate];
    v36 = [a1[2].i64[0] destinationBoundingBoxLocation];
    [v36 coordinate];
    v37 = [a1[2].i64[0] boundingBoxRadius];
    [v37 doubleValue];
    RTCommonCalculateBoundingBox();

    v174 = MEMORY[0x277CCA920];
    v38 = MEMORY[0x277CCAC30];
    v182 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v177 = [v38 predicateWithFormat:@"%@ <= %K", v182, @"destinationLongitude"];
    v227[0] = v177;
    v39 = MEMORY[0x277CCAC30];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v41 = [v39 predicateWithFormat:@"%K <= %@", @"destinationLongitude", v40];
    v227[1] = v41;
    v42 = MEMORY[0x277CCAC30];
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
    v44 = [v42 predicateWithFormat:@"%@ <= %K", v43, @"destinationLatitude"];
    v227[2] = v44;
    v45 = MEMORY[0x277CCAC30];
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v47 = [v45 predicateWithFormat:@"%K <= %@", @"destinationLatitude", v46];
    v227[3] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:4];
    v49 = [v174 andPredicateWithSubpredicates:v48];

    v7 = 0x277CBE000uLL;
    a1 = v159;

    v8 = v158;
    v18 = 0x277CCA000;

    [v158 addObject:v49];
  }

  v50 = [a1[2].i64[0] dateInterval];

  if (v50)
  {
    v51 = MEMORY[0x277CCAC30];
    v52 = [a1[2].i64[0] dateInterval];
    v53 = [v52 startDate];
    v54 = [a1[2].i64[0] dateInterval];
    v55 = [v54 endDate];
    v56 = [v51 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"sessionStartDate", v53, @"sessionStartDate", v55];
    [v8 addObject:v56];

    v18 = 0x277CCA000;
  }

  v57 = [a1[2].i64[0] sessionIdentifier];

  if (v57)
  {
    v58 = MEMORY[0x277CCAC30];
    v59 = [a1[2].i64[0] sessionIdentifier];
    v60 = [v58 predicateWithFormat:@"%K == %@", @"sessionIdentifier", v59];
    [v8 addObject:v60];
  }

  v61 = [a1[2].i64[0] sessionTypes];
  if (v61)
  {
    v62 = v61;
    v63 = [a1[2].i64[0] sessionTypes];
    v64 = [v63 count];

    if (v64)
    {
      v65 = objc_alloc(*(v7 + 2840));
      v66 = [a1[2].i64[0] sessionTypes];
      v67 = [v65 initWithCapacity:{objc_msgSend(v66, "count")}];

      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v68 = [a1[2].i64[0] sessionTypes];
      v69 = [v68 countByEnumeratingWithState:&v200 objects:v226 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v201;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v201 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v200 + 1) + 8 * i);
            v74 = objc_autoreleasePoolPush();
            v75 = [v73 unsignedIntegerValue];
            v76 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"sessionType", v75];
            [v67 addObject:v76];

            objc_autoreleasePoolPop(v74);
          }

          v70 = [v68 countByEnumeratingWithState:&v200 objects:v226 count:16];
        }

        while (v70);
      }

      v18 = 0x277CCA000uLL;
      v77 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v67];
      v8 = v158;
      [v158 addObject:v77];

      a1 = v159;
    }
  }

  v78 = v157;
  if ([v8 count])
  {
    v79 = [*(v18 + 2336) andPredicateWithSubpredicates:v8];
    [v157 setPredicate:v79];
  }

  [v157 setFetchBatchSize:{objc_msgSend(a1[2].i64[0], "batchSize")}];
  [v157 setFetchLimit:{objc_msgSend(a1[2].i64[0], "fetchLimit")}];
  [v157 setReturnsObjectsAsFaults:0];
  v199 = 0;
  v80 = v156;
  obj = [v156 executeFetchRequest:v157 error:&v199];
  v81 = v199;
  v82 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v83 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = [obj count];
      *buf = 136315907;
      *&buf[4] = "[SMSessionStore _fetchSessionConfigurationsWithOptions:handler:]_block_invoke_2";
      v210 = 2117;
      v211 = v157;
      v212 = 2048;
      v213 = v84;
      v214 = 2112;
      v215 = v81;
      _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "%s, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v81 || ![obj count])
  {
    (*(a1[3].i64[0] + 16))();
    goto LABEL_93;
  }

  v85 = [*(v18 + 2336) andPredicateWithSubpredicates:v155];
  v86 = [obj filteredArrayUsingPredicate:v85];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v87 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = [v86 count];
      *buf = 136315394;
      *&buf[4] = "[SMSessionStore _fetchSessionConfigurationsWithOptions:handler:]_block_invoke";
      v210 = 2048;
      v211 = v88;
      _os_log_impl(&dword_2304B3000, v87, OS_LOG_TYPE_INFO, "%s, filtered results count, %lu,", buf, 0x16u);
    }
  }

  v163 = v82;
  v89 = objc_opt_new();
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v86;
  v90 = [obj countByEnumeratingWithState:&v195 objects:v225 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v196;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v196 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v94 = *(*(&v195 + 1) + 8 * j);
        v95 = objc_autoreleasePoolPush();
        v96 = [v94 sessionIdentifier];
        v97 = [v89 objectForKeyedSubscript:v96];

        if (!v97)
        {
          v98 = objc_opt_new();
          v99 = [v94 sessionIdentifier];
          [v89 setObject:v98 forKeyedSubscript:v99];
        }

        v100 = [v94 sessionIdentifier];
        v101 = [v89 objectForKeyedSubscript:v100];
        v102 = [v94 sessionManagerState];
        [v101 addObject:v102];

        objc_autoreleasePoolPop(v95);
      }

      v91 = [obj countByEnumeratingWithState:&v195 objects:v225 count:16];
    }

    while (v91);
  }

  v183 = objc_opt_new();
  v172 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(v159[2].i64[0], "ascending")}];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v103 = [v89 allKeys];
  v104 = [v103 countByEnumeratingWithState:&v191 objects:v224 count:16];
  v175 = v89;
  if (v104)
  {
    v105 = v104;
    v106 = *v192;
    do
    {
      for (k = 0; k != v105; ++k)
      {
        if (*v192 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v108 = *(*(&v191 + 1) + 8 * k);
        v109 = objc_autoreleasePoolPush();
        v110 = [v89 objectForKeyedSubscript:v108];
        v223 = v172;
        v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v223 count:1];
        v112 = [v110 sortedArrayUsingDescriptors:v111];
        [v183 setObject:v112 forKeyedSubscript:v108];

        v89 = v175;
        objc_autoreleasePoolPop(v109);
      }

      v105 = [v103 countByEnumeratingWithState:&v191 objects:v224 count:16];
    }

    while (v105);
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v170 = [v183 allKeys];
  v82 = v163;
  v178 = [v170 countByEnumeratingWithState:&v187 objects:v222 count:16];
  if (v178)
  {
    v113 = *v188;
    v162 = *v188;
    do
    {
      v114 = 0;
      do
      {
        if (*v188 != v113)
        {
          objc_enumerationMutation(v170);
        }

        v115 = *(*(&v187 + 1) + 8 * v114);
        v116 = objc_autoreleasePoolPush();
        v117 = [v183 objectForKeyedSubscript:v115];
        v118 = [v117 firstObject];
        v119 = [v118 sessionConfiguration];

        v120 = [MEMORY[0x277D4AB78] createWithManagedObject:v119];
        if (!v120)
        {
          v121 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          v161 = [v119 sessionIdentifier];
          v167 = [v119 sessionStartDate];
          v169 = [v167 stringFromDate];
          v129 = MEMORY[0x277D4ABB0];
          v165 = [v119 sessionManagerState];
          v160 = [v129 convertSessionStateToString:{objc_msgSend(v165, "sessionState")}];
          v130 = [MEMORY[0x277D4AB78] sessionTypeToString:{objc_msgSend(v119, "sessionType")}];
          v131 = [v119 conversation];
          v132 = [v119 primaryHandle];
          *buf = 136316674;
          *&buf[4] = "[SMSessionStore _fetchSessionConfigurationsWithOptions:handler:]_block_invoke";
          v210 = 2112;
          v211 = v161;
          v212 = 2112;
          v213 = v169;
          v214 = 2112;
          v215 = v160;
          v216 = 2112;
          v217 = v130;
          v218 = 2112;
          v219 = v131;
          v220 = 2112;
          v221 = v132;
          _os_log_error_impl(&dword_2304B3000, v121, OS_LOG_TYPE_ERROR, "%s,Could not convert MO to valid config, uuid, %@, startDate, %@, session state, %@, session type, %@, conversation, %@ primaryHandle, %@", buf, 0x48u);

          v113 = v162;
          v82 = v163;

          v128 = v169;
          goto LABEL_65;
        }

        [v82 addObject:v120];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_68;
        }

        v121 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          v122 = [v119 sessionIdentifier];
          v168 = [v119 sessionStartDate];
          v164 = [v168 stringFromDate];
          v123 = MEMORY[0x277D4ABB0];
          v166 = [v119 sessionManagerState];
          v124 = [v123 convertSessionStateToString:{objc_msgSend(v166, "sessionState")}];
          v125 = [MEMORY[0x277D4AB78] sessionTypeToString:{objc_msgSend(v119, "sessionType")}];
          v126 = [v183 objectForKeyedSubscript:v115];
          v127 = [v126 count];
          *buf = 138413314;
          *&buf[4] = v122;
          v210 = 2112;
          v211 = v164;
          v212 = 2112;
          v213 = v124;
          v214 = 2112;
          v215 = v125;
          v216 = 2048;
          v217 = v127;
          _os_log_impl(&dword_2304B3000, v121, OS_LOG_TYPE_INFO, "uuid, %@, startDate, %@, session state, %@, session type, %@, states count, %lu", buf, 0x34u);

          v113 = v162;
          v82 = v163;
          v128 = v164;
LABEL_65:
        }

LABEL_67:

LABEL_68:
        objc_autoreleasePoolPop(v116);
        ++v114;
      }

      while (v178 != v114);
      v133 = [v170 countByEnumeratingWithState:&v187 objects:v222 count:16];
      v178 = v133;
    }

    while (v133);
  }

  v134 = v159;
  v135 = [v159[2].i64[0] timeInADayInterval];
  if (!v135)
  {
    v78 = v157;
    v8 = v158;
    v81 = 0;
    goto LABEL_83;
  }

  v136 = v135;
  v137 = [v159[2].i64[0] pickOneConfigInTimeInADayInterval];

  v78 = v157;
  v8 = v158;
  v81 = 0;
  if (!v137)
  {
LABEL_83:
    v139 = v175;
    goto LABEL_90;
  }

  [v82 sortUsingComparator:&__block_literal_global_20];
  v138 = objc_opt_new();
  v139 = v175;
  if ([v82 count] == 1)
  {
    goto LABEL_87;
  }

  v179 = v138;
  v140 = 0;
  v141 = 0;
  while (1)
  {
    if (![v82 count])
    {
      v149 = v141;
      goto LABEL_86;
    }

    v142 = objc_autoreleasePoolPush();
    v143 = objc_opt_class();
    v144 = [v82 objectAtIndexedSubscript:v140];
    v145 = v140 + 1;
    v146 = [v82 objectAtIndexedSubscript:v140 + 1];
    v147 = [v134[2].i64[0] timeInADayInterval];
    v186 = v141;
    v148 = [v143 areSessionConfigsInTheSameInterval:v144 config2:v146 timeInADayInterval:v147 error:&v186];
    v149 = v186;

    v78 = v157;
    v8 = v158;
    if ((v148 & 1) == 0)
    {
      break;
    }

LABEL_80:
    objc_autoreleasePoolPop(v142);
    v140 = v145;
    v141 = v149;
    v134 = v159;
    if (v145 >= [v82 count] - 1)
    {
      goto LABEL_86;
    }
  }

  if (!v149)
  {
    v82 = v163;
    v150 = [v163 objectAtIndexedSubscript:v140];
    [v179 addObject:v150];

    goto LABEL_80;
  }

  objc_autoreleasePoolPop(v142);
  v134 = v159;
  v82 = v163;
LABEL_86:

  v81 = 0;
  v139 = v175;
  v138 = v179;
LABEL_87:
  if ([v82 count])
  {
    v151 = [v82 objectAtIndexedSubscript:{objc_msgSend(v82, "count") - 1}];
    [v138 addObject:v151];
  }

  v152 = [v138 allObjects];
  v153 = [v152 mutableCopy];
  v154 = v82;
  v82 = v153;

LABEL_90:
  v80 = v156;
  if ([v134[2].i64[0] sortBySessionStartDate])
  {
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_2;
    v184[3] = &unk_2788C71E0;
    v185 = v134[2].i64[0];
    [v82 sortUsingComparator:v184];
  }

  (*(v134[3].i64[0] + 16))();

LABEL_93:
}

uint64_t __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = [a2 sessionStartDate];
  v4 = objc_opt_class();
  v5 = [*(a1 + 40) timeInADayInterval];
  v6 = [v5 startDate];
  v7 = [v4 getDateUsingYearMonthDayFromDate:v3 hoursMinsSecsFromDate:v6];

  v8 = [*(a1 + 40) timeInADayInterval];
  [v8 duration];
  v9 = [v7 dateByAddingTimeInterval:?];

  v10 = objc_opt_class();
  v11 = [*(a1 + 40) timeInADayInterval];
  v12 = [v11 endDate];
  v13 = [v10 getDateUsingYearMonthDayFromDate:v3 hoursMinsSecsFromDate:v12];

  v14 = [*(a1 + 40) timeInADayInterval];
  [v14 duration];
  v16 = [v13 dateByAddingTimeInterval:-v15];

  v23 = 0;
  v17 = [objc_opt_class() isDateBetweenStartDate:v7 endDate:v9 targetDate:v3 error:&v23];
  v18 = v23;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v22 = 0;
    v20 = [objc_opt_class() isDateBetweenStartDate:v16 endDate:v13 targetDate:v3 error:&v22];
    v18 = v22;
    v19 = (v18 == 0) & (v17 | v20);
  }

  return v19;
}

uint64_t __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sessionStartDate];
  v6 = [v4 sessionStartDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __65__SMSessionStore__fetchSessionConfigurationsWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) ascending];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = [v9 sessionStartDate];
  v12 = [v10 sessionStartDate];
  v13 = [v11 compare:v12];

  return v13;
}

- (void)storeSessionManagerStatus:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMSessionStore_storeSessionManagerStatus_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__SMSessionStore_storeSessionManagerStatus_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a1[5], 0}];
  [v2 storeWritableObjects:v3 handler:a1[6]];
}

- (void)updateSessionManagerStatus:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMSessionStore_updateSessionManagerStatus_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__SMSessionStore_updateSessionManagerStatus_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a1[5], 0}];
  [v2 updateWritableObjects:v3 handler:a1[6]];
}

- (void)storeSessionManagerStates:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMSessionStore_storeSessionManagerStates_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)storeSessionConfigurations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMSessionStore_storeSessionConfigurations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeSessionManagerStatus:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke;
  block[3] = &unk_2788C67D8;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke_2;
    v15 = &unk_2788C4F38;
    v3 = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v6 = _Block_copy(&v12);
    [*(a1 + 40) _performBlock:v6 contextType:0 errorHandler:{*(a1 + 48), v12, v13, v14, v15}];

    v7 = v16;
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"requires valid sessionManagerStatus.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v9 errorWithDomain:v10 code:0 userInfo:v7];
    (*(v8 + 16))(v8, v11);
  }
}

void __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionManagerStatusMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v8 setResultType:2];
  v9 = *(a1 + 40);
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke_3;
  v11[3] = &unk_2788C48C0;
  v12 = *(a1 + 48);
  [v9 executeDeleteRequests:v10 context:v3 handler:v11];
}

void __53__SMSessionStore_removeSessionManagerStatus_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,removeSessionManagerStatus,completed, error, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)clearSessionsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SMSessionStore_clearSessionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_clearSessionsWithHandler:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)deleteSessionsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SMSessionStore_deleteSessionsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSessionsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__SMSessionStore__deleteSessionsPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __51__SMSessionStore__deleteSessionsPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionManagerStateMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"date", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)deleteSessionMonitorStatesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMSessionStore_deleteSessionMonitorStatesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSessionMonitorStatesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SMSessionStore__deleteSessionMonitorStatesPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __63__SMSessionStore__deleteSessionMonitorStatesPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionMonitorStateMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"date", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)deleteTriggerDestinationStatesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SMSessionStore_deleteTriggerDestinationStatesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteTriggerDestinationStatesPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__SMSessionStore__deleteTriggerDestinationStatesPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __67__SMSessionStore__deleteTriggerDestinationStatesPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMTriggerDestinationStateMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"date", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)deleteSessionsAssociatedWithSessionConfiguration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SMSessionStore_deleteSessionsAssociatedWithSessionConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSessionsAssociatedWithSessionConfiguration:(id)a3 handler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__SMSessionStore__deleteSessionsAssociatedWithSessionConfiguration_handler___block_invoke;
    aBlock[3] = &unk_2788C7208;
    v17 = v6;
    v18 = self;
    v8 = a4;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];

    v10 = v17;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"requires valid sessionConfiguration.";
    v13 = MEMORY[0x277CBEAC0];
    v14 = a4;
    v10 = [v13 dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v11 errorWithDomain:v12 code:0 userInfo:v10];
    (*(a4 + 2))(v14, v15);
  }
}

void __76__SMSessionStore__deleteSessionsAssociatedWithSessionConfiguration_handler___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionConfigurationMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) sessionID];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"sessionIdentifier", v6];
  [v4 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v8 setResultType:2];
  v9 = *(a1 + 40);
  v11[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v9 executeDeleteRequests:v10 context:v3 handler:&__block_literal_global_125];
}

void __76__SMSessionStore__deleteSessionsAssociatedWithSessionConfiguration_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionStore _deleteSessionsAssociatedWithSessionConfiguration:handler:]_block_invoke_2";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, session deletion failed with error, %@", &v4, 0x16u);
    }
  }
}

- (void)deleteSMLocationMOPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMSessionStore_deleteSMLocationMOPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSMLocationMOPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__SMSessionStore__deleteSMLocationMOPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __55__SMSessionStore__deleteSMLocationMOPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMLocationMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"date", a1[4]];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:100];
  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)deleteSMWorkoutEventMOPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SMSessionStore_deleteSMWorkoutEventMOPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSMWorkoutEventMOPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__SMSessionStore__deleteSMWorkoutEventMOPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __59__SMSessionStore__deleteSMWorkoutEventMOPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMWorkoutEventMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"date", a1[4]];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:100];
  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a5)
  {
    if (v6)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D01448];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"the SMSessionStore doesn't support enumeration";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v11 = [v8 errorWithDomain:v9 code:7 userInfo:v10];

      v12 = v11;
      *a5 = v11;
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", v16, 2u);
      }

      *a5 = _RTErrorInvalidParameterCreate(@"options");
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v16, 2u);
    }
  }

  return 0;
}

- (void)fetchSessionCountWithDateInterval:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMSessionStore_fetchSessionCountWithDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchSessionCountWithDateInterval:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMSessionStore _fetchSessionCountWithDateInterval:handler:]";
      v20 = 1024;
      LODWORD(v21) = 880;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[SMSessionStore _fetchSessionCountWithDateInterval:handler:]";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, fetching session count with date interval, %@", buf, 0x16u);
    }
  }

  v10 = objc_alloc(MEMORY[0x277D4AB80]);
  LOBYTE(v14) = 0;
  v11 = [v10 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:*MEMORY[0x277D4AF00] sortBySessionStartDate:0 ascending:0 sessionTypes:0 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v14 dateInterval:v6 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SMSessionStore__fetchSessionCountWithDateInterval_handler___block_invoke;
  v15[3] = &unk_2788C5558;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [(SMSessionStore *)self _fetchSessionConfigurationsWithOptions:v11 handler:v15];
}

void __61__SMSessionStore__fetchSessionCountWithDateInterval_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v25 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "[SMSessionStore _fetchSessionCountWithDateInterval:handler:]_block_invoke";
      v43 = 2048;
      v44 = v28;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, fetched session configurations with count, %lu", buf, 0x16u);
    }
  }

  v6 = [v28 valueForKeyPath:@"@distinctUnionOfObjects.sessionID"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v28 count];
      v10 = [v6 count];
      *buf = 136315906;
      v42 = "[SMSessionStore _fetchSessionCountWithDateInterval:handler:]_block_invoke";
      v43 = 2112;
      v44 = v8;
      v45 = 2048;
      v46 = v9;
      v47 = 2048;
      v48 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, fetched session configs with interval, %@, count, %lu, unique count, %lu", buf, 0x2Au);
    }
  }

  v24 = a1;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v30 = 0;
    v27 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = v28;
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v31 + 1) + 8 * j);
              v19 = [v18 sessionID];
              if (v19 == v12 && ([v18 conversation], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v21 = v20;
                v22 = [v18 conversation];
                v23 = [v22 isGroup];

                if (v23)
                {
                  ++v30;
                  goto LABEL_27;
                }
              }

              else
              {
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  (*(*(v24 + 40) + 16))(*(v24 + 40), [obj count], v30, v25);
}

- (void)storeTriggerDestinationStates:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMSessionStore_storeTriggerDestinationStates_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchTriggerDestinationStateWithSessionID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SMSessionStore_fetchTriggerDestinationStateWithSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchTriggerDestinationStateWithSessionID:(id)a3 handler:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__SMSessionStore__fetchTriggerDestinationStateWithSessionID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v17 = v6;
    v8 = v7;
    v18 = v8;
    v9 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SMSessionStore__fetchTriggerDestinationStateWithSessionID_handler___block_invoke_142;
    v14[3] = &unk_2788C48C0;
    v15 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v14];

    v10 = v17;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSessionStore _fetchTriggerDestinationStateWithSessionID:handler:]";
      v21 = 1024;
      LODWORD(v22) = 952;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSessionStore _fetchTriggerDestinationStateWithSessionID:handler:]";
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%s: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __69__SMSessionStore__fetchTriggerDestinationStateWithSessionID_handler___block_invoke(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMTriggerDestinationStateMO fetchRequest];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:0];
  v44[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [v4 setSortDescriptors:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"sessionIdentifier_v2", v8];
    [v5 addObject:v9];
  }

  if ([v5 count])
  {
    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v10];
  }

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v34 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v34];
  v12 = v34;
  v13 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 count];
      *buf = 136315907;
      v37 = "[SMSessionStore _fetchTriggerDestinationStateWithSessionID:handler:]_block_invoke";
      v38 = 2117;
      v39 = v4;
      v40 = 2048;
      v41 = v15;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (!v12 && [v11 count])
  {
    v25 = v11;
    v26 = a1;
    v27 = v5;
    v28 = v4;
    v29 = v3;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      v20 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v37 = "[SMSessionStore _fetchTriggerDestinationStateWithSessionID:handler:]_block_invoke";
              v38 = 2112;
              v39 = v22;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%s, triggerDestinationState, %@", buf, 0x16u);
            }
          }

          v24 = [MEMORY[0x277D4AC30] createWithManagedObject:v22];
          [v13 addObject:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    v4 = v28;
    v3 = v29;
    a1 = v26;
    v5 = v27;
    v12 = 0;
    v11 = v25;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clearTriggerDestinationStatesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SMSessionStore_clearTriggerDestinationStatesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_clearTriggerDestinationStatesWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)storeSessionMonitorStates:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMSessionStore_storeSessionMonitorStates_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchMostRecentSessionMonitorStateWithSessionID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SMSessionStore_fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchMostRecentSessionMonitorStateWithSessionID:(id)a3 handler:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__SMSessionStore__fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v17 = v6;
    v8 = v7;
    v18 = v8;
    v9 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__SMSessionStore__fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke_144;
    v14[3] = &unk_2788C48C0;
    v15 = v8;
    [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v14];

    v10 = v17;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSessionStore _fetchMostRecentSessionMonitorStateWithSessionID:handler:]";
      v21 = 1024;
      LODWORD(v22) = 1045;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSessionStore _fetchMostRecentSessionMonitorStateWithSessionID:handler:]";
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%s: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __75__SMSessionStore__fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSessionMonitorStateMO fetchRequest];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:0];
  v46[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  [v4 setSortDescriptors:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"sessionIdentifier", v8];
    [v5 addObject:v9];
  }

  if ([v5 count])
  {
    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v10];
  }

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v36 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v36];
  v12 = v36;
  v13 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 count];
      *buf = 136315907;
      v39 = "[SMSessionStore _fetchMostRecentSessionMonitorStateWithSessionID:handler:]_block_invoke";
      v40 = 2117;
      v41 = v4;
      v42 = 2048;
      v43 = v15;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (!v12 && [v11 count])
  {
    v27 = v11;
    v28 = a1;
    v29 = v5;
    v30 = v4;
    v31 = v3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      v20 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v39 = "[SMSessionStore _fetchMostRecentSessionMonitorStateWithSessionID:handler:]_block_invoke";
              v40 = 2112;
              v41 = v22;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%s, sessionMonitorState, %@", buf, 0x16u);
            }
          }

          v24 = [MEMORY[0x277D4ABD0] createWithManagedObject:v22];
          [v13 addObject:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v18);
    }

    v4 = v30;
    v3 = v31;
    a1 = v28;
    v5 = v29;
    v11 = v27;
  }

  v25 = *(a1 + 40);
  v26 = [v13 firstObject];
  (*(v25 + 16))(v25, v26, v12);
}

- (void)clearSessionMonitorStatesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SMSessionStore_clearSessionMonitorStatesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_clearSessionMonitorStatesWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

+ (id)getDateUsingYearMonthDayFromDate:(id)a3 hoursMinsSecsFromDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v9 = [v8 components:28 fromDate:v7];

  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 components:224 fromDate:v6];

  [v11 setDay:{objc_msgSend(v9, "day")}];
  [v11 setMonth:{objc_msgSend(v9, "month")}];
  [v11 setYear:{objc_msgSend(v9, "year")}];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 dateFromComponents:v11];

  return v13;
}

+ (BOOL)isDateBetweenStartDate:(id)a3 endDate:(id)a4 targetDate:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v15 = @"startDate";
    goto LABEL_19;
  }

  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", v21, 2u);
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v15 = @"endDate";
LABEL_19:
    v18 = _RTErrorInvalidParameterCreate(v15);
    v13 = 0;
LABEL_23:
    *a6 = v18;
    goto LABEL_24;
  }

  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: targetDate", v20, 2u);
    }

    if (a6)
    {
      v15 = @"targetDate";
      goto LABEL_19;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_24;
  }

  if ([v9 compare:v11] == 1)
  {
    v13 = 0;
    if (!a6)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = [v12 compare:v10] != 1;
  if (a6)
  {
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

LABEL_24:

  return v13;
}

+ (BOOL)areSessionConfigsInTheSameInterval:(id)a3 config2:(id)a4 timeInADayInterval:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      v41 = a6;
      v12 = objc_opt_class();
      v13 = [v9 sessionStartDate];
      v14 = [v11 startDate];
      v15 = [v12 getDateUsingYearMonthDayFromDate:v13 hoursMinsSecsFromDate:v14];

      [v11 duration];
      v39 = [v15 dateByAddingTimeInterval:?];
      v16 = objc_opt_class();
      v17 = [v9 sessionStartDate];
      v18 = [v11 endDate];
      v19 = [v16 getDateUsingYearMonthDayFromDate:v17 hoursMinsSecsFromDate:v18];

      [v11 duration];
      v43 = v19;
      v42 = [v19 dateByAddingTimeInterval:-v20];
      v21 = objc_opt_class();
      v22 = [v10 sessionStartDate];
      v23 = [v11 startDate];
      [v21 getDateUsingYearMonthDayFromDate:v22 hoursMinsSecsFromDate:v23];
      v25 = v24 = v10;

      [v11 duration];
      v26 = [v25 dateByAddingTimeInterval:?];
      v27 = objc_opt_class();
      v40 = v24;
      v28 = [v24 sessionStartDate];
      v29 = [v11 endDate];
      v30 = [v27 getDateUsingYearMonthDayFromDate:v28 hoursMinsSecsFromDate:v29];

      [v11 duration];
      v32 = [v30 dateByAddingTimeInterval:-v31];
      if ([v15 isEqualToDate:v25] && (objc_msgSend(v39, "isEqualToDate:", v26) & 1) != 0)
      {
        v33 = 1;
        v34 = v41;
        if (!v41)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v34 = v41;
        if ([v43 isEqualToDate:v30])
        {
          v33 = [v42 isEqualToDate:v32];
          if (!v41)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v33 = 0;
          if (!v41)
          {
LABEL_22:

            v10 = v40;
            goto LABEL_23;
          }
        }
      }

      *v34 = 0;
      goto LABEL_22;
    }

    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: config2", v44, 2u);
    }

    if (a6)
    {
      v36 = @"config2";
      goto LABEL_18;
    }

LABEL_19:
    v33 = 0;
    goto LABEL_23;
  }

  v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: config1", buf, 2u);
  }

  if (!a6)
  {
    goto LABEL_19;
  }

  v36 = @"config1";
LABEL_18:
  _RTErrorInvalidParameterCreate(v36);
  *a6 = v33 = 0;
LABEL_23:

  return v33;
}

- (void)_logStoreWithReason:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__SMSessionStore__logStoreWithReason_handler___block_invoke;
  v13[3] = &unk_2788C4FB0;
  v14 = v7;
  v16 = a2;
  v15 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SMSessionStore__logStoreWithReason_handler___block_invoke_161;
  v11[3] = &unk_2788C48C0;
  v12 = v15;
  v9 = v15;
  v10 = v7;
  [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v11];
}

void __46__SMSessionStore__logStoreWithReason_handler___block_invoke(uint64_t a1, void *a2)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v34 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "start logging local store with reason, %@", buf, 0xCu);
    }
  }

  v23 = a1;
  v6 = +[SMSessionManagerStateMO fetchRequest];
  [v6 setReturnsObjectsAsFaults:0];
  v42[0] = @"sessionConfiguration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  [v6 setRelationshipKeyPathsForPrefetching:v7];

  [v6 setFetchLimit:5];
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D86220];
  v24 = v6;
  v25 = v3;
  do
  {
    context = objc_autoreleasePoolPush();
    v32 = 0;
    v11 = [v3 executeFetchRequest:v6 error:&v32];
    v27 = v32;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v11;
    v12 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = [MEMORY[0x277D4ABB0] createWithManagedObject:*(*(&v28 + 1) + 8 * i)];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              ++v8;
              *buf = 134218243;
              v34 = v8;
              v35 = 2117;
              v36 = v16;
              _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%lu, sessionManagerState, %{sensitive}@", buf, 0x16u);
            }
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v28 objects:v41 count:16];
      }

      while (v13);
    }

    v6 = v24;
    [v24 setFetchOffset:{objc_msgSend(v24, "fetchOffset") + objc_msgSend(v9, "count")}];
    v3 = v25;
    [v25 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([v9 count] && v8 <= 9 && !v27);
  if (*(v23 + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(v23 + 32);
      *buf = 138412290;
      v34 = v19;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "end logging local store with reason, %@", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromSelector(*(v23 + 48));
      *buf = 138413059;
      v34 = v21;
      v35 = 2117;
      v36 = v24;
      v37 = 2048;
      v38 = v8;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v22 = *(v23 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v27);
  }
}

uint64_t __46__SMSessionStore__logStoreWithReason_handler___block_invoke_161(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)logStoreWithReason:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SMSessionStore_logStoreWithReason_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end