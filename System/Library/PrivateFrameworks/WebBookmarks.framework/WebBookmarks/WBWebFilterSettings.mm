@interface WBWebFilterSettings
+ (WBWebFilterSettings)sharedWebFilterSettings;
- (BOOL)isWebFilterEnabled;
- (BOOL)usesAllowedSitesOnly;
- (WBWebFilterSettings)init;
- (WFUserSettings)userSettings;
- (int64_t)webFilterStatusForURL:(id)a3;
- (void)dealloc;
- (void)reloadSettings;
@end

@implementation WBWebFilterSettings

+ (WBWebFilterSettings)sharedWebFilterSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WBWebFilterSettings_sharedWebFilterSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedWebFilterSettings_onceToken != -1)
  {
    dispatch_once(&sharedWebFilterSettings_onceToken, block);
  }

  v2 = sharedWebFilterSettings_settings;

  return v2;
}

uint64_t __46__WBWebFilterSettings_sharedWebFilterSettings__block_invoke(uint64_t a1)
{
  sharedWebFilterSettings_settings = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (WBWebFilterSettings)init
{
  v6.receiver = self;
  v6.super_class = WBWebFilterSettings;
  v2 = [(WBWebFilterSettings *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, webFilterConfigurationChanged, @"com.apple.ManagedConfiguration.webContentFilterChanged", 0, 1024);
    v4 = v2;
  }

  return v2;
}

- (BOOL)isWebFilterEnabled
{
  v2 = [(WBWebFilterSettings *)self userSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 restrictionType] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFUserSettings)userSettings
{
  userSettings = self->_userSettings;
  if (!userSettings)
  {
    if (WebContentAnalysisLibraryCore())
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v4 = getWFUserSettingsClass_softClass;
      v16 = getWFUserSettingsClass_softClass;
      if (!getWFUserSettingsClass_softClass)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __getWFUserSettingsClass_block_invoke;
        v12[3] = &unk_279E76638;
        v12[4] = &v13;
        __getWFUserSettingsClass_block_invoke(v12);
        v4 = v14[3];
      }

      v5 = v4;
      _Block_object_dispose(&v13, 8);
      v6 = [v4 alloc];
      v7 = NSUserName();
      v8 = [v6 initWithUserName:v7];
      v9 = self->_userSettings;
      self->_userSettings = v8;
    }

    userSettings = self->_userSettings;
    if (!userSettings)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WBWebFilterSettings *)v10 userSettings];
      }

      userSettings = self->_userSettings;
    }
  }

  return userSettings;
}

- (BOOL)usesAllowedSitesOnly
{
  v2 = [(WBWebFilterSettings *)self userSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 restrictionType] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = WBWebFilterSettings;
  [(WBWebFilterSettings *)&v4 dealloc];
}

- (void)reloadSettings
{
  userSettings = self->_userSettings;
  self->_userSettings = 0;
  MEMORY[0x2821F96F8]();
}

- (int64_t)webFilterStatusForURL:(id)a3
{
  if ([(WFUserSettings *)self->_userSettings contentFilterListsAllowURL:a3])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end