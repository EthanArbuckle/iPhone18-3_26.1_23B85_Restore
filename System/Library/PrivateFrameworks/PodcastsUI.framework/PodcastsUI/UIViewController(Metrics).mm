@interface UIViewController(Metrics)
+ (uint64_t)_rewriteOnce;
+ (void)swizzleMethodsForMetrics;
- (id)metricDataSource;
- (id)metricsName;
- (uint64_t)isUIKitClass;
- (uint64_t)metricsEnabled;
- (void)recordViewDidAppearEvent;
- (void)setMetricDataSource:()Metrics;
@end

@implementation UIViewController(Metrics)

+ (uint64_t)_rewriteOnce
{
  v0 = MEMORY[0x277D3DAC0];
  v1 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__UIViewController_Metrics___rewriteOnce__block_invoke;
  v6[3] = &__block_descriptor_40_e10___16__0__8l;
  v6[4] = sel_viewWillAppear_;
  [v0 swizzleMethod:sel_viewWillAppear_ onClass:v1 withReplacementBlock:v6];
  v2 = MEMORY[0x277D3DAC0];
  v3 = objc_opt_class();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__UIViewController_Metrics___rewriteOnce__block_invoke_3;
  v5[3] = &__block_descriptor_40_e10___16__0__8l;
  v5[4] = sel_viewDidAppear_;
  return [v2 swizzleMethod:sel_viewDidAppear_ onClass:v3 withReplacementBlock:v5];
}

+ (void)swizzleMethodsForMetrics
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__UIViewController_Metrics__swizzleMethodsForMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (swizzleMethodsForMetrics_onceToken != -1)
  {
    dispatch_once(&swizzleMethodsForMetrics_onceToken, block);
  }
}

- (void)recordViewDidAppearEvent
{
  if ([self metricsEnabled])
  {
    v5 = objc_opt_new();
    metricsName = [self metricsName];
    [v5 setPageType:metricsName];

    v3 = MEMORY[0x277D3DAB0];
    metricDataSource = [self metricDataSource];
    [v3 configureEvent:v5 withDataSource:metricDataSource];

    [MEMORY[0x277D3DA98] recordEvent:v5];
  }
}

- (uint64_t)metricsEnabled
{
  v2 = MEMORY[0x277D3DAC0];
  v3 = [self isUIKitClass] ^ 1;

  return [v2 associatedBoolValueForKey:@"UIViewController+Metrics-metricsEnabled" onObject:self withDefault:v3];
}

- (uint64_t)isUIKitClass
{
  v2 = [MEMORY[0x277D3DAC0] associatedValueForKey:@"UIViewController+Metrics-isUIKitClass" onObject:self];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    bOOLValue = ([v6 hasPrefix:@"UI"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"_UI") & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"_NC");
    [MEMORY[0x277D3DAC0] associateBoolValue:bOOLValue forKey:@"UIViewController+Metrics-isUIKitClass" onObject:self];
  }

  return bOOLValue;
}

- (id)metricsName
{
  v2 = MEMORY[0x277D3DAC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 associatedValueForKey:@"UIViewController+Metrics-metricsName" onObject:self withDefault:v4];

  return v5;
}

- (id)metricDataSource
{
  v1 = [MEMORY[0x277D3DAC0] associatedValueForKey:@"UIViewController+Metrics-metricsDataSource" onObject:self withDefault:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [v1 object];
  }

  else
  {
    object = v1;
  }

  v3 = object;

  return v3;
}

- (void)setMetricDataSource:()Metrics
{
  v4 = a3;
  v5 = [[MTWeakReference alloc] initWithObject:v4];

  [MEMORY[0x277D3DAC0] associateValue:v5 forKey:@"UIViewController+Metrics-metricsDataSource" onObject:self withPolicy:1];
}

@end