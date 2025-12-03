@interface TPSAnalyticsHistoricTipsDataProcessor
- (BOOL)_shouldProceedWithCrunching;
- (TPSAnalyticsHistoricTipsDataProcessor)init;
- (id)_furthestLookbackDate;
- (unint64_t)_daysBetweenDate:(id)date andOtherDate:(id)otherDate;
- (void)processAnalytics:(id)analytics;
- (void)resetAnalytics;
- (void)updateDisplayedCount:(int64_t *)count andFrequencyControlCount:(int64_t *)controlCount forTipStatus:(id)status andLookbackDate:(id)date;
@end

@implementation TPSAnalyticsHistoricTipsDataProcessor

- (TPSAnalyticsHistoricTipsDataProcessor)init
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsHistoricTipsDataProcessor;
  v2 = [(TPSAnalyticsProcessor *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v2->_currentDate;
    v2->_currentDate = date;
  }

  return v2;
}

- (void)processAnalytics:(id)analytics
{
  v69 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  if ([(TPSAnalyticsHistoricTipsDataProcessor *)self _shouldProceedWithCrunching])
  {
    [(TPSAnalyticsProcessor *)self setDateLastRun:self->_currentDate];
    _furthestLookbackDate = [(TPSAnalyticsHistoricTipsDataProcessor *)self _furthestLookbackDate];
    array = [MEMORY[0x277CBEB18] array];
    v62 = 0;
    v63 = 0;
    dataSource = [(TPSAnalyticsProcessor *)self dataSource];
    allTipStatus = [dataSource allTipStatus];

    v48 = allTipStatus;
    if ([allTipStatus count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v9 = allTipStatus;
      v10 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v59;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v59 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v58 + 1) + 8 * i);
            if ([v14 displayType] == 1)
            {
              [(TPSAnalyticsHistoricTipsDataProcessor *)self updateDisplayedCount:&v63 andFrequencyControlCount:&v62 forTipStatus:v14 andLookbackDate:_furthestLookbackDate];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v11);
      }

      v15 = objc_alloc(MEMORY[0x277D71628]);
      v16 = *MEMORY[0x277D71970];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v63];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v62];
      v19 = [v15 initWithDisplayType:v16 displayCount:v17 notDisplayedDueToFrequencyControlCount:v18];

      [array addObject:v19];
      allTipStatus = v48;
    }

    analytics = [MEMORY[0x277D71778] analytics];
    if (os_log_type_enabled(analytics, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v67 = v63;
      _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_INFO, "countDisplayedOnLockScreen: %ld", buf, 0xCu);
    }

    if (!v63)
    {
      v45 = array;
      v21 = [MEMORY[0x277CBEB58] set];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      dataSource2 = [(TPSAnalyticsProcessor *)self dataSource];
      allContextualInfo = [dataSource2 allContextualInfo];

      v24 = [allContextualInfo countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v55;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v55 != v26)
            {
              objc_enumerationMutation(allContextualInfo);
            }

            v28 = *(*(&v54 + 1) + 8 * j);
            triggerEventIdentifiers = [v28 triggerEventIdentifiers];
            [v21 addObjectsFromArray:triggerEventIdentifiers];

            desiredOutcomeEventIdentifiers = [v28 desiredOutcomeEventIdentifiers];
            [v21 addObjectsFromArray:desiredOutcomeEventIdentifiers];
          }

          v25 = [allContextualInfo countByEnumeratingWithState:&v54 objects:v65 count:16];
        }

        while (v25);
      }

      selfCopy = self;
      v46 = _furthestLookbackDate;
      v47 = analyticsCopy;

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v21;
      v32 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v51;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v51 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v50 + 1) + 8 * k);
            dataSource3 = [(TPSAnalyticsProcessor *)selfCopy dataSource];
            v38 = [dataSource3 contextualEventForIdentifier:v36];

            currentObservationCount = [v38 currentObservationCount];
            v40 = MEMORY[0x277D71680];
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:currentObservationCount];
            v42 = [v40 eventWithEventID:v36 eventCount:v41];
            [v42 log];
          }

          v33 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
        }

        while (v33);
      }

      _furthestLookbackDate = v46;
      analyticsCopy = v47;
      array = v45;
      allTipStatus = v48;
    }

    if ([array count])
    {
      mEMORY[0x277D71620] = [MEMORY[0x277D71620] sharedInstance];
      [mEMORY[0x277D71620] logAnalyticsEvents:array];
    }
  }

  analyticsCopy[2](analyticsCopy);

  v44 = *MEMORY[0x277D85DE8];
}

- (void)resetAnalytics
{
  v3.receiver = self;
  v3.super_class = TPSAnalyticsHistoricTipsDataProcessor;
  [(TPSAnalyticsProcessor *)&v3 resetAnalytics];
  [(TPSAnalyticsProcessor *)self setDateLastRun:0];
}

- (void)updateDisplayedCount:(int64_t *)count andFrequencyControlCount:(int64_t *)controlCount forTipStatus:(id)status andLookbackDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dateCopy = date;
  if (([statusCopy overrideHoldout] & 1) == 0)
  {
    hintDisplayedDates = [statusCopy hintDisplayedDates];
    firstObject = [hintDisplayedDates firstObject];
    v13 = [firstObject compare:dateCopy];

    if (v13 == 1)
    {
      ++*count;
    }

    hintNotDisplayedDueToFrequencyControlDates = [statusCopy hintNotDisplayedDueToFrequencyControlDates];
    v15 = [hintNotDisplayedDueToFrequencyControlDates count];

    if (v15)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      hintNotDisplayedDueToFrequencyControlDates2 = [statusCopy hintNotDisplayedDueToFrequencyControlDates];
      reverseObjectEnumerator = [hintNotDisplayedDueToFrequencyControlDates2 reverseObjectEnumerator];

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
LABEL_7:
        v21 = 0;
        while (1)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          if ([*(*(&v23 + 1) + 8 * v21) compare:dateCopy] != 1)
          {
            break;
          }

          ++*controlCount;
          if (v19 == ++v21)
          {
            v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v19)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_daysBetweenDate:(id)date andOtherDate:(id)otherDate
{
  v5 = MEMORY[0x277CBEA80];
  otherDateCopy = otherDate;
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v9 = [currentCalendar components:120 fromDate:dateCopy toDate:otherDateCopy options:0];

  v10 = [v9 day];
  return v10;
}

- (BOOL)_shouldProceedWithCrunching
{
  crunchingIntervalInDays = [MEMORY[0x277D71740] crunchingIntervalInDays];
  if (!crunchingIntervalInDays)
  {
    return 1;
  }

  v4 = crunchingIntervalInDays;
  dateLastRun = [(TPSAnalyticsProcessor *)self dateLastRun];
  if (dateLastRun)
  {
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 20;
    }

    v6 = [(TPSAnalyticsHistoricTipsDataProcessor *)self _daysBetweenDate:dateLastRun andOtherDate:self->_currentDate]>= v4;
  }

  else
  {
    [(TPSAnalyticsProcessor *)self setDateLastRun:self->_currentDate];
    v6 = 0;
  }

  return v6;
}

- (id)_furthestLookbackDate
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setDay:-20];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar dateByAddingComponents:v3 toDate:self->_currentDate options:0];

  return v5;
}

@end