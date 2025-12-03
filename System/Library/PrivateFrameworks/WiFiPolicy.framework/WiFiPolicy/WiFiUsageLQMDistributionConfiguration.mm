@interface WiFiUsageLQMDistributionConfiguration
+ (id)getConfigForKey:(id)key;
+ (void)initialize;
+ (void)setConfig:(id)config;
@end

@implementation WiFiUsageLQMDistributionConfiguration

+ (void)initialize
{
  v2 = _lqmDistribution;
  _lqmDistribution = 0;
}

+ (void)setConfig:(id)config
{
  configCopy = config;
  if (([configCopy isEqualToDictionary:_lqmDistribution] & 1) == 0)
  {
    objc_storeStrong(&_lqmDistribution, config);
    NSLog(&cfstr_SReceivedLqmdi.isa, "+[WiFiUsageLQMDistributionConfiguration setConfig:]");
  }
}

+ (id)getConfigForKey:(id)key
{
  keyCopy = key;
  if (_lqmDistribution)
  {
    v4 = [_lqmDistribution objectForKey:keyCopy];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v4 = v5;
        goto LABEL_5;
      }

      NSLog(&cfstr_SIsNotANumber.isa, "+[WiFiUsageLQMDistributionConfiguration getConfigForKey:]", keyCopy, v4);
    }

    else
    {
      NSLog(&cfstr_SDoesNotContai.isa, "+[WiFiUsageLQMDistributionConfiguration getConfigForKey:]", @"LQMDistribution", keyCopy);
    }

    v5 = 0;
  }

  else
  {
    NSLog(&cfstr_SFeatureHasnTB.isa, "+[WiFiUsageLQMDistributionConfiguration getConfigForKey:]", @"LQMDistribution");
    v5 = 0;
    v4 = 0;
  }

LABEL_5:

  return v5;
}

@end