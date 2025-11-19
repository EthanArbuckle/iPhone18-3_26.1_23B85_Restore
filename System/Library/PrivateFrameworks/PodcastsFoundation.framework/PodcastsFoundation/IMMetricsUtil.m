@interface IMMetricsUtil
+ (void)configureEvent:(id)a3 withDataSource:(id)a4;
@end

@implementation IMMetricsUtil

+ (void)configureEvent:(id)a3 withDataSource:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v5 metricsContentIdentifier];
  [v8 im_setContentIdentifier:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 metricsAdditionalData];
    if (v7)
    {
      [v8 im_addPropertiesWithDictionary:v7];
    }
  }
}

@end