@interface UIViewController(SKUINavigationController)
- (uint64_t)SKUIPinnedHeaderView;
@end

@implementation UIViewController(SKUINavigationController)

- (uint64_t)SKUIPinnedHeaderView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        [(UIViewController(SKUINavigationController) *)v0 SKUIPinnedHeaderView:v1];
      }
    }
  }

  return 0;
}

@end