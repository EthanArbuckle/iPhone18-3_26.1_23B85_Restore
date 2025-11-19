@interface WiFiUsageAccessPointProfileConfiguration
+ (id)getConfigForKey:(id)a3;
+ (void)initialize;
+ (void)setConfig:(id)a3;
@end

@implementation WiFiUsageAccessPointProfileConfiguration

+ (void)initialize
{
  v2 = _apProfileConfig;
  _apProfileConfig = 0;
}

+ (void)setConfig:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToDictionary:_apProfileConfig] & 1) == 0)
  {
    objc_storeStrong(&_apProfileConfig, a3);
    +[WiFiUsageAccessPointProfile updateConfig];
    NSLog(&cfstr_SUpdatedWifius.isa, "+[WiFiUsageAccessPointProfileConfiguration setConfig:]");
  }
}

+ (id)getConfigForKey:(id)a3
{
  v3 = a3;
  if (_apProfileConfig)
  {
    v4 = [_apProfileConfig objectForKey:v3];
    if (!v4)
    {
      NSLog(&cfstr_SDoesNotContai.isa, "+[WiFiUsageAccessPointProfileConfiguration getConfigForKey:]", @"AccessPointProfile", v3);
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