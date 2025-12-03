@interface PLUsageTrackingAgent
+ (id)entryEventIntervalDefinitionUsageTime;
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (PLUsageTrackingAgent)init;
- (void)logEntriesFromUsageReports:(id)reports;
- (void)logEventIntervalUsageTime;
@end

@implementation PLUsageTrackingAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLUsageTrackingAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"UsageTime";
  v2 = +[PLUsageTrackingAgent entryEventIntervalDefinitionUsageTime];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalDefinitionUsageTime
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C1C8;
  v17[1] = MEMORY[0x277CBEC38];
  v16[2] = *MEMORY[0x277D3F4A0];
  v17[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v15[0] = commonTypeDict_DateFormat;
  v14[1] = @"bundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v15[1] = commonTypeDict_StringFormat_withBundleID;
  v14[2] = @"screenTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLUsageTrackingAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLUsageTrackingAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)logEventIntervalUsageTime
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = objc_opt_new();
    [(PLUsageTrackingAgent *)self setUsageReporter:v3];

    usageReporter = [(PLUsageTrackingAgent *)self usageReporter];

    if (usageReporter)
    {
      v5 = PLLogUsageTracking();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Logging UsageTracking reports", buf, 2u);
      }

      v6 = objc_opt_new();
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v8 = [currentCalendar components:60 fromDate:v6];
      [v8 setValue:objc_msgSend(v8 forComponent:{"valueForComponent:", 32) + 1, 32}];
      v9 = [currentCalendar dateFromComponents:v8];

      v10 = objc_alloc(MEMORY[0x277CCA970]);
      v11 = [v9 dateByAddingTimeInterval:-86400.0];
      v12 = [v10 initWithStartDate:v11 endDate:v9];

      usageReporter2 = [(PLUsageTrackingAgent *)self usageReporter];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __49__PLUsageTrackingAgent_logEventIntervalUsageTime__block_invoke;
      v20[3] = &unk_27825D338;
      v20[4] = self;
      [usageReporter2 fetchReportsDuringInterval:v12 partitionInterval:v20 completionHandler:3600.0];

      v14 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v9];
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      v16 = [v14 dateByAddingTimeInterval:-864000.0];
      v17 = [v15 initWithStartDate:v16 endDate:v14];

      usageReporter3 = [(PLUsageTrackingAgent *)self usageReporter];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __49__PLUsageTrackingAgent_logEventIntervalUsageTime__block_invoke_34;
      v19[3] = &unk_27825D338;
      v19[4] = self;
      [usageReporter3 fetchReportsDuringInterval:v17 partitionInterval:v19 completionHandler:86400.0];
    }
  }
}

void __49__PLUsageTrackingAgent_logEventIntervalUsageTime__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (v7)
  {
    v8 = PLLogUsageTracking();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) logEntriesFromUsageReports:a2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__PLUsageTrackingAgent_logEventIntervalUsageTime__block_invoke_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (v7)
  {
    v8 = PLLogUsageTracking();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) logEntriesFromUsageReports:a2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logEntriesFromUsageReports:(id)reports
{
  v25 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  v5 = reportsCopy;
  if (reportsCopy && [reportsCopy count])
  {
    v6 = PLLogUsageTracking();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Creating entries from UT", buf, 2u);
    }

    v7 = objc_opt_new();
    v8 = [(PLOperator *)PLUsageTrackingAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UsageTime"];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke;
    v18 = &unk_27825D3B0;
    v9 = v8;
    v19 = v9;
    v10 = v7;
    v20 = v10;
    [v5 enumerateObjectsUsingBlock:&v15];
    v11 = PLLogUsageTracking();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v10 count];
      *buf = 134217984;
      v24 = v14;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Logging %lu UT reports", buf, 0xCu);
    }

    if ([v10 count])
    {
      v21 = v9;
      v22 = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [(PLOperator *)self logEntries:v12 withGroupID:v9];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 categoryUsage];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v3 interval];
    v7 = [v6 startDate];
    v8 = [v7 convertFromSystemToMonotonic];

    v9 = [v3 interval];
    v10 = [v9 endDate];
    v11 = [v10 convertFromSystemToMonotonic];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke_2;
    v14[3] = &unk_27825D388;
    v15 = *(a1 + 32);
    v16 = v8;
    v17 = v11;
    v18 = *(a1 + 40);
    v12 = v11;
    v13 = v8;
    [v5 enumerateObjectsUsingBlock:v14];
  }
}

void __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke_2(id *a1, void *a2)
{
  v3 = [a2 applicationUsage];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke_3;
    v11[3] = &unk_27825D360;
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    [v4 enumerateObjectsUsingBlock:v11];
  }
}

void __51__PLUsageTrackingAgent_logEntriesFromUsageReports___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 applicationUsageByBundleIdentifier];
  v4 = [v3 allValues];
  v5 = [v4 valueForKeyPath:@"@sum.self"];

  [v5 doubleValue];
  if (v6 != 0.0)
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32)];
    [v7 setEntryDate:*(a1 + 40)];
    [v7 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
    v8 = [v9 canonicalBundleIdentifier];
    [v7 setObject:v8 forKeyedSubscript:@"bundleID"];

    [v7 setObject:v5 forKeyedSubscript:@"screenTime"];
    [*(a1 + 56) addObject:v7];
  }
}

@end