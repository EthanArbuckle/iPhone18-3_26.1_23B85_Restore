@interface WLKAppSettingsFacade
- (WLKAppSettingsFacade)initWithSettings:(id)a3;
- (id)accessStatus;
- (void)setAccessStatus:(id)a3;
@end

@implementation WLKAppSettingsFacade

- (WLKAppSettingsFacade)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WLKAppSettingsFacade;
  v6 = [(WLKAppSettingsFacade *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (void)setAccessStatus:(id)a3
{
  v4 = [a3 unsignedIntegerValue];
  [(WLKAppSettings *)self->_settings setAccessStatus:v4];
  v5 = +[WLKSettingsStore sharedSettings];
  v6 = [(WLKAppSettings *)self->_settings channelID];
  v7 = [(WLKAppSettings *)self->_settings externalID];
  [v5 setStatus:v4 forChannelID:v6 externalID:v7];

  if (v4)
  {
    settings = self->_settings;

    [WLKSettingsCloudUtilities updateCloudStoreAppSettings:settings deleteHistory:0 completion:0];
  }
}

- (id)accessStatus
{
  v3 = +[WLKSettingsStore sharedSettings];
  v4 = [(WLKAppSettings *)self->_settings channelID];
  v5 = [(WLKAppSettings *)self->_settings externalID];
  v6 = [v3 settingsForChannelID:v4 externalID:v5];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "accessStatus")}];

  return v7;
}

@end