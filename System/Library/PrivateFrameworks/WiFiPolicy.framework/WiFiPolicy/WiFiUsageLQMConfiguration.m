@interface WiFiUsageLQMConfiguration
+ (id)getConfigForKey:(id)a3;
+ (void)getConfigForPlatform;
+ (void)initialize;
+ (void)setConfig:(id)a3;
@end

@implementation WiFiUsageLQMConfiguration

+ (void)initialize
{
  v2 = _dataPathTelemetryConfig;
  _dataPathTelemetryConfig = 0;
}

+ (void)setConfig:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToDictionary:_dataPathTelemetryConfig] & 1) == 0)
  {
    objc_storeStrong(&_dataPathTelemetryConfig, a3);
    [a1 getConfigForPlatform];
    NSLog(&cfstr_SUpdatedDatapa.isa, "+[WiFiUsageLQMConfiguration setConfig:]");
    +[WiFiUsageLQMRollingWindow updateConfig];
    v5 = +[WiFiUsageMonitor sharedInstance];
    [v5 updateLQMWindowCriteria];

    +[WiFiUsageLQMTransformations updateConfig];
    +[WiFiUsageLQMWindowAnalysis updateConfig];
  }
}

+ (id)getConfigForKey:(id)a3
{
  v3 = a3;
  v4 = [_dataPathTelemetryConfig objectForKey:v3];
  if (!v4)
  {
    NSLog(&cfstr_SDatapathtelem.isa, "+[WiFiUsageLQMConfiguration getConfigForKey:]", v3);
  }

  return v4;
}

+ (void)getConfigForPlatform
{
  v53 = *MEMORY[0x277D85DE8];
  p_info = TBTileMO.info;
  v3 = [_dataPathTelemetryConfig objectForKey:@"platformDependent"];

  if (v3)
  {
    v4 = [_dataPathTelemetryConfig objectForKeyedSubscript:@"platformDependent"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = [_dataPathTelemetryConfig objectForKeyedSubscript:@"platformDependent"];
      v6 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v6)
      {
        v7 = v6;
        v42 = 0;
        v8 = @"validOnPlatforms";
        v9 = *v47;
LABEL_5:
        v10 = 0;
        v44 = v7;
        while (1)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v46 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_18;
          }

          v12 = [v11 objectForKeyedSubscript:v8];
          if (!v12)
          {
            goto LABEL_18;
          }

          v13 = v12;
          v14 = v9;
          v15 = p_info;
          v16 = v8;
          v17 = [v11 objectForKeyedSubscript:v8];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 objectForKeyedSubscript:@"DataPathTelemetry"], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
          {

            v8 = v16;
            v9 = v14;
            v7 = v44;
LABEL_18:
            v25 = MEMORY[0x277CCACA8];
            v26 = [(__objc2_class_ro *)p_info[115] objectForKeyedSubscript:@"platformDependent"];
            v27 = [v25 stringWithFormat:@"%s: Cannot parse DataPathTelemetry.platformDependent: %@", "+[WiFiUsageLQMConfiguration getConfigForPlatform]", v26];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v27, "UTF8String")];
              v29 = [v28 UTF8String];
              *buf = 136446210;
              v52 = v29;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }

            goto LABEL_21;
          }

          v19 = v18;
          v20 = [v11 objectForKeyedSubscript:@"DataPathTelemetry"];
          objc_opt_class();
          v43 = objc_opt_isKindOfClass();

          p_info = v15;
          v8 = v16;
          v9 = v14;
          v7 = v44;
          if ((v43 & 1) == 0)
          {
            goto LABEL_18;
          }

          v21 = MGGetSInt32Answer();
          if (v21 > 3)
          {
            switch(v21)
            {
              case 4:
                v30 = [v11 objectForKeyedSubscript:v16];
                v31 = v30;
                v23 = @"tv";
                break;
              case 9:
                v30 = [v11 objectForKeyedSubscript:v16];
                v31 = v30;
                v23 = @"mac";
                break;
              case 6:
                v30 = [v11 objectForKeyedSubscript:v16];
                v31 = v30;
                v23 = @"watch";
                break;
              default:
                goto LABEL_21;
            }

            v32 = [v30 containsObject:v23];

            if ((v32 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            if ((v21 - 1) >= 3)
            {
              goto LABEL_21;
            }

            v22 = [v11 objectForKeyedSubscript:v16];
            v23 = @"phone";
            v24 = [v22 containsObject:@"phone"];

            if (!v24)
            {
              goto LABEL_21;
            }
          }

          v33 = [v11 objectForKeyedSubscript:@"DataPathTelemetry"];
          if (v33)
          {
            v35 = v33;
            goto LABEL_40;
          }

          v42 = v23;
LABEL_21:
          if (v7 == ++v10)
          {
            v34 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
            v7 = v34;
            if (!v34)
            {
              v35 = 0;
              v23 = v42;
              goto LABEL_40;
            }

            goto LABEL_5;
          }
        }
      }

      v23 = 0;
      v35 = 0;
LABEL_40:

      NSLog(&cfstr_SReceivedConfi.isa, "+[WiFiUsageLQMConfiguration getConfigForPlatform]", v23);
      if (!v35)
      {
        NSLog(&cfstr_SUnableToFindD.isa, "+[WiFiUsageLQMConfiguration getConfigForPlatform]");
      }
    }

    else
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = [_dataPathTelemetryConfig objectForKeyedSubscript:@"platformDependent"];
      v38 = [v36 stringWithFormat:@"%s: Cannot parse DataPathTelemetry.platformDependent: %@", "+[WiFiUsageLQMConfiguration getConfigForPlatform]", v37];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v38, "UTF8String")];
        *buf = 136446210;
        v52 = [v39 UTF8String];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      v35 = 0;
    }
  }

  else
  {
    v35 = _dataPathTelemetryConfig;
  }

  v40 = p_info[115];
  p_info[115] = v35;

  v41 = *MEMORY[0x277D85DE8];
}

@end