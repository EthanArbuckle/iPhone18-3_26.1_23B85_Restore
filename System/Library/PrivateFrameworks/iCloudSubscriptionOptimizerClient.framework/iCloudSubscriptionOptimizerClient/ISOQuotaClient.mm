@interface ISOQuotaClient
- (id)failsafeDelayedOfferJsonContext;
- (id)parseDelayedOffer:(id)a3;
- (id)parseDelayedOfferFromJson:(id)a3;
- (void)clearNotificationState:(id)a3;
- (void)isNotificationPending:(id)a3;
- (void)logFailsafeEvent:(id)a3;
@end

@implementation ISOQuotaClient

- (void)isNotificationPending:(id)a3
{
  v3 = a3;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (void)clearNotificationState:(id)a3
{
  v3 = a3;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)parseDelayedOfferFromJson:(id)a3
{
  v3 = a3;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)parseDelayedOffer:(id)a3
{
  v3 = a3;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

- (id)failsafeDelayedOfferJsonContext
{
  v2 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v2);
}

- (void)logFailsafeEvent:(id)a3
{
  v3 = a3;
  v4 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v4);
}

@end