@interface ISODelayedOffer
- (id)newOfferResponse;
- (id)serverDict;
@end

@implementation ISODelayedOffer

- (id)serverDict
{
  newOfferResponse = [(ISODelayedOffer *)self newOfferResponse];
  toContext = [newOfferResponse toContext];

  return toContext;
}

- (id)newOfferResponse
{
  v2 = +[ISONotificationContent notImplementedException];
  objc_exception_throw(v2);
}

@end