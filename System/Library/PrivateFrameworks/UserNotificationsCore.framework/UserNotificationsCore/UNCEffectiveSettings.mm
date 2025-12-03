@interface UNCEffectiveSettings
- (BOOL)_queue_hasPairedVehiclesForCarPlay;
- (BOOL)_queue_isAnnounceSupportedForCarPlay;
- (BOOL)_queue_isAnnounceSupportedForHeadphones;
- (NSArray)effectiveGlobalScheduledDeliveryTimes;
- (UNCEffectiveSettings)init;
- (UNCEffectiveSettings)initWithBulletinDefaults:(id)defaults;
- (UNCEffectiveSettings)initWithBulletinDefaults:(id)defaults biometricResource:(id)resource;
- (id)_encodedScheduledDeliveryTimesForDeliveryTimes:(id)times;
- (id)_queue_globalScheduledDeliveryTimes;
- (id)_scheduledDeliveryTimesForEncodedDeliveryTimes:(id)times;
- (int64_t)_queue_defaultGlobalContentPreviewSetting;
- (int64_t)_queue_effectiveGlobalAnnounceCarPlaySetting;
- (int64_t)_queue_effectiveGlobalAnnounceHeadphoneSetting;
- (int64_t)_queue_effectiveGlobalAnnounceSetting;
- (int64_t)_queue_effectiveGlobalScheduledDeliveryShowNextSummarySetting;
- (int64_t)_queue_globalAnnounceCarPlaySetting;
- (int64_t)_queue_globalAnnounceHeadphonesSetting;
- (int64_t)_queue_globalAnnounceSetting;
- (int64_t)_queue_globalContentPreviewsSetting;
- (int64_t)_queue_globalNotificationListDisplayStyleSetting;
- (int64_t)_queue_globalScheduledDeliverySetting;
- (int64_t)effectiveGlobalAnnounceCarPlaySetting;
- (int64_t)effectiveGlobalAnnounceHeadphoneSetting;
- (int64_t)effectiveGlobalAnnounceSetting;
- (int64_t)effectiveGlobalContentPreviewSetting;
- (int64_t)effectiveGlobalNotificationListDisplayStyleSetting;
- (int64_t)effectiveGlobalScheduledDeliverySetting;
- (int64_t)effectiveGlobalScheduledDeliveryShowNextSummarySetting;
- (void)_biometricResourceStateChanged;
- (void)_fetchAllVehiclesForCarPlay;
- (void)_pairedVehiclesForCarPlayDidChange:(id)change;
- (void)_publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:(int64_t)setting;
- (void)_queue_loadCarPlayCapabilities;
- (void)_queue_loadSiriCapabilities;
- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting;
- (void)_queue_setGlobalContentPreviewsSetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times;
- (void)_queue_updateAnnounceControlCenterModuleAvailability;
- (void)_queue_updateAnnounceSettings;
- (void)_queue_updateSiriPreferences;
- (void)_saveGlobalAnnounceSettingEnabledEvent;
- (void)_siriPreferencesDidChange:(id)change;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)setGlobalAnnounceHeadphoneSetting:(int64_t)setting;
- (void)setGlobalAnnounceSetting:(int64_t)setting;
- (void)setGlobalContentPreviewSetting:(int64_t)setting;
- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryTimes:(id)times;
@end

@implementation UNCEffectiveSettings

- (UNCEffectiveSettings)init
{
  v3 = +[UNCBulletinDefaults standardDefaults];
  v4 = objc_alloc_init(UNCBiometricResource);
  v5 = [(UNCEffectiveSettings *)self initWithBulletinDefaults:v3 biometricResource:v4];

  return v5;
}

- (UNCEffectiveSettings)initWithBulletinDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = objc_alloc_init(UNCBiometricResource);
  v6 = [(UNCEffectiveSettings *)self initWithBulletinDefaults:defaultsCopy biometricResource:v5];

  return v6;
}

- (UNCEffectiveSettings)initWithBulletinDefaults:(id)defaults biometricResource:(id)resource
{
  defaultsCopy = defaults;
  resourceCopy = resource;
  v28.receiver = self;
  v28.super_class = UNCEffectiveSettings;
  v9 = [(UNCEffectiveSettings *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bulletinDefaults, defaults);
    mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
    v10->_siriEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

    mEMORY[0x1E698D1C0]2 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v10->_siriAllowedWhenLocked = [mEMORY[0x1E698D1C0]2 disableAssistantWhilePasscodeLocked] ^ 1;

    mEMORY[0x1E698D1C0]3 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v10->_announceOnHearingAidsEnabled = [mEMORY[0x1E698D1C0]3 announceNotificationsOnHearingAidsEnabled];

    mEMORY[0x1E698D1C0]4 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v10->_announceOnHearingAidsSupported = [mEMORY[0x1E698D1C0]4 announceNotificationsOnHearingAidsSupported];

    mEMORY[0x1E698D1C0]5 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v10->_announceOnBuiltInSpeakerEnabled = [mEMORY[0x1E698D1C0]5 announceNotificationsOnBuiltInSpeakerEnabled];

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.usernotifications.effectiveSettingsQueue", v16);
    queue = v10->_queue;
    v10->_queue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.usernotifications.effectiveSettingsGateway", v19);

    v21 = [[UNCBulletinServerConnection alloc] initWithQueue:v20];
    bbServerConnection = v10->_bbServerConnection;
    v10->_bbServerConnection = v21;

    objc_storeStrong(&v10->_biometricResource, resource);
    if ([(UNCBiometricResource *)v10->_biometricResource hasPearlCapability])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel__biometricResourceStateChanged name:@"BBBiometricResourceStateChanged" object:v10->_biometricResource];
    }

    v24 = v10->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__UNCEffectiveSettings_initWithBulletinDefaults_biometricResource___block_invoke;
    block[3] = &unk_1E85D6F70;
    v27 = v10;
    dispatch_sync(v24, block);
  }

  return v10;
}

uint64_t __67__UNCEffectiveSettings_initWithBulletinDefaults_biometricResource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_loadSiriCapabilities];
  v2 = *(a1 + 32);

  return [v2 _queue_loadCarPlayCapabilities];
}

- (void)_queue_loadSiriCapabilities
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E698D1E8]) initWithPlatform:1];
  announcementCapabilityManagerForHeadphones = self->_announcementCapabilityManagerForHeadphones;
  self->_announcementCapabilityManagerForHeadphones = v3;

  _queue_isAnnounceSupportedForHeadphones = [(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForHeadphones];
  v6 = MEMORY[0x1E69833A0];
  v7 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = _queue_isAnnounceSupportedForHeadphones;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[UNCES] Cached value of eligible setup for announce for headphones: %{BOOL}d", buf, 8u);
  }

  v8 = self->_announcementCapabilityManagerForHeadphones;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke;
  v28[3] = &unk_1E85D7D90;
  v28[4] = self;
  [(AFSiriAnnouncementRequestCapabilityManager *)v8 fetchEligibleAnnouncementRequestTypesWithCompletion:v28];
  v9 = [objc_alloc(MEMORY[0x1E698D1E8]) initWithPlatform:2];
  announcementCapabilityManagerForCarPlay = self->_announcementCapabilityManagerForCarPlay;
  self->_announcementCapabilityManagerForCarPlay = v9;

  _queue_isAnnounceSupportedForCarPlay = [(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForCarPlay];
  v12 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = _queue_isAnnounceSupportedForCarPlay;
    _os_log_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_DEFAULT, "[UNCES] Cached value of eligible setup for announce for CarPlay: %{BOOL}d", buf, 8u);
  }

  v13 = self->_announcementCapabilityManagerForCarPlay;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke_46;
  v27[3] = &unk_1E85D7D90;
  v27[4] = self;
  [(AFSiriAnnouncementRequestCapabilityManager *)v13 fetchEligibleAnnouncementRequestTypesWithCompletion:v27];
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  self->_siriEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  mEMORY[0x1E698D1C0]2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  self->_siriAllowedWhenLocked = [mEMORY[0x1E698D1C0]2 disableAssistantWhilePasscodeLocked] ^ 1;

  mEMORY[0x1E698D1C0]3 = [MEMORY[0x1E698D1C0] sharedPreferences];
  self->_announceOnHearingAidsEnabled = [mEMORY[0x1E698D1C0]3 announceNotificationsOnHearingAidsEnabled];

  mEMORY[0x1E698D1C0]4 = [MEMORY[0x1E698D1C0] sharedPreferences];
  self->_announceOnHearingAidsSupported = [mEMORY[0x1E698D1C0]4 announceNotificationsOnHearingAidsSupported];

  mEMORY[0x1E698D1C0]5 = [MEMORY[0x1E698D1C0] sharedPreferences];
  self->_announceOnBuiltInSpeakerEnabled = [mEMORY[0x1E698D1C0]5 announceNotificationsOnBuiltInSpeakerEnabled];

  v19 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    siriEnabled = self->_siriEnabled;
    siriAllowedWhenLocked = self->_siriAllowedWhenLocked;
    announceOnHearingAidsEnabled = self->_announceOnHearingAidsEnabled;
    announceOnHearingAidsSupported = self->_announceOnHearingAidsSupported;
    announceOnBuiltInSpeakerEnabled = self->_announceOnBuiltInSpeakerEnabled;
    *buf = 67110144;
    v30 = siriEnabled;
    v31 = 1024;
    v32 = siriAllowedWhenLocked;
    v33 = 1024;
    v34 = announceOnHearingAidsEnabled;
    v35 = 1024;
    v36 = announceOnHearingAidsSupported;
    v37 = 1024;
    v38 = announceOnBuiltInSpeakerEnabled;
    _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[UNCES] Siri preferences did load [ Siri enabled: %{BOOL}d, Siri allowed when locked: %{BOOL}d Announce On Hearing Aids Enabled: %{BOOL}d, Announce on Hearing Aids Supported: %{BOOL}d, Announce on Built-In Speaker: %{BOOL}d]", buf, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__siriPreferencesDidChange_ name:*MEMORY[0x1E698D098] object:0];

  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementCapabilityManagerForHeadphones addObserver:self];
  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementCapabilityManagerForCarPlay addObserver:self];
  v26 = *MEMORY[0x1E69E9840];
}

void __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2 & 1;
  v4 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Fetched value of eligible setup for announce for headphones: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke_44;
  v8[3] = &unk_1E85D7858;
  v8[4] = v5;
  v9 = v3;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke_46(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2 & 1;
  v4 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Fetched value of eligible setup for announce for CarPlay: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UNCEffectiveSettings__queue_loadSiriCapabilities__block_invoke_47;
  v8[3] = &unk_1E85D7858;
  v8[4] = v5;
  v9 = v3;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_siriPreferencesDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UNCEffectiveSettings__siriPreferencesDidChange___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_updateSiriPreferences
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  siriEnabled = self->_siriEnabled;
  v6 = siriEnabled != assistantIsEnabled;
  if (siriEnabled != assistantIsEnabled)
  {
    self->_siriEnabled = assistantIsEnabled;
  }

  mEMORY[0x1E698D1C0]2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v8 = [mEMORY[0x1E698D1C0]2 disableAssistantWhilePasscodeLocked] ^ 1;

  if (self->_siriAllowedWhenLocked != v8)
  {
    self->_siriAllowedWhenLocked = v8;
    v6 = 1;
  }

  mEMORY[0x1E698D1C0]3 = [MEMORY[0x1E698D1C0] sharedPreferences];
  announceNotificationsOnHearingAidsEnabled = [mEMORY[0x1E698D1C0]3 announceNotificationsOnHearingAidsEnabled];

  if (self->_announceOnHearingAidsEnabled != announceNotificationsOnHearingAidsEnabled)
  {
    self->_announceOnHearingAidsEnabled = announceNotificationsOnHearingAidsEnabled;
    v6 = 1;
  }

  mEMORY[0x1E698D1C0]4 = [MEMORY[0x1E698D1C0] sharedPreferences];
  announceNotificationsOnHearingAidsSupported = [mEMORY[0x1E698D1C0]4 announceNotificationsOnHearingAidsSupported];

  if (self->_announceOnHearingAidsSupported != announceNotificationsOnHearingAidsSupported)
  {
    self->_announceOnHearingAidsSupported = announceNotificationsOnHearingAidsSupported;
    v6 = 1;
  }

  mEMORY[0x1E698D1C0]5 = [MEMORY[0x1E698D1C0] sharedPreferences];
  announceNotificationsOnBuiltInSpeakerEnabled = [mEMORY[0x1E698D1C0]5 announceNotificationsOnBuiltInSpeakerEnabled];

  if (self->_announceOnBuiltInSpeakerEnabled == announceNotificationsOnBuiltInSpeakerEnabled)
  {
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    self->_announceOnBuiltInSpeakerEnabled = announceNotificationsOnBuiltInSpeakerEnabled;
  }

  v15 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_siriEnabled;
    siriAllowedWhenLocked = self->_siriAllowedWhenLocked;
    announceOnHearingAidsEnabled = self->_announceOnHearingAidsEnabled;
    announceOnHearingAidsSupported = self->_announceOnHearingAidsSupported;
    announceOnBuiltInSpeakerEnabled = self->_announceOnBuiltInSpeakerEnabled;
    v22[0] = 67110144;
    v22[1] = v16;
    v23 = 1024;
    v24 = siriAllowedWhenLocked;
    v25 = 1024;
    v26 = announceOnHearingAidsEnabled;
    v27 = 1024;
    v28 = announceOnHearingAidsSupported;
    v29 = 1024;
    v30 = announceOnBuiltInSpeakerEnabled;
    _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[UNCES] Siri preferences did change [ Siri enabled: %{BOOL}d, Siri allowed when locked: %{BOOL}d, Announce on hearing aids enabled: %{BOOL}d, Announce on hearing aids supported: %{BOOL}d, Announce on built in speaker enabled: %{BOOL}d]", v22, 0x20u);
  }

  [(UNCEffectiveSettings *)self _queue_updateAnnounceSettings];
LABEL_16:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__UNCEffectiveSettings_availableAnnouncementRequestTypesChanged_onPlatform___block_invoke;
  block[3] = &unk_1E85D7DB8;
  v6 = changed & 1;
  block[4] = self;
  block[5] = platform;
  dispatch_async(queue, block);
}

uint64_t __76__UNCEffectiveSettings_availableAnnouncementRequestTypesChanged_onPlatform___block_invoke(uint64_t result)
{
  v1 = result;
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2 == 2)
  {
    v5 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 48);
      v8 = 67109120;
      v9 = v6;
      _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Changed value of eligible setup for announce for CarPlay: %{BOOL}d", &v8, 8u);
    }

    result = [*(v1 + 32) _queue_setAnnounceSupportedForCarPlay:*(v1 + 48)];
  }

  else if (v2 == 1)
  {
    v3 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 48);
      v8 = 67109120;
      v9 = v4;
      _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[UNCES] Changed value of eligible setup for announce for headphones: %{BOOL}d", &v8, 8u);
    }

    result = [*(v1 + 32) _queue_setAnnounceSupportedForHeadphones:*(v1 + 48)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_queue_updateAnnounceSettings
{
  dispatch_assert_queue_V2(self->_queue);
  bbServerConnection = self->_bbServerConnection;

  [(UNCBulletinServerConnection *)bbServerConnection refreshAnnounceSettings];
}

- (void)_queue_updateAnnounceControlCenterModuleAvailability
{
  dispatch_assert_queue_V2(self->_queue);
  _queue_effectiveGlobalAnnounceSetting = [(UNCEffectiveSettings *)self _queue_effectiveGlobalAnnounceSetting];
  if ((_queue_effectiveGlobalAnnounceSetting == 2) == (CFPreferencesGetAppBooleanValue(@"SBIconVisibility", @"com.apple.siri.SpokenNotificationsModule", 0) == 0))
  {
    v4 = MEMORY[0x1E695E4D0];
    if (_queue_effectiveGlobalAnnounceSetting != 2)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    CFPreferencesSetAppValue(@"SBIconVisibility", *v4, @"com.apple.siri.SpokenNotificationsModule");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
  }
}

- (int64_t)_queue_globalAnnounceSetting
{
  dispatch_assert_queue_V2(self->_queue);
  result = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceSetting];
  if (result == -1)
  {
    [(UNCEffectiveSettings *)self _queue_setGlobalAnnounceSetting:0];
    return 0;
  }

  return result;
}

- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  globalAnnounceSetting = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceSetting];
  if (setting != -1 && globalAnnounceSetting != setting)
  {
    v6 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = UNCStringFromUNCAnnounceSetting(setting);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[UNCES] Set effectiveGlobalAnnounceSetting: %{public}@", &v10, 0xCu);
    }

    [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults setGlobalAnnounceSetting:setting];
    [(UNCEffectiveSettings *)self _queue_updateAnnounceControlCenterModuleAvailability];
    if (setting == 2)
    {
      [(UNCEffectiveSettings *)self _saveGlobalAnnounceSettingEnabledEvent];
    }

    [(UNCEffectiveSettings *)self _queue_updateGlobalSettings];
    [(UNCEffectiveSettings *)self _queue_updateAllSectionInfos];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)_queue_effectiveGlobalAnnounceSetting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForHeadphones]|| [(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForCarPlay]&& [(UNCEffectiveSettings *)self _queue_hasPairedVehiclesForCarPlay]|| self->_announceOnHearingAidsSupported || self->_announceOnBuiltInSpeakerEnabled)
  {
    if (self->_siriEnabled && self->_siriAllowedWhenLocked)
    {
      _queue_globalAnnounceSetting = [(UNCEffectiveSettings *)self _queue_globalAnnounceSetting];
      if (_queue_globalAnnounceSetting <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = _queue_globalAnnounceSetting;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = -1;
  }

  v5 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = UNCStringFromUNCAnnounceSetting(v4);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalAnnounceSetting: %{public}@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int64_t)effectiveGlobalAnnounceSetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UNCEffectiveSettings_effectiveGlobalAnnounceSetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__UNCEffectiveSettings_effectiveGlobalAnnounceSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_effectiveGlobalAnnounceSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalAnnounceSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__UNCEffectiveSettings_setGlobalAnnounceSetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)_saveGlobalAnnounceSettingEnabledEvent
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6997970] eventStreamWithName:@"/discoverability/signals"];
  type = [MEMORY[0x1E6997940] type];
  v4 = [MEMORY[0x1E6997988] identifierWithString:@"com.apple.siri.spoken-notifications.enabled" type:type];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [MEMORY[0x1E6997960] eventWithStream:v2 startDate:date endDate:date value:v4 confidence:0 metadata:1.0];
  if (v6)
  {
    knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [knowledgeStore saveObjects:v8 responseQueue:0 withCompletion:&__block_literal_global_23];

    v9 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "[UNCES] Told CoreDuet about global announce setting change", v11, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __62__UNCEffectiveSettings__saveGlobalAnnounceSettingEnabledEvent__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_ERROR))
    {
      __62__UNCEffectiveSettings__saveGlobalAnnounceSettingEnabledEvent__block_invoke_cold_1(v4, v5);
    }
  }

  else if (a2)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    [v6 setObject:@"com.apple.siri.spoken-notifications.enabled" forKeyedSubscript:@"signalIdentifier"];
    v7 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v8 = [MEMORY[0x1E6997A60] userContext];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

- (BOOL)_queue_isAnnounceSupportedForHeadphones
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults isAnnounceSupportedForHeadphones];
}

- (int64_t)_queue_globalAnnounceHeadphonesSetting
{
  dispatch_assert_queue_V2(self->_queue);
  result = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceHeadphonesSetting];
  if (result == -1)
  {
    [(UNCEffectiveSettings *)self _queue_setGlobalAnnounceHeadphonesSetting:0];
    return 0;
  }

  return result;
}

- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  globalAnnounceHeadphonesSetting = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceHeadphonesSetting];
  if (setting != -1 && globalAnnounceHeadphonesSetting != setting)
  {
    v6 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = UNCStringFromUNCAnnounceSetting(setting);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[UNCES] Set setEffectiveGlobalAnnounceHeadphonesSetting: %{public}@", &v10, 0xCu);
    }

    [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults setGlobalAnnounceHeadphonesSetting:setting];
    [(UNCEffectiveSettings *)self _queue_updateGlobalSettings];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)_queue_effectiveGlobalAnnounceHeadphoneSetting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForHeadphones])
  {
    if (self->_siriEnabled && self->_siriAllowedWhenLocked && [(UNCEffectiveSettings *)self _queue_effectiveGlobalAnnounceSetting]== 2)
    {
      _queue_globalAnnounceHeadphonesSetting = [(UNCEffectiveSettings *)self _queue_globalAnnounceHeadphonesSetting];
      if (_queue_globalAnnounceHeadphonesSetting)
      {
        v4 = _queue_globalAnnounceHeadphonesSetting;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = -1;
  }

  v5 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = UNCStringFromUNCAnnounceSetting(v4);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalAnnounceHeadphonesSetting: %{public}@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int64_t)effectiveGlobalAnnounceHeadphoneSetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UNCEffectiveSettings_effectiveGlobalAnnounceHeadphoneSetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__UNCEffectiveSettings_effectiveGlobalAnnounceHeadphoneSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_effectiveGlobalAnnounceHeadphoneSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalAnnounceHeadphoneSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__UNCEffectiveSettings_setGlobalAnnounceHeadphoneSetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)_pairedVehiclesForCarPlayDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UNCEffectiveSettings__pairedVehiclesForCarPlayDidChange___block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_loadCarPlayCapabilities
{
  v8 = *MEMORY[0x1E69E9840];
  _queue_hasPairedVehiclesForCarPlay = [(UNCEffectiveSettings *)self _queue_hasPairedVehiclesForCarPlay];
  v4 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = _queue_hasPairedVehiclesForCarPlay;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Cached value of vehicles for CarPlay: %{BOOL}d", v7, 8u);
  }

  [(UNCEffectiveSettings *)self _fetchAllVehiclesForCarPlay];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__pairedVehiclesForCarPlayDidChange_ name:@"CRPairedVehiclesDidChangeNotification" object:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAllVehiclesForCarPlay
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getCRPairedVehicleManagerClass_softClass_0;
  v11 = getCRPairedVehicleManagerClass_softClass_0;
  if (!getCRPairedVehicleManagerClass_softClass_0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCRPairedVehicleManagerClass_block_invoke_0;
    v7[3] = &unk_1E85D6DE8;
    v7[4] = &v8;
    __getCRPairedVehicleManagerClass_block_invoke_0(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__UNCEffectiveSettings__fetchAllVehiclesForCarPlay__block_invoke;
  v6[3] = &unk_1E85D7E28;
  v6[4] = self;
  [v5 fetchAllVehiclesWithCompletion:v6];
}

void __51__UNCEffectiveSettings__fetchAllVehiclesForCarPlay__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a2 count];
  v4 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3 != 0;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Changed value of vehicles for CarPlay: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UNCEffectiveSettings__fetchAllVehiclesForCarPlay__block_invoke_88;
  v8[3] = &unk_1E85D7858;
  v8[4] = v5;
  v9 = v3 != 0;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queue_hasPairedVehiclesForCarPlay
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults hasPairedVehiclesForCarPlay];
}

- (BOOL)_queue_isAnnounceSupportedForCarPlay
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults isAnnounceSupportedForCarPlay];
}

- (int64_t)_queue_globalAnnounceCarPlaySetting
{
  dispatch_assert_queue_V2(self->_queue);
  result = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceCarPlaySetting];
  if (result == -1)
  {
    [(UNCEffectiveSettings *)self _queue_setGlobalAnnounceCarPlaySetting:0];
    return 0;
  }

  return result;
}

- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  globalAnnounceCarPlaySetting = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalAnnounceCarPlaySetting];
  if (setting != -1 && globalAnnounceCarPlaySetting != setting)
  {
    v6 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = UNCStringFromUNCAnnounceCarPlaySetting(setting);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[UNCES] Set GlobalAnnounceCarPlaySetting: %{public}@", &v10, 0xCu);
    }

    [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults setGlobalAnnounceCarPlaySetting:setting];
    [(UNCEffectiveSettings *)self _queue_updateGlobalSettings];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)_queue_effectiveGlobalAnnounceCarPlaySetting
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(UNCEffectiveSettings *)self _queue_isAnnounceSupportedForCarPlay]&& [(UNCEffectiveSettings *)self _queue_hasPairedVehiclesForCarPlay])
  {
    if (self->_siriEnabled && self->_siriAllowedWhenLocked && [(UNCEffectiveSettings *)self _queue_effectiveGlobalAnnounceSetting]== 2)
    {
      _queue_globalAnnounceCarPlaySetting = [(UNCEffectiveSettings *)self _queue_globalAnnounceCarPlaySetting];
      if (_queue_globalAnnounceCarPlaySetting)
      {
        v4 = _queue_globalAnnounceCarPlaySetting;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = -1;
  }

  v5 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = UNCStringFromUNCAnnounceCarPlaySetting(v4);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalAnnounceCarPlaySetting: %{public}@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int64_t)effectiveGlobalAnnounceCarPlaySetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UNCEffectiveSettings_effectiveGlobalAnnounceCarPlaySetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __61__UNCEffectiveSettings_effectiveGlobalAnnounceCarPlaySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_effectiveGlobalAnnounceCarPlaySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UNCEffectiveSettings_setGlobalAnnounceCarPlaySetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

uint64_t __56__UNCEffectiveSettings_setGlobalAnnounceCarPlaySetting___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) globalAnnounceCarPlaySetting];
  v3 = *(a1 + 40);
  if (result != v3 && v3 != -1)
  {
    [*(*(a1 + 32) + 8) setGlobalAnnounceCarPlaySetting:?];
    v5 = *(a1 + 32);

    return [v5 _queue_updateGlobalSettings];
  }

  return result;
}

- (int64_t)_queue_globalScheduledDeliverySetting
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults globalScheduledDeliverySetting];
}

- (int64_t)effectiveGlobalScheduledDeliverySetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UNCEffectiveSettings_effectiveGlobalScheduledDeliverySetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__UNCEffectiveSettings_effectiveGlobalScheduledDeliverySetting__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _queue_globalScheduledDeliverySetting])
  {
    v2 = [*(a1 + 32) _queue_globalScheduledDeliverySetting];
  }

  else
  {
    v2 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  v3 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = v3;
    v6 = UNCStringFromUNCScheduledDeliverySetting(v4);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalScheduledDeliverySetting: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setGlobalScheduledDeliverySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__UNCEffectiveSettings_setGlobalScheduledDeliverySetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

uint64_t __58__UNCEffectiveSettings_setGlobalScheduledDeliverySetting___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _queue_globalScheduledDeliverySetting];
  if (result != *(a1 + 40))
  {
    v3 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = UNCStringFromUNCScheduledDeliverySetting(v4);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Set setEffectiveGlobalScheduledDeliverySetting: %{public}@", &v8, 0xCu);
    }

    [*(*(a1 + 32) + 8) setGlobalScheduledDeliverySetting:*(a1 + 40)];
    result = [*(a1 + 32) _queue_updateGlobalSettings];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_encodedScheduledDeliveryTimesForDeliveryTimes:(id)times
{
  v20 = *MEMORY[0x1E69E9840];
  timesCopy = times;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = timesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "hour", v15)}];
        [v4 addObject:v11];

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "minute")}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_scheduledDeliveryTimesForEncodedDeliveryTimes:(id)times
{
  timesCopy = times;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [timesCopy count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i < v6; i += 2)
    {
      if (v6 <= i + 1)
      {
        break;
      }

      v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
      v9 = [timesCopy objectAtIndex:i];
      [v8 setHour:{objc_msgSend(v9, "integerValue")}];

      v10 = [timesCopy objectAtIndex:i + 1];
      [v8 setMinute:{objc_msgSend(v10, "integerValue")}];

      [v4 addObject:v8];
    }
  }

  return v4;
}

- (id)_queue_globalScheduledDeliveryTimes
{
  dispatch_assert_queue_V2(self->_queue);
  globalScheduledDeliveryTimes = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalScheduledDeliveryTimes];
  v4 = [(UNCEffectiveSettings *)self _scheduledDeliveryTimesForEncodedDeliveryTimes:globalScheduledDeliveryTimes];

  return v4;
}

- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times
{
  v11 = *MEMORY[0x1E69E9840];
  timesCopy = times;
  dispatch_assert_queue_V2(self->_queue);
  _queue_globalScheduledDeliveryTimes = [(UNCEffectiveSettings *)self _queue_globalScheduledDeliveryTimes];

  if (_queue_globalScheduledDeliveryTimes != timesCopy)
  {
    v6 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = timesCopy;
      _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[UNCES] setEffectiveGlobalScheduledDeliveryTimes: %{public}@", &v9, 0xCu);
    }

    v7 = [(UNCEffectiveSettings *)self _encodedScheduledDeliveryTimesForDeliveryTimes:timesCopy];
    [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults setGlobalScheduledDeliveryTimes:v7];
    [(UNCEffectiveSettings *)self _queue_updateGlobalSettings];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSArray)effectiveGlobalScheduledDeliveryTimes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  array = [MEMORY[0x1E695DEC8] array];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UNCEffectiveSettings_effectiveGlobalScheduledDeliveryTimes__block_invoke;
  v6[3] = &unk_1E85D6E48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __61__UNCEffectiveSettings_effectiveGlobalScheduledDeliveryTimes__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_globalScheduledDeliveryTimes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalScheduledDeliveryTimes: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setGlobalScheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UNCEffectiveSettings_setGlobalScheduledDeliveryTimes___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = timesCopy;
  v6 = timesCopy;
  dispatch_sync(queue, v7);
}

- (int64_t)_queue_effectiveGlobalScheduledDeliveryShowNextSummarySetting
{
  v10 = *MEMORY[0x1E69E9840];
  globalScheduledDeliveryShowNextSummarySetting = [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults globalScheduledDeliveryShowNextSummarySetting];
  v3 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = UNCStringFromUNCSystemSetting(globalScheduledDeliveryShowNextSummarySetting);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Got effectiveGlobalScheduledDeliveryShowNextSummarySetting: %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return globalScheduledDeliveryShowNextSummarySetting;
}

- (int64_t)effectiveGlobalScheduledDeliveryShowNextSummarySetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__UNCEffectiveSettings_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __78__UNCEffectiveSettings_effectiveGlobalScheduledDeliveryShowNextSummarySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_effectiveGlobalScheduledDeliveryShowNextSummarySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__UNCEffectiveSettings_setGlobalScheduledDeliveryShowNextSummarySetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

uint64_t __73__UNCEffectiveSettings_setGlobalScheduledDeliveryShowNextSummarySetting___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = UNCStringFromUNCSystemSetting(v3);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[UNCES] Set setEffectiveGlobalScheduledDeliveryShowNextSummarySetting: %{public}@", &v8, 0xCu);
  }

  [*(*(a1 + 32) + 8) setGlobalScheduledDeliveryShowNextSummarySetting:*(a1 + 40)];
  result = [*(a1 + 32) _queue_updateGlobalSettings];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_biometricResourceStateChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UNCEffectiveSettings__biometricResourceStateChanged__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __54__UNCEffectiveSettings__biometricResourceStateChanged__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalContentPreviewsSetting];
  if (!result)
  {
    [*(a1 + 32) _queue_updateGlobalSettings];
    v3 = *(a1 + 32);

    return [v3 _queue_updateAllSectionInfos];
  }

  return result;
}

- (int64_t)_queue_defaultGlobalContentPreviewSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(UNCEffectiveSettings *)self _supportsFaceID]&& [(UNCEffectiveSettings *)self _isFaceIDEnrolled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_queue_globalContentPreviewsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults globalContentPreviewSetting];
}

- (void)_queue_setGlobalContentPreviewsSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(UNCEffectiveSettings *)self _queue_globalContentPreviewsSetting]!= setting)
  {
    v5 = *MEMORY[0x1E69833A0];
    if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Set effectiveGlobalContentPreviewsSetting", v6, 2u);
    }

    [(UNCBulletinDefaultsInterface *)self->_bulletinDefaults setGlobalContentPreviewSetting:setting];
    [(UNCEffectiveSettings *)self _queue_updateGlobalSettings];
    [(UNCEffectiveSettings *)self _queue_updateAllSectionInfos];
  }
}

- (int64_t)effectiveGlobalContentPreviewSetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UNCEffectiveSettings_effectiveGlobalContentPreviewSetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__UNCEffectiveSettings_effectiveGlobalContentPreviewSetting__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_globalContentPreviewsSetting];
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [v3 _queue_globalContentPreviewsSetting];
  }

  else
  {
    result = [v3 _queue_defaultGlobalContentPreviewSetting];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalContentPreviewSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__UNCEffectiveSettings_setGlobalContentPreviewSetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

void __55__UNCEffectiveSettings_setGlobalContentPreviewSetting___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == [v2 _queue_defaultGlobalContentPreviewSetting])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  [v2 _queue_setGlobalContentPreviewsSetting:v4];
  v5 = *MEMORY[0x1E69833A0];
  if (os_log_type_enabled(*MEMORY[0x1E69833A0], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[UNCES] Set effectiveGlobalContentPreviewsSetting", v6, 2u);
  }
}

- (int64_t)_queue_globalNotificationListDisplayStyleSetting
{
  dispatch_assert_queue_V2(self->_queue);
  bulletinDefaults = self->_bulletinDefaults;

  return [(UNCBulletinDefaultsInterface *)bulletinDefaults globalNotificationListDisplayStyleSetting];
}

- (int64_t)effectiveGlobalNotificationListDisplayStyleSetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__UNCEffectiveSettings_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __74__UNCEffectiveSettings_effectiveGlobalNotificationListDisplayStyleSetting__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_globalNotificationListDisplayStyleSetting])
  {
    result = [*(a1 + 32) _queue_globalNotificationListDisplayStyleSetting];
  }

  else
  {
    result = 2;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__UNCEffectiveSettings_setGlobalNotificationListDisplayStyleSetting___block_invoke;
  v4[3] = &unk_1E85D7DE0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

uint64_t __69__UNCEffectiveSettings_setGlobalNotificationListDisplayStyleSetting___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) globalNotificationListDisplayStyleSetting];
  if (result != *(a1 + 40))
  {
    [*(*(a1 + 32) + 8) setGlobalNotificationListDisplayStyleSetting:?];
    [*(a1 + 32) _queue_updateGlobalSettings];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:v4];
  }

  return result;
}

- (void)_publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:(int64_t)setting
{
  v12[1] = *MEMORY[0x1E69E9840];
  discoverabilitySignal = [MEMORY[0x1E698F350] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v6 = objc_alloc(MEMORY[0x1E698F278]);
  v11 = @"notificationListDisplayStyleSetting";
  v7 = UNCStringFromUNCNotificationListDisplayStyleSetting(setting);
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v6 initWithIdentifier:@"com.apple.SpringBoard.notificationListDisplayStyleSetting.changed" bundleID:@"com.apple.SpringBoard" context:@"NotificationListDisplayStyleSetting" userInfo:v8];

  [source sendEvent:v9];
  v10 = *MEMORY[0x1E69E9840];
}

void __62__UNCEffectiveSettings__saveGlobalAnnounceSettingEnabledEvent__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "[UNCES] Error saving spoken notification setting change to Duet: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end