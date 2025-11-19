@interface NSDictionary(SKUIExtensions)
+ (id)sk_dictionaryWithSize:()SKUIExtensions;
@end

@implementation NSDictionary(SKUIExtensions)

+ (id)sk_dictionaryWithSize:()SKUIExtensions
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[NSDictionary(SKUIExtensions) sk_dictionaryWithSize:];
  }

  v8[0] = @"width";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v8[1] = @"height";
  v9[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (void)sk_dictionaryWithSize:()SKUIExtensions .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[NSDictionary(SKUIExtensions) sk_dictionaryWithSize:]";
}

@end