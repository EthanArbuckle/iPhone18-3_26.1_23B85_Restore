@interface SKUIBrowseHeaderPageComponent
- (int64_t)componentType;
- (void)componentType;
@end

@implementation SKUIBrowseHeaderPageComponent

- (int64_t)componentType
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseHeaderPageComponent componentType];
  }

  return 17;
}

- (void)componentType
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseHeaderPageComponent componentType]";
}

@end