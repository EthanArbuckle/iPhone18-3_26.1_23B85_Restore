@interface TPSListItemsController
- (void)setSpecifier:(id)specifier;
@end

@implementation TPSListItemsController

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = TPSListItemsController;
  specifier = [(TPSListItemsController *)&v8 specifier];

  if (specifier != specifierCopy)
  {
    v7.receiver = self;
    v7.super_class = TPSListItemsController;
    [(TPSListItemsController *)&v7 setSpecifier:specifierCopy];
    tps_subscriptionContext = [specifierCopy tps_subscriptionContext];
    [(TPSListItemsController *)self setSubscriptionContext:tps_subscriptionContext];
  }
}

@end