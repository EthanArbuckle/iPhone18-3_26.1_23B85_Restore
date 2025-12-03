@interface SHSSoundsPrefController
+ (id)BOOLeanCapabilitiesToTest;
- (BOOL)_isKeyHapticsSupported;
- (BOOL)_isVolumeSliderVisible;
- (SHSSoundsPrefController)init;
- (id)_keyboardFeedbackSpecifier;
- (id)_volumeSliderCell;
- (id)canChangeRingtoneWithButtons:(id)buttons;
- (id)detailTextForToneWithSpecifier:(id)specifier;
- (id)getFixedVolumeControlsFooterWithSwitch:(BOOL)switch;
- (id)getHeadphoneLevelLimitSetting;
- (id)getMicrophoneLabel:(id)label;
- (id)getSelectedHapticsOptionTitleWithSpecifier:(id)specifier;
- (id)getSilentModeFooterWithSwitch:(BOOL)switch;
- (id)silentModeEnabled:(id)enabled;
- (id)soundEffects:(id)effects;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)volume:(id)volume;
- (int)_deviceType;
- (int64_t)getSelectedHapticsOption;
- (unint64_t)ageOfToggleForSilentModeOn:(BOOL)on;
- (void)carrierBundleChange:(id)change;
- (void)dealloc;
- (void)didLock;
- (void)endInterruption;
- (void)handleInputNotification:(id)notification;
- (void)handleSilentModeNotification:(id)notification;
- (void)hapticsOptionsDidChange:(int64_t)change;
- (void)presentHapticsController:(id)controller;
- (void)refreshShouldHideAllVoicemailUI;
- (void)ringerControl:(id)control volumeValueDidChange:(float)change;
- (void)ringerControlDidObserveEffectiveSystemVolumeChange:(id)change;
- (void)serverDiedNotificationHandler:(id)handler;
- (void)setCanChangeRingtoneWithButtons:(id)buttons specifier:(id)specifier;
- (void)setFixedVolumeControls:(id)controls specifier:(id)specifier;
- (void)setLateNightMode:(id)mode specifier:(id)specifier;
- (void)setPlayKeyboardSound:(id)sound specifier:(id)specifier;
- (void)setPlayLockSound:(id)sound specifier:(id)specifier;
- (void)setShowInStatusBarEnabled:(id)enabled specifier:(id)specifier;
- (void)setSilentModeEnabled:(id)enabled specifier:(id)specifier;
- (void)setSoundEffects:(id)effects specifier:(id)specifier;
- (void)setSystemHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setUpSilentModeNotifications;
- (void)setVolume:(id)volume specifier:(id)specifier;
- (void)startRingtonePreview;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)unregisterSilentModeNotifications;
- (void)updateVoiceMailVisibility;
- (void)updateVolume;
- (void)viewDidLoad;
- (void)willBecomeActive;
- (void)willHideSlider;
- (void)willResignActive;
- (void)willShowSlider;
@end

@implementation SHSSoundsPrefController

+ (id)BOOLeanCapabilitiesToTest
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"any-telephony";
  v5[1] = @"ipad";
  v5[2] = @"ringer-switch";
  v5[3] = @"gqDnklGQnpv5ilgh5uHckw";
  v5[4] = @"AirDropCapability";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (SHSSoundsPrefController)init
{
  v19.receiver = self;
  v19.super_class = SHSSoundsPrefController;
  v2 = [(SHSSoundsPrefController *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(SHSRingerControl);
    ringerControl = v2->__ringerControl;
    v2->__ringerControl = v3;

    _ringerControl = [(SHSSoundsPrefController *)v2 _ringerControl];
    [_ringerControl setDelegate:v2];

    v6 = objc_alloc_init(SHSAudioPlayback);
    audioPlayback = v2->__audioPlayback;
    v2->__audioPlayback = v6;

    v2->_hasTelephony = PSGetCapabilityBoolAnswer();
    v8 = objc_alloc_init(MEMORY[0x277CC37B0]);
    client = v2->__client;
    v2->__client = v8;

    [(CoreTelephonyClient *)v2->__client setDelegate:v2];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didBackground name:*MEMORY[0x277D76660] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_willForeground name:*MEMORY[0x277D76758] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_handleInputNotification_ name:*MEMORY[0x277CB8600] object:0];

    [(SHSSoundsPrefController *)v2 setUpSilentModeNotifications];
    v13 = objc_alloc_init(MEMORY[0x277CEFB38]);
    audioSettingsManager = v2->_audioSettingsManager;
    v2->_audioSettingsManager = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    [v15 setMaximumFractionDigits:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v17 = [v15 stringFromNumber:v16];
    [v15 setNotANumberSymbol:v17];

    [(SHSSoundsPrefController *)v2 setNumberFormatter:v15];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(SHSSoundsPrefController *)v2 removeSpecifierID:@"BUILT_IN_SPEAKER_GROUP"];
      [(SHSSoundsPrefController *)v2 removeSpecifierID:@"VOLUME_LIMIT"];
    }
  }

  return v2;
}

- (int)_deviceType
{
  result = _deviceType___deviceType;
  if (!_deviceType___deviceType)
  {
    v3 = MGCopyAnswer();
    lowercaseString = [v3 lowercaseString];
    if ([lowercaseString isEqualToString:@"iphone"])
    {
      v5 = 1;
    }

    else if (PSGetCapabilityBoolAnswer())
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    _deviceType___deviceType = v5;

    return _deviceType___deviceType;
  }

  return result;
}

- (void)willShowSlider
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController willShowSlider]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  -[SHSSoundsPrefController setVolumeHUDsuppression:](self, "setVolumeHUDsuppression:", [_ringerControl canChangeRingtoneWithButtons]);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)willHideSlider
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController willHideSlider]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(SHSSoundsPrefController *)self setVolumeHUDsuppression:0];
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl setAppWantsVolumeChangeEvents:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v25.receiver = self;
  v25.super_class = SHSSoundsPrefController;
  pathCopy = path;
  v7 = [(SHSSoundsPrefController *)&v25 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SHSSoundsPrefController *)self indexForIndexPath:pathCopy, v25.receiver, v25.super_class];

  v9 = [(SHSSoundsPrefController *)self specifierAtIndex:v8];
  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:@"RING_VOLUME_SLIDER"];

  if (v11)
  {
    control = [v7 control];
    _minValueView = [control _minValueView];
    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];
    [_minValueView setTintColor:textColor];

    _maxValueView = [control _maxValueView];
    appearance2 = [MEMORY[0x277D3FA48] appearance];
    textColor2 = [appearance2 textColor];
    [_maxValueView setTintColor:textColor2];

    [(SHSSoundsPrefController *)self willShowSlider];
  }

  else
  {
    identifier2 = [v9 identifier];
    v20 = [identifier2 isEqualToString:@"FIXED_POSITION_VOLUME"];

    if (!v20)
    {
      goto LABEL_6;
    }

    control = [v7 control];
    specifiers = [(SHSSoundsPrefController *)self specifiers];
    v22 = [specifiers specifierForID:@"FIXED_POSITION_VOLUME_CONTROLS"];

    v23 = -[SHSSoundsPrefController getFixedVolumeControlsFooterWithSwitch:](self, "getFixedVolumeControlsFooterWithSwitch:", [control isOn]);
    [v22 setProperty:v23 forKey:*MEMORY[0x277D3FF88]];
  }

LABEL_6:

  return v7;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    specifier = [cellCopy specifier];
    identifier = [specifier identifier];
    v8 = [identifier isEqualToString:@"RING_VOLUME_SLIDER"];

    if (v8)
    {
      [(SHSSoundsPrefController *)self willHideSlider];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)refreshShouldHideAllVoicemailUI
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_265896000, v0, OS_LOG_TYPE_ERROR, "%s: Error retrieving subscription info: %{public}@.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceMailVisibility
{
  _cachedShouldHideValue = [(SHSSoundsPrefController *)self _cachedShouldHideValue];

  if (!_cachedShouldHideValue)
  {
    [(SHSSoundsPrefController *)self refreshShouldHideAllVoicemailUI];
  }

  _cachedShouldHideValue2 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];
  bOOLValue = [_cachedShouldHideValue2 BOOLValue];

  _voiceMailSpecifier = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
  v7 = [(SHSSoundsPrefController *)self containsSpecifier:_voiceMailSpecifier];

  if (v7 && bOOLValue)
  {
    _voiceMailSpecifier2 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [(SHSSoundsPrefController *)self removeSpecifier:?];
  }

  else
  {
    if ((v7 | bOOLValue))
    {
      return;
    }

    _voiceMailSpecifier2 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [(SHSSoundsPrefController *)self insertSpecifier:_voiceMailSpecifier2 atIndex:[(SHSSoundsPrefController *)self _voiceMailSpecifierIndex]];
  }
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_59;
  }

  v78 = *MEMORY[0x277D3FC48];
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v79.receiver = self;
  v79.super_class = SHSSoundsPrefController;
  v5 = [(SHSSoundsPrefController *)&v79 loadSpecifiersFromPlistName:@"Sounds" target:self];
  v6 = [v4 initWithArray:v5];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_inRetailKioskMode = [currentDevice sf_inRetailKioskMode];

  v9 = objc_opt_new();
  if ((sf_inRetailKioskMode & 1) == 0)
  {
    if ((PSGetCapabilityBoolAnswer() & 1) == 0)
    {
      v10 = MEMORY[0x277D3FAD8];
      v11 = SHS_LocalizedStringForSounds(@"SILENT_MODE");
      v12 = [v10 preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      v13 = *MEMORY[0x277D3FFB8];
      [v12 setProperty:@"SILENT_MODE_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v14 = [(SHSSoundsPrefController *)self silentModeEnabled:0];
      v15 = -[SHSSoundsPrefController getSilentModeFooterWithSwitch:](self, "getSilentModeFooterWithSwitch:", [v14 BOOLValue]);
      [v12 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];

      v16 = MEMORY[0x277D3FAD8];
      v17 = SHS_LocalizedStringForSounds(@"SILENT_MODE");
      v18 = [v16 preferenceSpecifierNamed:v17 target:self set:sel_setSilentModeEnabled_specifier_ get:sel_silentModeEnabled_ detail:0 cell:6 edit:0];

      [v18 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v18 setProperty:@"SILENT_MODE" forKey:v13];
      [v9 addObject:v12];
      [v9 addObject:v18];
    }

    if ((PSGetCapabilityBoolAnswer() & 1) == 0 && (PSGetCapabilityBoolAnswer() & 1) == 0)
    {
      v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      v20 = MEMORY[0x277D3FAD8];
      v21 = SHS_LocalizedStringForSounds(@"SHOW_IN_STATUS_BAR");
      v22 = [v20 preferenceSpecifierNamed:v21 target:self set:sel_setShowInStatusBarEnabled_specifier_ get:sel_showInStatusBarEnabled_ detail:0 cell:6 edit:0];

      [v22 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];
      [v22 setProperty:@"com.apple.springboard" forKey:*MEMORY[0x277D3FEF8]];
      [v22 setProperty:@"SBShowRingerState" forKey:*MEMORY[0x277D3FFF0]];
      [v9 addObject:v19];
      [v9 addObject:v22];
    }
  }

  if ([v9 count])
  {
    v23 = [v9 count];
    v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v23}];
    [v6 insertObjects:v9 atIndexes:v24];
  }

  if ((sf_inRetailKioskMode & 1) == 0)
  {
    v25 = [v6 specifierForID:@"HAPTICS"];
    if ([v6 indexOfObject:v25] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v25 setButtonAction:sel_presentHapticsController_];
      [v25 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v26 = [v6 specifierForID:@"Voicemail"];
  [(SHSSoundsPrefController *)self set_voiceMailSpecifier:v26];

  _voiceMailSpecifier = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
  -[SHSSoundsPrefController set_voiceMailSpecifierIndex:](self, "set_voiceMailSpecifierIndex:", [v6 indexOfObject:_voiceMailSpecifier]);

  _cachedShouldHideValue = [(SHSSoundsPrefController *)self _cachedShouldHideValue];

  if (!_cachedShouldHideValue)
  {
    [(SHSSoundsPrefController *)self refreshShouldHideAllVoicemailUI];
  }

  v76 = sf_inRetailKioskMode;
  _cachedShouldHideValue2 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];
  bOOLValue = [_cachedShouldHideValue2 BOOLValue];

  if (bOOLValue)
  {
    _voiceMailSpecifier2 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [v6 removeObject:_voiceMailSpecifier2];
  }

  _deviceType = [(SHSSoundsPrefController *)self _deviceType];
  v33 = [v6 specifierForID:@"RING_VOLUME_SLIDER"];
  v34 = [MEMORY[0x277D755D0] configurationWithPointSize:17.0];
  v35 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.fill" withConfiguration:v34];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v37 = [v35 imageWithTintColor:systemGrayColor renderingMode:1];
  [v33 setProperty:v37 forKey:*MEMORY[0x277D400D0]];

  v77 = v34;
  v38 = v34;
  v39 = v33;
  v40 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.wave.3.fill" withConfiguration:v38];
  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  v42 = [v40 imageWithTintColor:systemGrayColor2 renderingMode:1];
  [v33 setProperty:v42 forKey:*MEMORY[0x277D400E0]];

  if ((_deviceType - 1) <= 1)
  {
    v43 = [v6 specifierForID:@"RINGER_AND_ALERT_GROUP"];
    v44 = v43;
    if (v76)
    {
      [v43 setProperty:&stru_28772CD00 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
      canChangeRingtoneWithButtons = [_ringerControl canChangeRingtoneWithButtons];

      if (canChangeRingtoneWithButtons)
      {
        v47 = @"RING_VOL_CAN_BE_ADJUSTED";
      }

      else
      {
        v47 = @"RING_VOL_CANNOT_BE_ADJUSTED";
      }

      v48 = SHS_LocalizedStringForSounds(v47);
      [v44 setProperty:v48 forKey:*MEMORY[0x277D3FF88]];
    }

    v49 = [v6 indexOfObject:v44];
    if (_deviceType == 1 && v44 && (v50 = v49, v49 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [v6 removeObject:v39];
      [v6 insertObject:v39 atIndex:v50 + 1];
    }

    else if (_deviceType != 1)
    {
LABEL_35:

      goto LABEL_36;
    }

    if (_os_feature_enabled_impl() && [SHSDualSIMToneHelper shouldShowSIMBasedToneCustomizationForAlertType:1])
    {
      v51 = [v6 specifierForID:@"Ringtone"];
      if (v51)
      {
        [v51 setDetailControllerClass:objc_opt_class()];
      }
    }

    goto LABEL_35;
  }

LABEL_36:
  v52 = [v6 specifierForID:@"SOUND_SWITCHES"];
  if ((PSGetCapabilityBoolAnswer() & 1) != 0 || (PSGetCapabilityBoolAnswer() & 1) == 0)
  {
    if (v52)
    {
      v53 = SHS_LocalizedStringForSounds(@"SOUND_ONLY_SWITCHES_FOOTER");
      [v52 setProperty:v53 forKey:*MEMORY[0x277D3FF88]];
    }

    v54 = [v6 specifierForID:@"RING_VOLUME_SLIDER"];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [v54 setProperty:v55 forKey:*MEMORY[0x277D3FEC0]];
  }

  if (PSGetCapabilityBoolAnswer())
  {
    if ((PSGetCapabilityBoolAnswer() & 1) == 0)
    {
      v56 = SHS_LocalizedStringForSounds(@"SOUNDS_AND_HAPTICS");
      [(SHSSoundsPrefController *)self setTitle:v56];

      v57 = [v6 indexOfSpecifierWithID:@"LOCK_SOUND_SWITCH"];
      if (v57 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v58 = v57;
        v59 = [v6 specifierForID:@"SOUND_SWITCHES"];
        if (v59)
        {
          v60 = SHS_LocalizedStringForSounds(@"SYSTEM_HAPTICS_FOOTER");
          [v59 setProperty:v60 forKey:*MEMORY[0x277D3FF88]];
        }

        v61 = MEMORY[0x277D3FAD8];
        v62 = SHS_LocalizedStringForSounds(@"SYSTEM_HAPTICS");
        v63 = [v61 preferenceSpecifierNamed:v62 target:self set:sel_setSystemHapticsEnabled_specifier_ get:sel_systemHapticsEnabled_ detail:0 cell:6 edit:0];

        [v63 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];
        [v63 setProperty:@"com.apple.preferences.sounds" forKey:*MEMORY[0x277D3FEF8]];
        [v63 setProperty:@"effects-haptic" forKey:*MEMORY[0x277D3FFF0]];
        [v6 insertObject:v63 atIndex:v58 + 1];
      }
    }
  }

  if (_os_feature_enabled_impl() && (!PSGetCapabilityBoolAnswer() || _os_feature_enabled_impl()))
  {
    v64 = [v6 specifierForID:@"HEADPHONE_LEVEL_LIMIT_SETTING"];
    v65 = SHS_LocalizedStringForSounds(@"HEADPHONE_HEARING_PROTECTION");
    [v64 setName:v65];
  }

  v66 = [v6 specifierForID:@"LATE_NIGHT_MODE"];
  if (v66)
  {
    v67 = SHS_LocalizedStringForSounds(@"LATE_NIGHT_MODE_FOOTER");
    [v66 setProperty:v67 forKey:*MEMORY[0x277D3FF88]];
  }

  if ([(SHSSoundsPrefController *)self _isKeyHapticsSupported])
  {
    v68 = [v6 specifierForID:@"KEYBOARD_SOUND_SWITCH"];
    if (v68)
    {
      v69 = v68;
      v70 = [v6 indexOfObject:v68];
      _keyboardFeedbackSpecifier = [(SHSSoundsPrefController *)self _keyboardFeedbackSpecifier];

      [v6 replaceObjectAtIndex:v70 withObject:_keyboardFeedbackSpecifier];
    }
  }

  if (_os_feature_enabled_impl())
  {
    profileManagementSpecifier = [MEMORY[0x277D0FB90] profileManagementSpecifier];
    [profileManagementSpecifier setIdentifier:@"PERSONALIZED_SPATIAL_AUDIO"];
    [profileManagementSpecifier setProperty:@"PERSONALIZED_SPATIAL_AUDIO" forKey:*MEMORY[0x277D3FFB8]];
    profileManagementSpecifier2 = [MEMORY[0x277D0FB90] profileManagementSpecifier];
    [v6 addObject:profileManagementSpecifier2];
  }

  v74 = *(&self->super.super.super.super.super.isa + v78);
  *(&self->super.super.super.super.super.isa + v78) = v6;

  v3 = *(&self->super.super.super.super.super.isa + v78);
LABEL_59:

  return v3;
}

- (void)setUpSilentModeNotifications
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_265896000, a2, OS_LOG_TYPE_ERROR, "Failed to subscribe for notifications from AVSystemController with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serverDiedNotificationHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SHSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController serverDiedNotificationHandler:]";
    _os_log_impl(&dword_265896000, v4, OS_LOG_TYPE_DEFAULT, "%s: audiomxd died. Re-subscribing notifications.", &v6, 0xCu);
  }

  [(SHSSoundsPrefController *)self unregisterSilentModeNotifications];
  [(SHSSoundsPrefController *)self setUpSilentModeNotifications];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleSilentModeNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D26D60]];

  v6 = SHSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v5 BOOLValue];
    v8 = @"OFF";
    if (bOOLValue)
    {
      v8 = @"ON";
    }

    *buf = 136315394;
    v15 = "[SHSSoundsPrefController handleSilentModeNotification:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_265896000, v6, OS_LOG_TYPE_DEFAULT, "%s: Silent mode is %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SHSSoundsPrefController_handleSilentModeNotification___block_invoke;
  v11[3] = &unk_279BA6798;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __56__SHSSoundsPrefController_handleSilentModeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained updateSilentModeGroupFooterWithNewValue:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
  [WeakRetained beginUpdates];
  v3 = [WeakRetained table];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v2, "section")}];
  [v3 _reloadSectionHeaderFooters:v4 withRowAnimation:100];

  [WeakRetained reloadSpecifierID:@"SILENT_MODE" animated:1];
  [WeakRetained endUpdates];
}

- (void)unregisterSilentModeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26D58] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D26D40] object:0];
}

- (void)setSilentModeEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SHSSoundsPrefController_setSilentModeEnabled_specifier___block_invoke;
  v8[3] = &unk_279BA67C0;
  v9 = enabledCopy;
  selfCopy = self;
  v7 = enabledCopy;
  dispatch_async(v6, v8);
}

void __58__SHSSoundsPrefController_setSilentModeEnabled_specifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  [v2 setSilentMode:objc_msgSend(*(a1 + 32) untilTime:"BOOLValue") reason:0 clientType:{@"User toggled in Sound and Haptics in Settings", 7}];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SHSSoundsPrefController_setSilentModeEnabled_specifier___block_invoke_2;
  block[3] = &unk_279BA67C0;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__SHSSoundsPrefController_setSilentModeEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) updateSilentModeGroupFooterWithNewValue:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  v2 = [*(a1 + 32) table];
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v4, "section")}];
  [v2 _reloadSectionHeaderFooters:v3 withRowAnimation:100];
}

- (id)silentModeEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(mEMORY[0x277D26E58], "getSilentMode")}];

  return v5;
}

- (void)setShowInStatusBarEnabled:(id)enabled specifier:(id)specifier
{
  [(SHSSoundsPrefController *)self setPreferenceValue:enabled specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CCA858] object:0];
}

- (void)handleInputNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SHSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SHSSoundsPrefController handleInputNotification:]";
    _os_log_impl(&dword_265896000, v4, OS_LOG_TYPE_DEFAULT, "%s: AVInputContextInputDeviceDidChangeNotification received", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SHSSoundsPrefController_handleInputNotification___block_invoke;
  block[3] = &unk_279BA66D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)getMicrophoneLabel:(id)label
{
  v50 = *MEMORY[0x277D85DE8];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  v4 = *MEMORY[0x277CB8038];
  v5 = *MEMORY[0x277CB80A8];
  v44 = 0;
  [auxiliarySession setCategory:v4 mode:v5 options:5 error:&v44];
  v6 = v44;
  if (v6)
  {
    v7 = SHSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SHSSoundsPrefController getMicrophoneLabel:];
    }
  }

  opaqueSessionID = [auxiliarySession opaqueSessionID];
  v9 = [objc_alloc(MEMORY[0x277CB8690]) initWithDeviceFeatures:1];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:opaqueSessionID];
  [v9 setAudioSessionID:v10];

  [v9 setDiscoveryMode:2 forClientIdentifiers:MEMORY[0x277CBEBF8]];
  fallbackInputDevice = [v9 fallbackInputDevice];
  mEMORY[0x277CB8678] = [MEMORY[0x277CB8678] sharedSystemAudioInputContext];
  v13 = [mEMORY[0x277CB8678] userPreferredInputDevice:0];

  availableInputDevices = [v9 availableInputDevices];
  v15 = SHSLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 description];
    *buf = 136315394;
    v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
    v48 = 2112;
    v49 = v16;
    _os_log_impl(&dword_265896000, v15, OS_LOG_TYPE_DEFAULT, "%s: Default Input: %@", buf, 0x16u);
  }

  v17 = SHSLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
    v48 = 2112;
    v49 = availableInputDevices;
    _os_log_impl(&dword_265896000, v17, OS_LOG_TYPE_DEFAULT, "%s: Inputs: %@", buf, 0x16u);
  }

  if (v13)
  {
    v38 = fallbackInputDevice;
    v39 = v6;
    v18 = auxiliarySession;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = availableInputDevices;
    deviceName7 = availableInputDevices;
    v20 = [(__CFString *)deviceName7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(deviceName7);
          }

          deviceID = [*(*(&v40 + 1) + 8 * i) deviceID];
          deviceID2 = [v13 deviceID];
          v26 = [deviceID isEqualToString:deviceID2];

          if (v26)
          {
            v30 = SHSLogForCategory(0);
            auxiliarySession = v18;
            fallbackInputDevice = v38;
            v6 = v39;
            availableInputDevices = v37;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              deviceName = [v13 deviceName];
              if (deviceName)
              {
                deviceName2 = [v13 deviceName];
              }

              else
              {
                deviceName2 = &stru_28772CD00;
              }

              *buf = 136315394;
              v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
              v48 = 2112;
              v49 = deviceName2;
              _os_log_impl(&dword_265896000, v30, OS_LOG_TYPE_DEFAULT, "%s: returning default: %@", buf, 0x16u);
              if (deviceName)
              {
              }
            }

            deviceName3 = [v13 deviceName];
            if (deviceName3)
            {
              deviceName4 = [v13 deviceName];
            }

            else
            {
              deviceName4 = &stru_28772CD00;
            }

            goto LABEL_40;
          }
        }

        v21 = [(__CFString *)deviceName7 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    auxiliarySession = v18;
    fallbackInputDevice = v38;
    v6 = v39;
    availableInputDevices = v37;
  }

  v27 = SHSLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    deviceName5 = [fallbackInputDevice deviceName];
    if (deviceName5)
    {
      deviceName6 = [fallbackInputDevice deviceName];
    }

    else
    {
      deviceName6 = &stru_28772CD00;
    }

    *buf = 136315394;
    v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
    v48 = 2112;
    v49 = deviceName6;
    _os_log_impl(&dword_265896000, v27, OS_LOG_TYPE_DEFAULT, "%s: returning fallback: %@", buf, 0x16u);
    if (deviceName5)
    {
    }
  }

  deviceName7 = [fallbackInputDevice deviceName];
  if (deviceName7)
  {
    deviceName4 = [fallbackInputDevice deviceName];
  }

  else
  {
    deviceName4 = &stru_28772CD00;
  }

LABEL_40:

  v35 = *MEMORY[0x277D85DE8];

  return deviceName4;
}

- (void)presentHapticsController:(id)controller
{
  controllerCopy = controller;
  v6 = [_TtC24SoundsAndHapticsSettings24SHSViewControllerFactory createHapticsOptionsViewController:[(SHSSoundsPrefController *)self getSelectedHapticsOption] delegate:self];
  name = [controllerCopy name];

  [v6 setTitle:name];
  [(SHSSoundsPrefController *)self showController:v6 animate:1];
}

- (id)getSilentModeFooterWithSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = @"SILENT_MODE_ON_FOOTER";
  }

  else
  {
    v3 = @"SILENT_MODE_OFF_FOOTER";
  }

  v4 = SHS_LocalizedStringForSounds(v3);

  return v4;
}

- (id)getFixedVolumeControlsFooterWithSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = @"FIXED_POSITION_VOLUME_ON_FOOTER";
  }

  else
  {
    v3 = @"FIXED_POSITION_VOLUME_OFF_FOOTER";
  }

  v4 = SHS_LocalizedStringForSounds(v3);

  return v4;
}

- (void)setFixedVolumeControls:(id)controls specifier:(id)specifier
{
  controlsCopy = controls;
  [(SHSSoundsPrefController *)self setPreferenceValue:controlsCopy specifier:specifier];
  specifiers = [(SHSSoundsPrefController *)self specifiers];
  v10 = [specifiers specifierForID:@"FIXED_POSITION_VOLUME_CONTROLS"];

  bOOLValue = [controlsCopy BOOLValue];
  v9 = [(SHSSoundsPrefController *)self getFixedVolumeControlsFooterWithSwitch:bOOLValue];
  [v10 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

  [(SHSSoundsPrefController *)self reloadSpecifierID:@"FIXED_POSITION_VOLUME_CONTROLS" animated:1];
}

- (void)setSystemHapticsEnabled:(id)enabled specifier:(id)specifier
{
  [(SHSSoundsPrefController *)self setPreferenceValue:enabled specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CCA858] object:0];
}

- (void)setLateNightMode:(id)mode specifier:(id)specifier
{
  [(SHSSoundsPrefController *)self setPreferenceValue:mode specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CCA858] object:0];
}

- (void)didLock
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController didLock]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting ringtone playback to end.", &v6, 0xCu);
  }

  _audioPlayback = [(SHSSoundsPrefController *)self _audioPlayback];
  [_audioPlayback playRingtoneWithIdentifier:0 loop:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateVolume
{
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl reload];
}

- (void)endInterruption
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController endInterruption]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting ringtone playback to end.", &v6, 0xCu);
  }

  _audioPlayback = [(SHSSoundsPrefController *)self _audioPlayback];
  [_audioPlayback playRingtoneWithIdentifier:0 loop:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SHSSoundsPrefController;
  [(SHSSoundsPrefController *)&v6 viewDidLoad];
  table = [(SHSSoundsPrefController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)willResignActive
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SHSSoundsPrefController willResignActive]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  isSuspendedUnderLock = [mEMORY[0x277D75128] isSuspendedUnderLock];

  if ((isSuspendedUnderLock & 1) == 0)
  {
    [(SHSSoundsPrefController *)self endInterruption];
  }

  [(SHSSoundsPrefController *)self willHideSlider];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)willBecomeActive
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSSoundsPrefController willBecomeActive]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl canChangeRingtoneWithButtons];

  [(SHSSoundsPrefController *)self updateVolume];
  if ([(SHSSoundsPrefController *)self _isVolumeSliderVisible])
  {
    [(SHSSoundsPrefController *)self willShowSlider];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SHSSoundsPrefController *)self endInterruption];
  v4.receiver = self;
  v4.super_class = SHSSoundsPrefController;
  [(SHSSoundsPrefController *)&v4 dealloc];
}

- (void)setSoundEffects:(id)effects specifier:(id)specifier
{
  intValue = [effects intValue];
  if (intValue == 3)
  {
    v6 = *MEMORY[0x277CBED28];
    v5 = *MEMORY[0x277CBED28];
  }

  else
  {
    v5 = *MEMORY[0x277CBED10];
    if (intValue == 2)
    {
      v6 = *MEMORY[0x277CBED28];
    }

    else
    {
      v6 = *MEMORY[0x277CBED10];
      if (intValue == 1)
      {
        v5 = *MEMORY[0x277CBED28];
      }
    }
  }

  v7 = *MEMORY[0x277CBF040];
  v8 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"sound-effects-speaker", v5, @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSetValue(@"sound-effects-headphones", v6, @"com.apple.springboard", v7, v8);
  CFPreferencesSynchronize(@"com.apple.springboard", v7, v8);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.sound-effects-speaker.changed", 0, 0, 1u);

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.sound-effects-headphones.changed", 0, 0, 1u);
}

- (id)soundEffects:(id)effects
{
  *keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"sound-effects-speaker", @"com.apple.springboard", &keyExistsAndHasValidFormat[1]);
  v4 = CFPreferencesGetAppBooleanValue(@"sound-effects-headphones", @"com.apple.springboard", keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat[1])
  {
    CFPreferencesSetValue(@"sound-effects-speaker", *MEMORY[0x277CBED28], @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    AppBooleanValue = 1;
  }

  if (keyExistsAndHasValidFormat[0])
  {
    v5 = 1;
  }

  else
  {
    CFPreferencesSetValue(@"sound-effects-headphones", *MEMORY[0x277CBED28], @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v5 = keyExistsAndHasValidFormat[0] != 0;
    v4 = 1;
  }

  if (!keyExistsAndHasValidFormat[1] || !v5)
  {
    CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  if (AppBooleanValue | v4)
  {
    if (!AppBooleanValue || v4)
    {
      if (AppBooleanValue || !v4)
      {
        if (v4)
        {
          v9 = AppBooleanValue == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];

  return v7;
}

- (void)startRingtonePreview
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SHSSoundsPrefController startRingtonePreview]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v4 = MEMORY[0x277D82BB8];
  _audioPlayback = [(SHSSoundsPrefController *)self _audioPlayback];
  [v4 cancelPreviousPerformRequestsWithTarget:_audioPlayback selector:sel_stopPlayback object:0];

  if (self->_hasTelephony)
  {
    _audioPlayback2 = [(SHSSoundsPrefController *)self _audioPlayback];
    isPlayingRingtone = [_audioPlayback2 isPlayingRingtone];

    if ((isPlayingRingtone & 1) == 0)
    {
      v8 = SHSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromTLAlertType();
        v15 = 136315394;
        v16 = "[SHSSoundsPrefController startRingtonePreview]";
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s: Requesting playback of current ringtone for alert type '%{public}@'.", &v15, 0x16u);
      }

      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      v11 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:1];

      _audioPlayback3 = [(SHSSoundsPrefController *)self _audioPlayback];
      [_audioPlayback3 playRingtoneWithIdentifier:v11 loop:1];
    }
  }

  _audioPlayback4 = [(SHSSoundsPrefController *)self _audioPlayback];
  [_audioPlayback4 performSelector:sel_stopPlayback withObject:0 afterDelay:2.0];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)volume:(id)volume
{
  v3 = MEMORY[0x277CCABB0];
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl volume];
  v5 = [v3 numberWithFloat:?];

  return v5;
}

- (void)setVolume:(id)volume specifier:(id)specifier
{
  volumeCopy = volume;
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl volume];
  v7 = v6;
  [volumeCopy floatValue];
  v9 = v8;

  if (v7 != v9)
  {
    [volumeCopy floatValue];
    v11 = v10;
    _ringerControl2 = [(SHSSoundsPrefController *)self _ringerControl];
    LODWORD(v13) = v11;
    [_ringerControl2 setVolume:v13];

    [(SHSSoundsPrefController *)self startRingtonePreview];
  }
}

- (id)detailTextForToneWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"alertType"];
  v6 = TLAlertTypeFromString();

  if ([(SHSSoundsPrefController *)self _deviceType]== 1 && _os_feature_enabled_impl() && [SHSDualSIMToneHelper shouldShowSIMBasedToneCustomizationForAlertType:v6])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [specifierCopy propertyForKey:@"accountIdentifier"];
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v10 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:v6 topic:v8];

  if ((PSGetCapabilityBoolAnswer() & 1) == 0 && PSGetCapabilityBoolAnswer())
  {
    mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
    v12 = [mEMORY[0x277D71F88] currentVibrationIdentifierForAlertType:v6 topic:v8];

    if ([v10 isEqualToString:*MEMORY[0x277D72068]] && !objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277D72070]))
    {
      v7 = SHS_LocalizedStringForSounds(@"VIBRATE_ONLY");

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [mEMORY[0x277D71F78]2 nameForToneIdentifier:v10];

LABEL_11:
LABEL_12:

  return v7;
}

- (void)setPlayKeyboardSound:(id)sound specifier:(id)specifier
{
  [(SHSSoundsPrefController *)self setPreferenceValue:sound specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CCA858];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [defaultCenter postNotificationName:v4 object:standardUserDefaults];
}

- (void)setPlayLockSound:(id)sound specifier:(id)specifier
{
  [(SHSSoundsPrefController *)self setPreferenceValue:sound specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CCA858];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [defaultCenter postNotificationName:v4 object:standardUserDefaults];
}

- (id)canChangeRingtoneWithButtons:(id)buttons
{
  v3 = MEMORY[0x277CCABB0];
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  v5 = [v3 numberWithBool:{objc_msgSend(_ringerControl, "canChangeRingtoneWithButtons")}];

  return v5;
}

- (void)setCanChangeRingtoneWithButtons:(id)buttons specifier:(id)specifier
{
  buttonsCopy = buttons;
  bOOLValue = [buttonsCopy BOOLValue];
  _ringerControl = [(SHSSoundsPrefController *)self _ringerControl];
  [_ringerControl setCanChangeRingtoneWithButtons:bOOLValue];

  -[SHSSoundsPrefController setVolumeHUDsuppression:](self, "setVolumeHUDsuppression:", [buttonsCopy BOOLValue]);
  v7 = [(SHSSoundsPrefController *)self specifierForID:@"RINGER_AND_ALERT_GROUP"];
  v8 = [(SHSSoundsPrefController *)self indexPathForSpecifier:v7];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_inRetailKioskMode = [currentDevice sf_inRetailKioskMode];

  if (sf_inRetailKioskMode)
  {
    [v7 setObject:&stru_28772CD00 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    if ([buttonsCopy BOOLValue])
    {
      v11 = @"RING_VOL_CAN_BE_ADJUSTED";
    }

    else
    {
      v11 = @"RING_VOL_CANNOT_BE_ADJUSTED";
    }

    v12 = SHS_LocalizedStringForSounds(v11);
    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  table = [(SHSSoundsPrefController *)self table];
  v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v8, "section")}];
  [table _reloadSectionHeaderFooters:v14 withRowAnimation:100];
}

- (id)getHeadphoneLevelLimitSetting
{
  if (_os_feature_enabled_impl() && (!PSGetCapabilityBoolAnswer() || (_os_feature_enabled_impl() & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    audioSettingsManager = [(SHSSoundsPrefController *)self audioSettingsManager];
    v5 = [audioSettingsManager getPreferenceFor:*MEMORY[0x277CEFB20]];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      audioSettingsManager2 = [(SHSSoundsPrefController *)self audioSettingsManager];
      v8 = [audioSettingsManager2 getPreferenceFor:*MEMORY[0x277CEFB28]];

      v9 = MEMORY[0x277CCACA8];
      v10 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_SET_LEVEL");
      v3 = [v9 stringWithFormat:v10, objc_msgSend(v8, "intValue")];
    }

    else
    {
      v3 = SHS_LocalizedStringForSounds(@"HEADPHONE_LEVEL_LIMIT_SET_OFF");
    }
  }

  return v3;
}

- (BOOL)_isVolumeSliderVisible
{
  _volumeSliderCell = [(SHSSoundsPrefController *)self _volumeSliderCell];
  v3 = _volumeSliderCell != 0;

  return v3;
}

- (id)_volumeSliderCell
{
  v3 = [(SHSSoundsPrefController *)self specifierForID:@"RING_VOLUME_SLIDER"];
  v4 = [(SHSSoundsPrefController *)self indexPathForSpecifier:v3];

  table = [(SHSSoundsPrefController *)self table];
  v6 = [table cellForRowAtIndexPath:v4];

  return v6;
}

- (void)ringerControlDidObserveEffectiveSystemVolumeChange:(id)change
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SHSSoundsPrefController ringerControlDidObserveEffectiveSystemVolumeChange:]";
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    view = [(SHSSoundsPrefController *)self view];
    window = [view window];

    if (window)
    {
      if ([(SHSSoundsPrefController *)self _isVolumeSliderVisible])
      {
        _volumeSliderCell = [(SHSSoundsPrefController *)self _volumeSliderCell];
        control = [_volumeSliderCell control];
        isTracking = [control isTracking];

        if (!isTracking)
        {
          [(SHSSoundsPrefController *)self startRingtonePreview];
          goto LABEL_16;
        }

        v11 = SHSLogForCategory(0);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315138;
        v17 = "[SHSSoundsPrefController ringerControlDidObserveEffectiveSystemVolumeChange:]";
        v12 = "%s: Volume slider is active and in use, ignoring.";
        goto LABEL_14;
      }

      v11 = SHSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[SHSSoundsPrefController ringerControlDidObserveEffectiveSystemVolumeChange:]";
        v12 = "%s: Volume slider not on screen, ignoring.";
        goto LABEL_14;
      }
    }

    else
    {
      v11 = SHSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[SHSSoundsPrefController ringerControlDidObserveEffectiveSystemVolumeChange:]";
        v12 = "%s: View is not on screen, ignoring.";
LABEL_14:
        _os_log_impl(&dword_265896000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SHSSoundsPrefController_ringerControlDidObserveEffectiveSystemVolumeChange___block_invoke;
  v14[3] = &unk_279BA67C0;
  v14[4] = self;
  v15 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)ringerControl:(id)control volumeValueDidChange:(float)change
{
  v17 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7 = SHSLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[SHSSoundsPrefController ringerControl:volumeValueDidChange:]";
      _os_log_impl(&dword_265896000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if ([(SHSSoundsPrefController *)self _isVolumeSliderVisible])
    {
      _volumeSliderCell = [(SHSSoundsPrefController *)self _volumeSliderCell];
      *&v9 = change;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      [_volumeSliderCell setValue:v10];
    }

    [(SHSSoundsPrefController *)self reloadSpecifierID:@"RING_VOLUME_SLIDER"];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SHSSoundsPrefController_ringerControl_volumeValueDidChange___block_invoke;
    block[3] = &unk_279BA67E8;
    block[4] = self;
    v13 = controlCopy;
    changeCopy = change;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(SHSSoundsPrefController *)self set_cachedShouldHideValue:0];
    [(SHSSoundsPrefController *)self updateVoiceMailVisibility];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__SHSSoundsPrefController_carrierBundleChange___block_invoke;
    v5[3] = &unk_279BA67C0;
    v5[4] = self;
    v6 = changeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)hapticsOptionsDidChange:(int64_t)change
{
  v4 = change < 3;
  v5 = change ^ 1;
  [(SHSSoundsPrefController *)self setSilentModeOn:v4 & (3u >> (change & 7))];
  [(SHSSoundsPrefController *)self setSilentModeOff:v4 & v5];

  [(SHSSoundsPrefController *)self reloadSpecifierID:@"HAPTICS" animated:1];
}

- (id)getSelectedHapticsOptionTitleWithSpecifier:(id)specifier
{
  getSelectedHapticsOption = [(SHSSoundsPrefController *)self getSelectedHapticsOption];
  if (getSelectedHapticsOption > 2)
  {
    v4 = @"NEVER_PLAY";
  }

  else
  {
    v4 = off_279BA6808[getSelectedHapticsOption];
  }

  v5 = SHS_LocalizedStringForSounds(v4);

  return v5;
}

- (int64_t)getSelectedHapticsOption
{
  *keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"silent-vibrate", @"com.apple.springboard", &keyExistsAndHasValidFormat[1]);
  v3 = CFPreferencesGetAppBooleanValue(@"ring-vibrate", @"com.apple.springboard", keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat[1])
  {
    CFPreferencesSetValue(@"silent-vibrate", *MEMORY[0x277CBED28], @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    AppBooleanValue = 1;
  }

  if (keyExistsAndHasValidFormat[0])
  {
    v4 = 1;
  }

  else
  {
    CFPreferencesSetValue(@"ring-vibrate", *MEMORY[0x277CBED28], @"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v4 = keyExistsAndHasValidFormat[0] != 0;
    v3 = 1;
  }

  if (!keyExistsAndHasValidFormat[1] || !v4)
  {
    CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  if (AppBooleanValue && v3)
  {
    return 0;
  }

  v6 = 2;
  if (!v3)
  {
    v6 = 3;
  }

  if (AppBooleanValue)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (BOOL)_isKeyHapticsSupported
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _feedbackSupportLevel = [currentDevice _feedbackSupportLevel];

  if (_feedbackSupportLevel != 2)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (id)_keyboardFeedbackSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = SHS_LocalizedStringForSounds(@"KEYBOARD_FEEDBACK");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:sel__keyboardClicksTitle_ detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:@"KEYBOARD_FEEDBACK"];

  return v5;
}

- (unint64_t)ageOfToggleForSilentModeOn:(BOOL)on
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  if (on)
  {
    v6 = @"AgeOfVibrateWhenRing";
  }

  else
  {
    v6 = @"AgeOfVibrateWhenSilent";
  }

  v7 = [standardUserDefaults objectForKey:v6];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v10 = [v9 components:16 fromDate:v7 toDate:date options:0];
    v11 = [v10 day] + 1;
  }

  else
  {
    v11 = 1;
  }

  [standardUserDefaults setObject:date forKey:v6];

  v12 = &qword_2658B8F90;
  v13 = 6;
  v14 = 365;
  while (v11 >= *v12)
  {
    ++v12;
    if (!--v13)
    {
      goto LABEL_12;
    }
  }

  v14 = *(v12 - 1);
LABEL_12:

  return v14;
}

- (void)getMicrophoneLabel:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_265896000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to set the audio session category with error '%{public}@'.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end