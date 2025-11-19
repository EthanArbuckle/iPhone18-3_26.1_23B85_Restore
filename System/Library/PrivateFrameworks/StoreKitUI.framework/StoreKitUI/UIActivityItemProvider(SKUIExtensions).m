@interface UIActivityItemProvider(SKUIExtensions)
+ (uint64_t)activityTypeShouldProvideImage:()SKUIExtensions;
@end

@implementation UIActivityItemProvider(SKUIExtensions)

+ (uint64_t)activityTypeShouldProvideImage:()SKUIExtensions
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[UIActivityItemProvider(SKUIExtensions) activityTypeShouldProvideImage:];
  }

  v4 = [v3 isEqualToString:*MEMORY[0x277D54710]];
  v5 = v4 | [v3 isEqualToString:*MEMORY[0x277D54720]];
  v6 = [v3 isEqualToString:*MEMORY[0x277D54738]];
  v7 = v5 | v6 | [v3 isEqualToString:*MEMORY[0x277D54748]];
  v8 = [v3 isEqualToString:*MEMORY[0x277D54770]];

  return (v7 | v8) ^ 1u;
}

+ (void)activityTypeShouldProvideImage:()SKUIExtensions .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[UIActivityItemProvider(SKUIExtensions) activityTypeShouldProvideImage:]";
}

@end