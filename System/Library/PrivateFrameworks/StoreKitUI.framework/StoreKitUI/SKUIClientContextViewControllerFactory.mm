@interface SKUIClientContextViewControllerFactory
- (id)newPlaceholderViewController;
@end

@implementation SKUIClientContextViewControllerFactory

- (id)newPlaceholderViewController
{
  v7.receiver = self;
  v7.super_class = SKUIClientContextViewControllerFactory;
  newPlaceholderViewController = [(SUViewControllerFactory *)&v7 newPlaceholderViewController];
  v3 = MEMORY[0x277D7FDD8];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [v3 gradientWithColor:systemBackgroundColor];
  [newPlaceholderViewController setDefaultBackgroundGradient:v5];

  return newPlaceholderViewController;
}

@end