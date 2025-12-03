@interface BuyDelegate
- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error;
@end

@implementation BuyDelegate

- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error
{
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  v10 = sub_2703CA1F0();

  return v10;
}

@end