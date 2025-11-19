@interface VTUIEnrollmentSetupIntroView
- (BOOL)showPrivacyTextView;
- (VTUIEnrollmentSetupIntroView)initWithFrame:(CGRect)a3;
- (id)_createFooterWithTextFieldShowlaterButton:(BOOL)a3;
- (id)footerView;
- (void)_setupContent;
@end

@implementation VTUIEnrollmentSetupIntroView

- (VTUIEnrollmentSetupIntroView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentSetupIntroView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = v5;

  v7 = +[VTUIStyle sharedStyle];
  v8 = [v7 enrollmentMode];
  v9 = @"ASSISTANT_TRIGGER_INSTRUCTION";
  if (v8 == 3)
  {
    v9 = @"ASSISTANT_TRIGGER_INSTRUCTION_SIRI_ONLY";
  }

  if (v8 == 4)
  {
    v10 = @"TEXT_TITLE_SETUP_HEYSIRI";
  }

  else
  {
    v10 = @"TEXT_TITLE_CONS";
  }

  if (v8 == 4)
  {
    v11 = @"HEY_SIRI_DESCRIPTION";
  }

  else
  {
    v11 = @"ASSISTANT_DESCRIPTION";
  }

  if (v8 == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v8 == 4)
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

- (id)_createFooterWithTextFieldShowlaterButton:(BOOL)a3
{
  v57 = a3;
  v63[4] = *MEMORY[0x277D85DE8];
  v4 = +[VTUIStyle sharedStyle];
  v5 = [MEMORY[0x277D653F8] sharedInstance];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
  continueButton = self->_continueButton;
  self->_continueButton = v8;

  [(VTUIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:self->_continueButton];
  v10 = [MEMORY[0x277CEF368] sharedPreferences];
  v11 = [v10 languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = v11;

  v13 = [(VTUIEnrollmentSetupIntroView *)self languageCode];
  v60 = v5;
  if ([v5 isSATEnrolledForSiriProfileId:0 forLanguageCode:v13])
  {

LABEL_3:
    v14 = @"BUTTON_USE_SIRI";
    goto LABEL_9;
  }

  if (PSIsRunningInAssistant())
  {
    v15 = [(VTUIEnrollmentSetupIntroView *)self languageCode];
    v16 = [v5 hasVoiceProfileIniCloudForLanguageCode:v15];

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

  v19 = [MEMORY[0x277CBEB18] array];
  v53 = [(VTUIButton *)self->_continueButton topAnchor];
  v51 = [v7 topAnchor];
  [v4 continueButtonOffset];
  v49 = [v53 constraintEqualToAnchor:v51 constant:?];
  v63[0] = v49;
  v47 = [(VTUIButton *)self->_continueButton centerXAnchor];
  v20 = [v7 centerXAnchor];
  v21 = [v47 constraintEqualToAnchor:v20];
  v63[1] = v21;
  v22 = [(VTUIButton *)self->_continueButton widthAnchor];
  [v4 footerButtonMaximumWidth];
  [v22 constraintEqualToConstant:?];
  v24 = v23 = v4;
  v63[2] = v24;
  v25 = [(VTUIButton *)self->_continueButton heightAnchor];
  v55 = v23;
  [v23 primaryButtonHeight];
  v26 = [v25 constraintEqualToConstant:?];
  v63[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  v59 = v19;
  [v19 addObjectsFromArray:v27];

  if (v57)
  {
    v28 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
    laterButton = self->_laterButton;
    self->_laterButton = v28;

    [(VTUIButton *)self->_laterButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v56;
    [v56 addSubview:self->_laterButton];
    v52 = [(VTUIButton *)self->_laterButton leadingAnchor];
    v58 = [v56 leadingAnchor];
    v31 = [v52 constraintEqualToAnchor:v58];
    v62[0] = v31;
    v32 = [(VTUIButton *)self->_laterButton trailingAnchor];
    v54 = [v56 trailingAnchor];
    v50 = [v32 constraintEqualToAnchor:v54];
    v62[1] = v50;
    v48 = [(VTUIButton *)self->_laterButton firstBaselineAnchor];
    v46 = [(VTUIButton *)self->_continueButton bottomAnchor];
    [v55 laterButtonBaselinePadding];
    v33 = [v48 constraintEqualToAnchor:v46 constant:?];
    v62[2] = v33;
    v34 = [(VTUIButton *)self->_laterButton bottomAnchor];
    v35 = [v56 bottomAnchor];
    [v55 footerSkipButtonBaselineFromBottom];
    v37 = [v34 constraintEqualToAnchor:v35 constant:-v36];
    v62[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    v39 = v59;
    [v59 addObjectsFromArray:v38];

    v40 = v52;
    v41 = v55;
    v42 = v58;
  }

  else
  {
    v40 = [(VTUIButton *)self->_continueButton bottomAnchor];
    v30 = v56;
    v42 = [v56 bottomAnchor];
    v41 = v55;
    [v55 continueButtonFromBottom];
    v31 = [v40 constraintEqualToAnchor:v42 constant:-v43];
    v61 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v39 = v19;
    [v19 addObjectsFromArray:v32];
  }

  [v30 addConstraints:v39];
  v44 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)showPrivacyTextView
{
  v2 = +[VTUIStyle sharedStyle];
  v3 = [v2 isBuddyOrFollowUp];

  return v3;
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