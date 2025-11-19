@interface PPQuickTypeMetrics
+ (id)instance;
+ (id)trackerForDistribution:(uint64_t)a1 withProperties:(void *)a2;
+ (void)contactMatchesWithContactsCount:(unint64_t)a3 foundInAppsCount:(unint64_t)a4;
+ (void)eventsMatches:(unint64_t)a3;
+ (void)frameworkError:(id)a3 errorCode:(int64_t)a4;
- (PPQuickTypeMetrics)init;
@end

@implementation PPQuickTypeMetrics

+ (id)instance
{
  objc_opt_self();
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_10168);
  }

  v0 = instance__instance;

  return v0;
}

- (PPQuickTypeMetrics)init
{
  v25[12] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PPQuickTypeMetrics;
  v2 = [(PPQuickTypeMetrics *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, 5u, 0);
    v5 = dispatch_queue_create("com.apple.proactive.PersonalizationPortrait.PPQuickTypeMetrics", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = MEMORY[0x277D41DA0];
    v25[0] = @"SG";
    v25[1] = @"CD";
    v25[2] = @"EK";
    v25[3] = @"CN_PS";
    v25[4] = @"CN_DS";
    v25[5] = @"CN_AD";
    v25[6] = @"CN_CS";
    v25[7] = @"CNAC";
    v25[8] = @"GEONoData";
    v25[9] = @"GEOTimeout";
    v25[10] = @"MK";
    v25[11] = @"PB";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:12];
    v9 = [v7 propertyWithName:@"framework" possibleValues:v8];

    v10 = [MEMORY[0x277D41DA0] propertyWithName:@"errorCode" range:{0, 0x7FFFFFFFFFFFFFFFLL}];
    v24[0] = v9;
    v24[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v12 = @"frameworkErrors";
    objc_opt_self();
    v13 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"ProactiveExperts" event:@"frameworkErrors" registerProperties:v11];

    frameworkErrors = v2->_frameworkErrors;
    v2->_frameworkErrors = v13;

    v15 = [PPQuickTypeMetrics trackerForDistribution:@"contactsMatches" withProperties:?];
    contactsMatches = v2->_contactsMatches;
    v2->_contactsMatches = v15;

    v17 = [PPQuickTypeMetrics trackerForDistribution:@"foundInAppsMatches" withProperties:?];
    foundInAppsMatches = v2->_foundInAppsMatches;
    v2->_foundInAppsMatches = v17;

    v19 = [PPQuickTypeMetrics trackerForDistribution:@"eventsMatches" withProperties:?];
    eventsMatches = v2->_eventsMatches;
    v2->_eventsMatches = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)trackerForDistribution:(uint64_t)a1 withProperties:(void *)a2
{
  v3 = MEMORY[0x277CBEBF8];
  v4 = MEMORY[0x277CBEBF8];
  v5 = a2;
  objc_opt_self();
  v6 = [objc_alloc(MEMORY[0x277D41D98]) initWithFeatureId:@"ProactiveExperts" event:v5 registerProperties:v3];

  return v6;
}

+ (void)eventsMatches:(unint64_t)a3
{
  v4 = +[PPQuickTypeMetrics instance];
  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PPQuickTypeMetrics_eventsMatches___block_invoke;
  v7[3] = &unk_278977B20;
  v8 = v4;
  v9 = a3;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __36__PPQuickTypeMetrics_eventsMatches___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[5];
  }

  return [v1 trackEventWithPropertyValues:MEMORY[0x277CBEBF8] value:*(a1 + 40)];
}

uint64_t __30__PPQuickTypeMetrics_instance__block_invoke()
{
  instance__instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)contactMatchesWithContactsCount:(unint64_t)a3 foundInAppsCount:(unint64_t)a4
{
  v6 = +[PPQuickTypeMetrics instance];
  if (v6)
  {
    v7 = v6[1];
  }

  else
  {
    v7 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PPQuickTypeMetrics_contactMatchesWithContactsCount_foundInAppsCount___block_invoke;
  block[3] = &unk_2789743C0;
  v10 = v6;
  v11 = a3;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

uint64_t __71__PPQuickTypeMetrics_contactMatchesWithContactsCount_foundInAppsCount___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  [v3 trackEventWithPropertyValues:MEMORY[0x277CBEBF8] value:a1[5]];
  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[6];
  v7 = MEMORY[0x277CBEBF8];

  return [v5 trackEventWithPropertyValues:v7 value:v6];
}

+ (void)frameworkError:(id)a3 errorCode:(int64_t)a4
{
  v5 = a3;
  v6 = +[PPQuickTypeMetrics instance];
  v7 = v6;
  if (v6)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PPQuickTypeMetrics_frameworkError_errorCode___block_invoke;
  block[3] = &unk_278978A80;
  v12 = v6;
  v13 = v5;
  v14 = a4;
  v9 = v5;
  v10 = v7;
  dispatch_async(v8, block);
}

void __47__PPQuickTypeMetrics_frameworkError_errorCode___block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  v2 = a1[6];
  v8[0] = a1[5];
  v3 = MEMORY[0x277CCABB0];
  v4 = v1;
  v5 = [v3 numberWithInteger:v2];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v4 trackEventWithPropertyValues:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end