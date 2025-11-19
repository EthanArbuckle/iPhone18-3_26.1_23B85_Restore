@interface TPSListController
- (void)setSpecifier:(id)a3;
@end

@implementation TPSListController

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSListController;
  v5 = [(TPSListController *)&v9 specifier];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = TPSListController;
    [(TPSListController *)&v8 setSpecifier:v4];
    v6 = [v4 tps_subscriptionContext];
    [(TPSListController *)self setSubscriptionContext:v6];

    v7 = [v4 tps_subscriptions];
    [(TPSListController *)self setSubscriptions:v7];
  }
}

@end