@interface VSUIPerformActionCardProvider
- (id)cardViewControllerForCard:(id)a3;
@end

@implementation VSUIPerformActionCardProvider

- (id)cardViewControllerForCard:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[VSUIProgressCardViewController alloc] _initWithCard:v3 delegate:0 loadProvidersImmediately:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end