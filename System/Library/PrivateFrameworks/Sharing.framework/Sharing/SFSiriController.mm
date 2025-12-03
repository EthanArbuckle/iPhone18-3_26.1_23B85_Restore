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
+ (void)setAnnounceCallsState:(int64_t)state;
+ (void)setAnnounceMessagesEnabled:(BOOL)enabled;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen;
@end

@implementation SFSiriController

+ (BOOL)isSiriEnabled
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  return assistantIsEnabled;
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
  sharedPreferences = [v2 sharedPreferences];
  sharedPreferences2 = [getAFPreferencesClass() sharedPreferences];
  if ([sharedPreferences2 assistantIsEnabled])
  {
    voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];
  }

  else
  {
    voiceTriggerEnabled = 0;
  }

  return voiceTriggerEnabled;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  disableAssistantWhilePasscodeLocked = [sharedPreferences disableAssistantWhilePasscodeLocked];

  return disableAssistantWhilePasscodeLocked ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  isCurrentLocaleNativelySupported = [sharedPreferences isCurrentLocaleNativelySupported];

  return isCurrentLocaleNativelySupported;
}

+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:3];
  }
}

+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:4];
  }
}

+ (BOOL)isAnnounceMessagesEnabled
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = [notificationSystemSettings announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v6 = notificationSystemSettings;
  if (enabledCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ([notificationSystemSettings announcementSetting] != v7)
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
    [currentNotificationSettingsCenter setNotificationSystemSettings:v10];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAnnounceEnabledForHeadphones
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];

  return announcementHeadphonesSetting == 2;
}

+ (BOOL)isAnnounceSupported
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
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
  announceCalls = [v2 announceCalls];
  if (announceCalls >= 4)
  {
    if (gLogCategory_SFSiriController <= 90 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
    {
      +[SFSiriController announceCallsState];
    }

    announceCalls = 0;
  }

  return announceCalls;
}

+ (void)setAnnounceCallsState:(int64_t)state
{
  v4 = objc_alloc_init(getTUUserConfigurationClass());
  stateCopy = state;
  v6 = v4;
  if (state >= 4)
  {
    if (gLogCategory_SFSiriController > 90)
    {
      stateCopy = 0;
    }

    else
    {
      if (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize())
      {
        +[SFSiriController setAnnounceCallsState:];
      }

      stateCopy = 0;
      v4 = v6;
    }
  }

  [v4 setAnnounceCalls:stateCopy];
  if (gLogCategory_SFSiriController <= 30 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
  {
    [SFSiriController setAnnounceCallsState:state];
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