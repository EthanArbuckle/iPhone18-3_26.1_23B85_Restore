@interface VSUIPerformActionCardProvider
- (id)cardViewControllerForCard:(id)card;
@end

@implementation VSUIPerformActionCardProvider

- (id)cardViewControllerForCard:(id)card
{
  cardCopy = card;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[VSUIProgressCardViewController alloc] _initWithCard:cardCopy delegate:0 loadProvidersImmediately:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end