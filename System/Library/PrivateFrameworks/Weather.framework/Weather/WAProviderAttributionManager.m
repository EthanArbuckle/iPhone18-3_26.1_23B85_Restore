@interface WAProviderAttributionManager
+ (WAProviderAttributionManager)sharedManager;
- (NSString)providerName;
- (WAProviderAttributionManager)init;
@end

@implementation WAProviderAttributionManager

+ (WAProviderAttributionManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WAProviderAttributionManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __45__WAProviderAttributionManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WAProviderAttributionManager)init
{
  v6.receiver = self;
  v6.super_class = WAProviderAttributionManager;
  v2 = [(WAProviderAttributionManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"group.com.apple.weather"];
    weatherUserDefaults = v2->_weatherUserDefaults;
    v2->_weatherUserDefaults = v3;
  }

  return v2;
}

- (NSString)providerName
{
  v2 = [(WAProviderAttributionManager *)self weatherUserDefaults];
  v3 = [v2 stringForKey:@"WeatherProviderName"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"The Weather Channel";
  }

  return v4;
}

@end