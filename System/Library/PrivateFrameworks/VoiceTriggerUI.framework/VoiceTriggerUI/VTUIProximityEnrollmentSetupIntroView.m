@interface VTUIProximityEnrollmentSetupIntroView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (VTUIEnrollmentDelegate)enrollmentDelegate;
- (VTUIProximityEnrollmentSetupIntroView)initWithFrame:(CGRect)a3;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupContent;
- (void)_setupPhoneLandscapeConstraints;
- (void)_setupPortraitConstraints;
- (void)_setupTermsAndConditions;
@end

@implementation VTUIProximityEnrollmentSetupIntroView

- (VTUIProximityEnrollmentSetupIntroView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v15.receiver = self;
  v15.super_class = VTUIProximityEnrollmentSetupIntroView;
  v5 = [(VTUIProximityEnrollmentSetupIntroView *)&v15 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    v8 = [MEMORY[0x277D653F8] sharedInstance];
    voiceProfileMgr = v5->_voiceProfileMgr;
    v5->_voiceProfileMgr = v8;

    v10 = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [v10 languageCode];
    languageCode = v5->_languageCode;
    v5->_languageCode = v11;

    v13 = [(VTUIStyle *)v5->_vtStyle currentLocaleSupportsCompactVoiceTrigger];
    if (v13)
    {
      LOBYTE(v13) = [(VTUIStyle *)v5->_vtStyle proxAccessorySupportsCompactTrigger];
    }

    v5->_supportsCompactTrigger = v13;
    [(VTUIProximityEnrollmentSetupIntroView *)v5 _setupContent];
    [(VTUIProximityEnrollmentSetupIntroView *)v5 _setupConstraintsToSize:width, height];
  }

  return v5;
}

- (void)_setupContent
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 136315138;
    v49 = "[VTUIProximityEnrollmentSetupIntroView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v48, 0xCu);
  }

  v4 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v4;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentSetupIntroView *)self addSubview:self->_containerView];
  if (self->_supportsCompactTrigger)
  {
    v6 = @"PROX_INTRO_TITLE_JS";
  }

  else
  {
    v6 = @"PROX_INTRO_TITLE";
  }

  v7 = MEMORY[0x277D756B8];
  v8 = v6;
  v9 = objc_alloc_init(v7);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_titleLabel;
  v12 = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v11 setFont:v12];

  v13 = self->_titleLabel;
  v14 = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v13 setTextColor:v14];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v15 = self->_titleLabel;
  v16 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v16 uiLocalizedStringForKey:v8];

  [(UILabel *)v15 setText:v17];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v18 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v18;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v20 = objc_alloc(MEMORY[0x277D755E8]);
  v21 = [(VTUIStyle *)self->_vtStyle siriIconImage];
  v22 = [v20 initWithImage:v21];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_orbImage, v22);
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_orbImage];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v23;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_subtitleLabel;
  v26 = [(VTUIStyle *)self->_vtStyle proxSubtitleFont];
  [(UILabel *)v25 setFont:v26];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  [(UILabel *)self->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
  v27 = self->_subtitleLabel;
  v28 = [(VTUIStyle *)self->_vtStyle proxSubtitleColor];
  [(UILabel *)v27 setTextColor:v28];

  if (self->_supportsCompactTrigger)
  {
    v29 = @"SIRI_AND_HEY_SIRI_DESCRIPTION_PROX";
  }

  else
  {
    v29 = @"HEY_SIRI_DESCRIPTION_PROX";
  }

  v30 = self->_subtitleLabel;
  v31 = [(VTUIStyle *)self->_vtStyle proxHSDescription:v29];
  [(UILabel *)v30 setText:v31];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_subtitleLabel];
  [(VTUIProximityEnrollmentSetupIntroView *)self _setupTermsAndConditions];
  v32 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  setupButton = self->_setupButton;
  self->_setupButton = v32;

  [(VTUIButton *)self->_setupButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [(SSRVoiceProfileManager *)self->_voiceProfileMgr isSATEnrolledForSiriProfileId:0 forLanguageCode:self->_languageCode];
  v35 = self->_setupButton;
  vtStyle = self->_vtStyle;
  if (v34)
  {
    v37 = @"BUTTON_USE_SIRI";
  }

  else
  {
    v37 = @"BUTTON_SET_UP";
  }

  v38 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:v37];
  [(VTUIButton *)v35 setTitle:v38 forState:0];

  v39 = [(VTUIButton *)self->_setupButton titleLabel];
  [v39 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_setupButton];
  v40 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v40;

  v42 = [(VTUIButton *)self->_notNowButton titleLabel];
  v43 = [(VTUIStyle *)self->_vtStyle proxCancelFont];
  [v42 setFont:v43];

  [(VTUIButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = self->_notNowButton;
  v45 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONS_NOT_NOW"];
  [(VTUIButton *)v44 setTitle:v45 forState:0];

  v46 = [(VTUIButton *)self->_notNowButton titleLabel];
  [v46 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_notNowButton];
  v47 = *MEMORY[0x277D85DE8];
}

- (void)_setupTermsAndConditions
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  [(VTUIProximityEnrollmentSetupIntroView *)self bounds];
  v4 = [v3 initWithFrame:?];
  termsAndConds = self->_termsAndConds;
  self->_termsAndConds = v4;

  [(UITextView *)self->_termsAndConds setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_termsAndConds setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v6 = [(UITextView *)self->_termsAndConds textContainer];
  [v6 setLineFragmentPadding:0.0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_termsAndConds];
  [(UITextView *)self->_termsAndConds setDelegate:self];
  v7 = @"PROX_FOOTER_CONS";
  if (self->_supportsCompactTrigger)
  {
    v8 = @"TEXT_FOOTER_CONS_REGULATORY_DISCLOSURE_JS";
  }

  else
  {
    v8 = @"TEXT_FOOTER_CONS_REGULATORY_DISCLOSURE";
  }

  if (self->_supportsCompactTrigger)
  {
    v7 = @"PROX_FOOTER_CONS_JS";
  }

  v9 = v7;
  v10 = v8;
  v11 = +[VTUIStyle sharedStyle];
  v12 = +[VTUIStyle sharedStyle];
  if ([v12 isGreenTeaCapableDevice])
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  v14 = [v11 VTUIDeviceSpecificString:v13];

  v15 = +[VTUIStyle sharedStyle];
  v16 = [v15 VTUIDeviceSpecificString:@"BUTTON_CONS_ABOUT_SIRI"];

  v17 = [MEMORY[0x277D74240] defaultParagraphStyle];
  v18 = [v17 mutableCopy];

  [v18 setAlignment:1];
  v19 = objc_alloc(MEMORY[0x277CCAB48]);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v14, v16];
  v35 = *MEMORY[0x277D74118];
  v36[0] = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v22 = [v19 initWithString:v20 attributes:v21];

  if ([v16 length])
  {
    v23 = [v14 length];
    v24 = [v16 length];
    v25 = *MEMORY[0x277D740C0];
    v26 = [(VTUIStyle *)self->_vtStyle footerTextColor];
    [v22 addAttribute:v25 value:v26 range:{0, v23 + 1}];

    v27 = [(VTUIStyle *)self->_vtStyle buttonTextColor];
    [v22 addAttribute:v25 value:v27 range:{v23 + 1, v24}];

    v28 = *MEMORY[0x277D740E8];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2881E5778];
    [v22 addAttribute:v28 value:v29 range:{v23 + 1, v24}];

    v30 = self->_termsAndConds;
    v31 = [(VTUIStyle *)self->_vtStyle footerFont];
    [(UITextView *)v30 setFont:v31];

    v32 = self->_termsAndConds;
    v33 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v32 setBackgroundColor:v33];

    [(UITextView *)self->_termsAndConds setAttributedText:v22];
    [(UITextView *)self->_termsAndConds setEditable:0];
    [(UITextView *)self->_termsAndConds setScrollEnabled:0];
    [(UITextView *)self->_termsAndConds setDataDetectorTypes:2];
    [(UITextView *)self->_termsAndConds _setInteractiveTextSelectionDisabled:1];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)a3
{
  v4 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:a3.width, a3.height];
  [(UILabel *)self->_subtitleLabel setHidden:v4];
  if (v4)
  {

    [(VTUIProximityEnrollmentSetupIntroView *)self _setupPhoneLandscapeConstraints];
  }

  else
  {

    [(VTUIProximityEnrollmentSetupIntroView *)self _setupPortraitConstraints];
  }
}

- (void)_setupPhoneLandscapeConstraints
{
  v109[4] = *MEMORY[0x277D85DE8];
  v3 = [(VTUIProximityEnrollmentSetupIntroView *)self safeAreaLayoutGuide];
  v100 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v101 = [MEMORY[0x277CBEB18] array];
  v94 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
  v99 = v3;
  v88 = [v3 centerXAnchor];
  v83 = [v94 constraintEqualToAnchor:v88];
  v109[0] = v83;
  v80 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
  v4 = [v80 constraintEqualToConstant:?];
  v109[1] = v4;
  v5 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
  v6 = [v5 constraintEqualToConstant:?];
  v109[2] = v6;
  v7 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  v8 = [(VTUIProximityEnrollmentSetupIntroView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v10 = [v7 constraintEqualToAnchor:v8 constant:-v9];
  v109[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:4];
  [v101 addObjectsFromArray:v11];

  v95 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v89 = [v95 constraintEqualToConstant:?];
  v108[0] = v89;
  v84 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v12 = [v84 constraintEqualToConstant:?];
  v108[1] = v12;
  v13 = [(UIImageView *)self->_orbImage centerXAnchor];
  v14 = [v100 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v108[2] = v15;
  v16 = [(UIImageView *)self->_orbImage topAnchor];
  v17 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroOrbImageFromTopLandscape];
  v18 = [v16 constraintEqualToAnchor:v17 constant:?];
  v108[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:4];
  [v101 addObjectsFromArray:v19];

  v96 = [(UILabel *)self->_titleLabel topAnchor];
  v90 = [v100 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroTitleFromTopLandscape];
  v20 = [v96 constraintEqualToAnchor:v90 constant:?];
  v107[0] = v20;
  v21 = [(UILabel *)self->_titleLabel leadingAnchor];
  v22 = [v100 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v23 = [v21 constraintEqualToAnchor:v22 constant:?];
  v107[1] = v23;
  v24 = [(UILabel *)self->_titleLabel trailingAnchor];
  v25 = [v100 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v27 = [v24 constraintEqualToAnchor:v25 constant:-v26];
  v107[2] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
  [v101 addObjectsFromArray:v28];

  v97 = [(UIButton *)self->_dismissButton centerYAnchor];
  v91 = [v100 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v85 = [v97 constraintEqualToAnchor:v91 constant:?];
  v106[0] = v85;
  v29 = [(UIButton *)self->_dismissButton centerXAnchor];
  v30 = [v100 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v31 = [v29 constraintEqualToAnchor:v30 constant:?];
  v106[1] = v31;
  v32 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v33 = [v32 constraintEqualToConstant:?];
  v106[2] = v33;
  v34 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v35 = [v34 constraintEqualToConstant:?];
  v106[3] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  [v101 addObjectsFromArray:v36];

  v37 = [(UITextView *)self->_termsAndConds leadingAnchor];
  v38 = [(VTUIButton *)self->_setupButton leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v40 = [v37 constraintEqualToAnchor:v38 constant:v39 * 0.5];
  v105[0] = v40;
  v41 = [(UITextView *)self->_termsAndConds trailingAnchor];
  v42 = [(VTUIButton *)self->_setupButton trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v44 = [v41 constraintEqualToAnchor:v42 constant:v43 * -0.5];
  v105[1] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
  [v101 addObjectsFromArray:v45];

  v92 = [(VTUIButton *)self->_setupButton topAnchor];
  v86 = [(UITextView *)self->_termsAndConds bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v81 = [v92 constraintEqualToAnchor:v86 constant:?];
  v104[0] = v81;
  v46 = [(VTUIButton *)self->_setupButton leadingAnchor];
  v47 = [v100 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v48 = [v46 constraintEqualToAnchor:v47 constant:?];
  v104[1] = v48;
  v49 = [(VTUIButton *)self->_setupButton trailingAnchor];
  v50 = [v100 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v52 = [v49 constraintEqualToAnchor:v50 constant:-v51];
  v104[2] = v52;
  v53 = [(VTUIButton *)self->_setupButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v54 = [v53 constraintEqualToConstant:?];
  v104[3] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:4];
  [v101 addObjectsFromArray:v55];

  v56 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v56)
  {
    v79 = [(VTUIButton *)notNowButton topAnchor];
    v78 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
    v93 = [v79 constraintEqualToAnchor:v78 constant:?];
    v103[0] = v93;
    v58 = [(VTUIButton *)self->_notNowButton bottomAnchor];
    v59 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v98 = v58;
    v87 = v59;
    v82 = [v58 constraintEqualToAnchor:v59 constant:-v60];
    v103[1] = v82;
    v61 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    v62 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    v103[2] = v63;
    v64 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    v65 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v103[3] = v66;
    v67 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v68 = [v67 constraintEqualToConstant:?];
    v103[4] = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
    [v101 addObjectsFromArray:v69];

    v70 = v78;
    v71 = v79;
  }

  else
  {
    v71 = [(VTUIButton *)notNowButton firstBaselineAnchor];
    v70 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
    v93 = [v71 constraintEqualToAnchor:v70 constant:?];
    v102[0] = v93;
    v72 = [(VTUIButton *)self->_notNowButton firstBaselineAnchor];
    v73 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v98 = v72;
    v87 = v73;
    v82 = [v72 constraintEqualToAnchor:v73 constant:-v74];
    v102[1] = v82;
    v61 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    v62 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    v102[2] = v63;
    v64 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    v65 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v102[3] = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:4];
    [v101 addObjectsFromArray:v67];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v101];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:v101];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v75;

  v77 = *MEMORY[0x277D85DE8];
}

- (void)_setupPortraitConstraints
{
  v134[3] = *MEMORY[0x277D85DE8];
  v3 = [(VTUIProximityEnrollmentSetupIntroView *)self safeAreaLayoutGuide];
  v123 = [MEMORY[0x277CBEB18] array];
  v4 = +[MGWrapper sharedMGWrapper];
  v5 = [v4 isDeviceIPad];

  containerView = self->_containerView;
  v120 = v3;
  if (v5)
  {
    v7 = [(VTUIProximityContainerView *)containerView centerYAnchor];
    v8 = [v3 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v134[0] = v9;
    v10 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    v11 = [v3 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v134[1] = v12;
    v13 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v14 = [v13 constraintEqualToConstant:?];
    v134[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    [v123 addObjectsFromArray:v15];
  }

  else
  {
    v16 = [(VTUIProximityContainerView *)containerView bottomAnchor];
    v17 = [(VTUIProximityEnrollmentSetupIntroView *)self bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v19 = [v16 constraintEqualToAnchor:v17 constant:-v18];
    v133 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
    [v123 addObjectsFromArray:v20];

    v7 = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
    v8 = [v3 leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v9 = [v7 constraintEqualToAnchor:v8 constant:?];
    v132[0] = v9;
    v10 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
    v11 = [v3 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-v21];
    v132[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    [v123 addObjectsFromArray:v13];
  }

  v22 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
  v23 = [v22 constraintEqualToConstant:?];
  [v123 addObject:v23];

  v122 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v109 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v102 = [v109 constraintEqualToConstant:?];
  v131[0] = v102;
  v97 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v24 = [v97 constraintEqualToConstant:?];
  v131[1] = v24;
  v25 = [(UIImageView *)self->_orbImage centerXAnchor];
  v26 = [v122 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v131[2] = v27;
  v28 = [(UIImageView *)self->_orbImage topAnchor];
  v29 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v30 = [v28 constraintEqualToAnchor:v29 constant:?];
  v131[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:4];
  [v123 addObjectsFromArray:v31];

  v110 = [(UIButton *)self->_dismissButton centerYAnchor];
  v103 = [v122 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v98 = [v110 constraintEqualToAnchor:v103 constant:?];
  v130[0] = v98;
  v32 = [(UIButton *)self->_dismissButton centerXAnchor];
  v33 = [v122 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v34 = [v32 constraintEqualToAnchor:v33 constant:?];
  v130[1] = v34;
  v35 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v36 = [v35 constraintEqualToConstant:?];
  v130[2] = v36;
  v37 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v38 = [v37 constraintEqualToConstant:?];
  v130[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:4];
  [v123 addObjectsFromArray:v39];

  v111 = [(UILabel *)self->_titleLabel topAnchor];
  v104 = [v122 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroTitleFromTop];
  v99 = [v111 constraintEqualToAnchor:v104 constant:?];
  v129[0] = v99;
  v40 = [(UILabel *)self->_titleLabel leadingAnchor];
  v41 = [v122 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v42 = [v40 constraintEqualToAnchor:v41 constant:?];
  v129[1] = v42;
  v43 = [(UILabel *)self->_titleLabel trailingAnchor];
  v44 = [v122 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v46 = [v43 constraintEqualToAnchor:v44 constant:-v45];
  v129[2] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:3];
  [v123 addObjectsFromArray:v47];

  v112 = [(UILabel *)self->_subtitleLabel topAnchor];
  v105 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingIntroSubtitle];
  v48 = [v112 constraintEqualToAnchor:v105 constant:?];
  v128[0] = v48;
  v49 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v50 = [v122 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v51 = [v49 constraintEqualToAnchor:v50 constant:?];
  v128[1] = v51;
  v52 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v53 = [v122 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v55 = [v52 constraintEqualToAnchor:v53 constant:-v54];
  v128[2] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
  [v123 addObjectsFromArray:v56];

  v116 = [(UITextView *)self->_termsAndConds topAnchor];
  v119 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v113 = [v116 constraintGreaterThanOrEqualToAnchor:v119 constant:?];
  v127[0] = v113;
  v106 = [(UITextView *)self->_termsAndConds leadingAnchor];
  v57 = [(VTUIButton *)self->_setupButton leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v59 = [v106 constraintEqualToAnchor:v57 constant:v58 * 0.5];
  v127[1] = v59;
  v60 = [(UITextView *)self->_termsAndConds trailingAnchor];
  v61 = [(VTUIButton *)self->_setupButton trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v63 = [v60 constraintEqualToAnchor:v61 constant:v62 * -0.5];
  v127[2] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:3];
  [v123 addObjectsFromArray:v64];

  v117 = [(VTUIButton *)self->_setupButton topAnchor];
  v114 = [(UITextView *)self->_termsAndConds lastBaselineAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v107 = [v117 constraintEqualToAnchor:v114 constant:?];
  v126[0] = v107;
  v100 = [(VTUIButton *)self->_setupButton leadingAnchor];
  v65 = [v122 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v66 = [v100 constraintEqualToAnchor:v65 constant:?];
  v126[1] = v66;
  v67 = [(VTUIButton *)self->_setupButton trailingAnchor];
  v68 = [v122 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v70 = [v67 constraintEqualToAnchor:v68 constant:-v69];
  v126[2] = v70;
  v71 = [(VTUIButton *)self->_setupButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v72 = [v71 constraintEqualToConstant:?];
  v126[3] = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
  [v123 addObjectsFromArray:v73];

  v74 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v74)
  {
    v101 = [(VTUIButton *)notNowButton topAnchor];
    v96 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
    v118 = [v101 constraintEqualToAnchor:v96 constant:?];
    v125[0] = v118;
    v76 = [(VTUIButton *)self->_notNowButton bottomAnchor];
    v77 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v121 = v76;
    v115 = v77;
    v108 = [v76 constraintEqualToAnchor:v77 constant:-v78];
    v125[1] = v108;
    v79 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    v80 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
    v125[2] = v81;
    v82 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    v83 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    v125[3] = v84;
    v85 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v86 = [v85 constraintEqualToConstant:?];
    v125[4] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:5];
    [v123 addObjectsFromArray:v87];

    v88 = v96;
    v89 = v101;
  }

  else
  {
    v89 = [(VTUIButton *)notNowButton firstBaselineAnchor];
    v88 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
    v118 = [v89 constraintEqualToAnchor:v88 constant:?];
    v124[0] = v118;
    v90 = [(VTUIButton *)self->_notNowButton firstBaselineAnchor];
    v91 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v121 = v90;
    v115 = v91;
    v108 = [v90 constraintEqualToAnchor:v91 constant:-v92];
    v124[1] = v108;
    v79 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    v80 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
    v124[2] = v81;
    v82 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    v83 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    v124[3] = v84;
    v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
    [v123 addObjectsFromArray:v85];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v123];
  v93 = [MEMORY[0x277CBEA60] arrayWithArray:v123];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v93;

  v95 = *MEMORY[0x277D85DE8];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_enrollmentDelegate);
  [WeakRetained aboutTapped:self];

  return 0;
}

- (VTUIEnrollmentDelegate)enrollmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_enrollmentDelegate);

  return WeakRetained;
}

@end