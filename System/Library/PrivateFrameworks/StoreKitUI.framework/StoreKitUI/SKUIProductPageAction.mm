@interface SKUIProductPageAction
+ (id)actionWithType:(int64_t)type;
- (UIViewController)viewController;
- (void)viewController;
@end

@implementation SKUIProductPageAction

+ (id)actionWithType:(int64_t)type
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIProductPageAction actionWithType:];
  }

  v5 = objc_alloc_init(self);
  [v5 setActionType:type];

  return v5;
}

- (UIViewController)viewController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageAction viewController];
  }

  viewControllerBlock = self->_viewControllerBlock;
  if (viewControllerBlock)
  {
    viewControllerBlock = viewControllerBlock[2]();
  }

  return viewControllerBlock;
}

+ (void)actionWithType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIProductPageAction actionWithType:]";
}

- (void)viewController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageAction viewController]";
}

@end