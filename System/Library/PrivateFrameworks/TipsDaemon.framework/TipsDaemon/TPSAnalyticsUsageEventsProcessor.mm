@interface TPSAnalyticsUsageEventsProcessor
+ (BOOL)_tipStatusValidForLiftProcessing:(id)processing contextualInfo:(id)info firstShownDate:(id)date;
+ (BOOL)_validateContextualInfo:(id)info forDisplayType:(unint64_t)type;
+ (id)_firstShownDateForTipStatus:(id)status;
+ (id)_notifiedDateForTipStatus:(id)status;
- (BOOL)_shouldCalculateLift:(id)lift;
- (TPSAnalyticsUsageEventsProcessor)init;
- (void)_calculateLift:(id)lift completion:(id)completion;
- (void)_countsForEvent:(id)event interval:(id)interval completion:(id)completion;
- (void)_saveHistoricalUsage:(id)usage completion:(id)completion;
- (void)processAnalytics:(id)analytics;
- (void)resetAnalytics;
@end

@implementation TPSAnalyticsUsageEventsProcessor

- (TPSAnalyticsUsageEventsProcessor)init
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsUsageEventsProcessor;
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
  v73 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  dateLastRun = [(TPSAnalyticsProcessor *)self dateLastRun];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  dataSource = [(TPSAnalyticsProcessor *)self dataSource];
  obj = [dataSource allTipStatus];

  v47 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v47)
  {
    v46 = *v66;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v66 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * i);
        identifier = [v6 identifier];
        dataSource2 = [(TPSAnalyticsProcessor *)self dataSource];
        v9 = [dataSource2 contextualInfoForIdentifier:identifier];

        v10 = [objc_opt_class() _firstShownDateForTipStatus:v6];
        v11 = [objc_opt_class() _notifiedDateForTipStatus:v6];
        if ([objc_opt_class() _tipStatusValidForLiftProcessing:v6 contextualInfo:v9 firstShownDate:v10])
        {
          usageEvents = [v9 usageEvents];
          firstObject = [usageEvents firstObject];

          desiredOutcomePerformedDates = [v6 desiredOutcomePerformedDates];
          v15 = [desiredOutcomePerformedDates count];

          v16 = objc_alloc_init(TPSAnalyticsUsageInfo);
          -[TPSAnalyticsUsageInfo setOverrideHoldout:](v16, "setOverrideHoldout:", [v6 overrideHoldout]);
          [(TPSAnalyticsUsageInfo *)v16 setFirstShownDate:v10];
          [(TPSAnalyticsUsageInfo *)v16 setNotifiedDate:v11];
          [(TPSAnalyticsUsageInfo *)v16 setUsageEvent:firstObject];
          [(TPSAnalyticsUsageInfo *)v16 setIdentifier:identifier];
          [(TPSAnalyticsUsageInfo *)v16 setDesiredOutcomeCount:v15];
          [v44 addObject:v16];
        }
      }

      v47 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v47);
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = [v44 count];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_INFO))
  {
    v18 = v62[3];
    *buf = 134217984;
    v71 = v18;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_INFO, "Valid tips for usage event processing: %lu", buf, 0xCu);
  }

  if (v62[3])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke;
    aBlock[3] = &unk_2789B0C30;
    v60 = &v61;
    v59 = analyticsCopy;
    v19 = _Block_copy(aBlock);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v21 = [currentCalendar dateByAddingUnit:16 value:-5 toDate:self->_currentDate options:0];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v22 = v44;
    v23 = [v22 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v23)
    {
      v24 = *v55;
      do
      {
        v25 = 0;
        do
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v54 + 1) + 8 * v25);
          if (dateLastRun && ([*(*(&v54 + 1) + 8 * v25) firstShownDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "compare:", dateLastRun) == 1, v27, !v28))
          {
            if ([(TPSAnalyticsUsageEventsProcessor *)self _shouldCalculateLift:v26])
            {
              analytics2 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(analytics2, OS_LOG_TYPE_INFO))
              {
                identifier2 = [v26 identifier];
                *buf = 138412290;
                v71 = identifier2;
                _os_log_impl(&dword_232D6F000, analytics2, OS_LOG_TYPE_INFO, "Lift threshold hit, calculating lift for: %@", buf, 0xCu);
              }

              dataSource3 = [(TPSAnalyticsProcessor *)self dataSource];
              experiment = [dataSource3 experiment];

              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_6;
              v49[3] = &unk_2789B0C58;
              v49[4] = self;
              v49[5] = v26;
              v50 = dateLastRun;
              v51 = v21;
              v38 = experiment;
              v52 = v38;
              v53 = v19;
              [(TPSAnalyticsUsageEventsProcessor *)self _calculateLift:v26 completion:v49];
            }

            else
            {
              analytics3 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(analytics3, OS_LOG_TYPE_INFO))
              {
                identifier3 = [v26 identifier];
                *buf = 138412290;
                v71 = identifier3;
                _os_log_impl(&dword_232D6F000, analytics3, OS_LOG_TYPE_INFO, "Lift threshold not yet hit for: %@", buf, 0xCu);
              }

              v19[2](v19);
            }
          }

          else
          {
            analytics4 = [MEMORY[0x277D71778] analytics];
            if (os_log_type_enabled(analytics4, OS_LOG_TYPE_INFO))
            {
              identifier4 = [v26 identifier];
              *buf = 138412290;
              v71 = identifier4;
              _os_log_impl(&dword_232D6F000, analytics4, OS_LOG_TYPE_INFO, "Tip shown since last run, saving historical usage: %@", buf, 0xCu);
            }

            firstShownDate = [v26 firstShownDate];
            v32 = [firstShownDate compare:v21] == -1;

            if (v32)
            {
              identifier5 = [v26 identifier];
              [(TPSAnalyticsUsageEventsProcessor *)self _savePreHintRangeOutOfBounds:1 forIdentifier:identifier5];
            }

            [(TPSAnalyticsUsageEventsProcessor *)self _saveHistoricalUsage:v26 completion:v19];
          }

          ++v25;
        }

        while (v23 != v25);
        v41 = [v22 countByEnumeratingWithState:&v54 objects:v69 count:16];
        v23 = v41;
      }

      while (v41);
    }
  }

  else
  {
    analyticsCopy[2]();
  }

  _Block_object_dispose(&v61, 8);

  v42 = *MEMORY[0x277D85DE8];
}

void __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_2;
  block[3] = &unk_2789B0C30;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_2(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [*(a1 + 40) identifier];
  v11 = [v9 _preHintRangeOutOfBoundsForIdentifier:v10];
  v12 = [v7 loadValueForKey:v11 class:objc_opt_class()];
  v13 = [v12 BOOLValue];

  v14 = [*(a1 + 48) compare:*(a1 + 56)] == -1;
  v15 = [TPSAnalyticsEventProcessedUsageEvents alloc];
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  v18 = [MEMORY[0x277CBEAA8] date];
  v26 = [(TPSAnalyticsEventProcessedUsageEvents *)v15 initWithUsageInfo:v16 experiment:v17 preHintUsageCount:a2 postHintUsageCount:a3 preHintRangeOutOfBounds:v13 postHintRangeOutOfBounds:v14 date:v18];

  v19 = [MEMORY[0x277D71620] sharedInstance];
  [v19 logAnalyticsEvent:v26];

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v22 = *(a1 + 32);
  v23 = objc_opt_class();
  v24 = [*(a1 + 40) identifier];
  v25 = [v23 _usageEventsProcessedKeyForIdentifier:v24];
  [v21 saveValue:MEMORY[0x277CBEC38] forKey:v25];

  (*(*(a1 + 72) + 16))();
}

- (void)resetAnalytics
{
  v7.receiver = self;
  v7.super_class = TPSAnalyticsUsageEventsProcessor;
  [(TPSAnalyticsProcessor *)&v7 resetAnalytics];
  [(TPSAnalyticsProcessor *)self setDateLastRun:0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];

  allKeys = [dictionaryRepresentation allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TPSAnalyticsUsageEventsProcessor_resetAnalytics__block_invoke;
  v6[3] = &unk_2789B0C80;
  v6[4] = self;
  [allKeys enumerateObjectsUsingBlock:v6];
}

void __50__TPSAnalyticsUsageEventsProcessor_resetAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hasPrefix:@"TPSAnalyticsUsageEvents"])
  {
    v3 = *(a1 + 32);
    [objc_opt_class() saveValue:0 forKey:v4];
  }
}

- (BOOL)_shouldCalculateLift:(id)lift
{
  liftCopy = lift;
  crunchingIntervalInDays = [MEMORY[0x277D71740] crunchingIntervalInDays];
  if (crunchingIntervalInDays)
  {
    if (crunchingIntervalInDays == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 20;
    }

    else
    {
      v6 = crunchingIntervalInDays;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [currentCalendar dateByAddingUnit:16 value:-v6 toDate:self->_currentDate options:0];

    firstShownDate = [liftCopy firstShownDate];
    v10 = [firstShownDate compare:v8] == -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_calculateLift:(id)lift completion:(id)completion
{
  liftCopy = lift;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate = [liftCopy firstShownDate];
  v10 = [currentCalendar dateByAddingUnit:16 value:19 toDate:firstShownDate options:0];

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  firstShownDate2 = [liftCopy firstShownDate];
  v13 = [v11 initWithStartDate:firstShownDate2 endDate:v10];

  usageEvent = [liftCopy usageEvent];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__TPSAnalyticsUsageEventsProcessor__calculateLift_completion___block_invoke;
  v17[3] = &unk_2789B0CA8;
  v17[4] = self;
  v18 = liftCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = liftCopy;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:usageEvent interval:v13 completion:v17];
}

uint64_t __62__TPSAnalyticsUsageEventsProcessor__calculateLift_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) identifier];
  v7 = [v5 _preHintUsageKeyForIdentifier:v6];
  v8 = [v3 loadValueForKey:v7 class:objc_opt_class()];
  [v8 integerValue];

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

- (void)_saveHistoricalUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate = [usageCopy firstShownDate];
  v10 = [currentCalendar dateByAddingUnit:16 value:-20 toDate:firstShownDate options:0];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate2 = [usageCopy firstShownDate];
  v13 = [currentCalendar2 dateByAddingUnit:16 value:-1 toDate:firstShownDate2 options:0];

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v13];
  usageEvent = [usageCopy usageEvent];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__TPSAnalyticsUsageEventsProcessor__saveHistoricalUsage_completion___block_invoke;
  v18[3] = &unk_2789B0CA8;
  v18[4] = self;
  v19 = usageCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = usageCopy;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:usageEvent interval:v14 completion:v18];
}

void __68__TPSAnalyticsUsageEventsProcessor__saveHistoricalUsage_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) identifier];
  v7 = [v5 _preHintUsageKeyForIdentifier:v6];

  v8 = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_232D6F000, v8, OS_LOG_TYPE_INFO, "Saving value: %@ for key: %@", &v14, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v11 saveValue:v12 forKey:v7];

  (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_countsForEvent:(id)event interval:(id)interval completion:(id)completion
{
  v7 = MEMORY[0x277D716C8];
  completionCopy = completion;
  completionCopy[2](completionCopy, [v7 countsForEvent:event interval:interval]);
}

+ (id)_firstShownDateForTipStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy displayType] && objc_msgSend(statusCopy, "displayType") != 1)
  {
    hintWouldHaveBeenDisplayedDate = [statusCopy hintWouldHaveBeenDisplayedDate];
    v6 = hintWouldHaveBeenDisplayedDate;
    if (hintWouldHaveBeenDisplayedDate)
    {
      firstObject = hintWouldHaveBeenDisplayedDate;
    }

    else
    {
      hintDisplayedDates = [statusCopy hintDisplayedDates];
      firstObject = [hintDisplayedDates firstObject];
    }
  }

  else
  {
    firstObject = [statusCopy contentViewedDate];
  }

  return firstObject;
}

+ (id)_notifiedDateForTipStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy displayType] && objc_msgSend(statusCopy, "displayType") != 1)
  {
    firstObject = 0;
  }

  else
  {
    hintWouldHaveBeenDisplayedDate = [statusCopy hintWouldHaveBeenDisplayedDate];
    v5 = hintWouldHaveBeenDisplayedDate;
    if (hintWouldHaveBeenDisplayedDate)
    {
      firstObject = hintWouldHaveBeenDisplayedDate;
    }

    else
    {
      hintDisplayedDates = [statusCopy hintDisplayedDates];
      firstObject = [hintDisplayedDates firstObject];
    }
  }

  return firstObject;
}

+ (BOOL)_tipStatusValidForLiftProcessing:(id)processing contextualInfo:(id)info firstShownDate:(id)date
{
  infoCopy = info;
  processingCopy = processing;
  v10 = objc_opt_class();
  identifier = [processingCopy identifier];
  v12 = [v10 _usageEventsProcessedKeyForIdentifier:identifier];
  v13 = [self loadValueForKey:v12 class:objc_opt_class()];
  bOOLValue = [v13 BOOLValue];

  v15 = objc_opt_class();
  displayType = [processingCopy displayType];

  v17 = [v15 _validateContextualInfo:infoCopy forDisplayType:displayType];
  if (date)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 & (bOOLValue ^ 1);
}

+ (BOOL)_validateContextualInfo:(id)info forDisplayType:(unint64_t)type
{
  infoCopy = info;
  v6 = infoCopy;
  if (type)
  {
    v7 = infoCopy != 0;
  }

  else
  {
    usageEvents = [infoCopy usageEvents];
    if ([usageEvents count])
    {
      v7 = 1;
    }

    else
    {
      desiredOutcomeCondition = [v6 desiredOutcomeCondition];
      rules = [desiredOutcomeCondition rules];
      v7 = [rules count] != 0;
    }
  }

  return v7;
}

@end