@interface SKUISettingsGroupController
- (SKUISettingsGroupControllerDelegate)delegate;
- (id)_viewForSettingDescription:(id)a3;
- (void)_reloadSettingDescription:(id)a3;
- (void)attachSettingDescription:(id)a3;
@end

@implementation SKUISettingsGroupController

- (void)attachSettingDescription:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsGroupController attachSettingDescription:];
  }

  settingDescriptions = self->_settingDescriptions;
  if (!settingDescriptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_settingDescriptions;
    self->_settingDescriptions = v6;

    settingDescriptions = self->_settingDescriptions;
  }

  [(NSMutableArray *)settingDescriptions addObject:v4];
  if ([v4 conformsToProtocol:&unk_282987338])
  {
    [v4 setController:self];
  }
}

- (void)_reloadSettingDescription:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 settingsGroupController:self reloadSettingDescription:v7];
  }
}

- (id)_viewForSettingDescription:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 settingsGroupController:self viewForSettingDescription:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SKUISettingsGroupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attachSettingDescription:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsGroupController attachSettingDescription:]";
}

@end