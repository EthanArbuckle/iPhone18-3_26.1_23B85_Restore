@interface UIView(SKUIExtensions)
- (uint64_t)_SKUIView;
@end

@implementation UIView(SKUIExtensions)

- (uint64_t)_SKUIView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(UIView(SKUIExtensions) *)v2 _SKUIView:v3];
      }
    }
  }

  return self;
}

@end