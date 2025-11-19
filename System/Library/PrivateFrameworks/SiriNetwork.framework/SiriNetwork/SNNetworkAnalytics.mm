@interface SNNetworkAnalytics
+ (id)sharedSNNetworkAnalytics;
- (id)_init;
@end

@implementation SNNetworkAnalytics

+ (id)sharedSNNetworkAnalytics
{
  if (sharedSNNetworkAnalytics_onceToken != -1)
  {
    +[SNNetworkAnalytics sharedSNNetworkAnalytics];
  }

  v3 = sharedSNNetworkAnalytics_shared;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SNNetworkAnalytics;
  v2 = [(SNNetworkAnalytics *)&v6 init];
  if (v2)
  {
    v3 = +[SNNetworkAnalyticsInternal sharedNetworkAnalytics];
    underlyingNetworkAnalytics = v2->_underlyingNetworkAnalytics;
    v2->_underlyingNetworkAnalytics = v3;
  }

  return v2;
}

void __46__SNNetworkAnalytics_sharedSNNetworkAnalytics__block_invoke()
{
  v0 = [[SNNetworkAnalytics alloc] _init];
  v1 = sharedSNNetworkAnalytics_shared;
  sharedSNNetworkAnalytics_shared = v0;
}

@end