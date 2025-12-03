@interface WLKAppSettingsFacade
- (WLKAppSettingsFacade)initWithSettings:(id)settings;
- (id)accessStatus;
- (void)setAccessStatus:(id)status;
@end

@implementation WLKAppSettingsFacade

- (WLKAppSettingsFacade)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = WLKAppSettingsFacade;
  v6 = [(WLKAppSettingsFacade *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (void)setAccessStatus:(id)status
{
  unsignedIntegerValue = [status unsignedIntegerValue];
  [(WLKAppSettings *)self->_settings setAccessStatus:unsignedIntegerValue];
  v5 = +[WLKSettingsStore sharedSettings];
  channelID = [(WLKAppSettings *)self->_settings channelID];
  externalID = [(WLKAppSettings *)self->_settings externalID];
  [v5 setStatus:unsignedIntegerValue forChannelID:channelID externalID:externalID];

  if (unsignedIntegerValue)
  {
    settings = self->_settings;

    [WLKSettingsCloudUtilities updateCloudStoreAppSettings:settings deleteHistory:0 completion:0];
  }
}

- (id)accessStatus
{
  v3 = +[WLKSettingsStore sharedSettings];
  channelID = [(WLKAppSettings *)self->_settings channelID];
  externalID = [(WLKAppSettings *)self->_settings externalID];
  v6 = [v3 settingsForChannelID:channelID externalID:externalID];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "accessStatus")}];

  return v7;
}

@end