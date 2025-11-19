@interface WiFiUsageLQMDistributionConfiguration
+ (id)getConfigForKey:(id)a3;
+ (void)initialize;
+ (void)setConfig:(id)a3;
@end

@implementation WiFiUsageLQMDistributionConfiguration

+ (void)initialize
{
  v2 = _lqmDistribution;
  _lqmDistribution = 0;
}

+ (void)setConfig:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToDictionary:_lqmDistribution] & 1) == 0)
  {
    objc_storeStrong(&_lqmDistribution, a3);
    NSLog(&cfstr_SReceivedLqmdi.isa, "+[WiFiUsageLQMDistributionConfiguration setConfig:]");
  }
}

+ (id)getConfigForKey:(id)a3
{
  v3 = a3;
  if (_lqmDistribution)
  {
    v4 = [_lqmDistribution objectForKey:v3];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v4 = v5;
        goto LABEL_5;
      }

      NSLog(&cfstr_SIsNotANumber.isa, "+[WiFiUsageLQMDistributionConfiguration getConfigForKey:]", v3, v4);
    }

    else
    {
      NSLog(&cfstr_SDoesNotContai.isa, "+[WiFiUsageLQMDistributionConfiguration getConfigForKey:]", @"LQMDistribution", v3);
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