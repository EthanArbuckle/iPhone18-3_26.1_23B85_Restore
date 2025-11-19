@interface TPSListItemsController
- (void)setSpecifier:(id)a3;
@end

@implementation TPSListItemsController

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSListItemsController;
  v5 = [(TPSListItemsController *)&v8 specifier];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = TPSListItemsController;
    [(TPSListItemsController *)&v7 setSpecifier:v4];
    v6 = [v4 tps_subscriptionContext];
    [(TPSListItemsController *)self setSubscriptionContext:v6];
  }
}

@end