@interface SFSiriController
+ (BOOL)isAnnounceEnabledForHeadphones;
+ (BOOL)isAnnounceMessagesEnabled;
+ (BOOL)isAnnounceMessagesSupported;
+ (BOOL)isAnnounceSupported;
+ (BOOL)isCurrentLocaleSupported;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriAllowedWhileLocked;
+ (BOOL)isSiriEnabled;
+ (int64_t)announceCallsState;
+ (void)setAnnounceCallsState:(int64_t)a3;
+ (void)setAnnounceMessagesEnabled:(BOOL)a3;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)a3;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)a3;
@end

@implementation SFSiriController

+ (BOOL)isSiriEnabled
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

+ (BOOL)isHeySiriEnabled
{
  CFStringGetTypeID();

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getVTPreferencesClass_softClass;
  v12 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getVTPreferencesClass_block_invoke;
    v8[3] = &unk_1E788A938;
    v8[4] = &v9;
    __getVTPreferencesClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 sharedPreferences];
  v5 = [getAFPreferencesClass() sharedPreferences];
  if ([v5 assistantIsEnabled])
  {
    v6 = [v4 voiceTriggerEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 disableAssistantWhilePasscodeLocked];

  return v3 ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  v2 = [getAFPreferencesClass() sharedPreferences];
  v3 = [v2 isCurrentLocaleNativelySupported];

  return v3;
}

+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)a3
{
  if (a3)
  {
    [SFDefaults setSiriNotificationsPrompted:3];
  }
}

+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)a3
{
  if (a3)
  {
    [SFDefaults setSiriNotificationsPrompted:4];
  }
}

+ (BOOL)isAnnounceMessagesEnabled
{
  v2 = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  v5 = [v4 notificationSystemSettings];
  v6 = v5;
  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ([v5 announcementSetting] != v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v8 = getUNMutableNotificationSystemSettingsClass_softClass;
    v15 = getUNMutableNotificationSystemSettingsClass_softClass;
    if (!getUNMutableNotificationSystemSettingsClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getUNMutableNotificationSystemSettingsClass_block_invoke;
      v11[3] = &unk_1E788A938;
      v11[4] = &v12;
      __getUNMutableNotificationSystemSettingsClass_block_invoke(v11);
      v8 = v13[3];
    }

    v9 = v8;
    _Block_object_dispose(&v12, 8);
    v10 = objc_alloc_init(v8);
    [v10 setAnnouncementSetting:v7];
    [v10 setShowPreviewsSetting:{objc_msgSend(v6, "showPreviewsSetting")}];
    [v4 setNotificationSystemSettings:v10];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  v2 = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAnnounceEnabledForHeadphones
{
  v2 = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementHeadphonesSetting];

  return v4 == 2;
}

+ (BOOL)isAnnounceSupported
{
  v2 = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)announceCallsState
{
  v2 = objc_alloc_init(getTUUserConfigurationClass());
  v3 = [v2 announceCalls];
  if (v3 >= 4)
  {
    if (gLogCategory_SFSiriController <= 90 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
    {
      +[SFSiriController announceCallsState];
    }

    v3 = 0;
  }

  return v3;
}

+ (void)setAnnounceCallsState:(int64_t)a3
{
  v4 = objc_alloc_init(getTUUserConfigurationClass());
  v5 = a3;
  v6 = v4;
  if (a3 >= 4)
  {
    if (gLogCategory_SFSiriController > 90)
    {
      v5 = 0;
    }

    else
    {
      if (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize())
      {
        +[SFSiriController setAnnounceCallsState:];
      }

      v5 = 0;
      v4 = v6;
    }
  }

  [v4 setAnnounceCalls:v5];
  if (gLogCategory_SFSiriController <= 30 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
  {
    [SFSiriController setAnnounceCallsState:a3];
  }
}

+ (uint64_t)setAnnounceCallsState:(unint64_t)a1 .cold.2(unint64_t a1)
{
  if (a1 <= 3)
  {
    v1 = off_1E788B070[a1];
  }

  return LogPrintF();
}

+ (uint64_t)shouldPromptForAnnounceCallsForProductID:(uint64_t)a1 supportsInEarDetection:(uint64_t)a2 isUpsellFlow:(unint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 3)
  {
    v3 = off_1E788B070[a3];
  }

  return LogPrintF();
}

@end