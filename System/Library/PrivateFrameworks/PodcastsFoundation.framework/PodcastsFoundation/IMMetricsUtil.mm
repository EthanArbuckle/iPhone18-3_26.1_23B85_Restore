@interface IMMetricsUtil
+ (void)configureEvent:(id)event withDataSource:(id)source;
@end

@implementation IMMetricsUtil

+ (void)configureEvent:(id)event withDataSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  metricsContentIdentifier = [sourceCopy metricsContentIdentifier];
  [eventCopy im_setContentIdentifier:metricsContentIdentifier];

  if (objc_opt_respondsToSelector())
  {
    metricsAdditionalData = [sourceCopy metricsAdditionalData];
    if (metricsAdditionalData)
    {
      [eventCopy im_addPropertiesWithDictionary:metricsAdditionalData];
    }
  }
}

@end