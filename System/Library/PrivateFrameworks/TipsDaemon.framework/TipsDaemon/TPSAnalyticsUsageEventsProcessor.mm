@interface TPSAnalyticsUsageEventsProcessor
+ (BOOL)_tipStatusValidForLiftProcessing:(id)a3 contextualInfo:(id)a4 firstShownDate:(id)a5;
+ (BOOL)_validateContextualInfo:(id)a3 forDisplayType:(unint64_t)a4;
+ (id)_firstShownDateForTipStatus:(id)a3;
+ (id)_notifiedDateForTipStatus:(id)a3;
- (BOOL)_shouldCalculateLift:(id)a3;
- (TPSAnalyticsUsageEventsProcessor)init;
- (void)_calculateLift:(id)a3 completion:(id)a4;
- (void)_countsForEvent:(id)a3 interval:(id)a4 completion:(id)a5;
- (void)_saveHistoricalUsage:(id)a3 completion:(id)a4;
- (void)processAnalytics:(id)a3;
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
    v3 = [MEMORY[0x277CBEAA8] date];
    currentDate = v2->_currentDate;
    v2->_currentDate = v3;
  }

  return v2;
}

- (void)processAnalytics:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v48 = [(TPSAnalyticsProcessor *)self dateLastRun];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = [(TPSAnalyticsProcessor *)self dataSource];
  obj = [v4 allTipStatus];

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
        v7 = [v6 identifier];
        v8 = [(TPSAnalyticsProcessor *)self dataSource];
        v9 = [v8 contextualInfoForIdentifier:v7];

        v10 = [objc_opt_class() _firstShownDateForTipStatus:v6];
        v11 = [objc_opt_class() _notifiedDateForTipStatus:v6];
        if ([objc_opt_class() _tipStatusValidForLiftProcessing:v6 contextualInfo:v9 firstShownDate:v10])
        {
          v12 = [v9 usageEvents];
          v13 = [v12 firstObject];

          v14 = [v6 desiredOutcomePerformedDates];
          v15 = [v14 count];

          v16 = objc_alloc_init(TPSAnalyticsUsageInfo);
          -[TPSAnalyticsUsageInfo setOverrideHoldout:](v16, "setOverrideHoldout:", [v6 overrideHoldout]);
          [(TPSAnalyticsUsageInfo *)v16 setFirstShownDate:v10];
          [(TPSAnalyticsUsageInfo *)v16 setNotifiedDate:v11];
          [(TPSAnalyticsUsageInfo *)v16 setUsageEvent:v13];
          [(TPSAnalyticsUsageInfo *)v16 setIdentifier:v7];
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
  v17 = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = v62[3];
    *buf = 134217984;
    v71 = v18;
    _os_log_impl(&dword_232D6F000, v17, OS_LOG_TYPE_INFO, "Valid tips for usage event processing: %lu", buf, 0xCu);
  }

  if (v62[3])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke;
    aBlock[3] = &unk_2789B0C30;
    v60 = &v61;
    v59 = v43;
    v19 = _Block_copy(aBlock);
    v20 = [MEMORY[0x277CBEA80] currentCalendar];
    v21 = [v20 dateByAddingUnit:16 value:-5 toDate:self->_currentDate options:0];

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
          if (v48 && ([*(*(&v54 + 1) + 8 * v25) firstShownDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "compare:", v48) == 1, v27, !v28))
          {
            if ([(TPSAnalyticsUsageEventsProcessor *)self _shouldCalculateLift:v26])
            {
              v34 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = [v26 identifier];
                *buf = 138412290;
                v71 = v35;
                _os_log_impl(&dword_232D6F000, v34, OS_LOG_TYPE_INFO, "Lift threshold hit, calculating lift for: %@", buf, 0xCu);
              }

              v36 = [(TPSAnalyticsProcessor *)self dataSource];
              v37 = [v36 experiment];

              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_6;
              v49[3] = &unk_2789B0C58;
              v49[4] = self;
              v49[5] = v26;
              v50 = v48;
              v51 = v21;
              v38 = v37;
              v52 = v38;
              v53 = v19;
              [(TPSAnalyticsUsageEventsProcessor *)self _calculateLift:v26 completion:v49];
            }

            else
            {
              v39 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = [v26 identifier];
                *buf = 138412290;
                v71 = v40;
                _os_log_impl(&dword_232D6F000, v39, OS_LOG_TYPE_INFO, "Lift threshold not yet hit for: %@", buf, 0xCu);
              }

              v19[2](v19);
            }
          }

          else
          {
            v29 = [MEMORY[0x277D71778] analytics];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v26 identifier];
              *buf = 138412290;
              v71 = v30;
              _os_log_impl(&dword_232D6F000, v29, OS_LOG_TYPE_INFO, "Tip shown since last run, saving historical usage: %@", buf, 0xCu);
            }

            v31 = [v26 firstShownDate];
            v32 = [v31 compare:v21] == -1;

            if (v32)
            {
              v33 = [v26 identifier];
              [(TPSAnalyticsUsageEventsProcessor *)self _savePreHintRangeOutOfBounds:1 forIdentifier:v33];
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
    v43[2]();
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
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];

  v5 = [v4 allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TPSAnalyticsUsageEventsProcessor_resetAnalytics__block_invoke;
  v6[3] = &unk_2789B0C80;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
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

- (BOOL)_shouldCalculateLift:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71740] crunchingIntervalInDays];
  if (v5)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 20;
    }

    else
    {
      v6 = v5;
    }

    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 dateByAddingUnit:16 value:-v6 toDate:self->_currentDate options:0];

    v9 = [v4 firstShownDate];
    v10 = [v9 compare:v8] == -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_calculateLift:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v6 firstShownDate];
  v10 = [v8 dateByAddingUnit:16 value:19 toDate:v9 options:0];

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [v6 firstShownDate];
  v13 = [v11 initWithStartDate:v12 endDate:v10];

  v14 = [v6 usageEvent];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__TPSAnalyticsUsageEventsProcessor__calculateLift_completion___block_invoke;
  v17[3] = &unk_2789B0CA8;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v15 = v7;
  v16 = v6;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:v14 interval:v13 completion:v17];
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

- (void)_saveHistoricalUsage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v6 firstShownDate];
  v10 = [v8 dateByAddingUnit:16 value:-20 toDate:v9 options:0];

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v6 firstShownDate];
  v13 = [v11 dateByAddingUnit:16 value:-1 toDate:v12 options:0];

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v13];
  v15 = [v6 usageEvent];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__TPSAnalyticsUsageEventsProcessor__saveHistoricalUsage_completion___block_invoke;
  v18[3] = &unk_2789B0CA8;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v16 = v7;
  v17 = v6;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:v15 interval:v14 completion:v18];
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

- (void)_countsForEvent:(id)a3 interval:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277D716C8];
  v8 = a5;
  v8[2](v8, [v7 countsForEvent:a3 interval:a4]);
}

+ (id)_firstShownDateForTipStatus:(id)a3
{
  v3 = a3;
  if ([v3 displayType] && objc_msgSend(v3, "displayType") != 1)
  {
    v5 = [v3 hintWouldHaveBeenDisplayedDate];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v7 = [v3 hintDisplayedDates];
      v4 = [v7 firstObject];
    }
  }

  else
  {
    v4 = [v3 contentViewedDate];
  }

  return v4;
}

+ (id)_notifiedDateForTipStatus:(id)a3
{
  v3 = a3;
  if ([v3 displayType] && objc_msgSend(v3, "displayType") != 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 hintWouldHaveBeenDisplayedDate];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = [v3 hintDisplayedDates];
      v6 = [v7 firstObject];
    }
  }

  return v6;
}

+ (BOOL)_tipStatusValidForLiftProcessing:(id)a3 contextualInfo:(id)a4 firstShownDate:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [v9 identifier];
  v12 = [v10 _usageEventsProcessedKeyForIdentifier:v11];
  v13 = [a1 loadValueForKey:v12 class:objc_opt_class()];
  v14 = [v13 BOOLValue];

  v15 = objc_opt_class();
  v16 = [v9 displayType];

  v17 = [v15 _validateContextualInfo:v8 forDisplayType:v16];
  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 & (v14 ^ 1);
}

+ (BOOL)_validateContextualInfo:(id)a3 forDisplayType:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = v5 != 0;
  }

  else
  {
    v8 = [v5 usageEvents];
    if ([v8 count])
    {
      v7 = 1;
    }

    else
    {
      v9 = [v6 desiredOutcomeCondition];
      v10 = [v9 rules];
      v7 = [v10 count] != 0;
    }
  }

  return v7;
}

@end