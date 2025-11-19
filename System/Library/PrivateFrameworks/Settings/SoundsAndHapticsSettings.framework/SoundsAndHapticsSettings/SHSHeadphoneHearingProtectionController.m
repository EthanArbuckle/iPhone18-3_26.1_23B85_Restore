@interface SHSHeadphoneHearingProtectionController
- (BOOL)headphoneLevelLimitLockedByRestrictions;
- (BOOL)shouldShowHealthFeatures;
- (SHSHeadphoneHearingProtectionController)init;
- (id)deviceTypeString;
- (id)getHeadphoneLevelLimitEnabled;
- (id)getHeadphoneLevelLimitSetting;
- (id)getHeadphoneNotificationsEnabled;
- (id)headphoneAudioDevicesSpecifier;
- (id)headphoneLevelLimitDescriptionSpecifier;
- (id)headphoneLevelLimitGroupSpecifier;
- (id)headphoneLevelLimitSliderSpecifier;
- (id)headphoneLevelLimitSwitchSpecifier;
- (id)headphoneNotificationsGroupSpecifier;
- (id)headphoneNotificationsSwitchSpecifier;
- (id)headphoneWeeklyNotificationDescriptionSpecifier;
- (id)specifiers;
- (id)startDate;
- (id)updateHeadphoneLevelLimitDescriptionText;
- (id)updateHeadphoneLevelLimitText;
- (id)weeklyNotificationCount:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)openAboutHeadphoneNotifications;
- (void)openHealthArticleSafeListening;
- (void)openHealthPrivacySettings;
- (void)queryNotificationCountsFromDate:(id)a3 toDate:(id)a4;
- (void)setHeadphoneLevelLimitEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setHeadphoneLevelLimitValue:(id)a3 forSpecifier:(id)a4;
- (void)setHeadphoneNotificationsEnabled:(id)a3 forSpecifier:(id)a4;
- (void)updateMonthlyNotificationCounts:(id)a3 withNames:(id)a4 forDates:(id)a5;
@end

@implementation SHSHeadphoneHearingProtectionController

- (SHSHeadphoneHearingProtectionController)init
{
  v5.receiver = self;
  v5.super_class = SHSHeadphoneHearingProtectionController;
  v2 = [(SHSHeadphoneHearingProtectionController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, unknownWiredDeviceStatusChanged_0, *MEMORY[0x277CEFA90], 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEFA90], 0);
  v4.receiver = self;
  v4.super_class = SHSHeadphoneHearingProtectionController;
  [(SHSHeadphoneHearingProtectionController *)&v4 dealloc];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = SHSHeadphoneHearingProtectionController;
  [(SHSHeadphoneHearingProtectionController *)&v17 loadView];
  if (_os_feature_enabled_impl())
  {
    v3 = @"HEADPHONE_HEARING_PROTECTION";
  }

  else
  {
    v3 = @"HEADPHONE_LEVEL_LIMIT_TITLE";
  }

  v4 = SHS_LocalizedStringForSounds(v3);
  [(SHSHeadphoneHearingProtectionController *)self setTitle:v4];

  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  audioSettingsManager = self->_audioSettingsManager;
  self->_audioSettingsManager = v5;

  v7 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v8 = [v7 getPreferenceFor:*MEMORY[0x277CEFB28]];
  [(SHSHeadphoneHearingProtectionController *)self setLevelLimitThreshold:v8];

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v9 setNumberStyle:1];
  [v9 setMaximumFractionDigits:0];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v11 = [v9 stringFromNumber:v10];
  [v9 setNotANumberSymbol:v11];

  [(SHSHeadphoneHearingProtectionController *)self setNumberFormatter:v9];
  [(SHSHeadphoneHearingProtectionController *)self setDeviceiPad:PSGetCapabilityBoolAnswer()];
  v12 = PSGetCapabilityBoolAnswer();
  v13 = 0;
  if ((v12 & 1) == 0)
  {
    v13 = PSGetCapabilityBoolAnswer() ^ 1;
  }

  [(SHSHeadphoneHearingProtectionController *)self setDeviceiPod:v13];
  v14 = [MEMORY[0x277D75418] currentDevice];
  -[SHSHeadphoneHearingProtectionController setDeviceInRetailKioskMode:](self, "setDeviceInRetailKioskMode:", [v14 sf_inRetailKioskMode]);

  if ([(SHSHeadphoneHearingProtectionController *)self shouldShowHealthFeatures]|| _os_feature_enabled_impl())
  {
    v15 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    healthStore = self->_healthStore;
    self->_healthStore = v15;

    self->_weeklyNotificationCount = 0;
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = objc_opt_new();
  if (_os_feature_enabled_impl() && ([(SHSHeadphoneHearingProtectionController *)self shouldShowHealthFeatures]|| _os_feature_enabled_impl()))
  {
    v6 = [(SHSHeadphoneHearingProtectionController *)self headphoneNotificationsGroupSpecifier];
    [v5 addObject:v6];

    v7 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v8 = *MEMORY[0x277CEFAF8];
    v9 = [v7 getPreferenceFor:*MEMORY[0x277CEFAF8]];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0)
    {
      v11 = [(SHSHeadphoneHearingProtectionController *)self headphoneNotificationsSwitchSpecifier];
      [v5 addObject:v11];
    }

    v12 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v13 = [v12 getPreferenceFor:*MEMORY[0x277CEFAF0]];
    if ([v13 BOOLValue])
    {

LABEL_10:
      v17 = [(SHSHeadphoneHearingProtectionController *)self headphoneWeeklyNotificationDescriptionSpecifier];
      [v5 addObject:v17];

      goto LABEL_11;
    }

    v14 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v15 = [v14 getPreferenceFor:v8];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v18 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitGroupSpecifier];
  [v5 addObject:v18];

  v19 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitSwitchSpecifier];
  [v5 addObject:v19];

  v20 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v21 = [v20 getPreferenceFor:*MEMORY[0x277CEFB20]];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    v23 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitDescriptionSpecifier];
    [v5 addObject:v23];

    v24 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitSliderSpecifier];
    [v5 addObject:v24];
  }

  v25 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v26 = [v25 getPreferenceFor:*MEMORY[0x277CEFAE0]];

  if ([(SHSHeadphoneHearingProtectionController *)self shouldShowHealthFeatures])
  {
    if ([v26 count] || (-[SHSHeadphoneHearingProtectionController audioSettingsManager](self, "audioSettingsManager"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "getPreferenceFor:", *MEMORY[0x277CEFAB0]), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
    {
      v29 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SHSHeadphoneAudioDevicesGroupKey"];
      [v5 addObject:v29];

      v30 = [(SHSHeadphoneHearingProtectionController *)self headphoneAudioDevicesSpecifier];
      [v5 addObject:v30];
    }
  }

  v31 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v5;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_18:

  return v4;
}

- (id)deviceTypeString
{
  if ([(SHSHeadphoneHearingProtectionController *)self isDeviceiPad])
  {
    v3 = @"IPAD";
  }

  else
  {
    v3 = @"IPHONE";
  }

  if ([(SHSHeadphoneHearingProtectionController *)self isDeviceiPod])
  {
    return @"IPOD";
  }

  else
  {
    return v3;
  }
}

- (BOOL)shouldShowHealthFeatures
{
  if (![(SHSHeadphoneHearingProtectionController *)self isDeviceiPad]|| (v3 = _os_feature_enabled_impl()) != 0)
  {
    LOBYTE(v3) = ![(SHSHeadphoneHearingProtectionController *)self isDeviceInRetailKioskMode];
  }

  return v3;
}

- (id)headphoneNotificationsGroupSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SHSHeadphoneNotificationsGroupKey"];
  v4 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_FOOTER");
  v5 = *MEMORY[0x277D3FF50];
  [v3 setProperty:@"openAboutHeadphoneNotifications" forKey:*MEMORY[0x277D3FF50]];
  v6 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v7 = [v6 getPreferenceFor:*MEMORY[0x277CEFAF8]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_GROUP");
    [v3 setName:v9];

    v10 = MEMORY[0x277CCACA8];
    v11 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_MANDATORY");
    v12 = @"LEARN_MORE_IN_HEALTH_LINK";
    v13 = SHS_LocalizedStringForSounds(@"LEARN_MORE_IN_HEALTH_LINK");
    v14 = [v10 stringWithFormat:v11, v13];
    v15 = [v10 stringWithFormat:v4, v14];
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v12 = @"LEARN_MORE_IN_HEALTH_LINK";
    v17 = SHS_LocalizedStringForSounds(@"LEARN_MORE_IN_HEALTH_LINK");
    v15 = [v16 stringWithFormat:v4, v17];

    v18 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v19 = [v18 getPreferenceFor:*MEMORY[0x277CEFAB8]];
    v20 = [v19 BOOLValue];

    if ((v20 & 1) == 0)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_DISABLED_FOOTER");
      v12 = @"HEALTH_PRIVACY_SETTINGS_LINK";
      v23 = SHS_LocalizedStringForSounds(@"HEALTH_PRIVACY_SETTINGS_LINK");
      v24 = [v21 stringWithFormat:v22, v23];

      [v3 setProperty:@"openHealthPrivacySettings" forKey:v5];
      v15 = v24;
    }
  }

  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [v3 setProperty:v26 forKey:*MEMORY[0x277D3FF48]];

  [v3 setProperty:v15 forKey:*MEMORY[0x277D3FF70]];
  v27 = SHS_LocalizedStringForSounds(v12);
  v32.location = [v15 rangeOfString:v27];
  v28 = NSStringFromRange(v32);
  [v3 setProperty:v28 forKey:*MEMORY[0x277D3FF58]];

  v29 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v3 setProperty:v29 forKey:*MEMORY[0x277D3FF68]];

  return v3;
}

- (id)headphoneNotificationsSwitchSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_SWITCH");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setHeadphoneNotificationsEnabled_forSpecifier_ get:sel_getHeadphoneNotificationsEnabled detail:0 cell:6 edit:0];

  [v5 setProperty:@"SHSHeadphoneNotificationsSwitchKey" forKey:*MEMORY[0x277D3FFB8]];
  v6 = MEMORY[0x277CCABB0];
  v7 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v8 = [v7 getPreferenceFor:*MEMORY[0x277CEFAB8]];
  v9 = [v6 numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
  [v5 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)headphoneWeeklyNotificationDescriptionSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:sel_weeklyNotificationCount_ detail:0 cell:4 edit:0];

  [v5 setProperty:self->_weeklyNotificationData forKey:@"NotificationDataKey"];
  [v5 setProperty:@"SHSHeadphoneWeeklyNotificationsKey" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

  return v5;
}

- (id)headphoneLevelLimitGroupSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SHSHeadphoneLevelLimitKey"];
  if ([(SHSHeadphoneHearingProtectionController *)self shouldShowHealthFeatures]|| (_os_feature_enabled_impl() & 1) != 0)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_SELECTION_FOOTER");
    v6 = SHS_LocalizedStringForSounds(@"LEARN_MORE_IN_HEALTH_LINK");
    v7 = [v4 stringWithFormat:v5, v6];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v3 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v3 setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
    v10 = SHS_LocalizedStringForSounds(@"LEARN_MORE_IN_HEALTH_LINK");
    v18.location = [(__CFString *)v7 rangeOfString:v10];
    v11 = NSStringFromRange(v18);
    [v3 setProperty:v11 forKey:*MEMORY[0x277D3FF58]];

    v12 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v3 setProperty:v12 forKey:*MEMORY[0x277D3FF68]];

    v13 = *MEMORY[0x277D3FF50];
    v14 = @"openHealthArticleSafeListening";
    v15 = v3;
  }

  else
  {
    v7 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_SELECTION_FOOTER_NO_LINK");
    v13 = *MEMORY[0x277D3FF88];
    v15 = v3;
    v14 = v7;
  }

  [v15 setProperty:v14 forKey:v13];

  return v3;
}

- (id)headphoneLevelLimitSwitchSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_LABEL");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setHeadphoneLevelLimitEnabled_forSpecifier_ get:sel_getHeadphoneLevelLimitEnabled detail:0 cell:6 edit:0];

  [v5 setProperty:@"SHSHeadphoneLevelLimitSwitchKey" forKey:*MEMORY[0x277D3FFB8]];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[SHSHeadphoneHearingProtectionController headphoneLevelLimitLockedByRestrictions](self, "headphoneLevelLimitLockedByRestrictions") ^ 1}];
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)headphoneLevelLimitDescriptionSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [(SHSHeadphoneHearingProtectionController *)self updateHeadphoneLevelLimitText];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:sel_updateHeadphoneLevelLimitDescriptionText detail:0 cell:4 edit:0];

  [v5 setProperty:@"SHSHeadphoneLevelLimitDescriptionKey" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

  return v5;
}

- (id)headphoneLevelLimitSliderSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setHeadphoneLevelLimitValue_forSpecifier_ get:sel_getHeadphoneLevelLimitSetting detail:0 cell:5 edit:0];
  [v3 setProperty:@"SHSHeadphoneLevelLimitSliderKey" forKey:*MEMORY[0x277D3FFB8]];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v4 = MEMORY[0x277CBEC38];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C8]];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D400C0]];
  [v3 setProperty:&unk_2877307E8 forKey:*MEMORY[0x277D400E8]];
  [v3 setProperty:&unk_287730800 forKey:*MEMORY[0x277D3FEC0]];
  [v3 setProperty:&unk_287730818 forKey:*MEMORY[0x277D3FEB8]];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.2.fill"];
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  v7 = [v5 imageWithTintColor:v6 renderingMode:1];
  [v3 setProperty:v7 forKey:*MEMORY[0x277D400D0]];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.3.fill"];
  v9 = [MEMORY[0x277D75348] systemGrayColor];
  v10 = [v8 imageWithTintColor:v9 renderingMode:1];
  [v3 setProperty:v10 forKey:*MEMORY[0x277D400E0]];

  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FFC8]];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SHSHeadphoneHearingProtectionController headphoneLevelLimitLockedByRestrictions](self, "headphoneLevelLimitLockedByRestrictions") ^ 1}];
  [v3 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

  return v3;
}

- (id)headphoneAudioDevicesSpecifier
{
  if (MGGetBoolAnswer())
  {
    v3 = @"HEADPHONE_USB_AUDIO_ACCESSORIES";
  }

  else
  {
    v3 = @"HEADPHONE_LIGHTNING_ADAPTERS";
  }

  v4 = MEMORY[0x277D3FAD8];
  v5 = SHS_LocalizedStringForSounds(v3);
  v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v6 setIdentifier:v3];

  return v6;
}

- (id)updateHeadphoneLevelLimitText
{
  v2 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFB28]];

  v4 = MEMORY[0x277CCACA8];
  v5 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_SET_LEVEL");
  v6 = [v4 stringWithFormat:v5, objc_msgSend(v3, "intValue")];

  return v6;
}

- (id)updateHeadphoneLevelLimitDescriptionText
{
  v2 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFB28]];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 stringValue];
  v6 = [v4 stringWithFormat:@"HEADPHONE_LEVEL_LIMIT_%@_INFO", v5];
  v7 = SHS_LocalizedStringForSounds(v6);

  return v7;
}

- (void)openHealthPrivacySettings
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=HEALTH/HEADPHONE_AUDIO_LEVELS"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)openAboutHeadphoneNotifications
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SHSHeadphoneNotificationsController);
  v4 = objc_alloc_init(MEMORY[0x277D757A8]);
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
  [v4 setRightBarButtonItem:v5];
  v6 = objc_alloc(MEMORY[0x277D75780]);
  v7 = [(SHSHeadphoneHearingProtectionController *)self view];
  [v7 frame];
  v9 = v8;
  v10 = [(SHSHeadphoneHearingProtectionController *)self navigationController];
  v11 = [v10 navigationBar];
  [v11 frame];
  v12 = [v6 initWithFrame:{0.0, 0.0, v9}];

  v17[0] = v4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v12 setItems:v13];

  v14 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v12 setBarTintColor:v14];

  [v12 setTranslucent:0];
  [v12 _setHidesShadow:1];
  v15 = [(SHSHeadphoneNotificationsController *)v3 view];
  [v15 addSubview:v12];

  [(SHSHeadphoneHearingProtectionController *)self presentViewController:v3 animated:1 completion:0];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)openHealthArticleSafeListening
{
  if (_os_feature_enabled_impl())
  {
    v2 = @"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening";
  }

  else
  {
    v2 = @"x-apple-Health://HearingAppPlugin.healthplugin/WhyHearingHealthMatters";
  }

  v3 = *MEMORY[0x277D76620];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  [v3 openURL:v4 withCompletionHandler:0];
}

- (void)setHeadphoneLevelLimitEnabled:(id)a3 forSpecifier:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 BOOLValue])
  {
    v6 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitDescriptionSpecifier];
    v12[0] = v6;
    v7 = [(SHSHeadphoneHearingProtectionController *)self headphoneLevelLimitSliderSpecifier];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [(SHSHeadphoneHearingProtectionController *)self insertContiguousSpecifiers:v8 afterSpecifierID:@"SHSHeadphoneLevelLimitSwitchKey" animated:1];
  }

  else
  {
    [(SHSHeadphoneHearingProtectionController *)self removeSpecifierID:@"SHSHeadphoneLevelLimitDescriptionKey" animated:1];
    [(SHSHeadphoneHearingProtectionController *)self removeSpecifierID:@"SHSHeadphoneLevelLimitSliderKey" animated:1];
  }

  v9 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v10 = [v9 setPreferenceFor:*MEMORY[0x277CEFB20] value:v5];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getHeadphoneLevelLimitEnabled
{
  v2 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFB20]];

  return v3;
}

- (void)setHeadphoneLevelLimitValue:(id)a3 forSpecifier:(id)a4
{
  v12 = a3;
  v5 = [(SHSHeadphoneHearingProtectionController *)self levelLimitThreshold];

  if (v5 != v12)
  {
    [(SHSHeadphoneHearingProtectionController *)self setLevelLimitThreshold:v12];
    v6 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v7 = [v6 setPreferenceFor:*MEMORY[0x277CEFB28] value:v12];

    v8 = *MEMORY[0x277D3FC48];
    v9 = [*(&self->super.super.super.super.super.isa + v8) specifierForID:@"SHSHeadphoneLevelLimitDescriptionKey"];
    v10 = [(SHSHeadphoneHearingProtectionController *)self updateHeadphoneLevelLimitText];
    [v9 setName:v10];

    v11 = [*(&self->super.super.super.super.super.isa + v8) specifierForID:@"SHSHeadphoneLevelLimitDescriptionKey"];
    [(SHSHeadphoneHearingProtectionController *)self reloadSpecifier:v11];
  }
}

- (id)getHeadphoneLevelLimitSetting
{
  v2 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFB28]];

  return v3;
}

- (void)setHeadphoneNotificationsEnabled:(id)a3 forSpecifier:(id)a4
{
  v8 = a3;
  if ([v8 BOOLValue])
  {
    v5 = [(SHSHeadphoneHearingProtectionController *)self headphoneWeeklyNotificationDescriptionSpecifier];
    [(SHSHeadphoneHearingProtectionController *)self insertSpecifier:v5 afterSpecifierID:@"SHSHeadphoneNotificationsSwitchKey" animated:1];
  }

  else
  {
    [(SHSHeadphoneHearingProtectionController *)self removeSpecifierID:@"SHSHeadphoneWeeklyNotificationsKey" animated:1];
  }

  v6 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v7 = [v6 setPreferenceFor:*MEMORY[0x277CEFAF0] value:v8];
}

- (id)getHeadphoneNotificationsEnabled
{
  v2 = [(SHSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAF0]];

  return v3;
}

- (BOOL)headphoneLevelLimitLockedByRestrictions
{
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = [v2 containsObject:@"volumeLimit"];

  return v3;
}

- (id)weeklyNotificationCount:(id)a3
{
  v4 = [(SHSHeadphoneHearingProtectionController *)self numberFormatter];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_weeklyNotificationCount];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- (void)updateMonthlyNotificationCounts:(id)a3 withNames:(id)a4 forDates:(id)a5
{
  v28[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v23 setDateFormat:@"M"];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v27[0] = @"month";
      v26 = [v8 objectAtIndexedSubscript:v10];
      v28[0] = v26;
      v27[1] = @"date";
      v11 = [v9 objectAtIndexedSubscript:v10];
      v28[1] = v11;
      v27[2] = @"count";
      v12 = [v7 objectAtIndexedSubscript:v10];
      v28[2] = v12;
      v27[3] = @"desc";
      v13 = MEMORY[0x277CCACA8];
      v14 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_NOTIFICATIONS_VOICE_OVER_DESCRIPTION");
      [v7 objectAtIndexedSubscript:v10];
      v15 = v7;
      v17 = v16 = v9;
      v18 = [v13 stringWithFormat:v14, objc_msgSend(v17, "integerValue")];
      v28[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
      [(NSArray *)v25 setObject:v19 atIndexedSubscript:v10];

      v9 = v16;
      v7 = v15;

      ++v10;
    }

    while ([v8 count] > v10);
  }

  weeklyNotificationData = self->_weeklyNotificationData;
  self->_weeklyNotificationData = v25;

  v21 = [v7 valueForKeyPath:@"@sum.self"];
  -[SHSHeadphoneHearingProtectionController setWeeklyNotificationCount:](self, "setWeeklyNotificationCount:", [v21 intValue]);

  v22 = *MEMORY[0x277D85DE8];
}

- (id)startDate
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 components:2097404 fromDate:v2];
  [v4 setMonth:{objc_msgSend(v4, "month") - 5}];
  [v4 setDay:1];
  v5 = [v3 dateFromComponents:v4];
  v6 = [v3 startOfDayForDate:v5];

  return v6;
}

- (void)queryNotificationCountsFromDate:(id)a3 toDate:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v27 = a4;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  [v9 setLocale:v10];

  [v9 setDateFormat:@"MMM"];
  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  for (i = 0; i != 6; ++i)
  {
    [v11 setMonth:i];
    v13 = [v8 dateByAddingComponents:v11 toDate:v29 options:0];
    [v7 addObject:v13];
    v14 = [v9 stringFromDate:v13];
    [v5 addObject:v14];
    [v6 addObject:&unk_287730830];
  }

  v25 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
  v24 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v29 endDate:v27 options:0];
  v15 = objc_alloc(MEMORY[0x277CCAC98]);
  v26 = [v15 initWithKey:*MEMORY[0x277CCCD38] ascending:0];
  objc_initWeak(&location, self);
  v16 = objc_alloc(MEMORY[0x277CCD8D0]);
  v37[0] = v26;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __82__SHSHeadphoneHearingProtectionController_queryNotificationCountsFromDate_toDate___block_invoke;
  v30[3] = &unk_279BA6770;
  v18 = v5;
  v31 = v18;
  v19 = v9;
  v32 = v19;
  v20 = v6;
  v33 = v20;
  objc_copyWeak(&v35, &location);
  v21 = v7;
  v34 = v21;
  v22 = [v16 initWithSampleType:v25 predicate:v24 limit:0 sortDescriptors:v17 resultsHandler:v30];

  [(HKHealthStore *)self->_healthStore executeQuery:v22];
  objc_destroyWeak(&v35);

  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];
}

void __82__SHSHeadphoneHearingProtectionController_queryNotificationCountsFromDate_toDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v13 = [v10 endDate];
          v14 = [v12 stringFromDate:v13];
          v15 = [v11 indexOfObject:v14];

          if ([v10 value] == 1)
          {
            v16 = MEMORY[0x277CCABB0];
            v17 = [*(a1 + 48) objectAtIndexedSubscript:v15];
            v18 = [v16 numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];
            [*(a1 + 48) setObject:v18 atIndexedSubscript:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained updateMonthlyNotificationCounts:*(a1 + 48) withNames:*(a1 + 32) forDates:*(a1 + 56)];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SHSHeadphoneHearingProtectionController_queryNotificationCountsFromDate_toDate___block_invoke_2;
    block[3] = &unk_279BA66F8;
    objc_copyWeak(&v23, (a1 + 64));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v23);
    v4 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __82__SHSHeadphoneHearingProtectionController_queryNotificationCountsFromDate_toDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

@end