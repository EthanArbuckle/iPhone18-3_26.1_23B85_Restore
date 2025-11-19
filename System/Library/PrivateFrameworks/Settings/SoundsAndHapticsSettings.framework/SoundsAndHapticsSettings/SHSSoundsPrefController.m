@interface SHSSoundsPrefController
+ (id)BOOLeanCapabilitiesToTest;
- (BOOL)_isKeyHapticsSupported;
- (BOOL)_isVolumeSliderVisible;
- (SHSSoundsPrefController)init;
- (id)_keyboardFeedbackSpecifier;
- (id)_volumeSliderCell;
- (id)canChangeRingtoneWithButtons:(id)a3;
- (id)detailTextForToneWithSpecifier:(id)a3;
- (id)getFixedVolumeControlsFooterWithSwitch:(BOOL)a3;
- (id)getHeadphoneLevelLimitSetting;
- (id)getMicrophoneLabel:(id)a3;
- (id)getSelectedHapticsOptionTitleWithSpecifier:(id)a3;
- (id)getSilentModeFooterWithSwitch:(BOOL)a3;
- (id)silentModeEnabled:(id)a3;
- (id)soundEffects:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)volume:(id)a3;
- (int)_deviceType;
- (int64_t)getSelectedHapticsOption;
- (unint64_t)ageOfToggleForSilentModeOn:(BOOL)a3;
- (void)carrierBundleChange:(id)a3;
- (void)dealloc;
- (void)didLock;
- (void)endInterruption;
- (void)handleInputNotification:(id)a3;
- (void)handleSilentModeNotification:(id)a3;
- (void)hapticsOptionsDidChange:(int64_t)a3;
- (void)presentHapticsController:(id)a3;
- (void)refreshShouldHideAllVoicemailUI;
- (void)ringerControl:(id)a3 volumeValueDidChange:(float)a4;
- (void)ringerControlDidObserveEffectiveSystemVolumeChange:(id)a3;
- (void)serverDiedNotificationHandler:(id)a3;
- (void)setCanChangeRingtoneWithButtons:(id)a3 specifier:(id)a4;
- (void)setFixedVolumeControls:(id)a3 specifier:(id)a4;
- (void)setLateNightMode:(id)a3 specifier:(id)a4;
- (void)setPlayKeyboardSound:(id)a3 specifier:(id)a4;
- (void)setPlayLockSound:(id)a3 specifier:(id)a4;
- (void)setShowInStatusBarEnabled:(id)a3 specifier:(id)a4;
- (void)setSilentModeEnabled:(id)a3 specifier:(id)a4;
- (void)setSoundEffects:(id)a3 specifier:(id)a4;
- (void)setSystemHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setUpSilentModeNotifications;
- (void)setVolume:(id)a3 specifier:(id)a4;
- (void)startRingtonePreview;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
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

    v5 = [(SHSSoundsPrefController *)v2 _ringerControl];
    [v5 setDelegate:v2];

    v6 = objc_alloc_init(SHSAudioPlayback);
    audioPlayback = v2->__audioPlayback;
    v2->__audioPlayback = v6;

    v2->_hasTelephony = PSGetCapabilityBoolAnswer();
    v8 = objc_alloc_init(MEMORY[0x277CC37B0]);
    client = v2->__client;
    v2->__client = v8;

    [(CoreTelephonyClient *)v2->__client setDelegate:v2];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel_didBackground name:*MEMORY[0x277D76660] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel_willForeground name:*MEMORY[0x277D76758] object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel_handleInputNotification_ name:*MEMORY[0x277CB8600] object:0];

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
    v4 = [v3 lowercaseString];
    if ([v4 isEqualToString:@"iphone"])
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

  v4 = [(SHSSoundsPrefController *)self _ringerControl];
  -[SHSSoundsPrefController setVolumeHUDsuppression:](self, "setVolumeHUDsuppression:", [v4 canChangeRingtoneWithButtons]);

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
  v4 = [(SHSSoundsPrefController *)self _ringerControl];
  [v4 setAppWantsVolumeChangeEvents:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v25.receiver = self;
  v25.super_class = SHSSoundsPrefController;
  v6 = a4;
  v7 = [(SHSSoundsPrefController *)&v25 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SHSSoundsPrefController *)self indexForIndexPath:v6, v25.receiver, v25.super_class];

  v9 = [(SHSSoundsPrefController *)self specifierAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"RING_VOLUME_SLIDER"];

  if (v11)
  {
    v12 = [v7 control];
    v13 = [v12 _minValueView];
    v14 = [MEMORY[0x277D3FA48] appearance];
    v15 = [v14 textColor];
    [v13 setTintColor:v15];

    v16 = [v12 _maxValueView];
    v17 = [MEMORY[0x277D3FA48] appearance];
    v18 = [v17 textColor];
    [v16 setTintColor:v18];

    [(SHSSoundsPrefController *)self willShowSlider];
  }

  else
  {
    v19 = [v9 identifier];
    v20 = [v19 isEqualToString:@"FIXED_POSITION_VOLUME"];

    if (!v20)
    {
      goto LABEL_6;
    }

    v12 = [v7 control];
    v21 = [(SHSSoundsPrefController *)self specifiers];
    v22 = [v21 specifierForID:@"FIXED_POSITION_VOLUME_CONTROLS"];

    v23 = -[SHSSoundsPrefController getFixedVolumeControlsFooterWithSwitch:](self, "getFixedVolumeControlsFooterWithSwitch:", [v12 isOn]);
    [v22 setProperty:v23 forKey:*MEMORY[0x277D3FF88]];
  }

LABEL_6:

  return v7;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 specifier];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:@"RING_VOLUME_SLIDER"];

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
  v3 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];

  if (!v3)
  {
    [(SHSSoundsPrefController *)self refreshShouldHideAllVoicemailUI];
  }

  v4 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];
  v5 = [v4 BOOLValue];

  v6 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
  v7 = [(SHSSoundsPrefController *)self containsSpecifier:v6];

  if (v7 && v5)
  {
    v8 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [(SHSSoundsPrefController *)self removeSpecifier:?];
  }

  else
  {
    if ((v7 | v5))
    {
      return;
    }

    v8 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [(SHSSoundsPrefController *)self insertSpecifier:v8 atIndex:[(SHSSoundsPrefController *)self _voiceMailSpecifierIndex]];
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

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 sf_inRetailKioskMode];

  v9 = objc_opt_new();
  if ((v8 & 1) == 0)
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

  if ((v8 & 1) == 0)
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

  v27 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
  -[SHSSoundsPrefController set_voiceMailSpecifierIndex:](self, "set_voiceMailSpecifierIndex:", [v6 indexOfObject:v27]);

  v28 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];

  if (!v28)
  {
    [(SHSSoundsPrefController *)self refreshShouldHideAllVoicemailUI];
  }

  v76 = v8;
  v29 = [(SHSSoundsPrefController *)self _cachedShouldHideValue];
  v30 = [v29 BOOLValue];

  if (v30)
  {
    v31 = [(SHSSoundsPrefController *)self _voiceMailSpecifier];
    [v6 removeObject:v31];
  }

  v32 = [(SHSSoundsPrefController *)self _deviceType];
  v33 = [v6 specifierForID:@"RING_VOLUME_SLIDER"];
  v34 = [MEMORY[0x277D755D0] configurationWithPointSize:17.0];
  v35 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.fill" withConfiguration:v34];
  v36 = [MEMORY[0x277D75348] systemGrayColor];
  v37 = [v35 imageWithTintColor:v36 renderingMode:1];
  [v33 setProperty:v37 forKey:*MEMORY[0x277D400D0]];

  v77 = v34;
  v38 = v34;
  v39 = v33;
  v40 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.wave.3.fill" withConfiguration:v38];
  v41 = [MEMORY[0x277D75348] systemGrayColor];
  v42 = [v40 imageWithTintColor:v41 renderingMode:1];
  [v33 setProperty:v42 forKey:*MEMORY[0x277D400E0]];

  if ((v32 - 1) <= 1)
  {
    v43 = [v6 specifierForID:@"RINGER_AND_ALERT_GROUP"];
    v44 = v43;
    if (v76)
    {
      [v43 setProperty:&stru_28772CD00 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v45 = [(SHSSoundsPrefController *)self _ringerControl];
      v46 = [v45 canChangeRingtoneWithButtons];

      if (v46)
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
    if (v32 == 1 && v44 && (v50 = v49, v49 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [v6 removeObject:v39];
      [v6 insertObject:v39 atIndex:v50 + 1];
    }

    else if (v32 != 1)
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
      v71 = [(SHSSoundsPrefController *)self _keyboardFeedbackSpecifier];

      [v6 replaceObjectAtIndex:v70 withObject:v71];
    }
  }

  if (_os_feature_enabled_impl())
  {
    v72 = [MEMORY[0x277D0FB90] profileManagementSpecifier];
    [v72 setIdentifier:@"PERSONALIZED_SPATIAL_AUDIO"];
    [v72 setProperty:@"PERSONALIZED_SPATIAL_AUDIO" forKey:*MEMORY[0x277D3FFB8]];
    v73 = [MEMORY[0x277D0FB90] profileManagementSpecifier];
    [v6 addObject:v73];
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
  v4 = a1;
  _os_log_error_impl(&dword_265896000, a2, OS_LOG_TYPE_ERROR, "Failed to subscribe for notifications from AVSystemController with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serverDiedNotificationHandler:(id)a3
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

- (void)handleSilentModeNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D26D60]];

  v6 = SHSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 BOOLValue];
    v8 = @"OFF";
    if (v7)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D26D58] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D26D40] object:0];
}

- (void)setSilentModeEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SHSSoundsPrefController_setSilentModeEnabled_specifier___block_invoke;
  v8[3] = &unk_279BA67C0;
  v9 = v5;
  v10 = self;
  v7 = v5;
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

- (id)silentModeEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D26E58] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "getSilentMode")}];

  return v5;
}

- (void)setShowInStatusBarEnabled:(id)a3 specifier:(id)a4
{
  [(SHSSoundsPrefController *)self setPreferenceValue:a3 specifier:a4];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277CCA858] object:0];
}

- (void)handleInputNotification:(id)a3
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

- (id)getMicrophoneLabel:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CB83F8] auxiliarySession];
  v4 = *MEMORY[0x277CB8038];
  v5 = *MEMORY[0x277CB80A8];
  v44 = 0;
  [v3 setCategory:v4 mode:v5 options:5 error:&v44];
  v6 = v44;
  if (v6)
  {
    v7 = SHSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SHSSoundsPrefController getMicrophoneLabel:];
    }
  }

  v8 = [v3 opaqueSessionID];
  v9 = [objc_alloc(MEMORY[0x277CB8690]) initWithDeviceFeatures:1];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  [v9 setAudioSessionID:v10];

  [v9 setDiscoveryMode:2 forClientIdentifiers:MEMORY[0x277CBEBF8]];
  v11 = [v9 fallbackInputDevice];
  v12 = [MEMORY[0x277CB8678] sharedSystemAudioInputContext];
  v13 = [v12 userPreferredInputDevice:0];

  v14 = [v9 availableInputDevices];
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
    v49 = v14;
    _os_log_impl(&dword_265896000, v17, OS_LOG_TYPE_DEFAULT, "%s: Inputs: %@", buf, 0x16u);
  }

  if (v13)
  {
    v38 = v11;
    v39 = v6;
    v18 = v3;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = v14;
    v19 = v14;
    v20 = [(__CFString *)v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v40 + 1) + 8 * i) deviceID];
          v25 = [v13 deviceID];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            v30 = SHSLogForCategory(0);
            v3 = v18;
            v11 = v38;
            v6 = v39;
            v14 = v37;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v13 deviceName];
              if (v31)
              {
                v32 = [v13 deviceName];
              }

              else
              {
                v32 = &stru_28772CD00;
              }

              *buf = 136315394;
              v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
              v48 = 2112;
              v49 = v32;
              _os_log_impl(&dword_265896000, v30, OS_LOG_TYPE_DEFAULT, "%s: returning default: %@", buf, 0x16u);
              if (v31)
              {
              }
            }

            v34 = [v13 deviceName];
            if (v34)
            {
              v33 = [v13 deviceName];
            }

            else
            {
              v33 = &stru_28772CD00;
            }

            goto LABEL_40;
          }
        }

        v21 = [(__CFString *)v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v3 = v18;
    v11 = v38;
    v6 = v39;
    v14 = v37;
  }

  v27 = SHSLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v11 deviceName];
    if (v28)
    {
      v29 = [v11 deviceName];
    }

    else
    {
      v29 = &stru_28772CD00;
    }

    *buf = 136315394;
    v47 = "[SHSSoundsPrefController getMicrophoneLabel:]";
    v48 = 2112;
    v49 = v29;
    _os_log_impl(&dword_265896000, v27, OS_LOG_TYPE_DEFAULT, "%s: returning fallback: %@", buf, 0x16u);
    if (v28)
    {
    }
  }

  v19 = [v11 deviceName];
  if (v19)
  {
    v33 = [v11 deviceName];
  }

  else
  {
    v33 = &stru_28772CD00;
  }

LABEL_40:

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)presentHapticsController:(id)a3
{
  v4 = a3;
  v6 = [_TtC24SoundsAndHapticsSettings24SHSViewControllerFactory createHapticsOptionsViewController:[(SHSSoundsPrefController *)self getSelectedHapticsOption] delegate:self];
  v5 = [v4 name];

  [v6 setTitle:v5];
  [(SHSSoundsPrefController *)self showController:v6 animate:1];
}

- (id)getSilentModeFooterWithSwitch:(BOOL)a3
{
  if (a3)
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

- (id)getFixedVolumeControlsFooterWithSwitch:(BOOL)a3
{
  if (a3)
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

- (void)setFixedVolumeControls:(id)a3 specifier:(id)a4
{
  v6 = a3;
  [(SHSSoundsPrefController *)self setPreferenceValue:v6 specifier:a4];
  v7 = [(SHSSoundsPrefController *)self specifiers];
  v10 = [v7 specifierForID:@"FIXED_POSITION_VOLUME_CONTROLS"];

  v8 = [v6 BOOLValue];
  v9 = [(SHSSoundsPrefController *)self getFixedVolumeControlsFooterWithSwitch:v8];
  [v10 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

  [(SHSSoundsPrefController *)self reloadSpecifierID:@"FIXED_POSITION_VOLUME_CONTROLS" animated:1];
}

- (void)setSystemHapticsEnabled:(id)a3 specifier:(id)a4
{
  [(SHSSoundsPrefController *)self setPreferenceValue:a3 specifier:a4];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277CCA858] object:0];
}

- (void)setLateNightMode:(id)a3 specifier:(id)a4
{
  [(SHSSoundsPrefController *)self setPreferenceValue:a3 specifier:a4];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277CCA858] object:0];
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

  v4 = [(SHSSoundsPrefController *)self _audioPlayback];
  [v4 playRingtoneWithIdentifier:0 loop:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateVolume
{
  v2 = [(SHSSoundsPrefController *)self _ringerControl];
  [v2 reload];
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

  v4 = [(SHSSoundsPrefController *)self _audioPlayback];
  [v4 playRingtoneWithIdentifier:0 loop:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SHSSoundsPrefController;
  [(SHSSoundsPrefController *)&v6 viewDidLoad];
  v3 = [(SHSSoundsPrefController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
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

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 isSuspendedUnderLock];

  if ((v5 & 1) == 0)
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

  v4 = [(SHSSoundsPrefController *)self _ringerControl];
  [v4 canChangeRingtoneWithButtons];

  [(SHSSoundsPrefController *)self updateVolume];
  if ([(SHSSoundsPrefController *)self _isVolumeSliderVisible])
  {
    [(SHSSoundsPrefController *)self willShowSlider];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SHSSoundsPrefController *)self endInterruption];
  v4.receiver = self;
  v4.super_class = SHSSoundsPrefController;
  [(SHSSoundsPrefController *)&v4 dealloc];
}

- (void)setSoundEffects:(id)a3 specifier:(id)a4
{
  v4 = [a3 intValue];
  if (v4 == 3)
  {
    v6 = *MEMORY[0x277CBED28];
    v5 = *MEMORY[0x277CBED28];
  }

  else
  {
    v5 = *MEMORY[0x277CBED10];
    if (v4 == 2)
    {
      v6 = *MEMORY[0x277CBED28];
    }

    else
    {
      v6 = *MEMORY[0x277CBED10];
      if (v4 == 1)
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

- (id)soundEffects:(id)a3
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
  v5 = [(SHSSoundsPrefController *)self _audioPlayback];
  [v4 cancelPreviousPerformRequestsWithTarget:v5 selector:sel_stopPlayback object:0];

  if (self->_hasTelephony)
  {
    v6 = [(SHSSoundsPrefController *)self _audioPlayback];
    v7 = [v6 isPlayingRingtone];

    if ((v7 & 1) == 0)
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

      v10 = [MEMORY[0x277D71F78] sharedToneManager];
      v11 = [v10 currentToneIdentifierForAlertType:1];

      v12 = [(SHSSoundsPrefController *)self _audioPlayback];
      [v12 playRingtoneWithIdentifier:v11 loop:1];
    }
  }

  v13 = [(SHSSoundsPrefController *)self _audioPlayback];
  [v13 performSelector:sel_stopPlayback withObject:0 afterDelay:2.0];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)volume:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(SHSSoundsPrefController *)self _ringerControl];
  [v4 volume];
  v5 = [v3 numberWithFloat:?];

  return v5;
}

- (void)setVolume:(id)a3 specifier:(id)a4
{
  v14 = a3;
  v5 = [(SHSSoundsPrefController *)self _ringerControl];
  [v5 volume];
  v7 = v6;
  [v14 floatValue];
  v9 = v8;

  if (v7 != v9)
  {
    [v14 floatValue];
    v11 = v10;
    v12 = [(SHSSoundsPrefController *)self _ringerControl];
    LODWORD(v13) = v11;
    [v12 setVolume:v13];

    [(SHSSoundsPrefController *)self startRingtonePreview];
  }
}

- (id)detailTextForToneWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"alertType"];
  v6 = TLAlertTypeFromString();

  if ([(SHSSoundsPrefController *)self _deviceType]== 1 && _os_feature_enabled_impl() && [SHSDualSIMToneHelper shouldShowSIMBasedToneCustomizationForAlertType:v6])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [v4 propertyForKey:@"accountIdentifier"];
  v9 = [MEMORY[0x277D71F78] sharedToneManager];
  v10 = [v9 currentToneIdentifierForAlertType:v6 topic:v8];

  if ((PSGetCapabilityBoolAnswer() & 1) == 0 && PSGetCapabilityBoolAnswer())
  {
    v11 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v12 = [v11 currentVibrationIdentifierForAlertType:v6 topic:v8];

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

  v13 = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [v13 nameForToneIdentifier:v10];

LABEL_11:
LABEL_12:

  return v7;
}

- (void)setPlayKeyboardSound:(id)a3 specifier:(id)a4
{
  [(SHSSoundsPrefController *)self setPreferenceValue:a3 specifier:a4];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CCA858];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 postNotificationName:v4 object:v5];
}

- (void)setPlayLockSound:(id)a3 specifier:(id)a4
{
  [(SHSSoundsPrefController *)self setPreferenceValue:a3 specifier:a4];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CCA858];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 postNotificationName:v4 object:v5];
}

- (id)canChangeRingtoneWithButtons:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(SHSSoundsPrefController *)self _ringerControl];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "canChangeRingtoneWithButtons")}];

  return v5;
}

- (void)setCanChangeRingtoneWithButtons:(id)a3 specifier:(id)a4
{
  v15 = a3;
  v5 = [v15 BOOLValue];
  v6 = [(SHSSoundsPrefController *)self _ringerControl];
  [v6 setCanChangeRingtoneWithButtons:v5];

  -[SHSSoundsPrefController setVolumeHUDsuppression:](self, "setVolumeHUDsuppression:", [v15 BOOLValue]);
  v7 = [(SHSSoundsPrefController *)self specifierForID:@"RINGER_AND_ALERT_GROUP"];
  v8 = [(SHSSoundsPrefController *)self indexPathForSpecifier:v7];
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 sf_inRetailKioskMode];

  if (v10)
  {
    [v7 setObject:&stru_28772CD00 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    if ([v15 BOOLValue])
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

  v13 = [(SHSSoundsPrefController *)self table];
  v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v8, "section")}];
  [v13 _reloadSectionHeaderFooters:v14 withRowAnimation:100];
}

- (id)getHeadphoneLevelLimitSetting
{
  if (_os_feature_enabled_impl() && (!PSGetCapabilityBoolAnswer() || (_os_feature_enabled_impl() & 1) != 0))
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SHSSoundsPrefController *)self audioSettingsManager];
    v5 = [v4 getPreferenceFor:*MEMORY[0x277CEFB20]];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [(SHSSoundsPrefController *)self audioSettingsManager];
      v8 = [v7 getPreferenceFor:*MEMORY[0x277CEFB28]];

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
  v2 = [(SHSSoundsPrefController *)self _volumeSliderCell];
  v3 = v2 != 0;

  return v3;
}

- (id)_volumeSliderCell
{
  v3 = [(SHSSoundsPrefController *)self specifierForID:@"RING_VOLUME_SLIDER"];
  v4 = [(SHSSoundsPrefController *)self indexPathForSpecifier:v3];

  v5 = [(SHSSoundsPrefController *)self table];
  v6 = [v5 cellForRowAtIndexPath:v4];

  return v6;
}

- (void)ringerControlDidObserveEffectiveSystemVolumeChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SHSSoundsPrefController ringerControlDidObserveEffectiveSystemVolumeChange:]";
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = [(SHSSoundsPrefController *)self view];
    v7 = [v6 window];

    if (v7)
    {
      if ([(SHSSoundsPrefController *)self _isVolumeSliderVisible])
      {
        v8 = [(SHSSoundsPrefController *)self _volumeSliderCell];
        v9 = [v8 control];
        v10 = [v9 isTracking];

        if (!v10)
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
  v15 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v14);

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)ringerControl:(id)a3 volumeValueDidChange:(float)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
      v8 = [(SHSSoundsPrefController *)self _volumeSliderCell];
      *&v9 = a4;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      [v8 setValue:v10];
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
    v13 = v6;
    v14 = a4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
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
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)hapticsOptionsDidChange:(int64_t)a3
{
  v4 = a3 < 3;
  v5 = a3 ^ 1;
  [(SHSSoundsPrefController *)self setSilentModeOn:v4 & (3u >> (a3 & 7))];
  [(SHSSoundsPrefController *)self setSilentModeOff:v4 & v5];

  [(SHSSoundsPrefController *)self reloadSpecifierID:@"HAPTICS" animated:1];
}

- (id)getSelectedHapticsOptionTitleWithSpecifier:(id)a3
{
  v3 = [(SHSSoundsPrefController *)self getSelectedHapticsOption];
  if (v3 > 2)
  {
    v4 = @"NEVER_PLAY";
  }

  else
  {
    v4 = off_279BA6808[v3];
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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 _feedbackSupportLevel];

  if (v3 != 2)
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

- (unint64_t)ageOfToggleForSilentModeOn:(BOOL)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CBEAA8] date];
  if (a3)
  {
    v6 = @"AgeOfVibrateWhenRing";
  }

  else
  {
    v6 = @"AgeOfVibrateWhenSilent";
  }

  v7 = [v4 objectForKey:v6];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v10 = [v9 components:16 fromDate:v7 toDate:v5 options:0];
    v11 = [v10 day] + 1;
  }

  else
  {
    v11 = 1;
  }

  [v4 setObject:v5 forKey:v6];

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