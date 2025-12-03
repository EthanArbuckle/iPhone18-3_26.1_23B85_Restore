@interface PowerUICalendarSignalMonitor
+ (id)monitorWithDelegate:(id)delegate;
+ (id)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context;
- (BOOL)isEventEligible:(id)eligible AtTime:(id)time;
- (PowerUICalendarSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context;
- (id)detectedSignals;
- (id)nextFlightEventWithEventIDs:(id)ds;
- (id)nextRelevantDeadlineWithEventIDs:(id)ds;
- (id)requiredFullChargeDate;
- (id)upcomingEventIDs;
- (void)sourceInformationChangedNotification:(id)notification;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PowerUICalendarSignalMonitor

- (PowerUICalendarSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context
{
  delegateCopy = delegate;
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = PowerUICalendarSignalMonitor;
  v10 = [(PowerUICalendarSignalMonitor *)&v26 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    calendar = v10->_calendar;
    v10->_calendar = v11;

    objc_storeStrong(&v10->_delegate, delegate);
    v13 = os_log_create("com.apple.powerui.smartcharging", "signals");
    log = v10->_log;
    v10->_log = v13;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__PowerUICalendarSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke;
    v23[3] = &unk_2782D4AC0;
    v15 = managerCopy;
    v24 = v15;
    v16 = v10;
    v25 = v16;
    v17 = MEMORY[0x21CEF8A60](v23);
    v17[2]();
    [v15 addUpdateHandler:v17];
    out_token = 0;
    v18 = dispatch_get_global_queue(-2, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__PowerUICalendarSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke_71;
    v20[3] = &unk_2782D3E60;
    v21 = v16;
    notify_register_dispatch("com.apple.powerui.calendar.test", &out_token, v18, v20);
  }

  return v10;
}

void __74__PowerUICalendarSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) doubleFactorForName:@"calendarSignalBuffer"];
  if (v2 > 1.0)
  {
    kBufferBeforeFirstCalendarEvent = *&v2;
  }

  v3 = *(*(a1 + 40) + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = kBufferBeforeFirstCalendarEvent;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "Event Buffer: %lf", &v7, 0xCu);
  }

  [*(a1 + 32) doubleFactorForName:@"calendarSignalBufferShort"];
  if (v4 > 1.0)
  {
    kBufferBeforeFirstCalendarEventShort = *&v4;
  }

  v5 = *(*(a1 + 40) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = kBufferBeforeFirstCalendarEventShort;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Short Event Buffer: %lf", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

id __74__PowerUICalendarSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke_71(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Got notification", v4, 2u);
  }

  return [*(a1 + 32) requiredFullChargeDate];
}

+ (id)monitorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy trialManager:0 withContext:0];

  return v4;
}

+ (id)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context
{
  contextCopy = context;
  managerCopy = manager;
  delegateCopy = delegate;
  v10 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy trialManager:managerCopy withContext:contextCopy];

  return v10;
}

- (void)startMonitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sourceInformationChangedNotification_ name:*MEMORY[0x277CC5948] object:0];
}

- (void)sourceInformationChangedNotification:(id)notification
{
  requiredFullChargeDate = [(PowerUICalendarSignalMonitor *)self requiredFullChargeDate];
  [(PowerUISignalMonitorDelegate *)self->_delegate monitor:self maySuggestNewFullChargeDeadline:requiredFullChargeDate];
}

- (void)stopMonitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CC5948] object:0];
}

- (id)upcomingEventIDs
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-86400.0];
  v5 = [date dateByAddingTimeInterval:86400.0];
  v6 = [(EKEventStore *)self->_calendar predicateForEventsWithStartDate:v4 endDate:v5 calendars:0 loadDefaultProperties:1];
  calendar = [(PowerUICalendarSignalMonitor *)self calendar];
  v8 = [calendar eventObjectIDsMatchingPredicate:v6];

  return v8;
}

- (id)nextFlightEventWithEventIDs:(id)ds
{
  v43 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v7)
  {
    v9 = v7;
    log = 0;
    v10 = *v35;
    v11 = 0x277CC5000uLL;
    *&v8 = 138412546;
    v28 = v8;
    v31 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [(EKEventStore *)self->_calendar publicObjectWithObjectID:*(*(&v34 + 1) + 8 * i), v28];
        v14 = *(v11 + 2600);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          if (([v15 isAllDay] & 1) == 0)
          {
            suggestionInfo = [v15 suggestionInfo];

            if (suggestionInfo)
            {
              v17 = [MEMORY[0x277D01FC8] eventMetadataFromEKEvent:v15];
              categoryDescription = [v17 categoryDescription];
              v19 = [categoryDescription localizedCaseInsensitiveContainsString:@"flight"];

              if (v19 && ([v15 startDate], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "timeIntervalSinceDate:", distantFuture), v22 = v21, v20, v22 < 0.0))
              {
                v23 = v15;

                startDate = [v23 startDate];

                v25 = self->_log;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  loga = v25;
                  startDate2 = [v23 startDate];
                  endDate = [v23 endDate];
                  *buf = v28;
                  v39 = startDate2;
                  v40 = 2112;
                  v41 = endDate;
                  _os_log_impl(&dword_21B766000, loga, OS_LOG_TYPE_DEFAULT, "Found flight from %@-%@", buf, 0x16u);
                }
              }

              else
              {
                startDate = distantFuture;
                v23 = log;
              }

              distantFuture = startDate;
              log = v23;
              v6 = v31;
              v11 = 0x277CC5000;
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v9);
  }

  else
  {
    log = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return log;
}

- (BOOL)isEventEligible:(id)eligible AtTime:(id)time
{
  eligibleCopy = eligible;
  timeCopy = time;
  if ([eligibleCopy isAllDay])
  {
    v7 = 0;
  }

  else
  {
    endDate = [eligibleCopy endDate];
    startDate = [eligibleCopy startDate];
    [endDate timeIntervalSinceDate:startDate];
    if (v10 > 2073600.0 || [eligibleCopy status] == 3)
    {
      v7 = 0;
    }

    else
    {
      endDate2 = [eligibleCopy endDate];
      [endDate2 timeIntervalSinceDate:timeCopy];
      v7 = v12 >= 0.0;
    }
  }

  return v7;
}

- (id)nextRelevantDeadlineWithEventIDs:(id)ds
{
  v67 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = +[PowerUISmartChargeManager manager];
  lastAcquiredLocation = [v6 lastAcquiredLocation];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v57;
    v13 = 0x277CC5000uLL;
    *&v9 = 138412546;
    v50 = v9;
    v53 = *v57;
    do
    {
      v14 = 0;
      v54 = v10;
      do
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = [(EKEventStore *)self->_calendar publicObjectWithObjectID:*(*(&v56 + 1) + 8 * v14), v50];
        v16 = *(v13 + 2600);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v15;
          if ([(PowerUICalendarSignalMonitor *)self isEventEligible:v17 AtTime:date])
          {
            startDate = [v17 startDate];
            [startDate timeIntervalSinceDate:date];
            v20 = v19;

            if (v20 >= 0.0)
            {
              v22 = kBufferBeforeFirstCalendarEvent;
              if (*&kBufferBeforeFirstCalendarEvent > *&kBufferBeforeFirstCalendarEventShort)
              {
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  v37 = log;
                  title = [v17 title];
                  preferredLocation = [v17 preferredLocation];
                  geoLocation = [preferredLocation geoLocation];
                  *buf = v50;
                  v61 = title;
                  v62 = 2112;
                  v63 = *&geoLocation;
                  _os_log_debug_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
                }

                if (lastAcquiredLocation)
                {
                  preferredLocation2 = [v17 preferredLocation];
                  geoLocation2 = [preferredLocation2 geoLocation];

                  if (geoLocation2)
                  {
                    preferredLocation3 = [v17 preferredLocation];
                    geoLocation3 = [preferredLocation3 geoLocation];
                    [lastAcquiredLocation distanceFromLocation:geoLocation3];
                    v29 = v28;

                    v30 = self->_log;
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                    {
                      v40 = v30;
                      title2 = [v17 title];
                      *buf = v50;
                      v61 = title2;
                      v62 = 2048;
                      v63 = v29;
                      _os_log_debug_impl(&dword_21B766000, v40, OS_LOG_TYPE_DEBUG, "%@ is %fm away", buf, 0x16u);
                    }

                    if (v29 < 2000.0)
                    {
                      v22 = kBufferBeforeFirstCalendarEventShort;
                    }
                  }
                }
              }

              startDate2 = [v17 startDate];
            }

            else
            {
              startDate2 = [v17 endDate];
              v22 = kBufferBeforeFirstCalendarEvent;
            }

            v31 = [startDate2 dateByAddingTimeInterval:-*&v22];

            [v31 timeIntervalSinceDate:distantFuture];
            if (v32 < 0.0)
            {
              v33 = v17;

              v34 = v7;
              v35 = date;
              v36 = v31;

              distantFuture = v36;
              date = v35;
              v7 = v34;
              v11 = v33;
            }

            v12 = v53;
            v13 = 0x277CC5000;

            v10 = v54;
          }
        }

        ++v14;
      }

      while (v10 != v14);
      v10 = [v7 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v42 = self->_log;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = v42;
    startDate3 = [v11 startDate];
    [v11 endDate];
    v46 = v45 = v11;
    *buf = 138412802;
    v61 = startDate3;
    v62 = 2112;
    v63 = *&v46;
    v64 = 2112;
    v65 = distantFuture;
    _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_DEFAULT, "Found upcoming event: %@-%@, requiring full charge by %@", buf, 0x20u);

    v11 = v45;
  }

  v47 = distantFuture;

  v48 = *MEMORY[0x277D85DE8];
  return distantFuture;
}

- (id)requiredFullChargeDate
{
  upcomingEventIDs = [(PowerUICalendarSignalMonitor *)self upcomingEventIDs];
  v4 = [(PowerUICalendarSignalMonitor *)self nextFlightEventWithEventIDs:upcomingEventIDs];
  if (v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Upcoming or recent flight; forcing immediate charge", v9, 2u);
    }

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    distantPast = [(PowerUICalendarSignalMonitor *)self nextRelevantDeadlineWithEventIDs:upcomingEventIDs];
  }

  v7 = distantPast;

  return v7;
}

- (id)detectedSignals
{
  v22 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  upcomingEventIDs = [(PowerUICalendarSignalMonitor *)self upcomingEventIDs];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = upcomingEventIDs;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(EKEventStore *)self->_calendar publicObjectWithObjectID:*(*(&v17 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([(PowerUICalendarSignalMonitor *)self isEventEligible:v11 AtTime:date])
          {
            startDate = [v11 startDate];
            [array addObject:startDate];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end