@interface SHSHeadphoneAudioAccessoriesController
- (SHSHeadphoneAudioAccessoriesController)init;
- (id)getConnectedToHeadphonesEnabled;
- (id)specifiers;
- (void)confirmForgetAudioAccessoriesAction;
- (void)dealloc;
- (void)deleteAllAudioAccessoryData;
- (void)loadView;
- (void)setConnectedToHeadphonesEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation SHSHeadphoneAudioAccessoriesController

- (SHSHeadphoneAudioAccessoriesController)init
{
  v5.receiver = self;
  v5.super_class = SHSHeadphoneAudioAccessoriesController;
  v2 = [(SHSHeadphoneAudioAccessoriesController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, unknownWiredDeviceStatusChanged, *MEMORY[0x277CEFA90], 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEFA90], 0);
  v4.receiver = self;
  v4.super_class = SHSHeadphoneAudioAccessoriesController;
  [(SHSHeadphoneAudioAccessoriesController *)&v4 dealloc];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SHSHeadphoneAudioAccessoriesController;
  [(SHSHeadphoneAudioAccessoriesController *)&v7 loadView];
  if (MGGetBoolAnswer())
  {
    v3 = @"HEADPHONE_USB_AUDIO_ACCESSORIES";
  }

  else
  {
    v3 = @"HEADPHONE_LIGHTNING_ADAPTERS";
  }

  v4 = SHS_LocalizedStringForSounds(v3);
  [(SHSHeadphoneAudioAccessoriesController *)self setTitle:v4];

  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  audioSettingsManager = self->_audioSettingsManager;
  self->_audioSettingsManager = v5;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    audioSettingsManager = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
    v7 = *MEMORY[0x277CEFAB0];
    v8 = [audioSettingsManager getPreferenceFor:*MEMORY[0x277CEFAB0]];

    if (v8)
    {
      if (MGGetBoolAnswer())
      {
        v9 = @"HEADPHONE_CURRENT_USB_AUDIO_ACCESSORY_GROUP";
      }

      else
      {
        v9 = @"HEADPHONE_CURRENT_LIGHTNING_ADAPTER_GROUP";
      }

      v10 = MEMORY[0x277D3FAD8];
      v11 = SHS_LocalizedStringForSounds(v9);
      v12 = [v10 groupSpecifierWithID:@"SHSCurrentAudioAccessoryKey" name:v11];

      [v5 addObject:v12];
      audioSettingsManager2 = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
      v14 = [audioSettingsManager2 getPreferenceFor:v7];
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {
        v16 = @"HEADPHONE_CURRENT_DEVICE_HEADPHONE_FOOTER";
      }

      else
      {
        v16 = @"HEADPHONE_CURRENT_DEVICE_OTHER_DEVICE_FOOTER";
      }

      v17 = SHS_LocalizedStringForSounds(v16);
      [v12 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

      v18 = MEMORY[0x277D3FAD8];
      v19 = SHS_LocalizedStringForSounds(@"CONNECTED_TO_HEADPHONES_SWITCH");
      v20 = [v18 preferenceSpecifierNamed:v19 target:self set:sel_setConnectedToHeadphonesEnabled_forSpecifier_ get:sel_getConnectedToHeadphonesEnabled detail:0 cell:6 edit:0];

      [v5 addObject:v20];
    }

    audioSettingsManager3 = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
    v22 = [audioSettingsManager3 getPreferenceFor:*MEMORY[0x277CEFAE0]];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SHSForgetAudioAccessoryKey"];
      [v5 addObject:v24];
      if (MGGetBoolAnswer())
      {
        v25 = @"FORGET_USB_AUDIO_ACCESSORIES_BUTTON";
      }

      else
      {
        v25 = @"FORGET_LIGHTNING_ADAPTERS_BUTTON";
      }

      v26 = MEMORY[0x277D3FAD8];
      v27 = SHS_LocalizedStringForSounds(v25);
      v28 = [v26 preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v28 setButtonAction:sel_confirmForgetAudioAccessoriesAction];
      [v5 addObject:v28];
    }

    v29 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)confirmForgetAudioAccessoriesAction
{
  objc_initWeak(&location, self);
  v3 = MGGetBoolAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = @"FORGET_USB_AUDIO_ACCESSORIES_CONFIRMATION_BUTTON";
  }

  else
  {
    v5 = @"FORGET_LIGHTNING_ADAPTERS_CONFIRMATION_BUTTON";
  }

  if (v3)
  {
    v6 = @"FORGET_USB_AUDIO_ACCESSORIES_CONFIRMATION_TITLE";
  }

  else
  {
    v6 = @"FORGET_LIGHTNING_ADAPTERS_CONFIRMATION_TITLE";
  }

  v7 = MEMORY[0x277D75110];
  v8 = SHS_LocalizedStringForSounds(v6);
  if (v4)
  {
    v9 = @"FORGET_USB_AUDIO_ACCESSORIES_CONFIRMATION_MESSAGE";
  }

  else
  {
    v9 = @"FORGET_LIGHTNING_ADAPTERS_CONFIRMATION_MESSAGE";
  }

  v10 = SHS_LocalizedStringForSounds(v9);
  v11 = [v7 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = SHS_LocalizedStringForSounds(@"FORGET_AUDIO_ACCESSORIES_CANCEL_BUTTON");
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v11 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = SHS_LocalizedStringForSounds(v5);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__SHSHeadphoneAudioAccessoriesController_confirmForgetAudioAccessoriesAction__block_invoke;
  v21 = &unk_279BA6748;
  objc_copyWeak(&v22, &location);
  v17 = [v15 actionWithTitle:v16 style:2 handler:&v18];
  [v11 addAction:{v17, v18, v19, v20, v21}];

  [(SHSHeadphoneAudioAccessoriesController *)self presentViewController:v11 animated:1 completion:0];
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
}

void __77__SHSHeadphoneAudioAccessoriesController_confirmForgetAudioAccessoriesAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deleteAllAudioAccessoryData];
}

- (void)deleteAllAudioAccessoryData
{
  [(SHSHeadphoneAudioAccessoriesController *)self removeSpecifierID:@"SHSForgetAudioAccessoryKey" animated:1];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CEFA70], 0, 0, 1u);
  audioSettingsManager = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
  v5 = [audioSettingsManager getPreferenceFor:*MEMORY[0x277CEFAB0]];

  if (!v5)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
    [defaultWorkspace openSensitiveURL:v6 withOptions:0];
  }
}

- (void)setConnectedToHeadphonesEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  audioSettingsManager = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
  v6 = [audioSettingsManager setPreferenceFor:*MEMORY[0x277CEFAB0] value:enabledCopy];
}

- (id)getConnectedToHeadphonesEnabled
{
  audioSettingsManager = [(SHSHeadphoneAudioAccessoriesController *)self audioSettingsManager];
  v3 = [audioSettingsManager getPreferenceFor:*MEMORY[0x277CEFAB0]];

  return v3;
}

@end