@interface PLBatteryUIResponseTypeNoteworthyInformation
- (BOOL)getBUIVisitDefaultValue;
- (BOOL)hasNoterworthyInformationThroughOverrides;
- (BOOL)hasRelevantSuggestion;
- (double)getDailyPercentDrainThresholdValue;
- (id)getResultFromCacheForSuggestionResponseType:(int64_t)a3;
- (id)getResultFromCacheForUISOCDrainResponseType;
- (id)result;
- (unint64_t)getNumDaysAboveDrainThreshold:(double)a3;
- (unint64_t)getNumDaysAboveDrainThresholdValue;
- (unint64_t)getNumDaysBelowUISOCLevel:(double)a3 forLastNDays:(unint64_t)a4;
- (unint64_t)getNumDaysBelowUISOCLevelThresholdValue;
- (unint64_t)getUISOCLevelPercentThresholdValue;
- (void)getBUIVisitDefaultValue;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeNoteworthyInformation

- (void)run
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeNoteworthyInformation *)self hasNoterworthyInformationThroughOverrides])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(PLBatteryUIResponseTypeNoteworthyInformation *)self setHasNoteworthyInformation:1];
  }

  else
  {
    v4 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getUISOCLevelPercentThresholdValue];
    v5 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getNumDaysBelowUISOCLevelThresholdValue];
    v6 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getNumDaysBelowUISOCLevel:7 forLastNDays:v4];
    v7 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self hasRelevantSuggestion];
    v8 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getBUIVisitDefaultValue];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134219008;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      _os_log_debug_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEBUG, "UISOCLevelPercentThresholdValue=%f, numDaysBelowUISOCLevelThresholdValue=%zu, numDaysBelowUISOCLevel=%zu, doesHaveRelevantSuggestion=%d, userHasVisitedBUI=%d", &v12, 0x2Cu);
    }

    v10 = v6 >= v5 && v7 && !v8;
    [(PLBatteryUIResponseTypeNoteworthyInformation *)self setHasNoteworthyInformation:v10];
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (id)result
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D85DD0];
  AnalyticsSendEventLazy();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLBatteryUIResponseTypeNoteworthyInformation hasNoteworthyInformation](self, "hasNoteworthyInformation", v7, 3221225472, __54__PLBatteryUIResponseTypeNoteworthyInformation_result__block_invoke, &unk_279A5BF38, self, @"hasNoteworthyInformation"}];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __54__PLBatteryUIResponseTypeNoteworthyInformation_result__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"result";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "hasNoteworthyInformation")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)getNumDaysAboveDrainThreshold:(double)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForUISOCDrainResponseType];
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeNoteworthyInformation *)v4 getNumDaysAboveDrainThreshold:v5];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:{@"PLBatteryUIEnergyKey", v18}];
        [v12 doubleValue];
        v14 = v13;

        if (v14 > a3)
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)getNumDaysBelowUISOCLevel:(double)a3 forLastNDays:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT datetime(timestamp, 'unixepoch', 'localtime', 'start of day'), COUNT(*) FROM PLBatteryAgent_EventBackward_BatteryUI WHERE level <= %f AND timestamp >((SELECT MAX(timestamp) FROM PLBatteryAgent_EventBackward_Battery)-%zu*86400) GROUP BY datetime(timestamp, 'unixepoch', 'localtime', 'start of day')", *&a3, a4];;
  v5 = [MEMORY[0x277D3F210] sharedSQLiteConnection];
  v6 = [v5 performQuery:v4];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "queryResult=%@", buf, 0xCu);
  }

  v8 = [v6 count];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasRelevantSuggestion
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:9];
  v4 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:10];
  v5 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self getResultFromCacheForSuggestionResponseType:11];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "resultAutolockSuggestion=%@, resultAutoBrightnessSuggestion=%@, resultReduceBrightnessSuggestion=%@", &v11, 0x20u);
  }

  v7 = [v3 count];
  v8 = [v4 count] + v7;
  LOBYTE(v8) = v8 + [v5 count] != 0;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)getResultFromCacheForUISOCDrainResponseType
{
  v3 = PLBatteryUsageUIKeyFromConfiguration();
  v4 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self responderService];
  v5 = [v4 responseCache];
  v6 = [v5 objectForKeyedSubscript:&unk_287145E08];
  v7 = [v6 objectForKeyedSubscript:v3];
  v8 = [v7 objectForKeyedSubscript:@"result"];

  return v8;
}

- (id)getResultFromCacheForSuggestionResponseType:(int64_t)a3
{
  v5 = PLBatteryUsageUIKeyFromConfiguration();
  v6 = [(PLBatteryUIResponseTypeNoteworthyInformation *)self responderService];
  v7 = [v6 responseCache];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 objectForKeyedSubscript:@"result"];

  return v11;
}

- (double)getDailyPercentDrainThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 100.0;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_DAILY_PERCENT_DRAIN_THRESHOLD"];
  v3 = v2;
  if (v2 && ([v2 doubleValue], v4 > 0.0))
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 100.0;
  }

  return v6;
}

- (unint64_t)getNumDaysAboveDrainThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 7;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_NUM_DAYS_ABOVE_DRAIN_THRESHOLD"];
  v3 = v2;
  if (v2 && [v2 unsignedIntValue])
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

- (unint64_t)getUISOCLevelPercentThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 10;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_UISOC_LEVEL_THRESHOLD"];
  v3 = v2;
  if (v2 && ([v2 doubleValue], v4 > 0.0))
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 10;
  }

  return v6;
}

- (unint64_t)getNumDaysBelowUISOCLevelThresholdValue
{
  if (!+[PLUtilities inBUIDemoMode])
  {
    return 5;
  }

  v2 = [PLUtilities powerlogDefaultForKey:@"BUI_NOTEWORTHY_INFORMATION_NUM_DAYS_BELOW_UISOC_LEVEL_THRESHOLD"];
  v3 = v2;
  if (v2 && [v2 unsignedIntValue])
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (BOOL)getBUIVisitDefaultValue
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BUIVisitDefaultKey" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  v3 = [v2 BOOLValue];

  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeNoteworthyInformation *)v3 getBUIVisitDefaultValue];
  }

  return v3;
}

- (BOOL)hasNoterworthyInformationThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_HAS_NOTEWORTHY_INFORMATION"];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)getNumDaysAboveDrainThreshold:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "UISOCDrainResult=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getBUIVisitDefaultValue
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "BUIVisitDefaultValue=%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end