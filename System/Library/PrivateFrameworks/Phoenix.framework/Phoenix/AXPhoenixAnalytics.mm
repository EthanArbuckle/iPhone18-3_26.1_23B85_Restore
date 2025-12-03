@interface AXPhoenixAnalytics
- (AXPhoenixAnalytics)init;
- (AXPhoenixAnalytics)initWithConfiguration:(id)configuration modelVersion:(id)version assetVersion:(unint64_t)assetVersion;
- (id)_descriptionForEventType:(int64_t)type;
- (void)_sendEvent:(id)event completion:(id)completion;
- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context completion:(id)completion;
@end

@implementation AXPhoenixAnalytics

- (AXPhoenixAnalytics)init
{
  location = self;
  objc_storeStrong(&location, 0);
  return 0;
}

- (AXPhoenixAnalytics)initWithConfiguration:(id)configuration modelVersion:(id)version assetVersion:(unint64_t)assetVersion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v17 = 0;
  objc_storeStrong(&v17, version);
  assetVersionCopy = assetVersion;
  v5 = selfCopy;
  selfCopy = 0;
  v15.receiver = v5;
  v15.super_class = AXPhoenixAnalytics;
  selfCopy = [(AXPhoenixAnalytics *)&v15 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if (v17)
    {
      objc_storeStrong(&selfCopy->_modelVersion, v17);
    }

    else
    {
      objc_storeStrong(&selfCopy->_modelVersion, &stru_287032B48);
    }

    selfCopy->_assetVersion = assetVersionCopy;
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = selfCopy->_dateFormatter;
    selfCopy->_dateFormatter = v6;
    MEMORY[0x277D82BD8](dateFormatter);
    [(NSDateFormatter *)selfCopy->_dateFormatter setDateFormat:@"yyyy-MM-dd'_'HH:mm:ss:SSS"];
    objc_storeStrong(&selfCopy->_configuration, location[0]);
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.accessibility.analyticswriter", v14);
    queue = selfCopy->_queue;
    selfCopy->_queue = v8;
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v14, 0);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v38 = a2;
  typeCopy = type;
  location[1] = time;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:location[0]])
  {
    v21 = objc_alloc(MEMORY[0x277CBEB38]);
    v41[0] = @"configFileMajorVersion";
    majorVersion = [(AXPhoenixConfiguration *)selfCopy->_configuration majorVersion];
    if (majorVersion)
    {
      v20 = majorVersion;
    }

    else
    {
      v20 = &stru_287032B48;
    }

    v42[0] = v20;
    v41[1] = @"configFileMinorVersion";
    minorVersion = [(AXPhoenixConfiguration *)selfCopy->_configuration minorVersion];
    if (minorVersion)
    {
      v18 = minorVersion;
    }

    else
    {
      v18 = &stru_287032B48;
    }

    v42[1] = v18;
    v41[2] = @"assetVersion";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_assetVersion];
    v42[2] = v15;
    v41[3] = @"eventType";
    v14 = [(AXPhoenixAnalytics *)selfCopy _descriptionForEventType:typeCopy];
    v42[3] = v14;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
    v31 = [v21 initWithDictionary:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](minorVersion);
    MEMORY[0x277D82BD8](majorVersion);
    memset(__b, 0, sizeof(__b));
    allKeys = [location[0] allKeys];
    v17 = [allKeys countByEnumeratingWithState:__b objects:v40 count:16];
    if (v17)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v17;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(__b[1] + 8 * v11);
        v7 = v31;
        v8 = [location[0] objectForKeyedSubscript:v30];
        [v7 setValue:? forKey:?];
        MEMORY[0x277D82BD8](v8);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [allKeys countByEnumeratingWithState:__b objects:v40 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](allKeys);
    v6 = [AXPhoenixAnalyticsEvent alloc];
    v28 = [(AXPhoenixAnalyticsEvent *)v6 initWithEventType:typeCopy eventInfo:v31];
    [(AXPhoenixAnalytics *)selfCopy _sendEvent:v28 completion:v35];
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v31, 0);
    v32 = 0;
  }

  else
  {
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v45, "[AXPhoenixAnalytics logEventWithType:machAbsoluteTime:context:completion:]", location[0]);
      _os_log_error_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Dictionary is not valid json: %@", v45, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v35)
    {
      v24 = v35;
      v23 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Dictionary is not valid json";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v25 = [v23 errorWithDomain:@"AXPhoenixErrorDomain" code:1003 userInfo:?];
      v24[2](v24, 0);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
    }

    v32 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_sendEvent:(id)event completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v8 = [location[0] description];
  v7 = AXLogBackTap();
  v6 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_66(v11, "[AXPhoenixAnalytics _sendEvent:completion:]", v8);
    _os_log_impl(&dword_25E4AC000, v7, v6, "[PHOENIX] %s Back Tap Event: %{public}@", v11, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  v5 = MEMORY[0x277D82BE0](location[0]);
  AnalyticsSendEventLazy();
  if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_descriptionForEventType:(int64_t)type
{
  switch(type)
  {
    case 1:
      v4 = MEMORY[0x277D82BE0](@"AXPhoenixAnalyticsEventTypeDoubleTap");
      break;
    case 2:
      v4 = MEMORY[0x277D82BE0](@"AXPhoenixAnalyticsEventTypeDoubleTapMitigated");
      break;
    case 3:
      v4 = MEMORY[0x277D82BE0](@"AXPhoenixAnalyticsEventTypeTripleTap");
      break;
    case 4:
      v4 = MEMORY[0x277D82BE0](@"AXPhoenixAnalyticsEventTypeTripleTapMitigated");
      break;
    default:
      v4 = MEMORY[0x277D82BE0](@"AXPhoenixAnalyticsEventTypeUnspecified");
      break;
  }

  return v4;
}

@end