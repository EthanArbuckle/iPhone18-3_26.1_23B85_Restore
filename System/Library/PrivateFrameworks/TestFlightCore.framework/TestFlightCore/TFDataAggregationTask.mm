@interface TFDataAggregationTask
+ (CGSize)screenDimensions;
+ (double)batteryLevel;
+ (id)anytimeTasksForSession:(id)session;
+ (id)cellularServiceInfo;
+ (id)deviceInfoTask;
+ (id)networkInfoTask;
+ (id)networkType;
+ (id)regionInfoTask;
+ (id)sessionInfoTaskForIdentifier:(id)identifier;
+ (id)snapshotTasksForSession:(id)session;
+ (id)watchInfoTask;
- (TFDataAggregationTask)initWithName:(id)name providedEntryIdentifiers:(id)identifiers;
- (void)extractDataPropertiesFromData:(id)data intoDataContainer:(id)container;
- (void)loadDataOnQueue:(id)queue withCompletionHandler:(id)handler;
@end

@implementation TFDataAggregationTask

+ (CGSize)screenDimensions
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (double)batteryLevel
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice setBatteryMonitoringEnabled:1];
  [currentDevice batteryLevel];
  v4 = v3;
  [currentDevice setBatteryMonitoringEnabled:0];

  return v4;
}

+ (id)deviceInfoTask
{
  v6[8] = *MEMORY[0x277D85DE8];
  v2 = [TFDataAggregationTask alloc];
  v6[0] = @"l";
  v6[1] = @"m";
  v6[2] = @"n";
  v6[3] = @"o";
  v6[4] = @"p";
  v6[5] = @"q";
  v6[6] = @"r";
  v6[7] = @"s";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  v4 = [(TFDataAggregationTask *)v2 initWithName:@"DeviceInfo" providedEntryIdentifiers:v3];

  [(TFDataAggregationTask *)v4 setLoadDataBlock:&__block_literal_global];
  [(TFDataAggregationTask *)v4 setExtractValuesBlock:&__block_literal_global_10];

  return v4;
}

void __51__TFDataAggregationTask_DeviceInfo__deviceInfoTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = NXGetLocalArchInfo();
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5->name];
    v7 = [v6 copy];

    [v4 setObject:v7 forKeyedSubscript:@"l"];
  }

  v8 = +[TFDataAggregationTask deviceType];
  [v4 setObject:v8 forKeyedSubscript:@"m"];

  v9 = [MEMORY[0x277CEE470] productVersion];
  [v4 setObject:v9 forKeyedSubscript:@"n"];
  +[TFDataAggregationTask screenDimensions];
  v11 = v10;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"o"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v4 setObject:v13 forKeyedSubscript:@"p"];

  +[TFDataAggregationTask batteryLevel];
  if (v15 >= 0.0)
  {
    LODWORD(v14) = llround(v15 * 100.0);
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    [v4 setObject:v16 forKeyedSubscript:@"q"];
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = NSHomeDirectory();
  v22 = 0;
  v19 = [v17 attributesOfFileSystemForPath:v18 error:&v22];

  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCA1D8]];
  v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
  [v4 setObject:v20 forKeyedSubscript:@"r"];
  [v4 setObject:v21 forKeyedSubscript:@"s"];
  v3[2](v3, v4, 0);
}

void __51__TFDataAggregationTask_DeviceInfo__deviceInfoTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TFDataAggregationTask_DeviceInfo__deviceInfoTask__block_invoke_3;
  v6[3] = &unk_279D980C8;
  v7 = v4;
  v5 = v4;
  [a3 performBatchUpdates:v6];
}

void __51__TFDataAggregationTask_DeviceInfo__deviceInfoTask__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"l"];
  [v4 setStringForIdentifier:@"l" toValue:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"m"];
  [v4 setStringForIdentifier:@"m" toValue:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"n"];
  [v4 setStringForIdentifier:@"n" toValue:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"o"];
  [v4 setNumberForIdentifier:@"o" toValue:v8];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"p"];
  [v4 setNumberForIdentifier:@"p" toValue:v9];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"q"];
  [v4 setNumberForIdentifier:@"q" toValue:v10];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"r"];
  [v4 setNumberForIdentifier:@"r" toValue:v11];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"s"];
  [v4 setNumberForIdentifier:@"s" toValue:v12];
}

+ (id)networkInfoTask
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = [TFDataAggregationTask alloc];
  v8[0] = @"t";
  v8[1] = @"u";
  v8[2] = @"v";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [(TFDataAggregationTask *)v3 initWithName:@"NetworkInfo" providedEntryIdentifiers:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__TFDataAggregationTask_NetworkInfo__networkInfoTask__block_invoke;
  v7[3] = &__block_descriptor_40_e25_v16__0___v_____NSError__8l;
  v7[4] = self;
  [(TFDataAggregationTask *)v5 setLoadDataBlock:v7];
  [(TFDataAggregationTask *)v5 setExtractValuesBlock:&__block_literal_global_1];

  return v5;
}

void __53__TFDataAggregationTask_NetworkInfo__networkInfoTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v7 = objc_alloc_init(v3);
  v5 = [*(a1 + 32) cellularServiceInfo];
  if (v5)
  {
    [v7 addEntriesFromDictionary:v5];
  }

  v6 = [*(a1 + 32) networkType];
  [v7 setObject:v6 forKeyedSubscript:@"v"];

  v4[2](v4, v7, 0);
}

void __53__TFDataAggregationTask_NetworkInfo__networkInfoTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TFDataAggregationTask_NetworkInfo__networkInfoTask__block_invoke_3;
  v6[3] = &unk_279D980C8;
  v7 = v4;
  v5 = v4;
  [a3 performBatchUpdates:v6];
}

void __53__TFDataAggregationTask_NetworkInfo__networkInfoTask__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"t"];
  [v4 setStringForIdentifier:@"t" toValue:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"u"];
  [v4 setStringForIdentifier:@"u" toValue:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"v"];
  [v4 setStringForIdentifier:@"v" toValue:v7];
}

+ (id)cellularServiceInfo
{
  v21[11] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC35C0];
  v20[0] = *MEMORY[0x277CC35C8];
  v20[1] = v2;
  v21[0] = @"GPRS";
  v21[1] = @"Edge";
  v3 = *MEMORY[0x277CC35D0];
  v20[2] = *MEMORY[0x277CC35F8];
  v20[3] = v3;
  v21[2] = @"WCDMA";
  v21[3] = @"HSDPA";
  v4 = *MEMORY[0x277CC35A0];
  v20[4] = *MEMORY[0x277CC35D8];
  v20[5] = v4;
  v21[4] = @"HSUPA";
  v21[5] = @"CDMA 1x";
  v5 = *MEMORY[0x277CC35B0];
  v20[6] = *MEMORY[0x277CC35A8];
  v20[7] = v5;
  v21[6] = @"CDMA EV-DO Rev 0";
  v21[7] = @"CDMA EV-DO Rev A";
  v6 = *MEMORY[0x277CC3600];
  v20[8] = *MEMORY[0x277CC35B8];
  v20[9] = v6;
  v21[8] = @"CDMA EV-DO Rev B";
  v21[9] = @"HRPD";
  v20[10] = *MEMORY[0x277CC35E0];
  v21[10] = @"LTE";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:11];
  v8 = objc_alloc_init(MEMORY[0x277CC3790]);
  serviceSubscriberCellularProviders = [v8 serviceSubscriberCellularProviders];
  allKeys = [serviceSubscriberCellularProviders allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject)
  {
    v12 = objc_opt_new();
    v13 = [serviceSubscriberCellularProviders objectForKeyedSubscript:firstObject];
    carrierName = [v13 carrierName];

    [v12 setObject:carrierName forKeyedSubscript:@"t"];
    serviceCurrentRadioAccessTechnology = [v8 serviceCurrentRadioAccessTechnology];
    v16 = [serviceCurrentRadioAccessTechnology objectForKeyedSubscript:firstObject];

    v17 = [v7 objectForKeyedSubscript:v16];
    [v12 setObject:v17 forKeyedSubscript:@"u"];

    v18 = [v12 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)networkType
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];
  if ([path usesInterfaceType:1])
  {
    v4 = @"WI_FI";
  }

  else if ([path usesInterfaceType:2])
  {
    v4 = @"MOBILE_DATA";
  }

  else if ([path usesInterfaceType:3])
  {
    v4 = @"WIRE";
  }

  else
  {
    v4 = @"NONE";
  }

  return v4;
}

+ (id)sessionInfoTaskForIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [TFDataAggregationTask alloc];
  v11[0] = @"i";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [(TFDataAggregationTask *)v4 initWithName:@"SessionInfo" providedEntryIdentifiers:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__TFDataAggregationTask_SessionInfo__sessionInfoTaskForIdentifier___block_invoke;
  v9[3] = &unk_279D98298;
  v10 = identifierCopy;
  v7 = identifierCopy;
  [(TFDataAggregationTask *)v6 setLoadDataBlock:v9];
  [(TFDataAggregationTask *)v6 setExtractValuesBlock:&__block_literal_global_2];

  return v6;
}

void __67__TFDataAggregationTask_SessionInfo__sessionInfoTaskForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEEE90];
  v4 = a2;
  v5 = [v3 alloc];
  v26[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v7 = [v5 initWithBundleIDs:v6 states:*MEMORY[0x277CEEE58]];

  v8 = [v7 applicationInfoForApplication:*(a1 + 32)];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEEE80]];
  v10 = v9;
  if (v9)
  {
    *v21 = 0xE00000001;
    v22 = 1;
    v23 = [v9 intValue];
    memset(v20, 0, 512);
    v19 = 648;
    sysctl(v21, 4u, v20, &v19, 0, 0);
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*&v20[0]];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v4[2](v4, v15, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find pid for %@. This process may be missing an entitlement or specified process may not be running", *(a1 + 32)];
    v16 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25 = v11;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [v16 errorWithDomain:@"TFErrorDomain" code:201 userInfo:v17];
    (v4)[2](v4, 0, v18);
  }
}

void __67__TFDataAggregationTask_SessionInfo__sessionInfoTaskForIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__TFDataAggregationTask_SessionInfo__sessionInfoTaskForIdentifier___block_invoke_3;
  v6[3] = &unk_279D980C8;
  v7 = v4;
  v5 = v4;
  [a3 performBatchUpdates:v6];
}

- (TFDataAggregationTask)initWithName:(id)name providedEntryIdentifiers:(id)identifiers
{
  nameCopy = name;
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = TFDataAggregationTask;
  v8 = [(TFDataAggregationTask *)&v18 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [identifiersCopy copy];
    providedEntryIdentifiers = v8->_providedEntryIdentifiers;
    v8->_providedEntryIdentifiers = v11;

    v13 = AMSGenerateLogCorrelationKey();
    logKey = v8->_logKey;
    v8->_logKey = v13;

    loadDataBlock = v8->_loadDataBlock;
    v8->_loadDataBlock = 0;

    extractValuesBlock = v8->_extractValuesBlock;
    v8->_extractValuesBlock = 0;
  }

  return v8;
}

- (void)loadDataOnQueue:(id)queue withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    name = [(TFDataAggregationTask *)self name];
    logKey = [(TFDataAggregationTask *)self logKey];
    *buf = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = name;
    v22 = 2112;
    v23 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] loadDataOnQueue:withCompletionHandler:", buf, 0x20u);
  }

  loadDataBlock = [(TFDataAggregationTask *)self loadDataBlock];

  if (!loadDataBlock)
    v15 = {;
    objc_exception_throw(v15);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__TFDataAggregationTask_loadDataOnQueue_withCompletionHandler___block_invoke;
  v16[3] = &unk_279D98390;
  v16[4] = self;
  v17 = handlerCopy;
  v14 = handlerCopy;
  dispatch_async(queueCopy, v16);
}

void __63__TFDataAggregationTask_loadDataOnQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadDataBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)extractDataPropertiesFromData:(id)data intoDataContainer:(id)container
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  containerCopy = container;
  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    name = [(TFDataAggregationTask *)self name];
    logKey = [(TFDataAggregationTask *)self logKey];
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = name;
    v20 = 2112;
    v21 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@:%@] extractDataPropertiesFromData:intoDataContainer:", &v16, 0x20u);
  }

  extractValuesBlock = [(TFDataAggregationTask *)self extractValuesBlock];

  if (!extractValuesBlock)
    v15 = {;
    objc_exception_throw(v15);
  }

  extractValuesBlock2 = [(TFDataAggregationTask *)self extractValuesBlock];
  (extractValuesBlock2)[2](extractValuesBlock2, dataCopy, containerCopy);
}

+ (id)snapshotTasksForSession:(id)session
{
  v8[2] = *MEMORY[0x277D85DE8];
  bundleIdentifier = [session bundleIdentifier];
  v4 = [TFDataAggregationTask sessionInfoTaskForIdentifier:bundleIdentifier];
  v8[0] = v4;
  v5 = +[TFDataAggregationTask networkInfoTask];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

+ (id)anytimeTasksForSession:(id)session
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = +[TFDataAggregationTask watchInfoTask];
  v4 = +[TFDataAggregationTask deviceInfoTask];
  v8[1] = v4;
  v5 = +[TFDataAggregationTask regionInfoTask];
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

+ (id)regionInfoTask
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [TFDataAggregationTask alloc];
  v6[0] = @"w";
  v6[1] = @"x";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [(TFDataAggregationTask *)v2 initWithName:@"RegionInfo" providedEntryIdentifiers:v3];

  [(TFDataAggregationTask *)v4 setLoadDataBlock:&__block_literal_global_7];
  [(TFDataAggregationTask *)v4 setExtractValuesBlock:&__block_literal_global_8_0];

  return v4;
}

void __51__TFDataAggregationTask_RegionInfo__regionInfoTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v8 = objc_alloc_init(v2);
  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 firstObject];

  [v8 setObject:v5 forKeyedSubscript:@"w"];
  v6 = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v6 name];

  [v8 setObject:v7 forKeyedSubscript:@"x"];
  v3[2](v3, v8, 0);
}

void __51__TFDataAggregationTask_RegionInfo__regionInfoTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TFDataAggregationTask_RegionInfo__regionInfoTask__block_invoke_3;
  v6[3] = &unk_279D980C8;
  v7 = v4;
  v5 = v4;
  [a3 performBatchUpdates:v6];
}

void __51__TFDataAggregationTask_RegionInfo__regionInfoTask__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"w"];
  [v4 setStringForIdentifier:@"w" toValue:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"x"];
  [v4 setStringForIdentifier:@"x" toValue:v6];
}

+ (id)watchInfoTask
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [TFDataAggregationTask alloc];
  v6[0] = @"j";
  v6[1] = @"k";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [(TFDataAggregationTask *)v2 initWithName:@"WatchInfo" providedEntryIdentifiers:v3];

  [(TFDataAggregationTask *)v4 setLoadDataBlock:&__block_literal_global_8];
  [(TFDataAggregationTask *)v4 setExtractValuesBlock:&__block_literal_global_6_0];

  return v4;
}

void __49__TFDataAggregationTask_WatchInfo__watchInfoTask__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 getAllDevices];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = v2;
    v8 = *v21;
    v9 = *MEMORY[0x277D2BB40];
    v10 = *MEMORY[0x277D2BB20];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (v12)
        {
          v13 = [*(*(&v20 + 1) + 8 * i) valueForProperty:v9];
          v14 = [v13 BOOLValue];

          v15 = [v12 valueForProperty:v10];
          v16 = [v15 BOOLValue];

          if (v14 && v16 != 0)
          {
            v18 = v12;
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
    v18 = 0;
LABEL_15:
    v2 = v19;
  }

  else
  {
    v18 = 0;
  }

  v2[2](v2, v18, 0);
}

void __49__TFDataAggregationTask_WatchInfo__watchInfoTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__TFDataAggregationTask_WatchInfo__watchInfoTask__block_invoke_3;
    v6[3] = &unk_279D980C8;
    v7 = v4;
    [a3 performBatchUpdates:v6];
  }
}

void __49__TFDataAggregationTask_WatchInfo__watchInfoTask__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D2BB08];
  v5 = a2;
  v6 = [v3 valueForProperty:v4];
  [v5 setStringForIdentifier:@"j" toValue:v6];

  v7 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BC20]];
  [v5 setStringForIdentifier:@"k" toValue:v7];
}

@end