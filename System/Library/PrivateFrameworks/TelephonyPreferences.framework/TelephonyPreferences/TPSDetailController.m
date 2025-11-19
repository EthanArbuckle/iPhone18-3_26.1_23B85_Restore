@interface TPSDetailController
- (CTXPCServiceSubscriptionContext)subscriptionContext;
@end

@implementation TPSDetailController

- (CTXPCServiceSubscriptionContext)subscriptionContext
{
  v2 = [(TPSDetailController *)self specifier];
  v3 = [v2 tps_subscriptionContext];

  return v3;
}

@end