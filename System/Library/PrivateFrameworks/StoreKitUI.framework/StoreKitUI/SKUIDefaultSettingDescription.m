@interface SKUIDefaultSettingDescription
+ (Class)_viewClassForSettingDescription:(id)a3;
@end

@implementation SKUIDefaultSettingDescription

+ (Class)_viewClassForSettingDescription:(id)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIDefaultSettingDescription _viewClassForSettingDescription:];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (void)_viewClassForSettingDescription:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIDefaultSettingDescription _viewClassForSettingDescription:]";
}

@end