@interface SKUIAppMenuBarDocument
+ (id)featureName;
+ (void)featureName;
@end

@implementation SKUIAppMenuBarDocument

+ (id)featureName
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIAppMenuBarDocument featureName];
  }

  v2 = *MEMORY[0x277D1AF10];

  return v2;
}

+ (void)featureName
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAppMenuBarDocument featureName]";
}

@end