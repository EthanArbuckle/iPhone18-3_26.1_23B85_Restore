@interface ISODelayedOffer
- (id)newOfferResponse;
- (id)serverDict;
@end

@implementation ISODelayedOffer

- (id)serverDict
{
  v2 = [(ISODelayedOffer *)self newOfferResponse];
  v3 = [v2 toContext];

  return v3;
}

- (id)newOfferResponse
{
  v2 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v2);
}

@end