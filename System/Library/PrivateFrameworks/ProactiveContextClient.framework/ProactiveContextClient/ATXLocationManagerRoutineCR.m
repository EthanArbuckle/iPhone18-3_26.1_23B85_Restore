@interface ATXLocationManagerRoutineCR
+ (id)closestLOI:(id)a3 toLocation:(id)a4;
- (ATXLocationManagerRoutineCR)init;
- (ATXLocationManagerRoutineCR)initWithRoutineManager:(id)a3;
- (unint64_t)fetchRoutineModeFromLocation:(id)a3;
- (void)fetchClosestLOIWithinDistance:(double)a3 ofLocation:(id)a4 reply:(id)a5;
- (void)fetchLOILocationOfType:(int64_t)a3 reply:(id)a4;
- (void)fetchLOIVisitedDuring:(id)a3 reply:(id)a4;
- (void)fetchNextPredictedLOIFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 requireHighConfidence:(BOOL)a6 reply:(id)a7;
- (void)fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 requireHighConfidence:(BOOL)a5 reply:(id)a6;
@end

@implementation ATXLocationManagerRoutineCR

- (ATXLocationManagerRoutineCR)init
{
  v3 = objc_opt_new();
  v4 = [(ATXLocationManagerRoutineCR *)self initWithRoutineManager:v3];

  return v4;
}

- (ATXLocationManagerRoutineCR)initWithRoutineManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXLocationManagerRoutineCR;
  v6 = [(ATXLocationManagerRoutineCR *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routineManager, a3);
  }

  return v7;
}

- (void)fetchClosestLOIWithinDistance:(double)a3 ofLocation:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  routineManager = self->_routineManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATXLocationManagerRoutineCR_fetchClosestLOIWithinDistance_ofLocation_reply___block_invoke;
  v13[3] = &unk_279AB7E40;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v11 ofLocation:v13 withHandler:a3];
}

void __78__ATXLocationManagerRoutineCR_fetchClosestLOIWithinDistance_ofLocation_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v7 = [ATXLocationManagerRoutineCR closestLOI:a2 toLocation:*(a1 + 32)];
    v6 = createLOIFromRTLOI(v7);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchLOILocationOfType:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  routineManager = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ATXLocationManagerRoutineCR_fetchLOILocationOfType_reply___block_invoke;
  v9[3] = &unk_279AB7E68;
  v10 = v6;
  v8 = v6;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestOfType:a3 withHandler:v9];
}

void __60__ATXLocationManagerRoutineCR_fetchLOILocationOfType_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v13 = [a2 firstObject];
    if (v13)
    {
      v6 = objc_alloc(MEMORY[0x277CE41F8]);
      v7 = [v13 location];
      [v7 latitude];
      v9 = v8;
      v10 = [v13 location];
      [v10 longitude];
      v12 = [v6 initWithLatitude:v9 longitude:v11];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)fetchLOIVisitedDuring:(id)a3 reply:(id)a4
{
  v6 = a4;
  routineManager = self->_routineManager;
  v8 = a3;
  v9 = [v8 startDate];
  v10 = [v8 endDate];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__ATXLocationManagerRoutineCR_fetchLOIVisitedDuring_reply___block_invoke;
  v12[3] = &unk_279AB7E68;
  v13 = v6;
  v11 = v6;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestVisitedBetweenStartDate:v9 endDate:v10 withHandler:v12];
}

void __59__ATXLocationManagerRoutineCR_fetchLOIVisitedDuring_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = createLOIFromRTLOI(v13);
          [v7 addObject:{v15, v17}];

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchNextPredictedLOIFromLocation:(id)a3 startDate:(id)a4 timeInterval:(double)a5 requireHighConfidence:(BOOL)a6 reply:(id)a7
{
  v12 = a7;
  routineManager = self->_routineManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke;
  v15[3] = &unk_279AB7EB8;
  v16 = v12;
  v17 = a6;
  v14 = v12;
  [(RTRoutineManager *)routineManager fetchNextPredictedLocationsOfInterestFromLocation:a3 startDate:a4 timeInterval:v15 withHandler:a5];
}

void __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v23 = v5;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      v26 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 locationOfInterest];
          v12 = [v11 type];

          v13 = __atxlog_handle_dailyroutines();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v9 locationOfInterest];
            v15 = [v14 type];
            [v9 confidence];
            *buf = 134218240;
            *&buf[4] = v15;
            *&buf[12] = 2048;
            *&buf[14] = v16;
            _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_INFO, "Predicted next loi type: %ld, confidence: %lf", buf, 0x16u);
          }

          if (*(a1 + 40) == 1)
          {
            [v9 confidence];
            v18 = v17 >= 1.0;
          }

          else
          {
            v18 = 1;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v33 = 1;
          v19 = [v9 sources];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke_8;
          v27[3] = &unk_279AB7E90;
          v27[4] = buf;
          [v19 enumerateObjectsUsingBlock:v27];

          if (v18 && *(*&buf[8] + 24) == 1)
          {
            v20 = [v9 locationOfInterest];
            v21 = createLOIFromRTLOIAndType(v20, v12);
            [v24 addObject:v21];
          }

          _Block_object_dispose(buf, 8);
          objc_autoreleasePoolPop(v10);
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 32) + 16))();
    v6 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)fetchPredictedExitDatesFromLocation:(id)a3 onDate:(id)a4 requireHighConfidence:(BOOL)a5 reply:(id)a6
{
  v10 = a6;
  routineManager = self->_routineManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__ATXLocationManagerRoutineCR_fetchPredictedExitDatesFromLocation_onDate_requireHighConfidence_reply___block_invoke;
  v13[3] = &unk_279AB7EB8;
  v14 = v10;
  v15 = a5;
  v12 = v10;
  [(RTRoutineManager *)routineManager fetchPredictedExitDatesFromLocation:a3 onDate:a4 withHandler:v13];
}

void __102__ATXLocationManagerRoutineCR_fetchPredictedExitDatesFromLocation_onDate_requireHighConfidence_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = __atxlog_handle_dailyroutines();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v12 date];
            [v12 uncertainty];
            v16 = v15;
            [v12 confidence];
            *buf = 138412802;
            v27 = v14;
            v28 = 2048;
            v29 = v16;
            v30 = 2048;
            v31 = v17;
            _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_INFO, "Predicted Exit Time: %@, uncertainty: %lf, confidence %lf", buf, 0x20u);
          }

          if (*(a1 + 40) == 1)
          {
            [v12 confidence];
            if (v18 < 0.75)
            {
              continue;
            }
          }

          v19 = [v12 date];
          [v6 addObject:v19];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
    v5 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fetchRoutineModeFromLocation:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  routineManager = self->_routineManager;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke;
  v13 = &unk_279AB7EE0;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [(RTRoutineManager *)routineManager fetchRoutineModeFromLocation:v4 withHandler:&v10];
  [MEMORY[0x277D425A0] waitForSemaphore:v7 timeoutSeconds:0 onAcquire:&__block_literal_global_4 onTimeout:{1.0, v10, v11, v12, v13}];
  v8 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    switch(a2)
    {
      case 0:
        *(*(*(a1 + 40) + 8) + 24) = 0;
        goto LABEL_12;
      case 2:
        v7 = *(*(a1 + 40) + 8);
        v8 = 1;
        break;
      case 1:
        v7 = *(*(a1 + 40) + 8);
        v8 = 2;
        break;
      default:
        goto LABEL_12;
    }

    *(v7 + 24) = v8;
    goto LABEL_12;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_cold_1(v5, v6);
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 32));
}

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_13()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_13_cold_1(v0);
  }
}

+ (id)closestLOI:(id)a3 toLocation:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v11 = INFINITY;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CE41F8]);
        v15 = [v13 location];
        [v15 latitude];
        v17 = v16;
        v18 = [v13 location];
        [v18 longitude];
        v20 = [v14 initWithLatitude:v17 longitude:v19];

        [v6 distanceFromLocation:v20];
        if (v21 < v11)
        {
          v22 = v21;
          v23 = v13;

          v11 = v22;
          v9 = v23;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "Error while fetching routine mode from CoreRoutine. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end