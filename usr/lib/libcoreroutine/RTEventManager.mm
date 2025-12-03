@interface RTEventManager
- (RTEventManager)init;
- (RTEventManager)initWithEventStore:(id)store;
- (id)calendars;
- (id)calendarsExcludingSuggested;
- (id)eventsBetweenStartDate:(id)date andEndDate:(id)endDate calendars:(id)calendars;
- (id)eventsSortedByEndDateBetweenStartDate:(id)date andEndDate:(id)endDate;
- (id)eventsSortedByStartDateBetweenStartDate:(id)date andEndDate:(id)endDate;
- (id)eventsSortedByStartDateBetweenStartDate:(id)date andEndDate:(id)endDate calendars:(id)calendars;
- (void)_fetchCurrentlyInEventWithHandler:(id)handler;
- (void)_fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate includeSuggestions:(BOOL)suggestions withHandler:(id)handler;
- (void)_fetchEventsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchFreeDateIntervalsBetweenStartDate:(id)date endDate:(id)endDate filterAllDayEvents:(BOOL)events filterFreeTimeEvents:(BOOL)timeEvents handler:(id)handler;
- (void)_fetchLastEventEndDateWithHandler:(id)handler;
- (void)_fetchNextFreeStartDateWithHandler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)fetchCurrentlyInEventWithHandler:(id)handler;
- (void)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate includeSuggestions:(BOOL)suggestions withHandler:(id)handler;
- (void)fetchEventsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchFreeDateIntervalsBetweenStartDate:(id)date endDate:(id)endDate filterAllDayEvents:(BOOL)events filterFreeTimeEvents:(BOOL)timeEvents handler:(id)handler;
- (void)fetchLastEventEndDateWithHandler:(id)handler;
- (void)fetchNextFreeStartDateWithHandler:(id)handler;
- (void)transientObjectDidCreateBackingObject:(id)object;
- (void)transientObjectDidReleaseBackingObject:(id)object;
@end

@implementation RTEventManager

id __22__RTEventManager_init__block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

- (RTEventManager)init
{
  v3 = [[RTTransientObject alloc] initWithCreationBlock:&__block_literal_global_145 timeout:60.0];
  v4 = [(RTEventManager *)self initWithEventStore:v3];

  return v4;
}

- (RTEventManager)initWithEventStore:(id)store
{
  v21 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (storeCopy)
  {
    v16.receiver = self;
    v16.super_class = RTEventManager;
    v6 = [(RTNotifier *)&v16 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_eventStore, store);
      v8 = objc_opt_class();
      if (v8 == objc_opt_class())
      {
        [storeCopy setTransientObjectDelegate:v7];
      }

      v9 = [RTInvocationDispatcher alloc];
      queue = [(RTNotifier *)v7 queue];
      v11 = [(RTInvocationDispatcher *)v9 initWithQueue:queue];
      invocationDispatcher = v7->_invocationDispatcher;
      v7->_invocationDispatcher = v11;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTEventManager initWithEventStore:]";
      v19 = 1024;
      v20 = 123;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventStore (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_shutdownWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)transientObjectDidCreateBackingObject:(id)object
{
  objectCopy = object;
  objc_initWeak(&location, self);
  if ([objectCopy isEqual:self->_eventStore])
  {
    eventStore = self->_eventStore;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__RTEventManager_transientObjectDidCreateBackingObject___block_invoke;
    v6[3] = &unk_2788D2310;
    objc_copyWeak(&v7, &location);
    [eventStore requestAccessToEntityType:0 completion:v6];
    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __56__RTEventManager_transientObjectDidCreateBackingObject___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__RTEventManager_transientObjectDidCreateBackingObject___block_invoke_2;
    block[3] = &unk_2788C53C8;
    v12 = a2;
    v10 = v5;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

void __56__RTEventManager_transientObjectDidCreateBackingObject___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "access to event entity type granted, %@, error, %@", &v8, 0x16u);
    }
  }

  [*(a1 + 40) setAccessToEventsGranted:*(a1 + 48)];
  v5 = [*(a1 + 40) invocationDispatcher];
  v6 = [v5 invocationsPending];

  if (v6)
  {
    v7 = [*(a1 + 40) invocationDispatcher];
    [v7 dispatchPendingInvocations];
  }
}

- (void)transientObjectDidReleaseBackingObject:(id)object
{
  objectCopy = object;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTEventManager_transientObjectDidReleaseBackingObject___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = objectCopy;
  selfCopy = self;
  v6 = objectCopy;
  dispatch_async(queue, v7);
}

uint64_t __57__RTEventManager_transientObjectDidReleaseBackingObject___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 48)];
  if (result)
  {
    *(*(a1 + 40) + 32) = 0;
  }

  return result;
}

- (id)eventsBetweenStartDate:(id)date andEndDate:(id)endDate calendars:(id)calendars
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  calendarsCopy = calendars;
  if (![(RTEventManager *)self accessToEventsGranted])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[RTEventManager eventsBetweenStartDate:andEndDate:calendars:]";
      v23 = 1024;
      LODWORD(v24) = 189;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "no access to event store (in %s:%d)", &v21, 0x12u);
    }
  }

  v12 = 0;
  if (dateCopy && endDateCopy)
  {
    eventStore = [(RTEventManager *)self eventStore];
    v14 = [eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:calendarsCopy];

    eventStore2 = [(RTEventManager *)self eventStore];
    v12 = [eventStore2 eventsMatchingPredicate:v14];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v12 count];
        stringFromDate = [dateCopy stringFromDate];
        stringFromDate2 = [endDateCopy stringFromDate];
        v21 = 134218498;
        v22 = v18;
        v23 = 2112;
        v24 = stringFromDate;
        v25 = 2112;
        v26 = stringFromDate2;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%lu events between start date, %@, and end date, %@", &v21, 0x20u);
      }
    }
  }

  return v12;
}

- (id)eventsSortedByEndDateBetweenStartDate:(id)date andEndDate:(id)endDate
{
  v4 = [(RTEventManager *)self eventsBetweenStartDate:date andEndDate:endDate];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_68_1];

  return v5;
}

uint64_t __67__RTEventManager_eventsSortedByEndDateBetweenStartDate_andEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)eventsSortedByStartDateBetweenStartDate:(id)date andEndDate:(id)endDate
{
  v4 = [(RTEventManager *)self eventsBetweenStartDate:date andEndDate:endDate];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_70];

  return v5;
}

- (id)eventsSortedByStartDateBetweenStartDate:(id)date andEndDate:(id)endDate calendars:(id)calendars
{
  v5 = [(RTEventManager *)self eventsBetweenStartDate:date andEndDate:endDate calendars:calendars];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_72_0];

  return v6;
}

- (id)calendars
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(RTEventManager *)self accessToEventsGranted])
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[RTEventManager calendars]";
      v9 = 1024;
      v10 = 247;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "no access to event store (in %s:%d)", &v7, 0x12u);
    }
  }

  eventStore = [(RTEventManager *)self eventStore];
  v5 = [eventStore calendarsForEntityType:0];

  return v5;
}

- (id)calendarsExcludingSuggested
{
  calendars = [(RTEventManager *)self calendars];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_76_0];
  v4 = [calendars filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)_fetchCurrentlyInEventWithHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTEventManager *)self accessToEventsGranted])
    {
      *v25 = 0;
      *&v25[8] = v25;
      *&v25[16] = 0x2020000000;
      v26 = 0;
      startOfDay = [MEMORY[0x277CBEAA8] startOfDay];
      endOfDay = [MEMORY[0x277CBEAA8] endOfDay];
      v8 = [(RTEventManager *)self eventsSortedByStartDateBetweenStartDate:startOfDay andEndDate:endOfDay];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__RTEventManager__fetchCurrentlyInEventWithHandler___block_invoke_86;
      v17[3] = &unk_2788CA700;
      v17[4] = v25;
      [v8 enumerateObjectsUsingBlock:v17];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          if (*(*&v25[8] + 24))
          {
            v10 = @"YES";
          }

          else
          {
            v10 = @"NO";
          }

          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Currently in event, %@", buf, 0xCu);
        }
      }

      (*(handlerCopy + 2))(handlerCopy, *(*&v25[8] + 24), 0);
      _Block_object_dispose(v25, 8);
    }

    else
    {
      invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__RTEventManager__fetchCurrentlyInEventWithHandler___block_invoke;
      v21[3] = &unk_2788C4938;
      v21[4] = self;
      v22 = handlerCopy;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__RTEventManager__fetchCurrentlyInEventWithHandler___block_invoke_2;
      v18[3] = &unk_2788C6300;
      v18[4] = self;
      v20 = a2;
      v19 = v22;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      [invocationDispatcher enqueueBlock:v21 failureBlock:v18 description:{@"%@-%@", v14, v15}];

      eventStore = [(RTEventManager *)self eventStore];
      [eventStore touch];
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "[RTEventManager _fetchCurrentlyInEventWithHandler:]";
      *&v25[12] = 1024;
      *&v25[14] = 266;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v25, 0x12u);
    }
  }
}

void __52__RTEventManager__fetchCurrentlyInEventWithHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

void __52__RTEventManager__fetchCurrentlyInEventWithHandler___block_invoke_86(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v13 startDate];
  v8 = [v6 laterDate:v7];
  if ([v8 isEqual:v6])
  {
    v9 = [v13 endDate];
    v10 = [v6 laterDate:v9];
    v11 = [v13 endDate];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)fetchCurrentlyInEventWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTEventManager_fetchCurrentlyInEventWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchNextFreeStartDateWithHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTEventManager *)self accessToEventsGranted])
    {
      *v27 = 0;
      *&v27[8] = v27;
      *&v27[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__184;
      v29 = __Block_byref_object_dispose__184;
      v30 = 0;
      date = [MEMORY[0x277CBEAA8] date];
      v7 = *(*&v27[8] + 40);
      *(*&v27[8] + 40) = date;

      date2 = [MEMORY[0x277CBEAA8] date];
      endOfDay = [MEMORY[0x277CBEAA8] endOfDay];
      v10 = [(RTEventManager *)self eventsSortedByStartDateBetweenStartDate:date2 andEndDate:endOfDay];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __53__RTEventManager__fetchNextFreeStartDateWithHandler___block_invoke_88;
      v19[3] = &unk_2788D2378;
      v19[4] = v27;
      [v10 enumerateObjectsUsingBlock:v19];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          stringFromDate = [*(*&v27[8] + 40) stringFromDate];
          *buf = 138412290;
          v26 = stringFromDate;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "next free start date, %@", buf, 0xCu);
        }
      }

      (*(handlerCopy + 2))(handlerCopy, *(*&v27[8] + 40), 0);
      _Block_object_dispose(v27, 8);
    }

    else
    {
      invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53__RTEventManager__fetchNextFreeStartDateWithHandler___block_invoke;
      v23[3] = &unk_2788C4938;
      v23[4] = self;
      v24 = handlerCopy;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__RTEventManager__fetchNextFreeStartDateWithHandler___block_invoke_2;
      v20[3] = &unk_2788C6300;
      v20[4] = self;
      v22 = a2;
      v21 = v24;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      [invocationDispatcher enqueueBlock:v23 failureBlock:v20 description:{@"%@-%@", v16, v17}];

      eventStore = [(RTEventManager *)self eventStore];
      [eventStore touch];
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315394;
      *&v27[4] = "[RTEventManager _fetchNextFreeStartDateWithHandler:]";
      *&v27[12] = 1024;
      *&v27[14] = 319;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v27, 0x12u);
    }
  }
}

void __53__RTEventManager__fetchNextFreeStartDateWithHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

void __53__RTEventManager__fetchNextFreeStartDateWithHandler___block_invoke_88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v19 = v5;
    goto LABEL_8;
  }

  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    goto LABEL_10;
  }

  v19 = v5;
  v7 = [v5 startDate];
  if (![v6 compare:v7])
  {

    v5 = v19;
    goto LABEL_8;
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = [v19 startDate];
  v10 = [v8 earlierDate:v9];
  v11 = [v19 startDate];
  v12 = v11;
  if (v10 != v11)
  {

LABEL_9:
    v5 = v19;
    goto LABEL_10;
  }

  v15 = *(*(*(a1 + 32) + 8) + 40);
  v16 = [v19 endDate];
  v17 = [v15 laterDate:v16];
  v18 = [v19 endDate];

  v5 = v19;
  if (v17 == v18)
  {
LABEL_8:
    v13 = [v5 endDate];
    v14 = *(*(a1 + 32) + 8);
    v7 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)fetchNextFreeStartDateWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTEventManager_fetchNextFreeStartDateWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchLastEventEndDateWithHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTEventManager *)self accessToEventsGranted])
    {
      date = [MEMORY[0x277CBEAA8] date];
      endOfDay = [MEMORY[0x277CBEAA8] endOfDay];
      v8 = [(RTEventManager *)self eventsSortedByEndDateBetweenStartDate:date andEndDate:endOfDay];
      lastObject = [v8 lastObject];

      endDate = [lastObject endDate];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          stringFromDate = [endDate stringFromDate];
          *buf = 138412290;
          v25 = stringFromDate;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "last event end date, %@", buf, 0xCu);
        }
      }

      handlerCopy[2](handlerCopy, endDate, 0);
    }

    else
    {
      invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__RTEventManager__fetchLastEventEndDateWithHandler___block_invoke;
      v22[3] = &unk_2788C4938;
      v22[4] = self;
      v23 = handlerCopy;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__RTEventManager__fetchLastEventEndDateWithHandler___block_invoke_2;
      v19[3] = &unk_2788C6300;
      v19[4] = self;
      v21 = a2;
      v20 = v23;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      [invocationDispatcher enqueueBlock:v22 failureBlock:v19 description:{@"%@-%@", v16, v17}];

      eventStore = [(RTEventManager *)self eventStore];
      [eventStore touch];
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTEventManager _fetchLastEventEndDateWithHandler:]";
      v26 = 1024;
      v27 = 372;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __52__RTEventManager__fetchLastEventEndDateWithHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

- (void)fetchLastEventEndDateWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTEventManager_fetchLastEventEndDateWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchFreeDateIntervalsBetweenStartDate:(id)date endDate:(id)endDate filterAllDayEvents:(BOOL)events filterFreeTimeEvents:(BOOL)timeEvents handler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v16 = [dateCopy laterDate:endDateCopy];

    if (v16 == dateCopy)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Requires start date to be before end date.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];
      handlerCopy[2](handlerCopy, 0, v22);

LABEL_16:
      goto LABEL_17;
    }

    if ([(RTEventManager *)self accessToEventsGranted])
    {
      if (dateCopy)
      {
        distantPast = dateCopy;
      }

      else
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
      }

      v28 = distantPast;
      if (endDateCopy)
      {
        distantFuture = endDateCopy;
      }

      else
      {
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      }

      v30 = distantFuture;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke_93;
      aBlock[3] = &unk_2788D23E8;
      eventsCopy = events;
      timeEventsCopy = timeEvents;
      v34 = v28;
      v35 = distantFuture;
      v36 = handlerCopy;
      v31 = v30;
      v21 = v28;
      v32 = _Block_copy(aBlock);
      [(RTEventManager *)self _fetchEventsBetweenStartDate:v21 endDate:v31 handler:v32];

      goto LABEL_16;
    }

    invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke;
    v42[3] = &unk_2788D23A0;
    v42[4] = self;
    v43 = dateCopy;
    v44 = endDateCopy;
    eventsCopy2 = events;
    timeEventsCopy2 = timeEvents;
    v45 = handlerCopy;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke_2;
    v39[3] = &unk_2788C6300;
    v39[4] = self;
    v41 = a2;
    v40 = v45;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    [invocationDispatcher enqueueBlock:v42 failureBlock:v39 description:{@"%@-%@", v25, v26}];

    eventStore = [(RTEventManager *)self eventStore];
    [eventStore touch];
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "[RTEventManager _fetchFreeDateIntervalsBetweenStartDate:endDate:filterAllDayEvents:filterFreeTimeEvents:handler:]";
      v52 = 1024;
      v53 = 428;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_17:
}

void __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

void __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (*(a1 + 56) == 1)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_97_2];
    v8 = [v7 filteredArrayUsingPredicate:v9];
  }

  if (*(a1 + 57) == 1)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_99_2];
    v11 = [v8 filteredArrayUsingPredicate:v10];

    v8 = v11;
  }

  v12 = [MEMORY[0x277CCA970] dateIntervalFromEvents:v8];
  v13 = [MEMORY[0x277CCA970] invertDateIntervals:v12];
  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 32) endDate:*(a1 + 40)];
  v15 = [MEMORY[0x277CCA970] dateIntervals:v13 intersectingDateInterval:v14];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAction);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "free date intervals, %@", &v17, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

BOOL __114__RTEventManager__fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 availability] != -1 && objc_msgSend(v2, "availability") != 1;

  return v3;
}

- (void)fetchFreeDateIntervalsBetweenStartDate:(id)date endDate:(id)endDate filterAllDayEvents:(BOOL)events filterFreeTimeEvents:(BOOL)timeEvents handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__RTEventManager_fetchFreeDateIntervalsBetweenStartDate_endDate_filterAllDayEvents_filterFreeTimeEvents_handler___block_invoke;
  block[3] = &unk_2788D23A0;
  block[4] = self;
  v20 = dateCopy;
  eventsCopy = events;
  timeEventsCopy = timeEvents;
  v21 = endDateCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

- (void)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate includeSuggestions:(BOOL)suggestions withHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__RTEventManager_fetchEventsBetweenStartDate_andEndDate_includeSuggestions_withHandler___block_invoke;
  v16[3] = &unk_2788C5530;
  v16[4] = self;
  v17 = dateCopy;
  v18 = endDateCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = endDateCopy;
  v15 = dateCopy;
  dispatch_async(queue, v16);
}

- (void)_fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate includeSuggestions:(BOOL)suggestions withHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v14 = [dateCopy laterDate:endDateCopy];

    if (v14 == dateCopy)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v35 = *MEMORY[0x277CCA450];
      v36 = @"Requires start date to be before end date.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v20 = [v17 errorWithDomain:v18 code:7 userInfo:v19];
      handlerCopy[2](handlerCopy, 0, v20);
    }

    else if ([(RTEventManager *)self accessToEventsGranted])
    {
      if (suggestions)
      {
        calendarsExcludingSuggested = 0;
      }

      else
      {
        calendarsExcludingSuggested = [(RTEventManager *)self calendarsExcludingSuggested];
      }

      v26 = [(RTEventManager *)self eventsBetweenStartDate:dateCopy andEndDate:endDateCopy calendars:calendarsExcludingSuggested];
      (handlerCopy)[2](handlerCopy, v26, 0);
    }

    else
    {
      invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __89__RTEventManager__fetchEventsBetweenStartDate_andEndDate_includeSuggestions_withHandler___block_invoke;
      v30[3] = &unk_2788C6440;
      v30[4] = self;
      v31 = dateCopy;
      v32 = endDateCopy;
      suggestionsCopy = suggestions;
      v33 = handlerCopy;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __89__RTEventManager__fetchEventsBetweenStartDate_andEndDate_includeSuggestions_withHandler___block_invoke_2;
      v27[3] = &unk_2788C6300;
      v27[4] = self;
      v29 = a2;
      v28 = v33;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      [invocationDispatcher enqueueBlock:v30 failureBlock:v27 description:{@"%@-%@", v23, v24}];

      eventStore = [(RTEventManager *)self eventStore];
      [eventStore touch];
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[RTEventManager _fetchEventsBetweenStartDate:andEndDate:includeSuggestions:withHandler:]";
      v39 = 1024;
      v40 = 556;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __89__RTEventManager__fetchEventsBetweenStartDate_andEndDate_includeSuggestions_withHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

- (void)_fetchEventsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v65[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_19;
  }

  if (!dateCopy)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"requires a valid startDate.";
    v29 = MEMORY[0x277CBEAC0];
    v30 = v65;
    v31 = &v64;
LABEL_17:
    v32 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
    v33 = [v27 errorWithDomain:v28 code:0 userInfo:v32];
    handlerCopy[2](handlerCopy, 0, v33);

    goto LABEL_19;
  }

  if (!endDateCopy)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v62 = *MEMORY[0x277CCA450];
    v63 = @"requires a valid endDate.";
    v29 = MEMORY[0x277CBEAC0];
    v30 = &v63;
    v31 = &v62;
    goto LABEL_17;
  }

  if ([(RTEventManager *)self accessToEventsGranted])
  {
    v39 = handlerCopy;
    v40 = endDateCopy;
    v41 = dateCopy;
    v12 = [(RTEventManager *)self eventsBetweenStartDate:dateCopy andEndDate:endDateCopy];
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v12;
    v45 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v45)
    {
      v44 = *v51;
      do
      {
        v13 = 0;
        do
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v50 + 1) + 8 * v13);
          v15 = objc_alloc(MEMORY[0x277D01160]);
          structuredLocation = [v14 structuredLocation];
          geoLocation = [structuredLocation geoLocation];
          v49 = [v15 initWithCLLocation:geoLocation];

          v48 = [RTCalendarEvent alloc];
          eventIdentifier = [v14 eventIdentifier];
          isAllDay = [v14 isAllDay];
          startDate = [v14 startDate];
          endDate = [v14 endDate];
          participantStatus = [v14 participantStatus];
          availability = [v14 availability];
          structuredLocation2 = [v14 structuredLocation];
          title = [structuredLocation2 title];
          structuredLocation3 = [v14 structuredLocation];
          mapKitHandle = [structuredLocation3 mapKitHandle];
          v26 = [(RTCalendarEvent *)v48 initWithEventIdentifier:eventIdentifier allDay:isAllDay startDate:startDate endDate:endDate participantStatus:participantStatus availability:availability location:v49 locationTitle:title locationMapItemHandle:mapKitHandle];

          if (v26)
          {
            [v43 addObject:v26];
          }

          ++v13;
        }

        while (v45 != v13);
        v45 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v45);
    }

    handlerCopy = v39;
    (v39)[2](v39, v43, 0);

    endDateCopy = v40;
    dateCopy = v41;
  }

  else
  {
    invocationDispatcher = [(RTEventManager *)self invocationDispatcher];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __63__RTEventManager__fetchEventsBetweenStartDate_endDate_handler___block_invoke;
    v57[3] = &unk_2788C5530;
    v57[4] = self;
    v58 = dateCopy;
    v59 = endDateCopy;
    v60 = handlerCopy;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __63__RTEventManager__fetchEventsBetweenStartDate_endDate_handler___block_invoke_2;
    v54[3] = &unk_2788C6300;
    v54[4] = self;
    v56 = a2;
    v55 = v60;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = NSStringFromSelector(a2);
    [invocationDispatcher enqueueBlock:v57 failureBlock:v54 description:{@"%@-%@", v36, v37}];

    eventStore = [(RTEventManager *)self eventStore];
    [eventStore touch];
  }

LABEL_19:
}

void __63__RTEventManager__fetchEventsBetweenStartDate_endDate_handler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v13 = *MEMORY[0x277CCA450];
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
  (*(v8 + 16))(v8, 0, v12);
}

- (void)fetchEventsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__RTEventManager_fetchEventsBetweenStartDate_endDate_handler___block_invoke;
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

@end