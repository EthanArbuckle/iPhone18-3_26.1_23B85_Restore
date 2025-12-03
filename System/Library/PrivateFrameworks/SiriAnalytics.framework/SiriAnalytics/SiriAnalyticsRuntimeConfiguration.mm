@interface SiriAnalyticsRuntimeConfiguration
+ (BOOL)canCollectAnyEvent:(id)event;
@end

@implementation SiriAnalyticsRuntimeConfiguration

+ (BOOL)canCollectAnyEvent:(id)event
{
  eventCopy = event;
  v4 = static RuntimeConfigurationShim.canCollect(anyEvent:)(eventCopy);

  return v4;
}

@end