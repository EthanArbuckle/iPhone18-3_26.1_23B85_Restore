@interface VTUIEnrollmentSetupIntroViewControllerOrb
- (VTUIEnrollmentSetupIntroViewControllerOrb)initWithDelegate:(id)delegate;
- (void)_continuePressed:(id)pressed;
- (void)_fadeInSubViews;
- (void)_setupContent;
- (void)enrollmentWillAppear;
@end

@implementation VTUIEnrollmentSetupIntroViewControllerOrb

- (void)enrollmentWillAppear
{
  view = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self view];
  [view removeFromSuperview];
}

- (VTUIEnrollmentSetupIntroViewControllerOrb)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[VTUIStyle sharedStyle];
  shouldSetupForMultipleTriggerPhrases = [v5 shouldSetupForMultipleTriggerPhrases];
  self->_showSiriConversations = [v5 supportsSiriConversationsAndBargeIn];
  self->_isPostUpgradeDisclosure = [v5 shouldPresentDisclosureForCompactVoiceTrigger];
  self->_includeHomePodInDisclosure = [v5 shouldIncludeHomePodInCompactTriggerDisclosure] & (shouldSetupForMultipleTriggerPhrases ^ 1);
  if ((shouldSetupForMultipleTriggerPhrases ^ 1))
  {
    allLanguageOptionsSupportCompactTrigger = 0;
  }

  else
  {
    allLanguageOptionsSupportCompactTrigger = [delegateCopy allLanguageOptionsSupportCompactTrigger];
  }

  self->_showMultitriggerForSetup = allLanguageOptionsSupportCompactTrigger;
  enrollmentMode = [v5 enrollmentMode];
  if (enrollmentMode == 3)
  {
    v11 = @"ASSISTANT_DESCRIPTION";
    if (shouldSetupForMultipleTriggerPhrases)
    {
      v11 = @"ASSISTANT_DESCRIPTION_SHORT";
    }
  }

  else
  {
    if (enrollmentMode == 4)
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

  siriIconImage = [v5 siriIconImage];
  v22.receiver = self;
  v22.super_class = VTUIEnrollmentSetupIntroViewControllerOrb;
  v20 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)&v22 initWithTitle:v14 detailText:v15 icon:siriIconImage];

  if (v20)
  {
    objc_storeWeak(&v20->_delegate, delegateCopy);
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

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = languageCode;

  v7 = +[VTUIStyle sharedStyle];
  enrollmentMode = [v7 enrollmentMode];
  v9 = enrollmentMode;
  if (self->_isPostUpgradeDisclosure)
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"quote.bubble"];
    v11 = [v7 VTUIDeviceSpecificString:@"SAY_SIRI_OR_HS_BULLET_TITLE"];
    v12 = [v7 VTUIDeviceSpecificString:@"SAY_SIRI_OR_HS_BULLET_DESC"];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v11 description:v12 image:v10 tintColor:systemBlueColor];

    if (!self->_showSiriConversations)
    {
LABEL_20:

      goto LABEL_21;
    }

    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"person.wave.2"];
    v15 = [v7 VTUIDeviceSpecificString:@"SPEAK_FREELY_BULLET_TITLE"];
    v16 = [v7 VTUIDeviceSpecificString:@"SPEAK_FREELY_BULLET_DESC"];
    systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
    [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v15 description:v16 image:v14 tintColor:systemBlueColor2];
LABEL_19:

    goto LABEL_20;
  }

  if (self->_showMultitriggerForSetup && enrollmentMode != 4)
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"quote.bubble"];
    v15 = [MEMORY[0x277D755B8] _systemImageNamed:@"iphone.side.button.arrow.left"];
    if ([v7 isIpad])
    {
      supportsSideButtonActivation = [v7 supportsSideButtonActivation];
      v20 = MEMORY[0x277D755B8];
      if (supportsSideButtonActivation)
      {
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v20 imageNamed:@"ipad.top.button.arrow.down" inBundle:v21 compatibleWithTraitCollection:0];

        v14 = @"PRESS_AND_HOLD_BULLET_TITLE";
        v15 = v22;
LABEL_18:
        v26 = [v7 VTUIDeviceSpecificString:@"JUST_SAY_SIRI_BULLET_TITLE"];
        v27 = [v7 VTUIDeviceSpecificString:@"JUST_SAY_SIRI_BULLET_DESC"];
        systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
        [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v26 description:v27 image:v10 tintColor:systemBlueColor3];

        v16 = [v7 VTUIDeviceSpecificString:v14];
        systemBlueColor2 = [v7 VTUIDeviceSpecificString:@"PRESS_AND_HOLD_BULLET_DESC"];
        systemBlueColor4 = [MEMORY[0x277D75348] systemBlueColor];
        [(VTUIEnrollmentSetupIntroViewControllerOrb *)self addBulletedListItemWithTitle:v16 description:systemBlueColor2 image:v15 tintColor:systemBlueColor4];

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
  enrollmentMode2 = [v7 enrollmentMode];
  v32 = @"BUTTON_CONTINUE_LATER";
  if (v30)
  {
    v32 = @"BUTTON_SETUP_LATER";
  }

  v33 = @"BUTTON_CONTINUE_SETUP";
  if (enrollmentMode2 == 3)
  {
    v32 = @"BUTTON_CONTINUE_LATER";
    v33 = @"BUTTON_TURN_ON_SIRI";
  }

  if (enrollmentMode2 == 4)
  {
    v34 = @"BUTTON_SET_UP_LATER";
  }

  else
  {
    v34 = v32;
  }

  if (enrollmentMode2 == 4)
  {
    v35 = @"BUTTON_CONTINUE_SETUP";
  }

  else
  {
    v35 = v33;
  }

  boldButton = [MEMORY[0x277D37618] boldButton];
  v37 = [v7 VTUIDeviceSpecificString:v35];
  [boldButton setTitle:v37 forState:0];

  [boldButton addTarget:self action:sel__continuePressed_ forControlEvents:64];
  buttonTray = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
  [buttonTray addButton:boldButton];

  objc_storeStrong(&self->_continueButton, boldButton);
  if ((v30 || !self->_isPostUpgradeDisclosure) && [v7 isBuddyOrFollowUp])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    v40 = [v7 VTUIDeviceSpecificString:v34];
    [(VTUIButton *)linkButton setTitle:v40 forState:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(VTUIButton *)linkButton addTarget:WeakRetained action:sel_siriIntroViewControllerLaterPressed_ forControlEvents:64];

    buttonTray2 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [buttonTray2 addButton:linkButton];

    laterButton = self->_laterButton;
    self->_laterButton = linkButton;
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

    buttonTray4 = [v7 VTUIDeviceSpecificString:v44];
    buttonTray3 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [buttonTray3 setCaptionText:buttonTray4];

    goto LABEL_45;
  }

  if (v9 != 4)
  {
    buttonTray4 = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self buttonTray];
    [buttonTray4 setPrivacyLinkForBundles:&unk_2881EEE00];
LABEL_45:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_continuePressed:(id)pressed
{
  pressedCopy = pressed;
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
    [v6 siriIntroViewControllerContinuePressed:pressedCopy completion:v7];

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
  headerView = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self headerView];
  [headerView setAlpha:0.0];

  contentView = [(VTUIEnrollmentSetupIntroViewControllerOrb *)self contentView];
  [contentView setAlpha:0.0];

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