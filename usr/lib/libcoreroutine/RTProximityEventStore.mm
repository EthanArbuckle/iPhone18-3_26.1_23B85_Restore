@interface RTProximityEventStore
- (id)_getPredicateForEventIDs:(id)ds;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (void)_deleteProximityEventWithUUID:(id)d handler:(id)handler;
- (void)_fetchProximityEventsFromDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchProximityEventsFromEventIDs:(id)ds handler:(id)handler;
- (void)_purgeProximityEventsPredating:(id)predating handler:(id)handler;
- (void)_storeProximityEvent:(id)event handler:(id)handler;
- (void)clearWithHandler:(id)handler;
- (void)deleteProximityEventWithUUID:(id)d handler:(id)handler;
- (void)fetchProximityEventsFromDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchProximityEventsFromEventIDs:(id)ds handler:(id)handler;
- (void)purgeProximityEventsPredating:(id)predating handler:(id)handler;
- (void)storeProximityEvent:(id)event handler:(id)handler;
@end

@implementation RTProximityEventStore

- (void)fetchProximityEventsFromDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__RTProximityEventStore_fetchProximityEventsFromDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchProximityEventsFromDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTProximityEventStore _fetchProximityEventsFromDate:endDate:handler:]";
      v38 = 1024;
      v39 = 43;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
    }

    if (endDateCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v37 = "[RTProximityEventStore _fetchProximityEventsFromDate:endDate:handler:]";
    v38 = 1024;
    v39 = 44;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTProximityEventStore _fetchProximityEventsFromDate:endDate:handler:]";
      v38 = 1024;
      v39 = 45;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  if ([dateCopy compare:endDateCopy] == 1)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    v17 = MEMORY[0x277CCACA8];
    getFormattedDateString = [dateCopy getFormattedDateString];
    getFormattedDateString2 = [endDateCopy getFormattedDateString];
    v20 = [v17 stringWithFormat:@"startDate, %@, endDate, %@", getFormattedDateString, getFormattedDateString2];
    v35 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v22 = [v15 errorWithDomain:v16 code:7 userInfo:v21];
    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v22);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__RTProximityEventStore__fetchProximityEventsFromDate_endDate_handler___block_invoke;
    aBlock[3] = &unk_2788CB520;
    v29 = endDateCopy;
    v30 = dateCopy;
    selfCopy = self;
    v33 = a2;
    v24 = handlerCopy;
    v32 = v24;
    v25 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__RTProximityEventStore__fetchProximityEventsFromDate_endDate_handler___block_invoke_18;
    v26[3] = &unk_2788C48C0;
    v27 = v24;
    [(RTStore *)self _performBlock:v25 contextType:1 errorHandler:v26];

    objc_autoreleasePoolPop(v23);
  }
}

void __71__RTProximityEventStore__fetchProximityEventsFromDate_endDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTProximityEventMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@ AND %K >= %@", @"startDate", *(a1 + 32), @"endDate", *(a1 + 40)];
  [v4 setPredicate:v5];

  v28 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v28];
  v7 = v28;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 64));
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
    v22 = a1;
    v23 = v3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
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
          v17 = [MEMORY[0x277D01278] createWithManagedObject:v15];
          [v9 addObject:v17];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    a1 = v22;
    v3 = v23;
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchProximityEventsFromEventIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTProximityEventStore_fetchProximityEventsFromEventIDs_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchProximityEventsFromEventIDs:(id)ds handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (dsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTProximityEventStore _fetchProximityEventsFromEventIDs:handler:]";
    v29 = 1024;
    v30 = 107;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventIDs (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTProximityEventStore _fetchProximityEventsFromEventIDs:handler:]";
      v29 = 1024;
      v30 = 108;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if ([dsCopy count])
  {
    v12 = objc_autoreleasePoolPush();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__RTProximityEventStore__fetchProximityEventsFromEventIDs_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    aBlock[4] = self;
    v22 = dsCopy;
    v24 = a2;
    v13 = v9;
    v23 = v13;
    v14 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__RTProximityEventStore__fetchProximityEventsFromEventIDs_handler___block_invoke_23;
    v19[3] = &unk_2788C48C0;
    v20 = v13;
    [(RTStore *)self _performBlock:v14 contextType:1 errorHandler:v19];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"eventIDs requires at least one element to fetch";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];
    (v9)[2](v9, MEMORY[0x277CBEBF8], v18);
  }
}

void __67__RTProximityEventStore__fetchProximityEventsFromEventIDs_handler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTProximityEventMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) _getPredicateForEventIDs:*(a1 + 40)];
  [v4 setPredicate:v5];

  v28 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v28];
  v7 = v28;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
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
    v22 = a1;
    v23 = v3;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
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
          v17 = [MEMORY[0x277D01278] createWithManagedObject:v15];
          [v9 addObject:v17];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    a1 = v22;
    v3 = v23;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_getPredicateForEventIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"eventID", v10];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];
  [v4 removeAllObjects];

  objc_autoreleasePoolPop(context);

  return v13;
}

- (void)storeProximityEvent:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTProximityEventStore_storeProximityEvent_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = eventCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

- (void)_storeProximityEvent:(id)event handler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = MEMORY[0x277CBEA60];
  handlerCopy = handler;
  eventCopy2 = event;
  v9 = [v6 arrayWithObjects:&eventCopy count:1];

  [(RTStore *)self storeWritableObjects:v9 handler:handlerCopy, eventCopy, v11];
}

- (void)clearWithHandler:(id)handler
{
  v6[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:handlerCopy];
}

- (void)deleteProximityEventWithUUID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTProximityEventStore_deleteProximityEventWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_deleteProximityEventWithUUID:(id)d handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dCopy)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __63__RTProximityEventStore__deleteProximityEventWithUUID_handler___block_invoke;
      v17 = &unk_2788C4F38;
      v18 = dCopy;
      selfCopy = self;
      v8 = handlerCopy;
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
      v22[0] = @"requires valid proximity event UUID.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v13 = [v11 errorWithDomain:v12 code:0 userInfo:v10];
      (*(handlerCopy + 2))(handlerCopy, v13);
    }
  }
}

void __63__RTProximityEventStore__deleteProximityEventWithUUID_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTProximityEventMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"eventID", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)purgeProximityEventsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTProximityEventStore_purgeProximityEventsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)_purgeProximityEventsPredating:(id)predating handler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"endDate";
  handlerCopy = handler;
  predatingCopy = predating;
  v10 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"the proximity event store doesn't support enumeration";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return 0;
}

@end