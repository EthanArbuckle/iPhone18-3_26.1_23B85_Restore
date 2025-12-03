@interface TPSListController
- (void)setSpecifier:(id)specifier;
@end

@implementation TPSListController

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = TPSListController;
  specifier = [(TPSListController *)&v9 specifier];

  if (specifier != specifierCopy)
  {
    v8.receiver = self;
    v8.super_class = TPSListController;
    [(TPSListController *)&v8 setSpecifier:specifierCopy];
    tps_subscriptionContext = [specifierCopy tps_subscriptionContext];
    [(TPSListController *)self setSubscriptionContext:tps_subscriptionContext];

    tps_subscriptions = [specifierCopy tps_subscriptions];
    [(TPSListController *)self setSubscriptions:tps_subscriptions];
  }
}

@end