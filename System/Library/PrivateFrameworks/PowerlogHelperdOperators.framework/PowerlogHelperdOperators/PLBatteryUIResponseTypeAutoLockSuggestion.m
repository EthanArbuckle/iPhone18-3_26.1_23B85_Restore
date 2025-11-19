@interface PLBatteryUIResponseTypeAutoLockSuggestion
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)a3;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeAutoLockSuggestion

- (void)configure:(id)a3
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v5 effectiveValueForSetting:*MEMORY[0x277D25D78]];
  [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setAutoLockTime:v4];
}

- (void)run
{
  v52 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeAutoLockSuggestion *)self shouldShowSuggestionThroughOverrides])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setSuggest:1];
  }

  else
  {
    v4 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self autoLockTime];
    v5 = [v4 intValue];

    if (v5 == 0x7FFFFFFF)
    {
      v6 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      if (!v6)
      {
        v7 = PLBatteryUsageUIKeyFromConfiguration();
        v8 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self responderService];
        v9 = [v8 responseCache];
        v10 = [v9 objectForKeyedSubscript:&unk_287146F00];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 objectForKeyedSubscript:@"result"];
        v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
        v14 = [v13 firstObject];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:v14];
      }

      v15 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      if (!v15)
      {
        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEFAULT, "Auto Lock Suggestion: 24h breakdown cache unavailable, retry with 15 days", buf, 2u);
        }

        v17 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self responderService];
        v18 = [v17 getBreakdownForLength:86400 fromCachedLength:1296000 forBucketSize:86400];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:v18];
      }

      v19 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];

      v20 = PLLogCommon();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeAutoLockSuggestion *)v21 run];
        }

        v22 = MEMORY[0x277CCACA8];
        v23 = [&unk_28714DBE0 objectAtIndexedSubscript:9];
        v24 = [&unk_28714DBF8 objectAtIndexedSubscript:10];
        v21 = [v22 stringWithFormat:@"%@-%@", v23, v24];

        v25 = MEMORY[0x277CCACA8];
        v26 = [&unk_28714DC10 objectAtIndexedSubscript:9];
        v27 = [&unk_28714DC28 objectAtIndexedSubscript:56];
        v28 = [v25 stringWithFormat:@"%@-%@", v26, v27];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v29 = [(PLBatteryUIResponseTypeAutoLockSuggestion *)self batteryBreakdown_Last24hrs];
        v30 = [v29 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v31 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v47;
          v34 = 0.0;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v46 + 1) + 8 * i);
              v37 = [v36 objectForKeyedSubscript:v21];
              [v37 doubleValue];
              v39 = v38;
              v40 = [v36 objectForKeyedSubscript:v28];
              [v40 doubleValue];
              v34 = v34 + v39 + v41;
            }

            v32 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v32);
        }

        else
        {
          v34 = 0.0;
        }

        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setEnergyPercent:v34 * 100.0 / v43];
        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setSuggest:v34 > v44 * 0.01];
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)v21 run];
      }
    }

    else
    {
      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeAutoLockSuggestion *)v42 run];
      }
    }

    v45 = *MEMORY[0x277D85DE8];
  }
}

- (id)result
{
  v13[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeAutoLockSuggestion *)self setBatteryBreakdown_Last24hrs:0];
  if ([(PLBatteryUIResponseTypeAutoLockSuggestion *)self suggest])
  {
    ADClientSetValueForScalarKey();
    v3 = objc_opt_new();
    [v3 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v3 setObject:@"autoLock" forKeyedSubscript:@"type"];
    v10 = MEMORY[0x277D85DD0];
    v11 = v3;
    v4 = v3;
    AnalyticsSendEventLazy();
    v12[0] = @"PLBatteryUISuggestionTypeKey";
    v12[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v13[0] = &unk_287146F18;
    v5 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeAutoLockSuggestion *)self energyPercent:v10];
    v6 = [v5 numberWithDouble:?];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_AUTOLOCK_SUGGESTION_SHOW"];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

@end