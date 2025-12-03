@interface RTPlaceInferenceQueryStore
- (void)_fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler;
- (void)_purgePlaceInferenceQueriesPredating:(id)predating handler:(id)handler;
- (void)_storePlaceInferenceQuery:(id)query handler:(id)handler;
- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending handler:(id)handler;
- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler;
- (void)purgePlaceInferenceQueriesPredating:(id)predating handler:(id)handler;
- (void)storePlaceInferenceQuery:(id)query handler:(id)handler;
@end

@implementation RTPlaceInferenceQueryStore

- (void)_fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler
{
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__RTPlaceInferenceQueryStore__fetchPlaceInferenceQueriesWithDateInterval_ascending_limit_handler___block_invoke;
    aBlock[3] = &unk_2788CB788;
    v19 = intervalCopy;
    ascendingCopy = ascending;
    v20 = limitCopy;
    v22 = a2;
    v14 = handlerCopy;
    v21 = v14;
    v15 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __98__RTPlaceInferenceQueryStore__fetchPlaceInferenceQueriesWithDateInterval_ascending_limit_handler___block_invoke_10;
    v16[3] = &unk_2788C48C0;
    v17 = v14;
    [(RTStore *)self _performBlock:v15 contextType:1 errorHandler:v16];
  }
}

void __98__RTPlaceInferenceQueryStore__fetchPlaceInferenceQueriesWithDateInterval_ascending_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTPlaceInferenceQueryMO fetchRequest];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = [v5 startDate];
    v8 = [*(a1 + 32) endDate];
    v9 = [v6 predicateWithFormat:@"%K >= %@ && %K <= %@", @"date", v7, @"date", v8];
    [v4 setPredicate:v9];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    [v4 setFetchLimit:{objc_msgSend(v10, "unsignedIntegerValue")}];
  }

  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:*(a1 + 64)];
  v41[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  [v4 setSortDescriptors:v12];

  v31 = 0;
  v13 = [v3 executeFetchRequest:v4 error:&v31];
  v14 = v31;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = NSStringFromSelector(*(a1 + 56));
      v24 = [v13 count];
      *buf = 138413058;
      v34 = v23;
      v35 = 2112;
      v36 = v4;
      v37 = 2048;
      v38 = v24;
      v39 = 2112;
      v40 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v26 = v3;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v13;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x277D011E8] createWithManagedObject:*(*(&v27 + 1) + 8 * v21)];
          if (v22)
          {
            [v16 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    v13 = v25;
    v3 = v26;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler
{
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTPlaceInferenceQueryStore_fetchPlaceInferenceQueriesWithDateInterval_ascending_limit_handler___block_invoke;
  block[3] = &unk_2788C6440;
  block[4] = self;
  v18 = intervalCopy;
  ascendingCopy = ascending;
  v19 = limitCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = limitCopy;
  v16 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending handler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__RTPlaceInferenceQueryStore_fetchPlaceInferenceQueriesWithDateInterval_ascending_handler___block_invoke;
  v13[3] = &unk_2788C4690;
  v13[4] = self;
  v14 = intervalCopy;
  ascendingCopy = ascending;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = intervalCopy;
  dispatch_async(queue, v13);
}

- (void)_storePlaceInferenceQuery:(id)query handler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v6 = MEMORY[0x277CBEA60];
  handlerCopy = handler;
  queryCopy2 = query;
  v9 = [v6 arrayWithObjects:&queryCopy count:1];

  [(RTStore *)self storeWritableObjects:v9 handler:handlerCopy, queryCopy, v11];
}

- (void)storePlaceInferenceQuery:(id)query handler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTPlaceInferenceQueryStore_storePlaceInferenceQuery_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = queryCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

- (void)_purgePlaceInferenceQueriesPredating:(id)predating handler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"date";
  handlerCopy = handler;
  predatingCopy = predating;
  v10 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
}

- (void)purgePlaceInferenceQueriesPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTPlaceInferenceQueryStore_purgePlaceInferenceQueriesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

@end