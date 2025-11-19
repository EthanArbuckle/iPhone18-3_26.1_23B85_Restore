@interface SKUIMenuBarNavigationBarController
- (id)fallbackTitleView;
- (void)fallbackTitleView;
@end

@implementation SKUIMenuBarNavigationBarController

- (id)fallbackTitleView
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarNavigationBarController fallbackTitleView];
  }

  titleView = self->_titleView;

  return titleView;
}

- (void)fallbackTitleView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarNavigationBarController fallbackTitleView]";
}

@end