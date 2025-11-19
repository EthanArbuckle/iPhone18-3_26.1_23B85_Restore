@interface SKUIBrowseHeaderViewElement
- (int64_t)pageComponentType;
- (void)pageComponentType;
@end

@implementation SKUIBrowseHeaderViewElement

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseHeaderViewElement pageComponentType];
  }

  return 17;
}

- (void)pageComponentType
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseHeaderViewElement pageComponentType]";
}

@end