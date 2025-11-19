@interface TPSAnalyticsHistoricTipsDataProcessor
- (BOOL)_shouldProceedWithCrunching;
- (TPSAnalyticsHistoricTipsDataProcessor)init;
- (id)_furthestLookbackDate;
- (unint64_t)_daysBetweenDate:(id)a3 andOtherDate:(id)a4;
- (void)processAnalytics:(id)a3;
- (void)resetAnalytics;
- (void)updateDisplayedCount:(int64_t *)a3 andFrequencyControlCount:(int64_t *)a4 forTipStatus:(id)a5 andLookbackDate:(id)a6;
@end

@implementation TPSAnalyticsHistoricTipsDataProcessor

- (TPSAnalyticsHistoricTipsDataProcessor)init
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsHistoricTipsDataProcessor;
  v2 = [(TPSAnalyticsProcessor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    currentDate = v2->_currentDate;
    v2->_currentDate = v3;
  }

  return v2;
}

- (void)processAnalytics:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TPSAnalyticsHistoricTipsDataProcessor *)self _shouldProceedWithCrunching])
  {
    [(TPSAnalyticsProcessor *)self setDateLastRun:self->_currentDate];
    v5 = [(TPSAnalyticsHistoricTipsDataProcessor *)self _furthestLookbackDate];
    v6 = [MEMORY[0x277CBEB18] array];
    v62 = 0;
    v63 = 0;
    v7 = [(TPSAnalyticsProcessor *)self dataSource];
    v8 = [v7 allTipStatus];

    v48 = v8;
    if ([v8 count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v9 = v8;
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
              [(TPSAnalyticsHistoricTipsDataProcessor *)self updateDisplayedCount:&v63 andFrequencyControlCount:&v62 forTipStatus:v14 andLookbackDate:v5];
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

      [v6 addObject:v19];
      v8 = v48;
    }

    v20 = [MEMORY[0x277D71778] analytics];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v67 = v63;
      _os_log_impl(&dword_232D6F000, v20, OS_LOG_TYPE_INFO, "countDisplayedOnLockScreen: %ld", buf, 0xCu);
    }

    if (!v63)
    {
      v45 = v6;
      v21 = [MEMORY[0x277CBEB58] set];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v22 = [(TPSAnalyticsProcessor *)self dataSource];
      v23 = [v22 allContextualInfo];

      v24 = [v23 countByEnumeratingWithState:&v54 objects:v65 count:16];
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
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v54 + 1) + 8 * j);
            v29 = [v28 triggerEventIdentifiers];
            [v21 addObjectsFromArray:v29];

            v30 = [v28 desiredOutcomeEventIdentifiers];
            [v21 addObjectsFromArray:v30];
          }

          v25 = [v23 countByEnumeratingWithState:&v54 objects:v65 count:16];
        }

        while (v25);
      }

      v31 = self;
      v46 = v5;
      v47 = v4;

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
            v37 = [(TPSAnalyticsProcessor *)v31 dataSource];
            v38 = [v37 contextualEventForIdentifier:v36];

            v39 = [v38 currentObservationCount];
            v40 = MEMORY[0x277D71680];
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
            v42 = [v40 eventWithEventID:v36 eventCount:v41];
            [v42 log];
          }

          v33 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
        }

        while (v33);
      }

      v5 = v46;
      v4 = v47;
      v6 = v45;
      v8 = v48;
    }

    if ([v6 count])
    {
      v43 = [MEMORY[0x277D71620] sharedInstance];
      [v43 logAnalyticsEvents:v6];
    }
  }

  v4[2](v4);

  v44 = *MEMORY[0x277D85DE8];
}

- (void)resetAnalytics
{
  v3.receiver = self;
  v3.super_class = TPSAnalyticsHistoricTipsDataProcessor;
  [(TPSAnalyticsProcessor *)&v3 resetAnalytics];
  [(TPSAnalyticsProcessor *)self setDateLastRun:0];
}

- (void)updateDisplayedCount:(int64_t *)a3 andFrequencyControlCount:(int64_t *)a4 forTipStatus:(id)a5 andLookbackDate:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if (([v9 overrideHoldout] & 1) == 0)
  {
    v11 = [v9 hintDisplayedDates];
    v12 = [v11 firstObject];
    v13 = [v12 compare:v10];

    if (v13 == 1)
    {
      ++*a3;
    }

    v14 = [v9 hintNotDisplayedDueToFrequencyControlDates];
    v15 = [v14 count];

    if (v15)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = [v9 hintNotDisplayedDueToFrequencyControlDates];
      v17 = [v16 reverseObjectEnumerator];

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v23 + 1) + 8 * v21) compare:v10] != 1)
          {
            break;
          }

          ++*a4;
          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (unint64_t)_daysBetweenDate:(id)a3 andOtherDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v9 = [v8 components:120 fromDate:v7 toDate:v6 options:0];

  v10 = [v9 day];
  return v10;
}

- (BOOL)_shouldProceedWithCrunching
{
  v3 = [MEMORY[0x277D71740] crunchingIntervalInDays];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(TPSAnalyticsProcessor *)self dateLastRun];
  if (v5)
  {
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 20;
    }

    v6 = [(TPSAnalyticsHistoricTipsDataProcessor *)self _daysBetweenDate:v5 andOtherDate:self->_currentDate]>= v4;
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
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 dateByAddingComponents:v3 toDate:self->_currentDate options:0];

  return v5;
}

@end