@interface ISOQuotaClient
- (id)failsafeDelayedOfferJsonContext;
- (id)parseDelayedOffer:(id)offer;
- (id)parseDelayedOfferFromJson:(id)json;
- (void)clearNotificationState:(id)state;
- (void)isNotificationPending:(id)pending;
- (void)logFailsafeEvent:(id)event;
@end

@implementation ISOQuotaClient

- (void)isNotificationPending:(id)pending
{
  pendingCopy = pending;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (void)clearNotificationState:(id)state
{
  stateCopy = state;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)parseDelayedOfferFromJson:(id)json
{
  jsonCopy = json;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)parseDelayedOffer:(id)offer
{
  offerCopy = offer;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)failsafeDelayedOfferJsonContext
{
  v2 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v2);
}

- (void)logFailsafeEvent:(id)event
{
  eventCopy = event;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

@end