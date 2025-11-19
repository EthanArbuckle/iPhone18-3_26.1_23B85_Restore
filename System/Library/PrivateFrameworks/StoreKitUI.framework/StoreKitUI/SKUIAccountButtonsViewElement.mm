@interface SKUIAccountButtonsViewElement
- (int64_t)pageComponentType;
- (void)pageComponentType;
@end

@implementation SKUIAccountButtonsViewElement

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAccountButtonsViewElement pageComponentType];
  }

  return 1;
}

- (void)pageComponentType
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAccountButtonsViewElement pageComponentType]";
}

@end