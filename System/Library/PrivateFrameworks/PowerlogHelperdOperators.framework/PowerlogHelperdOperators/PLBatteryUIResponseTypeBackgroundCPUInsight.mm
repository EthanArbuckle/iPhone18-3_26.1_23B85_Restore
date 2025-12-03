@interface PLBatteryUIResponseTypeBackgroundCPUInsight
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeBackgroundCPUInsight

- (void)run
{
  selfCopy = self;
  v99 = *MEMORY[0x277D85DE8];
  batteryBreakdown_Last10Days = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self batteryBreakdown_Last10Days];

  if (batteryBreakdown_Last10Days)
  {
LABEL_4:
    batteryBreakdown_Last10Days2 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy batteryBreakdown_Last10Days];

    v13 = PLLogCommon();
    perAppUsage6 = v13;
    if (batteryBreakdown_Last10Days2)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeBackgroundCPUInsight *)perAppUsage6 run];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy setPerAppUsage:dictionary];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy batteryBreakdown_Last10Days];
      v15 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v89;
        v74 = *v89;
        do
        {
          v18 = 0;
          v75 = v16;
          do
          {
            if (*v89 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v88 + 1) + 8 * v18);
            v20 = [v19 objectForKeyedSubscript:{@"PLBatteryUITotalEnergyKey", v74}];
            [v20 doubleValue];
            v22 = v21;

            if (v22 != 0.0)
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v23 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
              v24 = [v23 countByEnumeratingWithState:&v84 objects:v97 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v85;
                v77 = *v85;
                v78 = v23;
                do
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v85 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v84 + 1) + 8 * i);
                    v29 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v29 doubleValue];
                    v31 = v30;

                    if (v31 <= 0.0)
                    {
                      v32 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      v33 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
                      [v33 doubleValue];
                      v35 = v34;

                      if (v35 > 500.0)
                      {
                        perAppUsage = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
                        v37 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                        v38 = [perAppUsage objectForKeyedSubscript:v37];
                        [v38 objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];
                        v40 = v39 = selfCopy;
                        [v40 doubleValue];
                        v42 = v41;

                        v43 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
                        [v43 doubleValue];
                        v45 = v44;

                        v46 = v42 + v45;
                        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                        v48 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
                        [dictionary2 setObject:v48 forKeyedSubscript:@"PLBatteryUIInsightAppNameKey"];

                        [dictionary2 setObject:v32 forKeyedSubscript:@"PLBatteryUIInsightBundleIDKey"];
                        v49 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
                        [dictionary2 setObject:v49 forKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];

                        v50 = PLLogCommon();
                        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                        {
                          v53 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
                          *buf = 138412546;
                          v94 = v53;
                          v95 = 2048;
                          v96 = v46;
                          _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "Background CPU Insight: %@ has %f energy", buf, 0x16u);
                        }

                        perAppUsage2 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v39 perAppUsage];
                        v52 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                        [perAppUsage2 setObject:dictionary2 forKeyedSubscript:v52];

                        selfCopy = v39;
                        v26 = v77;
                        v23 = v78;
                      }
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v84 objects:v97 count:16];
                }

                while (v25);
              }

              v17 = v74;
              v16 = v75;
            }

            ++v18;
          }

          while (v18 != v16);
          v16 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
        }

        while (v16);
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      perAppUsage3 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
      v54 = [perAppUsage3 countByEnumeratingWithState:&v80 objects:v92 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v81;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v81 != v56)
            {
              objc_enumerationMutation(perAppUsage3);
            }

            v58 = *(*(&v80 + 1) + 8 * j);
            perAppUsage4 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
            v60 = [perAppUsage4 objectForKeyedSubscript:v58];
            [v60 objectForKeyedSubscript:@"PLBatteryUISuggestionEnergyKey"];
            v62 = v61 = selfCopy;
            [v62 doubleValue];
            v64 = v63 * 100.0;
            +[PLUtilities defaultBatteryEnergyCapacity];
            v66 = v64 / v65;

            v67 = MEMORY[0x277CCABB0];
            batteryBreakdown_Last10Days3 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v61 batteryBreakdown_Last10Days];
            v69 = [v67 numberWithDouble:{v66 / objc_msgSend(batteryBreakdown_Last10Days3, "count")}];
            perAppUsage5 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v61 perAppUsage];
            v71 = [perAppUsage5 objectForKeyedSubscript:v58];
            [v71 setObject:v69 forKeyedSubscript:@"PLBatteryUISuggestionPercentKey"];

            selfCopy = v61;
          }

          v55 = [perAppUsage3 countByEnumeratingWithState:&v80 objects:v92 count:16];
        }

        while (v55);
      }

      perAppUsage6 = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy perAppUsage];
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy setSuggest:[perAppUsage6 count]!= 0];
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeBackgroundCPUInsight *)perAppUsage6 run];
    }

    goto LABEL_42;
  }

  perAppUsage6 = PLBatteryUsageUIKeyFromConfiguration();
  responderService = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)selfCopy responderService];
  responseCache = [responderService responseCache];
  v7 = [responseCache objectForKeyedSubscript:&unk_287146C48];
  v8 = [v7 objectForKeyedSubscript:perAppUsage6];
  [v8 objectForKeyedSubscript:@"result"];
  v10 = v9 = selfCopy;
  v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

  if (v11)
  {
    [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v9 setBatteryBreakdown_Last10Days:v11];

    selfCopy = v9;
    goto LABEL_4;
  }

  v72 = PLLogCommon();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeBackgroundCPUInsight *)v72 run];
  }

LABEL_42:
  v73 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  v8[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self setBatteryBreakdown_Last10Days:0];
  if ([(PLBatteryUIResponseTypeBackgroundCPUInsight *)self suggest])
  {
    v7[0] = @"PLBatteryUISuggestionTypeKey";
    v7[1] = @"PLBatteryUIPerAppUsageKey";
    v8[0] = &unk_287146C60;
    perAppUsage = [(PLBatteryUIResponseTypeBackgroundCPUInsight *)self perAppUsage];
    v8[1] = perAppUsage;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end