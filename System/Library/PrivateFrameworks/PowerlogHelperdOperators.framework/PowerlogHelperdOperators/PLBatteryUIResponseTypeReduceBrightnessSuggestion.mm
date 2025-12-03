@interface PLBatteryUIResponseTypeReduceBrightnessSuggestion
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeReduceBrightnessSuggestion

- (void)configure:(id)configure
{
  v4 = +[PLUtilities isALSCurveHigherThanDefault];

  [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setIsALSCurveHigherThanDefault:v4];
}

- (void)run
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self shouldShowSuggestionThroughOverrides])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setSuggest:1];
  }

  else
  {
    if ([(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self isALSCurveHigherThanDefault])
    {
      batteryBreakdown_Last24hrs = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs)
      {
        v5 = PLBatteryUsageUIKeyFromConfiguration();
        responderService = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self responderService];
        responseCache = [responderService responseCache];
        v8 = [responseCache objectForKeyedSubscript:&unk_287146048];
        v9 = [v8 objectForKeyedSubscript:v5];
        v10 = [v9 objectForKeyedSubscript:@"result"];
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
        firstObject = [v11 firstObject];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:firstObject];
      }

      batteryBreakdown_Last24hrs2 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      if (!batteryBreakdown_Last24hrs2)
      {
        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "Reduce Brightness Suggestion: 24h breakdown cache unavailable, retry with 15 days", buf, 2u);
        }

        responderService2 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self responderService];
        v16 = [responderService2 getBreakdownForLength:86400 fromCachedLength:1296000 forBucketSize:86400];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:v16];
      }

      batteryBreakdown_Last24hrs3 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];

      v18 = PLLogCommon();
      v19 = v18;
      if (batteryBreakdown_Last24hrs3)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v19 run];
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        batteryBreakdown_Last24hrs4 = [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self batteryBreakdown_Last24hrs];
        v21 = [batteryBreakdown_Last24hrs4 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v22 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          v25 = 0.0;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v35 + 1) + 8 * i);
              v28 = [&unk_28714CA88 objectAtIndexedSubscript:6];
              v29 = [v27 objectForKeyedSubscript:v28];
              [v29 doubleValue];
              v25 = v25 + v30;
            }

            v23 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v23);
        }

        else
        {
          v25 = 0.0;
        }

        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setEnergyPercent:v25 * 100.0 / v32];
        +[PLUtilities defaultBatteryEnergyCapacity];
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setSuggest:v25 > v33 * 0.05];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v19 run];
        }
      }
    }

    else
    {
      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)v31 run];
      }
    }

    v34 = *MEMORY[0x277D85DE8];
  }
}

- (id)result
{
  v13[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self setBatteryBreakdown_Last24hrs:0];
  if ([(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self suggest])
  {
    ADClientSetValueForScalarKey();
    v3 = objc_opt_new();
    [v3 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v3 setObject:@"reduceBrightness" forKeyedSubscript:@"type"];
    v10 = MEMORY[0x277D85DD0];
    v11 = v3;
    v4 = v3;
    AnalyticsSendEventLazy();
    v12[0] = @"PLBatteryUISuggestionTypeKey";
    v12[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v13[0] = &unk_287146060;
    v5 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeReduceBrightnessSuggestion *)self energyPercent:v10];
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
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_REDUCEBRIGHTNESS_SUGGESTION_SHOW"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

@end