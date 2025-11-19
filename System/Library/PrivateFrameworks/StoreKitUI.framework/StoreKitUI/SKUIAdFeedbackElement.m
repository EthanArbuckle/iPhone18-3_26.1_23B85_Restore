@interface SKUIAdFeedbackElement
+ (BOOL)isEnabled;
+ (void)isEnabled;
@end

@implementation SKUIAdFeedbackElement

+ (BOOL)isEnabled
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIAdFeedbackElement isEnabled];
  }

  return 0;
}

+ (void)isEnabled
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAdFeedbackElement isEnabled]";
}

@end