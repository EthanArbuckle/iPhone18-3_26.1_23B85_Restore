@interface PFCoreAnalyticsChannel
- (void)sendEvent:(id)event;
@end

@implementation PFCoreAnalyticsChannel

- (void)sendEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  payloadGenerator = [eventCopy payloadGenerator];

  AnalyticsSendEventLazy();
}

@end