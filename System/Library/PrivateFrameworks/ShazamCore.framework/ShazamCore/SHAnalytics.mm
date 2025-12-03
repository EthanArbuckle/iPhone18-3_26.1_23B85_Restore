@interface SHAnalytics
+ (void)sendEvent:(id)event withPayload:(id)payload;
@end

@implementation SHAnalytics

+ (void)sendEvent:(id)event withPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

@end