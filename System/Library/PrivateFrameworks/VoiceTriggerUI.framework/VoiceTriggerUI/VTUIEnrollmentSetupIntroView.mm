@interface VTUIEnrollmentSetupIntroView
- (BOOL)showPrivacyTextView;
- (VTUIEnrollmentSetupIntroView)initWithFrame:(CGRect)frame;
- (id)_createFooterWithTextFieldShowlaterButton:(BOOL)button;
- (id)footerView;
- (void)_setupContent;
@end

@implementation VTUIEnrollmentSetupIntroView

- (VTUIEnrollmentSetupIntroView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentSetupIntroView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollmentSetupIntroView *)v3 _setupContent];
  }

  return v4;
}

- (void)_setupContent
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[VTUIEnrollmentSetupIntroView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v24, 0xCu);
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = languageCode;

  v7 = +[VTUIStyle sharedStyle];
  enrollmentMode = [v7 enrollmentMode];
  v9 = @"ASSISTANT_TRIGGER_INSTRUCTION";
  if (enrollmentMode == 3)
  {
    v9 = @"ASSISTANT_TRIGGER_INSTRUCTION_SIRI_ONLY";
  }

  if (enrollmentMode == 4)
  {
    v10 = @"TEXT_TITLE_SETUP_HEYSIRI";
  }

  else
  {
    v10 = @"TEXT_TITLE_CONS";
  }

  if (enrollmentMode == 4)
  {
    v11 = @"HEY_SIRI_DESCRIPTION";
  }

  else
  {
    v11 = @"ASSISTANT_DESCRIPTION";
  }

  if (enrollmentMode == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (enrollmentMode == 4)
  {
    v13 = @"BUTTON_SET_UP_LATER";
  }

  else
  {
    v13 = @"BUTTON_CONTINUE_LATER";
  }

  v14 = +[VTUIStringsHelper sharedStringsHelper];
  v15 = [v14 uiLocalizedStringForKey:v10];
  [(VTUIEnrollmentBaseView *)self setTitle:v15];

  v16 = [v7 VTUIDeviceSpecificString:v11];
  [(VTUIEnrollmentBaseView *)self setSubtitle:v16];

  v17 = [v7 VTUIDeviceSpecificString:v12];
  [(VTUIEnrollmentBaseView *)self setInstructionText:v17];

  if ([v7 isBuddyOrFollowUp] && objc_msgSend(v7, "bluetoothDeviceSupportsHeySiri"))
  {
    v18 = +[VTUIStringsHelper sharedStringsHelper];
    v19 = [v18 uiLocalizedStringForKey:@"TEXT_TITLE_SETUP_HEYSIRI"];
    [(VTUIEnrollmentBaseView *)self setTitle:v19];

    v20 = [v7 proxHSDescription:@"HEY_SIRI_DESCRIPTION_PROX"];
    [(VTUIEnrollmentBaseView *)self setSubtitle:v20];

    [(VTUIEnrollmentBaseView *)self setInstructionText:&stru_2881E5778];
  }

  laterButton = self->_laterButton;
  v22 = [v7 VTUIDeviceSpecificString:v13];
  [(VTUIButton *)laterButton setTitle:v22 forState:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_createFooterWithTextFieldShowlaterButton:(BOOL)button
{
  buttonCopy = button;
  v63[4] = *MEMORY[0x277D85DE8];
  v4 = +[VTUIStyle sharedStyle];
  mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
  continueButton = self->_continueButton;
  self->_continueButton = v8;

  [(VTUIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:self->_continueButton];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = languageCode;

  languageCode2 = [(VTUIEnrollmentSetupIntroView *)self languageCode];
  v60 = mEMORY[0x277D653F8];
  if ([mEMORY[0x277D653F8] isSATEnrolledForSiriProfileId:0 forLanguageCode:languageCode2])
  {

LABEL_3:
    v14 = @"BUTTON_USE_SIRI";
    goto LABEL_9;
  }

  if (PSIsRunningInAssistant())
  {
    languageCode3 = [(VTUIEnrollmentSetupIntroView *)self languageCode];
    v16 = [mEMORY[0x277D653F8] hasVoiceProfileIniCloudForLanguageCode:languageCode3];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v14 = @"BUTTON_CONTINUE_SETUP";
LABEL_9:
  v56 = v7;
  v17 = self->_continueButton;
  v18 = [v4 VTUIDeviceSpecificString:v14];
  [(VTUIButton *)v17 setTitle:v18 forState:0];

  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [(VTUIButton *)self->_continueButton topAnchor];
  topAnchor2 = [v7 topAnchor];
  [v4 continueButtonOffset];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v63[0] = v49;
  centerXAnchor = [(VTUIButton *)self->_continueButton centerXAnchor];
  centerXAnchor2 = [v7 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v63[1] = v21;
  widthAnchor = [(VTUIButton *)self->_continueButton widthAnchor];
  [v4 footerButtonMaximumWidth];
  [widthAnchor constraintEqualToConstant:?];
  v24 = v23 = v4;
  v63[2] = v24;
  heightAnchor = [(VTUIButton *)self->_continueButton heightAnchor];
  v55 = v23;
  [v23 primaryButtonHeight];
  v26 = [heightAnchor constraintEqualToConstant:?];
  v63[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  v59 = array;
  [array addObjectsFromArray:v27];

  if (buttonCopy)
  {
    v28 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
    laterButton = self->_laterButton;
    self->_laterButton = v28;

    [(VTUIButton *)self->_laterButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v56;
    [v56 addSubview:self->_laterButton];
    leadingAnchor = [(VTUIButton *)self->_laterButton leadingAnchor];
    leadingAnchor2 = [v56 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[0] = v31;
    trailingAnchor = [(VTUIButton *)self->_laterButton trailingAnchor];
    trailingAnchor2 = [v56 trailingAnchor];
    v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v62[1] = v50;
    firstBaselineAnchor = [(VTUIButton *)self->_laterButton firstBaselineAnchor];
    bottomAnchor = [(VTUIButton *)self->_continueButton bottomAnchor];
    [v55 laterButtonBaselinePadding];
    v33 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    v62[2] = v33;
    bottomAnchor2 = [(VTUIButton *)self->_laterButton bottomAnchor];
    bottomAnchor3 = [v56 bottomAnchor];
    [v55 footerSkipButtonBaselineFromBottom];
    v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v36];
    v62[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    v39 = v59;
    [v59 addObjectsFromArray:v38];

    bottomAnchor4 = leadingAnchor;
    v41 = v55;
    bottomAnchor5 = leadingAnchor2;
  }

  else
  {
    bottomAnchor4 = [(VTUIButton *)self->_continueButton bottomAnchor];
    v30 = v56;
    bottomAnchor5 = [v56 bottomAnchor];
    v41 = v55;
    [v55 continueButtonFromBottom];
    v31 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v43];
    v61 = v31;
    trailingAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v39 = array;
    [array addObjectsFromArray:trailingAnchor];
  }

  [v30 addConstraints:v39];
  v44 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)showPrivacyTextView
{
  v2 = +[VTUIStyle sharedStyle];
  isBuddyOrFollowUp = [v2 isBuddyOrFollowUp];

  return isBuddyOrFollowUp;
}

- (id)footerView
{
  v3 = +[VTUIStyle sharedStyle];
  if ([v3 isBuddyOrFollowUp])
  {
    footerView = self->_footerView;

    if (!footerView)
    {
      v5 = 1;
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (self->_footerView)
  {
    goto LABEL_8;
  }

  v5 = 0;
LABEL_7:
  v6 = [(VTUIEnrollmentSetupIntroView *)self _createFooterWithTextFieldShowlaterButton:v5];
  v7 = self->_footerView;
  self->_footerView = v6;

LABEL_8:
  v8 = self->_footerView;

  return v8;
}

@end