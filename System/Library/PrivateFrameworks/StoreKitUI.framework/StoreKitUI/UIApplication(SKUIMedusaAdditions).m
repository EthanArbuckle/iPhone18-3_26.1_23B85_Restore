@interface UIApplication(SKUIMedusaAdditions)
- (BOOL)SKUI_isFullscreen;
- (uint64_t)SKUI_isMedusaActive;
- (void)SKUI_isFullscreen;
- (void)SKUI_isMedusaActive;
@end

@implementation UIApplication(SKUIMedusaAdditions)

- (uint64_t)SKUI_isMedusaActive
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [UIApplication(SKUIMedusaAdditions) SKUI_isMedusaActive];
  }

  return [a1 SKUI_isFullscreen] ^ 1;
}

- (BOOL)SKUI_isFullscreen
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [UIApplication(SKUIMedusaAdditions) SKUI_isFullscreen];
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [a1 keyWindow];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  return v4 + v6 == v9 + v11;
}

- (void)SKUI_isMedusaActive
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[UIApplication(SKUIMedusaAdditions) SKUI_isMedusaActive]";
}

- (void)SKUI_isFullscreen
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[UIApplication(SKUIMedusaAdditions) SKUI_isFullscreen]";
}

@end