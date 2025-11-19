@interface SKUIMetricsAppLaunchEvent
+ (double)processStartTime;
+ (id)consumePendingLaunchEvent;
+ (void)createPendingLaunchEvent;
+ (void)resetPendingLaunchEventForTesting;
+ (void)withPendingLaunchEvent:(id)a3;
- (BOOL)requiredBlockingBagLoad;
- (BOOL)usedBootstrapFallback;
- (NSString)description;
- (NSString)launchCorrelationKey;
- (SKUIMetricsAppLaunchEvent)init;
- (double)bootstrapEndTime;
- (double)bootstrapStartTime;
- (double)clientConfigurationLoadTime;
- (double)initialTabRequestStartTime;
- (double)initialTabResponseEndTime;
- (double)initialTabResponseStartTime;
- (double)jsResourcesEndTime;
- (double)jsResourcesStartTime;
- (double)launchEndTime;
- (double)launchFailureTime;
- (double)mainTime;
- (void)addTemplateLoadTimingMetric:(id)a3 forURL:(id)a4;
- (void)appendPropertiesToBody:(id)a3;
- (void)init;
- (void)populateObjectInspector:(id)a3;
- (void)setBootstrapEndTime:(double)a3;
- (void)setBootstrapStartTime:(double)a3;
- (void)setClientConfigurationLoadTime:(double)a3;
- (void)setInitialTabRequestStartTime:(double)a3;
- (void)setInitialTabResponseEndTime:(double)a3;
- (void)setInitialTabResponseStartTime:(double)a3;
- (void)setJsResourcesEndTime:(double)a3;
- (void)setJsResourcesStartTime:(double)a3;
- (void)setLaunchCorrelationKey:(id)a3;
- (void)setLaunchEndTime:(double)a3;
- (void)setLaunchFailureTime:(double)a3;
- (void)setMainTime:(double)a3;
- (void)setRequiredBlockingBagLoad:(BOOL)a3;
- (void)setUsedBootstrapFallback:(BOOL)a3;
@end

@implementation SKUIMetricsAppLaunchEvent

- (SKUIMetricsAppLaunchEvent)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIMetricsAppLaunchEvent init];
  }

  v10.receiver = self;
  v10.super_class = SKUIMetricsAppLaunchEvent;
  v3 = [(SSMetricsBaseEvent *)&v10 init];
  v4 = v3;
  if (v3)
  {
    [(SSMetricsMutableEvent *)v3 setEventType:@"appLaunch"];
    [(SSMetricsMutableEvent *)v4 setTopic:@"xp_amp_clientperf"];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateMetrics = v4->_templateMetrics;
    v4->_templateMetrics = v5;

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    [(SKUIMetricsAppLaunchEvent *)v4 setLaunchCorrelationKey:v8];
  }

  return v4;
}

+ (void)resetPendingLaunchEventForTesting
{
  _HasConsumedPendingLaunchEvent = 0;
  v2 = _PendingLaunchEvent;
  _PendingLaunchEvent = 0;
}

+ (void)createPendingLaunchEvent
{
  if ((_HasConsumedPendingLaunchEvent & 1) == 0 && !_PendingLaunchEvent)
  {
    v2 = objc_alloc_init(SKUIMetricsAppLaunchEvent);
    v3 = _PendingLaunchEvent;
    _PendingLaunchEvent = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (void)withPendingLaunchEvent:(id)a3
{
  if (_PendingLaunchEvent)
  {
    (*(a3 + 2))(a3);
  }
}

+ (id)consumePendingLaunchEvent
{
  v2 = _PendingLaunchEvent;
  v3 = _PendingLaunchEvent;
  _HasConsumedPendingLaunchEvent = 1;
  v4 = _PendingLaunchEvent;
  _PendingLaunchEvent = 0;

  return v2;
}

+ (double)processStartTime
{
  if (processStartTime_onceToken != -1)
  {
    +[SKUIMetricsAppLaunchEvent processStartTime];
  }

  return *&_ProcessStartTime;
}

uint64_t __45__SKUIMetricsAppLaunchEvent_processStartTime__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = getpid();
  memset(v3, 0, 512);
  v2 = 648;
  result = sysctl(v4, 4u, v3, &v2, 0, 0);
  if (result)
  {
    result = SSDebugLog();
    v1 = 0.0;
  }

  else
  {
    v1 = SDWORD2(v3[0]) / 1000000.0 + *&v3[0];
  }

  _ProcessStartTime = *&v1;
  return result;
}

- (void)setLaunchCorrelationKey:(id)a3
{
  v4 = [a3 copy];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"launchCorrelationKey"];
}

- (NSString)launchCorrelationKey
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"launchCorrelationKey"];
  v3 = [v2 copy];

  return v3;
}

- (void)setMainTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"mainTime"];
}

- (double)mainTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"mainTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setClientConfigurationLoadTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"clientConfigurationLoadTime"];
}

- (double)clientConfigurationLoadTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"clientConfigurationLoadTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)addTemplateLoadTimingMetric:(id)a3 forURL:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(NSMutableDictionary *)self->_templateMetrics setObject:v7 forKeyedSubscript:v6];
}

- (void)setBootstrapStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"bootstrapStartTime"];
}

- (double)bootstrapStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"bootstrapStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setBootstrapEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"bootstrapEndTime"];
}

- (double)bootstrapEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"bootstrapEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setJsResourcesStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"jsResourcesStartTime"];
}

- (double)jsResourcesStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"jsResourcesStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setJsResourcesEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"jsResourcesEndTime"];
}

- (double)jsResourcesEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"jsResourcesEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setInitialTabRequestStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"initialTabRequestStartTime"];
}

- (double)initialTabRequestStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"initialTabRequestStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setInitialTabResponseStartTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"initialTabResponseStartTime"];
}

- (double)initialTabResponseStartTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"initialTabResponseStartTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setInitialTabResponseEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"initialTabResponseEndTime"];
}

- (double)initialTabResponseEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"initialTabResponseEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setLaunchFailureTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"launchFailureTime"];
}

- (double)launchFailureTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"launchFailureTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setLaunchEndTime:(double)a3
{
  v4 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"launchEndTime"];
}

- (double)launchEndTime
{
  v3 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"launchEndTime"];
  [(SSMetricsEvent *)self timeIntervalFromMilliseconds:v3];
  v5 = v4;

  return v5;
}

- (void)setRequiredBlockingBagLoad:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"requiredBlockingBagLoad"];
}

- (BOOL)requiredBlockingBagLoad
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"requiredBlockingBagLoad"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUsedBootstrapFallback:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"usedBootstrapFallback"];
}

- (BOOL)usedBootstrapFallback
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"usedBootstrapFallback"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)appendPropertiesToBody:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_templateMetrics count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateMetrics = self->_templateMetrics;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__SKUIMetricsAppLaunchEvent_appendPropertiesToBody___block_invoke;
    v10[3] = &unk_2781FF6C0;
    v11 = v5;
    v7 = v5;
    [(NSMutableDictionary *)templateMetrics enumerateKeysAndObjectsUsingBlock:v10];
    [v4 setObject:v7 forKeyedSubscript:@"templateMetrics"];
  }

  [objc_opt_class() processStartTime];
  v8 = [(SSMetricsEvent *)self millisecondsFromTimeInterval:?];
  [v4 setObject:v8 forKeyedSubscript:@"processStartTime"];

  v9.receiver = self;
  v9.super_class = SKUIMetricsAppLaunchEvent;
  [(SSMetricsMutableEvent *)&v9 appendPropertiesToBody:v4];
}

void __52__SKUIMetricsAppLaunchEvent_appendPropertiesToBody___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 dictionaryRepresentation];
  v6 = *(a1 + 32);
  v7 = [v5 absoluteString];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v28.receiver = self;
  v28.super_class = SKUIMetricsAppLaunchEvent;
  v4 = [(SSMetricsBaseEvent *)&v28 description];
  [v3 appendString:v4];

  v5 = [(SKUIMetricsAppLaunchEvent *)self launchCorrelationKey];
  [v3 appendFormat:@"\nlaunchCorrelationKey = %@", v5];

  [objc_opt_class() processStartTime];
  [v3 appendFormat:@"\nprocessStartTime = %f", v6];
  [(SKUIMetricsAppLaunchEvent *)self mainTime];
  [v3 appendFormat:@"\nmainTime = %f", v7];
  [(SKUIMetricsAppLaunchEvent *)self clientConfigurationLoadTime];
  [v3 appendFormat:@"\nclientConfigurationLoadTime = %f", v8];
  objc_msgSend(v3, "appendString:", @"\ntemplateMetrics = (");
  templateMetrics = self->_templateMetrics;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __40__SKUIMetricsAppLaunchEvent_description__block_invoke;
  v26 = &unk_2781FF6C0;
  v10 = v3;
  v27 = v10;
  [(NSMutableDictionary *)templateMetrics enumerateKeysAndObjectsUsingBlock:&v23];
  [v10 appendString:@"\n"]);
  [(SKUIMetricsAppLaunchEvent *)self bootstrapStartTime];
  [v10 appendFormat:@"\nbootstrapStartTime = %f", v11, v23, v24, v25, v26];
  [(SKUIMetricsAppLaunchEvent *)self bootstrapEndTime];
  [v10 appendFormat:@"\nbootstrapEndTime = %f", v12];
  [(SKUIMetricsAppLaunchEvent *)self jsResourcesStartTime];
  [v10 appendFormat:@"\njsResourcesStartTime = %f", v13];
  [(SKUIMetricsAppLaunchEvent *)self jsResourcesEndTime];
  [v10 appendFormat:@"\njsResourcesEndTime = %f", v14];
  [(SKUIMetricsAppLaunchEvent *)self initialTabRequestStartTime];
  [v10 appendFormat:@"\ninitialTabRequestStartTime = %f", v15];
  [(SKUIMetricsAppLaunchEvent *)self initialTabResponseStartTime];
  [v10 appendFormat:@"\ninitialTabResponseStartTime = %f", v16];
  [(SKUIMetricsAppLaunchEvent *)self initialTabResponseEndTime];
  [v10 appendFormat:@"\ninitialTabResponseEndTime = %f", v17];
  [(SKUIMetricsAppLaunchEvent *)self launchFailureTime];
  [v10 appendFormat:@"\nlaunchFailureTime = %f", v18];
  [(SKUIMetricsAppLaunchEvent *)self launchEndTime];
  [v10 appendFormat:@"\nlaunchEndTime = %f", v19];
  if ([(SKUIMetricsAppLaunchEvent *)self requiredBlockingBagLoad])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v10 appendFormat:@"\nrequiredBlockingBagLoad = %@", v20];
  if ([(SKUIMetricsAppLaunchEvent *)self usedBootstrapFallback])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v10 appendFormat:@"\nusedBootstrapFallback = %@", v21];

  return v10;
}

uint64_t __40__SKUIMetricsAppLaunchEvent_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 appendString:@"\n\t{"];
  [*(a1 + 32) appendFormat:@"\n\t\ttemplateURL = %@", v7];

  v8 = *(a1 + 32);
  [v6 requestStartTime];
  [v8 appendFormat:@"\n\t\trequestStartTime = %f", v9];
  v10 = *(a1 + 32);
  [v6 responseStartTime];
  [v10 appendFormat:@"\n\t\tresponseStartTime = %f", v11];
  v12 = *(a1 + 32);
  [v6 responseEndTime];
  [v12 appendFormat:@"\n\t\tresponseEndTime = %f", v13];
  v14 = *(a1 + 32);
  LODWORD(v5) = [v6 responseWasCached];

  v15 = @"NO";
  if (v5)
  {
    v15 = @"YES";
  }

  [v14 appendFormat:@"\n\t\tresponseWasCached = %@", v15];
  v16 = *(a1 + 32);

  return [v16 appendString:{@"\n\t}, "}];
}

- (void)populateObjectInspector:(id)a3
{
  v4 = a3;
  [v4 setFriendlyName:@"App Launch Times"];
  [v4 setInformation:@"All times relative to process start time"];
  [objc_opt_class() processStartTime];
  v6 = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SKUIMetricsAppLaunchEvent_populateObjectInspector___block_invoke;
  aBlock[3] = &__block_descriptor_40_e18___NSString_16__0d8l;
  *&aBlock[4] = v5;
  v7 = _Block_copy(aBlock);
  [v4 beginSectionWithFriendlyName:@"Process Stats"];
  v8 = MEMORY[0x277CCA968];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
  v10 = [v8 localizedStringFromDate:v9 dateStyle:0 timeStyle:3];

  [v4 exposePropertyWithFriendlyName:@"Process Start Time" value:v10];
  [(SKUIMetricsAppLaunchEvent *)self mainTime];
  v11 = v7 + 2;
  v12 = v7[2](v7);
  [v4 exposePropertyWithFriendlyName:@"Main Time" value:v12];

  [(SKUIMetricsAppLaunchEvent *)self clientConfigurationLoadTime];
  v13 = v7[2](v7);
  [v4 exposePropertyWithFriendlyName:@"Client Configuration Load Time" value:v13];

  [(SKUIMetricsAppLaunchEvent *)self launchFailureTime];
  v14 = v7[2](v7);
  [v4 exposePropertyWithFriendlyName:@"Launch Failure Time" value:v14];

  [(SKUIMetricsAppLaunchEvent *)self launchEndTime];
  v15 = v7[2](v7);
  [v4 exposePropertyWithFriendlyName:@"Launch End Time" value:v15];

  if ([(SKUIMetricsAppLaunchEvent *)self requiredBlockingBagLoad])
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  [v4 exposePropertyWithFriendlyName:@"Required Blocking Bag Load" value:v16];
  if ([(SKUIMetricsAppLaunchEvent *)self usedBootstrapFallback])
  {
    v17 = @"Yes";
  }

  else
  {
    v17 = @"No";
  }

  [v4 exposePropertyWithFriendlyName:@"Used Bootstrap Fallback" value:v17];
  [v4 endSection];
  [v4 beginSectionWithFriendlyName:@"App Resource Times"];
  [(SKUIMetricsAppLaunchEvent *)self bootstrapStartTime];
  v18 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"Bootstrap Start Time" value:v18];

  [(SKUIMetricsAppLaunchEvent *)self bootstrapEndTime];
  v19 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"Bootstrap End Time" value:v19];

  [(SKUIMetricsAppLaunchEvent *)self jsResourcesEndTime];
  v20 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"JS Resources Start Time" value:v20];

  [(SKUIMetricsAppLaunchEvent *)self jsResourcesEndTime];
  v21 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"JS Resources End Time" value:v21];

  [(SKUIMetricsAppLaunchEvent *)self initialTabRequestStartTime];
  v22 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"Initial Tab Request Start Time" value:v22];

  [(SKUIMetricsAppLaunchEvent *)self initialTabResponseStartTime];
  v23 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"Initial Tab Response Start Time" value:v23];

  [(SKUIMetricsAppLaunchEvent *)self initialTabResponseEndTime];
  v24 = (*v11)(v7);
  [v4 exposePropertyWithFriendlyName:@"Initial Tab Response End Time" value:v24];

  [v4 endSection];
  v25 = [(SKUIMetricsAppLaunchEvent *)self templateMetrics];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__SKUIMetricsAppLaunchEvent_populateObjectInspector___block_invoke_3;
  v28[3] = &unk_2781FF6E8;
  v29 = v4;
  v30 = v7;
  v31 = &__block_literal_global_163;
  v26 = v4;
  v27 = v7;
  [v25 enumerateKeysAndObjectsUsingBlock:v28];
}

__CFString *__53__SKUIMetricsAppLaunchEvent_populateObjectInspector___block_invoke(uint64_t a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:a2 - *(a1 + 32)];
    v4 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v3 numberStyle:1];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@s", v4];
  }

  else
  {
    v2 = @"--";
  }

  return v2;
}

__CFString *__53__SKUIMetricsAppLaunchEvent_populateObjectInspector___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

uint64_t __53__SKUIMetricsAppLaunchEvent_populateObjectInspector___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [a2 lastPathComponent];
  [v5 beginSectionWithFriendlyName:v7];

  v8 = a1[4];
  v9 = a1[5];
  [v6 requestStartTime];
  v10 = (*(v9 + 16))(v9);
  [v8 exposePropertyWithFriendlyName:@"Request Start Time" value:v10];

  v11 = a1[4];
  v12 = a1[5];
  [v6 responseStartTime];
  v13 = (*(v12 + 16))(v12);
  [v11 exposePropertyWithFriendlyName:@"Response Start Time" value:v13];

  v14 = a1[4];
  v15 = a1[5];
  [v6 responseEndTime];
  v16 = (*(v15 + 16))(v15);
  [v14 exposePropertyWithFriendlyName:@"Response End Time" value:v16];

  v17 = a1[4];
  v18 = a1[6];
  v19 = [v6 responseWasCached];

  v20 = (*(v18 + 16))(v18, v19);
  [v17 exposePropertyWithFriendlyName:@"Response Was Cached" value:v20];

  v21 = a1[4];

  return [v21 endSection];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsAppLaunchEvent init]";
}

@end