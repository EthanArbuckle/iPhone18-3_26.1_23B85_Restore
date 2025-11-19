@interface SKUIViewControllerFactory
- (id)newPlaceholderViewController;
- (void)newPlaceholderViewController;
@end

@implementation SKUIViewControllerFactory

- (id)newPlaceholderViewController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewControllerFactory newPlaceholderViewController];
  }

  v8.receiver = self;
  v8.super_class = SKUIViewControllerFactory;
  v3 = [(SUViewControllerFactory *)&v8 newPlaceholderViewController];
  v4 = MEMORY[0x277D7FDD8];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [v4 gradientWithColor:v5];
  [v3 setDefaultBackgroundGradient:v6];

  return v3;
}

- (void)newPlaceholderViewController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewControllerFactory newPlaceholderViewController]";
}

@end