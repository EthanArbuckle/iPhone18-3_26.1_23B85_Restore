@interface UIViewController(SKUIExtensions)
- (id)_SKUIView;
@end

@implementation UIViewController(SKUIExtensions)

- (id)_SKUIView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(UIViewController(SKUIExtensions) *)v2 _SKUIView:v3];
      }
    }
  }

  view = [self view];

  return view;
}

@end