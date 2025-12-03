@interface STYUserScenarioCache
+ (id)sharedCache;
- (BOOL)isAnimationScenarioWhitelisted:(id)whitelisted error:(id *)error;
- (BOOL)isResponsivenessScenarioWhitelisted:(id)whitelisted error:(id *)error;
- (BOOL)kpiIsLatency:(id)latency;
- (BOOL)scenarioWhitelisted:(id)whitelisted error:(id *)error;
- (BOOL)setupWhitelistedAnimationScenarios:(id)scenarios bundles:(id)bundles;
- (BOOL)setupWhitelistedResponsivenessScenarios:(id)scenarios bundles:(id)bundles;
- (BOOL)setupWhitelistedScenarios:(id)scenarios bundles:(id)bundles;
- (STYUserScenarioCache)initWithPlatform:(id)platform;
- (float)framerateGoalsForSignpostInterval:(id)interval;
- (float)latencyGoalsForSignpostInterval:(id)interval;
- (id)appNameFromBundleId:(id)id;
- (id)bundleIdForProcessName:(id)name;
- (id)issueCategoryForSignpostInterval:(id)interval;
- (id)loadWhitelist:(id)whitelist platform:(id)platform bundles:(id)bundles;
- (id)processBundleIdForSignpostInterval:(id)interval;
- (id)scenarioForFrontboardLaunchWatchdog:(id)watchdog;
- (id)scenarioFromSignpostEvent:(id)event error:(id *)error;
- (id)scenarioFromSignpostInterval:(id)interval error:(id *)error;
- (id)scenarioGroupForSignpostInterval:(id)interval;
- (id)scenarioIdForSignpostEmittedEvent:(id)event;
- (id)scenarioIdForSignpostInterval:(id)interval;
- (void)setupBundleIdWhitelists:(id)whitelists bundles:(id)bundles;
@end

@implementation STYUserScenarioCache

- (id)bundleIdForProcessName:(id)name
{
  bundleIdForAppName = self->_bundleIdForAppName;
  nameCopy = name;
  v6 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:nameCopy];

  if (v6)
  {
    [(NSDictionary *)self->_bundleIdForAppName objectForKeyedSubscript:nameCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"bundleId For %@ not available", nameCopy];
  }
  v7 = ;

  return v7;
}

- (id)scenarioIdForSignpostInterval:(id)interval
{
  bundleIdForAppName = self->_bundleIdForAppName;
  intervalCopy = interval;
  endEvent = [intervalCopy endEvent];
  processName = [endEvent processName];
  v7 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:processName];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    subsystem = [intervalCopy subsystem];
    category = [intervalCopy category];
    name = [intervalCopy name];

    v12 = [v8 stringWithFormat:@"%@-%@-%@-%@", v7, subsystem, category, name];
  }

  else
  {
    subsystem = [intervalCopy endEvent];
    category = [subsystem processName];
    name = [intervalCopy subsystem];
    category2 = [intervalCopy category];
    name2 = [intervalCopy name];

    v12 = [v8 stringWithFormat:@"%@-%@-%@-%@", category, name, category2, name2];
  }

  return v12;
}

- (id)scenarioIdForSignpostEmittedEvent:(id)event
{
  v3 = MEMORY[0x277CCACA8];
  eventCopy = event;
  processName = [eventCopy processName];
  subsystem = [eventCopy subsystem];
  category = [eventCopy category];
  name = [eventCopy name];

  v9 = [v3 stringWithFormat:@"%@-%@-%@-%@", processName, subsystem, category, name];

  return v9;
}

- (STYUserScenarioCache)initWithPlatform:(id)platform
{
  v48[2] = *MEMORY[0x277D85DE8];
  platformCopy = platform;
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
    if ([(STYUserScenarioCache *)v5 setupWhitelistedScenarios:platformCopy bundles:v19])
    {
      [(STYUserScenarioCache *)v5 setupBundleIdWhitelists:platformCopy bundles:v19];
      v22 = MEMORY[0x277CCA9B8];
      v23 = STYUserScenarioErrorDomain;
      v24 = *MEMORY[0x277CCA450];
      v45 = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v26 = [mainBundle localizedStringForKey:@"Failed to retrieve bundle id for signpost event" value:&stru_287705D88 table:0];
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
    mainBundle2 = [*(v12 + 2264) mainBundle];
    v34 = [mainBundle2 localizedStringForKey:@"Framework is not Configured properly. Please file a bug against Sentry | Framework" value:&stru_287705D88 table:0];
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

- (BOOL)setupWhitelistedScenarios:(id)scenarios bundles:(id)bundles
{
  bundlesCopy = bundles;
  scenariosCopy = scenarios;
  v8 = [(STYUserScenarioCache *)self setupWhitelistedResponsivenessScenarios:scenariosCopy bundles:bundlesCopy];
  LOBYTE(self) = [(STYUserScenarioCache *)self setupWhitelistedAnimationScenarios:scenariosCopy bundles:bundlesCopy];

  return (v8 | self) & 1;
}

- (id)loadWhitelist:(id)whitelist platform:(id)platform bundles:(id)bundles
{
  v25 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  platform = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", whitelist, platform];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = bundlesCopy;
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

        v14 = [*(*(&v20 + 1) + 8 * i) pathForResource:platform ofType:@"plist"];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v14];

        if (v15)
        {
          logHandle = v9;
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
  logHandle = [v16 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    [STYUserScenarioCache loadWhitelist:platform:bundles:];
  }

  v15 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)setupWhitelistedResponsivenessScenarios:(id)scenarios bundles:(id)bundles
{
  scenariosCopy = scenarios;
  bundlesCopy = bundles;
  v8 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedSubsystems-Responsiveness" platform:scenariosCopy bundles:bundlesCopy];
  responsivenessConfigForWhitelistedSubsystems = self->_responsivenessConfigForWhitelistedSubsystems;
  self->_responsivenessConfigForWhitelistedSubsystems = v8;

  if (self->_responsivenessConfigForWhitelistedSubsystems && ([(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedCategories-Responsiveness" platform:scenariosCopy bundles:bundlesCopy], v10 = objc_claimAutoreleasedReturnValue(), responsivenessConfigForWhitelistedCategories = self->_responsivenessConfigForWhitelistedCategories, self->_responsivenessConfigForWhitelistedCategories = v10, responsivenessConfigForWhitelistedCategories, self->_responsivenessConfigForWhitelistedCategories))
  {
    v12 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedNames-Responsiveness" platform:scenariosCopy bundles:bundlesCopy];
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

- (BOOL)setupWhitelistedAnimationScenarios:(id)scenarios bundles:(id)bundles
{
  scenariosCopy = scenarios;
  bundlesCopy = bundles;
  v8 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedSubsystems-Animation" platform:scenariosCopy bundles:bundlesCopy];
  animationConfigForWhitelistedSubsystems = self->_animationConfigForWhitelistedSubsystems;
  self->_animationConfigForWhitelistedSubsystems = v8;

  if (self->_animationConfigForWhitelistedSubsystems && ([(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedCategories-Animation" platform:scenariosCopy bundles:bundlesCopy], v10 = objc_claimAutoreleasedReturnValue(), animationConfigForWhitelistedCategories = self->_animationConfigForWhitelistedCategories, self->_animationConfigForWhitelistedCategories = v10, animationConfigForWhitelistedCategories, self->_animationConfigForWhitelistedCategories))
  {
    v12 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedNames-Animation" platform:scenariosCopy bundles:bundlesCopy];
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

- (void)setupBundleIdWhitelists:(id)whitelists bundles:(id)bundles
{
  v5 = [(STYUserScenarioCache *)self loadWhitelist:@"STYWhitelistedBundleIds" platform:whitelists bundles:bundles];
  if (v5)
  {
    objc_storeStrong(&self->_bundleIdForAppName, v5);
  }

  MEMORY[0x2821F96F8]();
}

- (float)latencyGoalsForSignpostInterval:(id)interval
{
  intervalCopy = interval;
  category = [intervalCopy category];
  name = [intervalCopy name];
  responsivenessConfigForWhitelistedSubsystems = self->_responsivenessConfigForWhitelistedSubsystems;
  subsystem = [intervalCopy subsystem];

  v9 = [(NSDictionary *)responsivenessConfigForWhitelistedSubsystems objectForKeyedSubscript:subsystem];

  v10 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories objectForKeyedSubscript:category];
  v11 = [v10 objectForKey:@"kSTYLatencyThresholdInMs"];

  if (v11)
  {
    v12 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories objectForKeyedSubscript:category];

    v9 = v12;
  }

  v13 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:name];
  v14 = [v13 objectForKey:@"kSTYLatencyThresholdInMs"];

  if (v14)
  {
    v15 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:name];

    v9 = v15;
  }

  v16 = [v9 objectForKeyedSubscript:@"kSTYLatencyThresholdInMs"];
  [v16 floatValue];
  v18 = v17;

  return v18;
}

- (id)issueCategoryForSignpostInterval:(id)interval
{
  name = [interval name];
  v5 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames objectForKeyedSubscript:name];
  v6 = [v5 objectForKeyedSubscript:@"issueCategory"];

  return v6;
}

- (float)framerateGoalsForSignpostInterval:(id)interval
{
  intervalCopy = interval;
  category = [intervalCopy category];
  name = [intervalCopy name];
  animationConfigForWhitelistedSubsystems = self->_animationConfigForWhitelistedSubsystems;
  subsystem = [intervalCopy subsystem];

  v9 = [(NSDictionary *)animationConfigForWhitelistedSubsystems objectForKeyedSubscript:subsystem];

  v10 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:category];
  v11 = [v10 objectForKey:@"kSTYFrameRateThreshold"];

  if (v11)
  {
    v12 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:category];

    v9 = v12;
  }

  v13 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories objectForKeyedSubscript:name];
  v14 = [v13 objectForKey:@"kSTYFrameRateThreshold"];

  if (v14)
  {
    v15 = [(NSDictionary *)self->_animationConfigForWhitelistedNames objectForKeyedSubscript:name];

    v9 = v15;
  }

  v16 = [v9 objectForKeyedSubscript:@"kSTYFrameRateThreshold"];
  [v16 floatValue];
  v18 = v17;

  return v18;
}

- (BOOL)isResponsivenessScenarioWhitelisted:(id)whitelisted error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  whitelistedCopy = whitelisted;
  allKeys = [(NSDictionary *)self->_responsivenessConfigForWhitelistedSubsystems allKeys];
  subsystem = [whitelistedCopy subsystem];
  v9 = [allKeys containsObject:subsystem];

  if (!v9)
  {
    v23 = +[STYFrameworkHelper sharedHelper];
    logHandle = [v23 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:whitelistedCopy error:?];
    }

    goto LABEL_16;
  }

  allKeys2 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedCategories allKeys];
  category = [whitelistedCopy category];
  v12 = [allKeys2 containsObject:category];

  if (!v12)
  {
    v24 = +[STYFrameworkHelper sharedHelper];
    logHandle = [v24 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:whitelistedCopy error:?];
    }

    goto LABEL_16;
  }

  allKeys3 = [(NSDictionary *)self->_responsivenessConfigForWhitelistedNames allKeys];
  name = [whitelistedCopy name];
  v15 = [allKeys3 containsObject:name];

  if ((v15 & 1) == 0)
  {
    v25 = +[STYFrameworkHelper sharedHelper];
    logHandle = [v25 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [STYUserScenarioCache isResponsivenessScenarioWhitelisted:whitelistedCopy error:?];
    }

    goto LABEL_16;
  }

  subsystem2 = [whitelistedCopy subsystem];
  if (([subsystem2 isEqualToString:@"com.apple.app_launch_measurement"] & 1) == 0)
  {
    goto LABEL_22;
  }

  category2 = [whitelistedCopy category];
  if (([category2 isEqualToString:@"ApplicationLaunch"] & 1) == 0)
  {

LABEL_22:
    goto LABEL_23;
  }

  name2 = [whitelistedCopy name];
  v19 = [name2 isEqualToString:@"ApplicationLaunchExtendedResponsive"];

  if (!v19)
  {
LABEL_23:
    v34 = 1;
    goto LABEL_20;
  }

  logHandle = [whitelistedCopy number1Name];
  if (([logHandle isEqualToString:@"IsForeground"]& 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  number1Value = [whitelistedCopy number1Value];
  v22 = [number1Value isEqual:MEMORY[0x277CBEC38]];

  if (v22)
  {
    goto LABEL_23;
  }

LABEL_17:
  v26 = MEMORY[0x277CCACA8];
  subsystem3 = [whitelistedCopy subsystem];
  category3 = [whitelistedCopy category];
  name3 = [whitelistedCopy name];
  v30 = [v26 stringWithFormat:@"scenario %@.%@.%@ is not whitelisted", subsystem3, category3, name3];

  v37 = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [mainBundle localizedStringForKey:v30 value:&stru_287705D88 table:0];
  v38[0] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v33];
  }

  v34 = 0;
LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)isAnimationScenarioWhitelisted:(id)whitelisted error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  whitelistedCopy = whitelisted;
  allKeys = [(NSDictionary *)self->_animationConfigForWhitelistedSubsystems allKeys];
  subsystem = [whitelistedCopy subsystem];
  v9 = [allKeys containsObject:subsystem];

  if (!v9)
  {
    goto LABEL_5;
  }

  allKeys2 = [(NSDictionary *)self->_animationConfigForWhitelistedCategories allKeys];
  category = [whitelistedCopy category];
  v12 = [allKeys2 containsObject:category];

  if (!v12)
  {
    goto LABEL_5;
  }

  allKeys3 = [(NSDictionary *)self->_animationConfigForWhitelistedNames allKeys];
  name = [whitelistedCopy name];
  v15 = [allKeys3 containsObject:name];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
LABEL_5:
    v17 = MEMORY[0x277CCACA8];
    subsystem2 = [whitelistedCopy subsystem];
    category2 = [whitelistedCopy category];
    name2 = [whitelistedCopy name];
    v21 = [v17 stringWithFormat:@"scenario %@.%@.%@ is not whitelisted", subsystem2, category2, name2];

    v27 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v23 = [mainBundle localizedStringForKey:v21 value:&stru_287705D88 table:0];
    v28[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v24];
    }

    v16 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)scenarioWhitelisted:(id)whitelisted error:(id *)error
{
  whitelistedCopy = whitelisted;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([whitelistedCopy subsystem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.SpringBoard"), v7, (v8 & 1) == 0))
  {
    v9 = [(STYUserScenarioCache *)self isAnimationScenarioWhitelisted:whitelistedCopy error:error];
  }

  else
  {
    v9 = [(STYUserScenarioCache *)self isResponsivenessScenarioWhitelisted:whitelistedCopy error:error];
  }

  v10 = v9;

  return v10;
}

- (id)appNameFromBundleId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
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
        v12 = [v11 isEqualToString:idCopy];

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

- (id)processBundleIdForSignpostInterval:(id)interval
{
  intervalCopy = interval;
  if ([intervalCopy scope] && (objc_msgSend(intervalCopy, "subsystem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.hangtracer.signposts"), v5, !v6))
  {
    v8 = MEMORY[0x277CCACA8];
    bundleIdForAppName = self->_bundleIdForAppName;
    endEvent = [intervalCopy endEvent];
    processName = [endEvent processName];
    v12 = [(NSDictionary *)bundleIdForAppName objectForKeyedSubscript:processName];
    string1Value = [v8 stringWithFormat:@"%@", v12];
  }

  else
  {
    string1Value = [intervalCopy string1Value];
  }

  return string1Value;
}

- (id)scenarioGroupForSignpostInterval:(id)interval
{
  v3 = MEMORY[0x277CCACA8];
  intervalCopy = interval;
  subsystem = [intervalCopy subsystem];
  category = [intervalCopy category];
  name = [intervalCopy name];

  v8 = [v3 stringWithFormat:@"%@.%@.%@", subsystem, category, name];

  return v8;
}

- (BOOL)kpiIsLatency:(id)latency
{
  latencyCopy = latency;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subsystem = [latencyCopy subsystem];
    v5 = [subsystem isEqualToString:@"com.apple.SpringBoard"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)scenarioFromSignpostInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  if ([(STYUserScenarioCache *)self processWhitelisted:intervalCopy error:error]&& [(STYUserScenarioCache *)self scenarioWhitelisted:intervalCopy error:error])
  {
    v7 = [(STYUserScenarioCache *)self scenarioIdForSignpostInterval:intervalCopy];
    v8 = [(STYUserScenarioCache *)self scenarioGroupForSignpostInterval:intervalCopy];
    v9 = [(STYUserScenarioCache *)self processBundleIdForSignpostInterval:intervalCopy];
    endEvent = [intervalCopy endEvent];
    v11 = [(STYUserScenarioCache *)self processIdForSignpostEvent:endEvent];

    objc_opt_class();
    v12 = -1000;
    if (objc_opt_isKindOfClass())
    {
      subsystem = [intervalCopy subsystem];
      v14 = [subsystem isEqualToString:@"com.apple.SpringBoard"];

      if (v14)
      {
        v12 = -1000;
      }

      else
      {
        v12 = -1001;
      }
    }

    if ([(STYUserScenarioCache *)self kpiIsLatency:intervalCopy])
    {
      v15 = -1000;
    }

    else
    {
      v15 = v12;
    }

    v16 = [STYUserScenario alloc];
    beginEvent = [intervalCopy beginEvent];
    processName = [beginEvent processName];
    LODWORD(v21) = v11;
    v19 = [(STYUserScenario *)v16 initWithConfiguration:v7 scenarioGroup:v8 kpi:v15 processBundleID:v9 titleText:0 processName:processName processID:v21];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)scenarioForFrontboardLaunchWatchdog:(id)watchdog
{
  watchdogCopy = watchdog;
  processName = [watchdogCopy processName];
  attributes = [watchdogCopy attributes];
  v7 = [attributes valueForKey:@"BundleIdOverride"];

  if (v7)
  {
    v8 = v7;

    processName = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  subsystem = [watchdogCopy subsystem];
  category = [watchdogCopy category];
  name = [watchdogCopy name];
  v13 = [v9 stringWithFormat:@"%@.%@.%@.%@", subsystem, category, name, processName];

  v14 = MEMORY[0x277CCACA8];
  subsystem2 = [watchdogCopy subsystem];
  category2 = [watchdogCopy category];
  name2 = [watchdogCopy name];
  v18 = [v14 stringWithFormat:@"%@.%@.%@", subsystem2, category2, name2];

  LODWORD(v21) = [(STYUserScenarioCache *)self processIdForSignpostEvent:watchdogCopy];
  v19 = [[STYUserScenario alloc] initWithConfiguration:v13 scenarioGroup:v18 kpi:-1000 processBundleID:v7 titleText:0 processName:processName processID:v21];

  return v19;
}

- (id)scenarioFromSignpostEvent:(id)event error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  subsystem = [eventCopy subsystem];
  if (![subsystem isEqualToString:@"com.apple.FrontBoard"])
  {
    goto LABEL_6;
  }

  category = [eventCopy category];
  if (([category isEqualToString:@"Watchdog"] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  name = [eventCopy name];
  v10 = [name isEqualToString:@"WatchdogKill"];

  if (v10)
  {
    v11 = [(STYUserScenarioCache *)self scenarioForFrontboardLaunchWatchdog:eventCopy];
    goto LABEL_10;
  }

LABEL_7:
  if (*error)
  {
    v17 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"Signpost is not whitelisted." value:&stru_287705D88 table:0];
    v18[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:STYUserScenarioErrorDomain code:-2000 userInfo:v14];
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