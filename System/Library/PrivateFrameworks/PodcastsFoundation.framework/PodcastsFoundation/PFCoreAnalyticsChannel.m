@interface PFCoreAnalyticsChannel
- (void)sendEvent:(id)a3;
@end

@implementation PFCoreAnalyticsChannel

- (void)sendEvent:(id)a3
{
  v3 = a3;
  v5 = [v3 name];
  v4 = [v3 payloadGenerator];

  AnalyticsSendEventLazy();
}

@end