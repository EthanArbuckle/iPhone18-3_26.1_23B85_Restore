@interface HVUserDefaults
+ (BOOL)harvestBudgetDisabled;
+ (BOOL)harvestBudgetRefillDisabled;
+ (BOOL)harvestBudgetThrottleBudgetDisabled;
+ (double)harvestBudgetCPUTimeSeconds;
+ (double)harvestBudgetReserve;
+ (id)defaults;
+ (id)sharedInstance;
+ (int64_t)harvestBudgetNumberOfOperations;
+ (void)resetHarvestBudgetCPUTimeSeconds;
+ (void)resetHarvestBudgetDisabled;
+ (void)resetHarvestBudgetNumberOfOperations;
+ (void)resetHarvestBudgetRefillDisabled;
+ (void)resetHarvestBudgetReserve;
+ (void)resetHarvestBudgetThrottleBudgetDisabled;
+ (void)setHarvestBudgetCPUTimeSeconds:(double)seconds;
+ (void)setHarvestBudgetNumberOfOperations:(int64_t)operations;
+ (void)setHarvestBudgetReserve:(double)reserve;
- (HVUserDefaults)init;
@end

@implementation HVUserDefaults

+ (BOOL)harvestBudgetRefillDisabled
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"HVHarvestBudgetRefillDisabled"];

  return v3;
}

+ (BOOL)harvestBudgetDisabled
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"HVHarvestBudgetDisabled"];

  return v3;
}

+ (id)defaults
{
  v2 = +[HVUserDefaults sharedInstance];
  defaults = [v2 defaults];

  return defaults;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HVUserDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken3_863 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3_863, block);
  }

  v2 = sharedInstance__pasExprOnceResult_864;

  return v2;
}

+ (int64_t)harvestBudgetNumberOfOperations
{
  defaults = [self defaults];
  v3 = [defaults objectForKey:@"HVHarvestBudgetNumberOfOperations"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = &unk_284752A60;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

+ (double)harvestBudgetCPUTimeSeconds
{
  defaults = [self defaults];
  v3 = [defaults objectForKey:@"HVHarvestBudgetCPUTimeSeconds"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = &unk_284752A88;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

+ (double)harvestBudgetReserve
{
  defaults = [self defaults];
  v3 = [defaults objectForKey:@"HVHarvestBudgetReserve"];

  v4 = 0.95;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

+ (BOOL)harvestBudgetThrottleBudgetDisabled
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"HVHarvestBudgetThrottleBudgetDisabled"];

  return v3;
}

- (HVUserDefaults)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HVUserDefaults;
  v2 = [(HVUserDefaults *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ProactiveHarvesting"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    if (!v2->_defaults)
    {
      v5 = hv_default_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = @"com.apple.ProactiveHarvesting";
        _os_log_error_impl(&dword_2321EC000, v5, OS_LOG_TYPE_ERROR, "HVContentAdmission failed to get NSUserDefaults for suite %@.", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)resetHarvestBudgetRefillDisabled
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetRefillDisabled"];
}

+ (void)resetHarvestBudgetThrottleBudgetDisabled
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetThrottleBudgetDisabled"];
}

+ (void)resetHarvestBudgetDisabled
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetDisabled"];
}

+ (void)resetHarvestBudgetReserve
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetReserve"];
}

+ (void)setHarvestBudgetReserve:(double)reserve
{
  defaults = [self defaults];
  [defaults setDouble:@"HVHarvestBudgetReserve" forKey:reserve];
}

+ (void)resetHarvestBudgetCPUTimeSeconds
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetCPUTimeSeconds"];
}

+ (void)setHarvestBudgetCPUTimeSeconds:(double)seconds
{
  defaults = [self defaults];
  [defaults setDouble:@"HVHarvestBudgetCPUTimeSeconds" forKey:seconds];
}

+ (void)resetHarvestBudgetNumberOfOperations
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"HVHarvestBudgetNumberOfOperations"];
}

+ (void)setHarvestBudgetNumberOfOperations:(int64_t)operations
{
  defaults = [self defaults];
  [defaults setInteger:operations forKey:@"HVHarvestBudgetNumberOfOperations"];
}

void __32__HVUserDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_864;
  sharedInstance__pasExprOnceResult_864 = v4;

  objc_autoreleasePoolPop(v2);
}

@end