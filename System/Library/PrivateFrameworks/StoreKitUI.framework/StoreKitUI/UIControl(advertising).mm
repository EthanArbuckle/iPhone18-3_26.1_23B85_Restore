@interface UIControl(advertising)
- (id)adPrivacyData;
- (void)adPrivacyData;
- (void)setAdPrivacyData:()advertising;
@end

@implementation UIControl(advertising)

- (id)adPrivacyData
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UIControl(advertising) adPrivacyData];
  }

  v2 = objc_getAssociatedObject(a1, sel_adPrivacyData);

  return v2;
}

- (void)setAdPrivacyData:()advertising
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UIControl(advertising) setAdPrivacyData:];
  }

  v5 = [a1 adPrivacyData];
  if (v5)
  {
    [a1 removeTarget:0 action:sel_skuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }

  objc_setAssociatedObject(a1, sel_adPrivacyData, v4, 3);
  if (v4)
  {
    [a1 addTarget:0 action:sel_skuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }
}

- (void)adPrivacyData
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[UIControl(advertising) adPrivacyData]";
}

- (void)setAdPrivacyData:()advertising .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[UIControl(advertising) setAdPrivacyData:]";
}

@end