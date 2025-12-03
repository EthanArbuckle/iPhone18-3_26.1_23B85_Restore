@interface WiFiUsageAccessPointProfileConfiguration
+ (id)getConfigForKey:(id)key;
+ (void)initialize;
+ (void)setConfig:(id)config;
@end

@implementation WiFiUsageAccessPointProfileConfiguration

+ (void)initialize
{
  v2 = _apProfileConfig;
  _apProfileConfig = 0;
}

+ (void)setConfig:(id)config
{
  configCopy = config;
  if (([configCopy isEqualToDictionary:_apProfileConfig] & 1) == 0)
  {
    objc_storeStrong(&_apProfileConfig, config);
    +[WiFiUsageAccessPointProfile updateConfig];
    NSLog(&cfstr_SUpdatedWifius.isa, "+[WiFiUsageAccessPointProfileConfiguration setConfig:]");
  }
}

+ (id)getConfigForKey:(id)key
{
  keyCopy = key;
  if (_apProfileConfig)
  {
    v4 = [_apProfileConfig objectForKey:keyCopy];
    if (!v4)
    {
      NSLog(&cfstr_SDoesNotContai.isa, "+[WiFiUsageAccessPointProfileConfiguration getConfigForKey:]", @"AccessPointProfile", keyCopy);
    }
  }

  else
  {
    NSLog(&cfstr_SFeatureHasnTB.isa, "+[WiFiUsageAccessPointProfileConfiguration getConfigForKey:]", @"AccessPointProfile");
    v4 = 0;
  }

  return v4;
}

@end