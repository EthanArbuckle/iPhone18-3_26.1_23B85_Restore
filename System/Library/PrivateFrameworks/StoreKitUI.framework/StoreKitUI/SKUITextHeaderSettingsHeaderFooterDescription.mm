@interface SKUITextHeaderSettingsHeaderFooterDescription
- (Class)_viewClassForSettingsHeaderFooterDescription:(id)description;
@end

@implementation SKUITextHeaderSettingsHeaderFooterDescription

- (Class)_viewClassForSettingsHeaderFooterDescription:(id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITextHeaderSettingsHeaderFooterDescription _viewClassForSettingsHeaderFooterDescription:];
  }

  v3 = objc_opt_class();

  return v3;
}

- (void)_viewClassForSettingsHeaderFooterDescription:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITextHeaderSettingsHeaderFooterDescription _viewClassForSettingsHeaderFooterDescription:]";
}

@end