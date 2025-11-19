@interface VTUIEnrollmentSetupIntroViewControllerOrb
- (VTUIEnrollmentSetupIntroViewControllerOrb)initWithDelegate:(id)a3;
- (void)_continuePressed:(id)a3;
- (void)_fadeInSubViews;
- (void)_setupContent;
- (void)enrollmentWillAppear;
@end

@implementation VTUIEnrollmentSetupIntroViewControllerOrb

- (void)enrollmentWillAppear
{
  v2 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self view];
  [v2 removeFromSuperview];
}

- (VTUIEnrollmentSetupIntroViewControllerOrb)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 shouldSetupForMultipleTriggerPhrases];
  self->_showSiriConversations = [v5 supportsSiriConversationsAndBargeIn];
  self->_isPostUpgradeDisclosure = [v5 shouldPresentDisclosureForCompactVoiceTrigger];
  self->_includeHomePodInDisclosure = [v5 shouldIncludeHomePodInCompactTriggerDisclosure] & (v6 ^ 1);
  if ((v6 ^ 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 allLanguageOptionsSupportCompactTrigger];
  }

  self->_showMultitriggerForSetup = v7;
  v8 = [v5 enrollmentMode];
  if (v8 == 3)
  {
    v11 = @"ASSISTANT_DESCRIPTION";
    if (v6)
    {
      v11 = @"ASSISTANT_DESCRIPTION_SHORT";
    }
  }

  else
  {
    if (v8 == 4)
    {
      if (self->_showMultitriggerForSetup)
      {
        v9 = @"TEXT_TITLE_SETUP_BOTH";
      }

      else
      {
        v9 = @"TEXT_TITLE_SETUP_HEYSIRI";
      }

      v10 = v9;
      if (self->_showMultitriggerForSetup)
      {
        v11 = @"HEY_SIRI_DESCRIPTION_BOTH";
      }

      else
      {
        v11 = @"HEY_SIRI_DESCRIPTION";
      }

      goto LABEL_15;
    }

    if (self->_isPostUpgradeDisclosure)
    {
      v12 = @"SIRI_CONVERSATIONS_SUBTITLE";
      v10 = @"SIRI_CONVERSATIONS_TITLE";
      goto LABEL_16;
    }

    if (AFDeviceSupportsSAE())
    {
      v10 = @"TEXT_TITLE_CONS";
      v11 = @"ASSISTANT_DESCRIPTION_SAE_ELIGIBLE";
      goto LABEL_15;
    }

    if (self->_showMultitriggerForSetup)
    {
      v11 = @"ASSISTANT_DESCRIPTION_SHORT";
    }

    else
    {
      v11 = @"ASSISTANT_DESCRIPTION";
    }
  }

  v10 = @"TEXT_TITLE_CONS";
LABEL_15:
  v12 = v11;
LABEL_16:
  v13 = +[VTUIStringsHelper sharedStringsHelper];
  v14 = [v13 uiLocalizedStringForKey:v10];

  v15 = [v5 VTUIDeviceSpecificString:v12];
  if ([v5 isBuddyOrFollowUp] && objc_msgSend(v5, "bluetoothDeviceSupportsHeySiri"))
  {
    v16 = +[VTUIStringsHelper sharedStringsHelper];
    v17 = [v16 uiLocalizedStringForKey:@"TEXT_TITLE_SETUP_HEYSIRI"];

    v18 = [v5 proxHSDescription:@"HEY_SIRI_DESCRIPTION_PROX"];

    v14 = v17;
    v15 = v18;
  }

  v19 = [v5 siriIconImage];
  v22.receiver = self;
  v22.super_class = VTUIEnrollmentSetupIntroViewControllerOrb;
  v20 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)&v22 initWithTitle:v14 detailText:v15 icon:v19];

  if (v20)
  {
    objc_storeWeak(&v20->_delegate, v4);
    [(VTUIEnrollmentSetupIntroViewControllerOrb *)v20 _setupContent];
  }

  return v20;
}

- (void)_setupContent
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[VTUIEnrollmentSetupIntroViewControllerOrb _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = v5;

  v7 = +[VTUIStyle sharedStyle];
  v8 = [v7 enrollmentMode];
  v9 = v8;
  if (self->_isPostUpgradeDisclosure)
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"quote.bubble"];
    v11 = [v7 VTUIDeviceSpecificString:@"SAY_SIRI_OR_HS_BULLET_TITLE"];
    v12 = [v7 VTUIDeviceSpecificString:@"SAY_SIRI_OR_HS_BULLET_DESC"];
    v13 = [MEMORY[0x277D75348] systemBlueColor];
    [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v11 description:v12 image:v10 tintColor:v13];

    if (!self->_showSiriConversations)
    {
LABEL_20:

      goto LABEL_21;
    }

    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"person.wave.2"];
    v15 = [v7 VTUIDeviceSpecificString:@"SPEAK_FREELY_BULLET_TITLE"];
    v16 = [v7 VTUIDeviceSpecificString:@"SPEAK_FREELY_BULLET_DESC"];
    v17 = [MEMORY[0x277D75348] systemBlueColor];
    [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v15 description:v16 image:v14 tintColor:v17];
LABEL_19:

    goto LABEL_20;
  }

  if (self->_showMultitriggerForSetup && v8 != 4)
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"quote.bubble"];
    v15 = [MEMORY[0x277D755B8] _systemImageNamed:@"iphone.side.button.arrow.left"];
    if ([v7 isIpad])
    {
      v19 = [v7 supportsSideButtonActivation];
      v20 = MEMORY[0x277D755B8];
      if (v19)
      {
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v20 imageNamed:@"ipad.top.button.arrow.down" inBundle:v21 compatibleWithTraitCollection:0];

        v14 = @"PRESS_AND_HOLD_BULLET_TITLE";
        v15 = v22;
LABEL_18:
        v26 = [v7 VTUIDeviceSpecificString:@"JUST_SAY_SIRI_BULLET_TITLE"];
        v27 = [v7 VTUIDeviceSpecificString:@"JUST_SAY_SIRI_BULLET_DESC"];
        v28 = [MEMORY[0x277D75348] systemBlueColor];
        [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v26 description:v27 image:v10 tintColor:v28];

        v16 = [v7 VTUIDeviceSpecificString:v14];
        v17 = [v7 VTUIDeviceSpecificString:@"PRESS_AND_HOLD_BULLET_DESC"];
        v29 = [MEMORY[0x277D75348] systemBlueColor];
        [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v16 description:v17 image:v15 tintColor:v29];

        goto LABEL_19;
      }

      v23 = @"ipad.gen1";
      v24 = MEMORY[0x277D755B8];
    }

    else
    {
      if ([v7 supportSideButtonActivation])
      {
        v14 = @"PRESS_AND_HOLD_BULLET_TITLE";
        goto LABEL_18;
      }

      v24 = MEMORY[0x277D755B8];
      v23 = @"iphone.gen1";
    }

    v25 = [v24 _systemImageNamed:v23];

    v14 = [v7 VTUIDeviceSpecificString:@"PRESS_AND_HOLD_BULLET_TITLE_HOME"];
    v15 = v25;
    goto LABEL_18;
  }

LABEL_21:
  v30 = self->_isPostUpgradeDisclosure && self->_includeHomePodInDisclosure;
  v31 = [v7 enrollmentMode];
  v32 = @"BUTTON_CONTINUE_LATER";
  if (v30)
  {
    v32 = @"BUTTON_SETUP_LATER";
  }

  v33 = @"BUTTON_CONTINUE_SETUP";
  if (v31 == 3)
  {
    v32 = @"BUTTON_CONTINUE_LATER";
    v33 = @"BUTTON_TURN_ON_SIRI";
  }

  if (v31 == 4)
  {
    v34 = @"BUTTON_SET_UP_LATER";
  }

  else
  {
    v34 = v32;
  }

  if (v31 == 4)
  {
    v35 = @"BUTTON_CONTINUE_SETUP";
  }

  else
  {
    v35 = v33;
  }

  v36 = [MEMORY[0x277D37618] boldButton];
  v37 = [v7 VTUIDeviceSpecificString:v35];
  [v36 setTitle:v37 forState:0];

  [v36 addTarget:self action:sel__continuePressed_ forControlEvents:64];
  v38 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
  [v38 addButton:v36];

  objc_storeStrong(&self->_continueButton, v36);
  if ((v30 || !self->_isPostUpgradeDisclosure) && [v7 isBuddyOrFollowUp])
  {
    v39 = [MEMORY[0x277D37650] linkButton];
    v40 = [v7 VTUIDeviceSpecificString:v34];
    [(VTUIButton *)v39 setTitle:v40 forState:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(VTUIButton *)v39 addTarget:WeakRetained action:sel_siriIntroViewControllerLaterPressed_ forControlEvents:64];

    v42 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [v42 addButton:v39];

    laterButton = self->_laterButton;
    self->_laterButton = v39;
  }

  if (self->_isPostUpgradeDisclosure)
  {
    if ([v7 isGreenTeaCapableDevice])
    {
      v44 = @"POST_UPGRADE_FOOTER_CHINA";
    }

    else
    {
      v44 = @"POST_UPGRADE_FOOTER";
    }

    v45 = [v7 VTUIDeviceSpecificString:v44];
    v46 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [v46 setCaptionText:v45];

    goto LABEL_45;
  }

  if (v9 != 4)
  {
    v45 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [v45 setPrivacyLinkForBundles:&unk_2881EEE00];
LABEL_45:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_continuePressed:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(OBTrayButton *)self->_continueButton showsBusyIndicator];
    objc_initWeak(&location, self);
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__VTUIEnrollmentSetupIntroViewControllerOrb__continuePressed___block_invoke;
    v7[3] = &unk_279E541F8;
    objc_copyWeak(&v8, &location);
    [v6 siriIntroViewControllerContinuePressed:v4 completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __62__VTUIEnrollmentSetupIntroViewControllerOrb__continuePressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[156] hidesBusyIndicator];
    WeakRetained = v2;
  }
}

- (void)_fadeInSubViews
{
  v3 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self headerView];
  [v3 setAlpha:0.0];

  v4 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self contentView];
  [v4 setAlpha:0.0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__VTUIEnrollmentSetupIntroViewControllerOrb__fadeInSubViews__block_invoke;
  v6[3] = &unk_279E54220;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:0 animations:0.400000006 completion:0.0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__VTUIEnrollmentSetupIntroViewControllerOrb__fadeInSubViews__block_invoke_2;
  v5[3] = &unk_279E54220;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:0 animations:0.400000006 completion:0.300000012];
}

void __60__VTUIEnrollmentSetupIntroViewControllerOrb__fadeInSubViews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headerView];
  [v1 setAlpha:1.0];
}

void __60__VTUIEnrollmentSetupIntroViewControllerOrb__fadeInSubViews__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 setAlpha:1.0];
}

@end