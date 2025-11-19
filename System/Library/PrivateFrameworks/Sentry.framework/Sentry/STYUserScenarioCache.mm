@interface STYUserScenarioCache
+ (id)sharedCache;
- (BOOL)isAnimationScenarioWhitelisted:(id)a3 error:(id *)a4;
- (BOOL)isResponsivenessScenarioWhitelisted:(id)a3 error:(id *)a4;
- (BOOL)kpiIsLatency:(id)a3;
- (BOOL)scenarioWhitelisted:(id)a3 error:(id *)a4;
- (BOOL)setupWhitelistedAnimationScenarios:(id)a3 bundles:(id)a4;
- (BOOL)setupWhitelistedResponsivenessScenarios:(id)a3 bundles:(id)a4;
- (BOOL)setupWhitelistedScenarios:(id)a3 bundles:(id)a4;
- (STYUserScenarioCache)initWithPlatform:(id)a3;
- (float)framerateGoalsForSignpostInterval:(id)a3;
- (float)latencyGoalsForSignpostInterval:(id)a3;
- (id)appNameFromBundleId:(id)a3;
- (id)bundleIdForProcessName:(id)a3;
- (id)issueCategoryForSignpostInterval:(id)a3;
- (id)loadWhitelist:(id)a3 platform:(id)a4 bundles:(id)a5;
- (id)processBundleIdForSignpostInterval:(id)a3;
- (id)scenarioForFrontboardLaunchWatchdog:(id)a3;
- (id)scenarioFromSignpostEvent:(id)a3 error:(id *)a4;
- (id)scenarioFromSignpostInterval:(id)a3 error:(id *)a4;
- (id)scenarioGroupForSignpostInterval:(id)a3;
- (id)scenarioIdForSignpostEmittedEvent:(id)a3;
- (id)scenarioIdForSignpostInterval:(id)a3;
- (void)setupBundleIdWhitelists:(id)a3 bundles:(id)a4;
@end

@implementation STYUserScenarioCache

- (id)bundleIdForProcessName:(id)a3
{
  bundleIdForAppName = self->_bundleIdForAppName;
  v5 = a3;
  v6 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:v5];

  if (v6)
  {
    [(NSDictionary *)self->_bundleIdForAppName objectForKeyedSubscript:v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"bundleId For %@ not available", v5];
  }
  v7 = ;

  return v7;
}

- (id)scenarioIdForSignpostInterval:(id)a3
{
  bundleIdForAppName = self->_bundleIdForAppName;
  v4 = a3;
  v5 = [v4 endEvent];
  v6 = [v5 processName];
  v7 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:v6];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = [v4 subsystem];
    v10 = [v4 category];
    v11 = [v4 name];

    v12 = [v8 stringWithFormat:@"%@-%@-%@-%@", v7, v9, v10, v11];
  }

  else
  {
    v9 = [v4 endEvent];
    v10 = [v9 processName];
    v11 = [v4 subsystem];
    v13 = [v4 category];
    v14 = [v4 name];

    v12 = [v8 stringWithFormat:@"%@-%@-%@-%@", v10, v11, v13, v14];
  }

  return v12;
}

- (id)scenarioIdForSignpostEmittedEvent:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 processName];
  v6 = [v4 subsystem];
  v7 = [v4 category];
  v8 = [v4 name];

  v9 = [v3 stringWithFormat:@"%@-%@-%@-%@", v5, v6, v7, v8];

  return v9;
}

- (STYUserScenarioCache)initWithPlatform:(id)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = STYUserScenarioCache;
  v5 = [(STYUserScenarioCache *)&v42 init];
  if (v5)
  {
    v6 = +[STYDeviceInfo hardwareModel];
    hwModel = v5->_hwModel;
    v5->_hwModel = v6;

    v8 = [(NSString *)v5->_hwModel stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    v9 = v5->_hwModel;
    v5->_hwModel = v8;

    v10 = [(NSString *)v5->_hwModel stringByReplacingOccurrencesOfString:@" withString:", @"_"];
    v11 = v5->_hwModel;
    v5->_hwModel = v10;

    v12 = 0x277CCA000uLL;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = +[STYUserScenarioCache internalResourceBundle];
    v15 = v14;
    if (v14)
    {
      v48[0] = v14;
      v48[1] = v13;
      v16 = MEMORY[0x277CBEA60];
      v17 = v48;
      v18 = 2;
    }

    else
    {
      v47 = v13;
      v16 = MEMORY[0x277CBEA60];
      v17 = &v47;
      v18 = 1;
    }

    v19 = [v16 arrayWithObjects:v17 count:v18];
    v41 = v13;
    v20 = 0x277CCA000uLL;
    v21 = 0x277CBE000uLL;
    if ([(STYUserScenarioCache *)v5 setupWhitelistedScenarios:v4 bundles:v19])
    {
      [(STYUserScenarioCache *)v5 setupBundleIdWhitelists:v4 bundles:v19];
      v22 = MEMORY[0x277CCA9B8];
      v23 = STYUserScenarioErrorDomain;
      v24 = *MEMORY[0x277CCA450];
      v45 = *MEMORY[0x277CCA450];
      v25 = [MEMORY[0x277CCA8D8] mainBundle];
      v26 = [v25 localizedStringForKey:@"Failed to retrieve bundle id for signpost event" value:&stru_287705D88 table:0];
      v46 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v28 = v22;
      v20 = 0x277CCA000;
      v29 = [v28 errorWithDomain:v23 code:-2008 userInfo:v27];
      bundledIdLookupFailedrror = v5->_bundledIdLookupFailedrror;
      v5->_bundledIdLookupFailedrror = v29;

      v21 = 0x277CBE000;
      v12 = 0x277CCA000;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
    }

    v31 = *(v20 + 2488);
    v32 = STYUserScenarioErrorDomain;
    v43 = v24;
    v33 = [*(v12 + 2264) mainBundle];
    v34 = [v33 localizedStringForKey:@"Framework is not Configured properly. Please file a bug against Sentry | Framework" value:&stru_287705D88 table:0];
    v44 = v34;
    v35 = [*(v21 + 2752) dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v36 = [v31 errorWithDomain:v32 code:-2007 userInfo:v35];
    badConfigError = v5->_badConfigError;
    v5->_badConfigError = v36;

    v38 = v5;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)setupWhitelistedScenarios:(id)a3 bundles:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STYUserScenarioCache *)self setupWhitelistedResponsivenessScenarios:v7 bundles:v6];
  LOBYTE(self) = [(STYUserScenarioCache *)self setupWhitelistedAnimationScenarios:v7 bundles:v6];

  return (v8 | self) & 1;
}

- (id)loadWhitelist:(id)a3 platform:(id)a4 bundles:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", a3, a4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) pathForResource:v8 ofType:@"plist"];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v14];

        if (v15)
        {
          v17 = v9;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = +[STYFrameworkHelper sharedHelper];
  v17 = [v16 logHandle];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [STYUserScenarioCache loadWhitelist:platform:bundles:];
  }

  v15 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)setupWhitelistedResponsivenessScenarios:(id)a3 bundles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedSubsystems-Responsiveness" platform:v6 bundles:v7];
  responsivenessConfigForWhitelistedSubsystems = self->_responsivenessConfigForWhitelistedSubsystems;
  self->_responsivenessConfigForWhitelistedSubsystems = v8;

  if (self->_responsivenessConfigForWhitelistedSubsystems && ([(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedCategories-Responsiveness" platform:v6 bundles:v7], v10 = objc_claimAutoreleasedReturnValue(), responsivenessConfigForWhitelistedCategories = self->_responsivenessConfigForWhitelistedCategories, self->_responsivenessConfigForWhitelistedCategories = v10, responsivenessConfigForWhitelistedCategories, self->_responsivenessConfigForWhitelistedCategories))
  {
    v12 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedNames-Responsiveness" platform:v6 bundles:v7];
    responsivenessConfigForWhitelistedNames = self->_responsivenessConfigForWhitelistedNames;
    self->_responsivenessConfigForWhitelistedNames = v12;

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)setupWhitelistedAnimationScenarios:(id)a3 bundles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedSubsystems-Animation" platform:v6 bundles:v7];
  animationConfigForWhitelistedSubsystems = self->_animationConfigForWhitelistedSubsystems;
  self->_animationConfigForWhitelistedSubsystems = v8;

  if (self->_animationConfigForWhitelistedSubsystems && ([(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedCategories-Animation" platform:v6 bundles:v7], v10 = objc_claimAutoreleasedReturnValue(), animationConfigForWhitelistedCategories = self->_animationConfigForWhitelistedCategories, self->_animationConfigForWhitelistedCategories = v10, animationConfigForWhitelistedCategories, self->_animationConfigForWhitelistedCategories))
  {
    v12 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedNames-Animation" platform:v6 bundles:v7];
    animationConfigForWhitelistedNames = self->_animationConfigForWhitelistedNames;
    self->_animationConfigForWhitelistedNames = v12;

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setupBundleIdWhitelists:(id)a3 bundles:(id)a4
{
  v5 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedBundleIds" platform:a3 bundles:a4];
  if (v5)
  {
    objc_storeStrong(&self->_bundleIdForAppName, v5);
  }

  MEMORY[0x2821F96F8]();
}

- (float)latencyGoalsForSignpostInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = [v4 name];
  responsivenessConfigForWhitelistedSubsystems = self->_responsivenessConfigForWhitelistedSubsystems;
  v8 = [v4 subsystem];

  v9 = [(NSDictionary *)responsivenessConfigForWhitelistedSubsystems objectForKeyedSubscript:v8];

  v10 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories objectForKeyedSubscript:v5];
  v11 = [v10 objectForKey:@"kSTYLatencyThresholdInMs"];

  if (v11)
  {
    v12 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories objectForKeyedSubscript:v5];

    v9 = v12;
  }

  v13 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:v6];
  v14 = [v13 objectForKey:@"kSTYLatencyThresholdInMs"];

  if (v14)
  {
    v15 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:v6];

    v9 = v15;
  }

  v16 = [v9 objectForKeyedSubscript:@"kSTYLatencyThresholdInMs"];
  [v16 floatValue];
  v18 = v17;

  return v18;
}

- (id)issueCategoryForSignpostInterval:(id)a3
{
  v4 = [a3 name];
  v5 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"issueCategory"];

  return v6;
}

- (float)framerateGoalsForSignpostInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = [v4 name];
  animationConfigForWhitelistedSubsystems = self->_animationConfigForWhitelistedSubsystems;
  v8 = [v4 subsystem];

  v9 = [(NSDictionary *)animationConfigForWhitelistedSubsystems objectForKeyedSubscript:v8];

  v10 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:v5];
  v11 = [v10 objectForKey:@"kSTYFrameRateThreshold"];

  if (v11)
  {
    v12 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:v5];

    v9 = v12;
  }

  v13 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:v6];
  v14 = [v13 objectForKey:@"kSTYFrameRateThreshold"];

  if (v14)
  {
    v15 = [(NSDictionary *)self->_animationConfigForWhitelistedNames objectForKeyedSubscript:v6];

    v9 = v15;
  }

  v16 = [v9 objectForKeyedSubscript:@"kSTYFrameRateThreshold"];
  [v16 floatValue];
  v18 = v17;

  return v18;
}

- (BOOL)isResponsivenessScenarioWhitelisted:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedSubsystems allKeys];
  v8 = [v6 subsystem];
  v9 = [v7 containsObject:v8];

  if (!v9)
  {
    v23 = +[STYFrameworkHelper sharedHelper];
    v20 = [v23 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:v6 error:?];
    }

    goto LABEL_16;
  }

  v10 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories allKeys];
  v11 = [v6 category];
  v12 = [v10 containsObject:v11];

  if (!v12)
  {
    v24 = +[STYFrameworkHelper sharedHelper];
    v20 = [v24 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:v6 error:?];
    }

    goto LABEL_16;
  }

  v13 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames allKeys];
  v14 = [v6 name];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v25 = +[STYFrameworkHelper sharedHelper];
    v20 = [v25 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:v6 error:?];
    }

    goto LABEL_16;
  }

  v16 = [v6 subsystem];
  if (([v16 isEqualToString:@"com.apple.app_launch_measurement"] & 1) == 0)
  {
    goto LABEL_22;
  }

  v17 = [v6 category];
  if (([v17 isEqualToString:@"ApplicationLaunch"] & 1) == 0)
  {

LABEL_22:
    goto LABEL_23;
  }

  v18 = [v6 name];
  v19 = [v18 isEqualToString:@"ApplicationLaunchExtendedResponsive"];

  if (!v19)
  {
LABEL_23:
    v34 = 1;
    goto LABEL_20;
  }

  v20 = [v6 number1Name];
  if (([v20 isEqualToString:@"IsForeground"]& 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v21 = [v6 number1Value];
  v22 = [v21 isEqual:MEMORY[0x277CBEC38]];

  if (v22)
  {
    goto LABEL_23;
  }

LABEL_17:
  v26 = MEMORY[0x277CCACA8];
  v27 = [v6 subsystem];
  v28 = [v6 category];
  v29 = [v6 name];
  v30 = [v26 stringWithFormat:@"scenario %@.%@.%@ is not whitelisted", v27, v28, v29];

  v37 = *MEMORY[0x277CCA450];
  v31 = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [v31 localizedStringForKey:v30 value:&stru_287705D88 table:0];
  v38[0] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v33];
  }

  v34 = 0;
LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)isAnimationScenarioWhitelisted:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSDictionary *)self->_animationConfigForWhitelistedSubsystems allKeys];
  v8 = [v6 subsystem];
  v9 = [v7 containsObject:v8];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories allKeys];
  v11 = [v6 category];
  v12 = [v10 containsObject:v11];

  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = [(NSDictionary *)self->_animationConfigForWhitelistedNames allKeys];
  v14 = [v6 name];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
LABEL_5:
    v17 = MEMORY[0x277CCACA8];
    v18 = [v6 subsystem];
    v19 = [v6 category];
    v20 = [v6 name];
    v21 = [v17 stringWithFormat:@"scenario %@.%@.%@ is not whitelisted", v18, v19, v20];

    v27 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCA8D8] mainBundle];
    v23 = [v22 localizedStringForKey:v21 value:&stru_287705D88 table:0];
    v28[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v24];
    }

    v16 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)scenarioWhitelisted:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 subsystem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.SpringBoard"), v7, (v8 & 1) == 0))
  {
    v9 = [(STYUserScenarioCache *)self isAnimationScenarioWhitelisted:v6 error:a4];
  }

  else
  {
    v9 = [(STYUserScenarioCache *)self isResponsivenessScenarioWhitelisted:v6 error:a4];
  }

  v10 = v9;

  return v10;
}

- (id)appNameFromBundleId:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_bundleIdForAppName;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_bundleIdForAppName objectForKeyedSubscript:v10, v16];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)processBundleIdForSignpostInterval:(id)a3
{
  v4 = a3;
  if ([v4 scope] && (objc_msgSend(v4, "subsystem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.hangtracer.signposts"), v5, !v6))
  {
    v8 = MEMORY[0x277CCACA8];
    bundleIdForAppName = self->_bundleIdForAppName;
    v10 = [v4 endEvent];
    v11 = [v10 processName];
    v12 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:v11];
    v7 = [v8 stringWithFormat:@"%@", v12];
  }

  else
  {
    v7 = [v4 string1Value];
  }

  return v7;
}

- (id)scenarioGroupForSignpostInterval:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 subsystem];
  v6 = [v4 category];
  v7 = [v4 name];

  v8 = [v3 stringWithFormat:@"%@.%@.%@", v5, v6, v7];

  return v8;
}

- (BOOL)kpiIsLatency:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 subsystem];
    v5 = [v4 isEqualToString:@"com.apple.SpringBoard"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)scenarioFromSignpostInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(STYUserScenarioCache *)self processWhitelisted:v6 error:a4]&& [(STYUserScenarioCache *)self scenarioWhitelisted:v6 error:a4])
  {
    v7 = [(STYUserScenarioCache *)self scenarioIdForSignpostInterval:v6];
    v8 = [(STYUserScenarioCache *)self scenarioGroupForSignpostInterval:v6];
    v9 = [(STYUserScenarioCache *)self processBundleIdForSignpostInterval:v6];
    v10 = [v6 endEvent];
    v11 = [(STYUserScenarioCache *)self processIdForSignpostEvent:v10];

    objc_opt_class();
    v12 = -1000;
    if (objc_opt_isKindOfClass())
    {
      v13 = [v6 subsystem];
      v14 = [v13 isEqualToString:@"com.apple.SpringBoard"];

      if (v14)
      {
        v12 = -1000;
      }

      else
      {
        v12 = -1001;
      }
    }

    if ([(STYUserScenarioCache *)self kpiIsLatency:v6])
    {
      v15 = -1000;
    }

    else
    {
      v15 = v12;
    }

    v16 = [STYUserScenario alloc];
    v17 = [v6 beginEvent];
    v18 = [v17 processName];
    LODWORD(v21) = v11;
    v19 = [(STYUserScenario *)v16 initWithConfiguration:v7 scenarioGroup:v8 kpi:v15 processBundleID:v9 titleText:0 processName:v18 processID:v21];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)scenarioForFrontboardLaunchWatchdog:(id)a3
{
  v4 = a3;
  v5 = [v4 processName];
  v6 = [v4 attributes];
  v7 = [v6 valueForKey:@"BundleIdOverride"];

  if (v7)
  {
    v8 = v7;

    v5 = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [v4 subsystem];
  v11 = [v4 category];
  v12 = [v4 name];
  v13 = [v9 stringWithFormat:@"%@.%@.%@.%@", v10, v11, v12, v5];

  v14 = MEMORY[0x277CCACA8];
  v15 = [v4 subsystem];
  v16 = [v4 category];
  v17 = [v4 name];
  v18 = [v14 stringWithFormat:@"%@.%@.%@", v15, v16, v17];

  LODWORD(v21) = [(STYUserScenarioCache *)self processIdForSignpostEvent:v4];
  v19 = [[STYUserScenario alloc] initWithConfiguration:v13 scenarioGroup:v18 kpi:-1000 processBundleID:v7 titleText:0 processName:v5 processID:v21];

  return v19;
}

- (id)scenarioFromSignpostEvent:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 subsystem];
  if (![v7 isEqualToString:@"com.apple.FrontBoard"])
  {
    goto LABEL_6;
  }

  v8 = [v6 category];
  if (([v8 isEqualToString:@"Watchdog"] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v9 = [v6 name];
  v10 = [v9 isEqualToString:@"WatchdogKill"];

  if (v10)
  {
    v11 = [(STYUserScenarioCache *)self scenarioForFrontboardLaunchWatchdog:v6];
    goto LABEL_10;
  }

LABEL_7:
  if (*a4)
  {
    v17 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Signpost is not whitelisted." value:&stru_287705D88 table:0];
    v18[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v14];
  }

  v11 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)sharedCache
{
  if (sharedCache_setup != -1)
  {
    +[STYUserScenarioCache sharedCache];
  }

  v3 = sharedCache_sharedInstance;

  return v3;
}

uint64_t __35__STYUserScenarioCache_sharedCache__block_invoke()
{
  sharedCache_sharedInstance = [[STYUserScenarioCache alloc] initWithPlatform:@"iOS"];

  return MEMORY[0x2821F96F8]();
}

- (void)loadWhitelist:platform:bundles:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2656CE000, v0, OS_LOG_TYPE_ERROR, "Unable to load plist: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)isResponsivenessScenarioWhitelisted:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 subsystem];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2656CE000, v2, v3, "Subsystem %@ is not whitelisted", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)isResponsivenessScenarioWhitelisted:(void *)a1 error:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 category];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2656CE000, v2, v3, "Category %@ is not whitelisted", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)isResponsivenessScenarioWhitelisted:(void *)a1 error:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2656CE000, v2, v3, "Name %@ is not whitelisted", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end