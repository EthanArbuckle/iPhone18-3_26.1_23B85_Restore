@interface SKUISettingsDescriptionUpdate
- (SKUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)a3;
@end

@implementation SKUISettingsDescriptionUpdate

- (SKUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsDescriptionUpdate initWithUpdateType:];
  }

  v6.receiver = self;
  v6.super_class = SKUISettingsDescriptionUpdate;
  result = [(SKUISettingsDescriptionUpdate *)&v6 init];
  if (result)
  {
    result->_updateType = a3;
  }

  return result;
}

- (void)initWithUpdateType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsDescriptionUpdate initWithUpdateType:]";
}

@end