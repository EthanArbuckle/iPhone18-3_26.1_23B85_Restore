@interface SHAnalytics
+ (void)sendEvent:(id)a3 withPayload:(id)a4;
@end

@implementation SHAnalytics

+ (void)sendEvent:(id)a3 withPayload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end