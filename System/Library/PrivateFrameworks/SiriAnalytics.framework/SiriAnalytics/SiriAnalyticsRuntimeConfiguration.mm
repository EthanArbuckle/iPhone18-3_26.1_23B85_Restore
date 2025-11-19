@interface SiriAnalyticsRuntimeConfiguration
+ (BOOL)canCollectAnyEvent:(id)a3;
@end

@implementation SiriAnalyticsRuntimeConfiguration

+ (BOOL)canCollectAnyEvent:(id)a3
{
  v3 = a3;
  v4 = static RuntimeConfigurationShim.canCollect(anyEvent:)(v3);

  return v4;
}

@end