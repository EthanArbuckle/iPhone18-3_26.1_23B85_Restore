@interface VTUIProximityEnrollmentSetupIntroView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (VTUIEnrollmentDelegate)enrollmentDelegate;
- (VTUIProximityEnrollmentSetupIntroView)initWithFrame:(CGRect)frame;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupContent;
- (void)_setupPhoneLandscapeConstraints;
- (void)_setupPortraitConstraints;
- (void)_setupTermsAndConditions;
@end

@implementation VTUIProximityEnrollmentSetupIntroView

- (VTUIProximityEnrollmentSetupIntroView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v15.receiver = self;
  v15.super_class = VTUIProximityEnrollmentSetupIntroView;
  v5 = [(VTUIProximityEnrollmentSetupIntroView *)&v15 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    mEMORY[0x277D653F8] = [MEMORY[0x277D653F8] sharedInstance];
    voiceProfileMgr = v5->_voiceProfileMgr;
    v5->_voiceProfileMgr = mEMORY[0x277D653F8];

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368] languageCode];
    languageCode = v5->_languageCode;
    v5->_languageCode = languageCode;

    currentLocaleSupportsCompactVoiceTrigger = [(VTUIStyle *)v5->_vtStyle currentLocaleSupportsCompactVoiceTrigger];
    if (currentLocaleSupportsCompactVoiceTrigger)
    {
      LOBYTE(currentLocaleSupportsCompactVoiceTrigger) = [(VTUIStyle *)v5->_vtStyle proxAccessorySupportsCompactTrigger];
    }

    v5->_supportsCompactTrigger = currentLocaleSupportsCompactVoiceTrigger;
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
  proxHeaderFont = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v11 setFont:proxHeaderFont];

  v13 = self->_titleLabel;
  proxHeaderColor = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v13 setTextColor:proxHeaderColor];

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
  siriIconImage = [(VTUIStyle *)self->_vtStyle siriIconImage];
  v22 = [v20 initWithImage:siriIconImage];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_orbImage, v22);
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_orbImage];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v23;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_subtitleLabel;
  proxSubtitleFont = [(VTUIStyle *)self->_vtStyle proxSubtitleFont];
  [(UILabel *)v25 setFont:proxSubtitleFont];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  [(UILabel *)self->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
  v27 = self->_subtitleLabel;
  proxSubtitleColor = [(VTUIStyle *)self->_vtStyle proxSubtitleColor];
  [(UILabel *)v27 setTextColor:proxSubtitleColor];

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

  titleLabel = [(VTUIButton *)self->_setupButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_setupButton];
  v40 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v40;

  titleLabel2 = [(VTUIButton *)self->_notNowButton titleLabel];
  proxCancelFont = [(VTUIStyle *)self->_vtStyle proxCancelFont];
  [titleLabel2 setFont:proxCancelFont];

  [(VTUIButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = self->_notNowButton;
  v45 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONS_NOT_NOW"];
  [(VTUIButton *)v44 setTitle:v45 forState:0];

  titleLabel3 = [(VTUIButton *)self->_notNowButton titleLabel];
  [titleLabel3 setNumberOfLines:0];

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
  textContainer = [(UITextView *)self->_termsAndConds textContainer];
  [textContainer setLineFragmentPadding:0.0];

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

  defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
  v18 = [defaultParagraphStyle mutableCopy];

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
    footerTextColor = [(VTUIStyle *)self->_vtStyle footerTextColor];
    [v22 addAttribute:v25 value:footerTextColor range:{0, v23 + 1}];

    buttonTextColor = [(VTUIStyle *)self->_vtStyle buttonTextColor];
    [v22 addAttribute:v25 value:buttonTextColor range:{v23 + 1, v24}];

    v28 = *MEMORY[0x277D740E8];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2881E5778];
    [v22 addAttribute:v28 value:v29 range:{v23 + 1, v24}];

    v30 = self->_termsAndConds;
    footerFont = [(VTUIStyle *)self->_vtStyle footerFont];
    [(UITextView *)v30 setFont:footerFont];

    v32 = self->_termsAndConds;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v32 setBackgroundColor:clearColor];

    [(UITextView *)self->_termsAndConds setAttributedText:v22];
    [(UITextView *)self->_termsAndConds setEditable:0];
    [(UITextView *)self->_termsAndConds setScrollEnabled:0];
    [(UITextView *)self->_termsAndConds setDataDetectorTypes:2];
    [(UITextView *)self->_termsAndConds _setInteractiveTextSelectionDisabled:1];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)size
{
  v4 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:size.width, size.height];
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
  safeAreaLayoutGuide = [(VTUIProximityEnrollmentSetupIntroView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
  v99 = safeAreaLayoutGuide;
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v83 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v109[0] = v83;
  widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
  v4 = [widthAnchor constraintEqualToConstant:?];
  v109[1] = v4;
  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
  v6 = [heightAnchor constraintEqualToConstant:?];
  v109[2] = v6;
  bottomAnchor = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityEnrollmentSetupIntroView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v9];
  v109[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:4];
  [array addObjectsFromArray:v11];

  widthAnchor2 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v89 = [widthAnchor2 constraintEqualToConstant:?];
  v108[0] = v89;
  heightAnchor2 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v12 = [heightAnchor2 constraintEqualToConstant:?];
  v108[1] = v12;
  centerXAnchor3 = [(UIImageView *)self->_orbImage centerXAnchor];
  centerXAnchor4 = [safeAreaLayoutGuide2 centerXAnchor];
  v15 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v108[2] = v15;
  topAnchor = [(UIImageView *)self->_orbImage topAnchor];
  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroOrbImageFromTopLandscape];
  v18 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:?];
  v108[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:4];
  [array addObjectsFromArray:v19];

  topAnchor2 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor3 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroTitleFromTopLandscape];
  v20 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:?];
  v107[0] = v20;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v107[1] = v23;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v26];
  v107[2] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
  [array addObjectsFromArray:v28];

  centerYAnchor = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v85 = [centerYAnchor constraintEqualToAnchor:topAnchor4 constant:?];
  v106[0] = v85;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v31 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:?];
  v106[1] = v31;
  heightAnchor3 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v33 = [heightAnchor3 constraintEqualToConstant:?];
  v106[2] = v33;
  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v35 = [widthAnchor3 constraintEqualToConstant:?];
  v106[3] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  [array addObjectsFromArray:v36];

  leadingAnchor3 = [(UITextView *)self->_termsAndConds leadingAnchor];
  leadingAnchor4 = [(VTUIButton *)self->_setupButton leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v39 * 0.5];
  v105[0] = v40;
  trailingAnchor4 = [(UITextView *)self->_termsAndConds trailingAnchor];
  trailingAnchor5 = [(VTUIButton *)self->_setupButton trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v44 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:v43 * -0.5];
  v105[1] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
  [array addObjectsFromArray:v45];

  topAnchor5 = [(VTUIButton *)self->_setupButton topAnchor];
  bottomAnchor4 = [(UITextView *)self->_termsAndConds bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v81 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4 constant:?];
  v104[0] = v81;
  leadingAnchor5 = [(VTUIButton *)self->_setupButton leadingAnchor];
  leadingAnchor6 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v48 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  v104[1] = v48;
  trailingAnchor6 = [(VTUIButton *)self->_setupButton trailingAnchor];
  trailingAnchor7 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v52 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v51];
  v104[2] = v52;
  heightAnchor4 = [(VTUIButton *)self->_setupButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v54 = [heightAnchor4 constraintEqualToConstant:?];
  v104[3] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:4];
  [array addObjectsFromArray:v55];

  v56 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v56)
  {
    topAnchor6 = [(VTUIButton *)notNowButton topAnchor];
    bottomAnchor5 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
    v93 = [topAnchor6 constraintEqualToAnchor:bottomAnchor5 constant:?];
    v103[0] = v93;
    bottomAnchor6 = [(VTUIButton *)self->_notNowButton bottomAnchor];
    bottomAnchor7 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v98 = bottomAnchor6;
    v87 = bottomAnchor7;
    v82 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-v60];
    v103[1] = v82;
    leadingAnchor7 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    leadingAnchor8 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v103[2] = v63;
    trailingAnchor8 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    trailingAnchor9 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v66 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v103[3] = v66;
    heightAnchor5 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v68 = [heightAnchor5 constraintEqualToConstant:?];
    v103[4] = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
    [array addObjectsFromArray:v69];

    bottomAnchor8 = bottomAnchor5;
    firstBaselineAnchor = topAnchor6;
  }

  else
  {
    firstBaselineAnchor = [(VTUIButton *)notNowButton firstBaselineAnchor];
    bottomAnchor8 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
    v93 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor8 constant:?];
    v102[0] = v93;
    firstBaselineAnchor2 = [(VTUIButton *)self->_notNowButton firstBaselineAnchor];
    bottomAnchor9 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v98 = firstBaselineAnchor2;
    v87 = bottomAnchor9;
    v82 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor9 constant:-v74];
    v102[1] = v82;
    leadingAnchor7 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    leadingAnchor8 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v102[2] = v63;
    trailingAnchor8 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    trailingAnchor9 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v66 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v102[3] = v66;
    heightAnchor5 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:4];
    [array addObjectsFromArray:heightAnchor5];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v75;

  v77 = *MEMORY[0x277D85DE8];
}

- (void)_setupPortraitConstraints
{
  v134[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityEnrollmentSetupIntroView *)self safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v4 isDeviceIPad];

  containerView = self->_containerView;
  v120 = safeAreaLayoutGuide;
  if (isDeviceIPad)
  {
    centerYAnchor = [(VTUIProximityContainerView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v134[0] = v9;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v134[1] = v12;
    widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v14 = [widthAnchor constraintEqualToConstant:?];
    v134[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    [array addObjectsFromArray:v15];
  }

  else
  {
    bottomAnchor = [(VTUIProximityContainerView *)containerView bottomAnchor];
    bottomAnchor2 = [(VTUIProximityEnrollmentSetupIntroView *)self bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v18];
    v133 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
    [array addObjectsFromArray:v20];

    centerYAnchor = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:?];
    v132[0] = v9;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-v21];
    v132[1] = v12;
    widthAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    [array addObjectsFromArray:widthAnchor];
  }

  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
  v23 = [heightAnchor constraintEqualToConstant:?];
  [array addObject:v23];

  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  heightAnchor2 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v102 = [heightAnchor2 constraintEqualToConstant:?];
  v131[0] = v102;
  widthAnchor2 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v24 = [widthAnchor2 constraintEqualToConstant:?];
  v131[1] = v24;
  centerXAnchor3 = [(UIImageView *)self->_orbImage centerXAnchor];
  centerXAnchor4 = [safeAreaLayoutGuide2 centerXAnchor];
  v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v131[2] = v27;
  topAnchor = [(UIImageView *)self->_orbImage topAnchor];
  bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v30 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:?];
  v131[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:4];
  [array addObjectsFromArray:v31];

  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v98 = [centerYAnchor3 constraintEqualToAnchor:topAnchor2 constant:?];
  v130[0] = v98;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v34 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor constant:?];
  v130[1] = v34;
  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v36 = [widthAnchor3 constraintEqualToConstant:?];
  v130[2] = v36;
  heightAnchor3 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v38 = [heightAnchor3 constraintEqualToConstant:?];
  v130[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:4];
  [array addObjectsFromArray:v39];

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxIntroTitleFromTop];
  v99 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v129[0] = v99;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v129[1] = v42;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v46 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v45];
  v129[2] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:3];
  [array addObjectsFromArray:v47];

  topAnchor5 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor4 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingIntroSubtitle];
  v48 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4 constant:?];
  v128[0] = v48;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v128[1] = v51;
  trailingAnchor4 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v55 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v54];
  v128[2] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
  [array addObjectsFromArray:v56];

  topAnchor6 = [(UITextView *)self->_termsAndConds topAnchor];
  bottomAnchor5 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v113 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:?];
  v127[0] = v113;
  leadingAnchor5 = [(UITextView *)self->_termsAndConds leadingAnchor];
  leadingAnchor6 = [(VTUIButton *)self->_setupButton leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v59 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v58 * 0.5];
  v127[1] = v59;
  trailingAnchor6 = [(UITextView *)self->_termsAndConds trailingAnchor];
  trailingAnchor7 = [(VTUIButton *)self->_setupButton trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v63 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:v62 * -0.5];
  v127[2] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:3];
  [array addObjectsFromArray:v64];

  topAnchor7 = [(VTUIButton *)self->_setupButton topAnchor];
  lastBaselineAnchor = [(UITextView *)self->_termsAndConds lastBaselineAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFootnoteButton];
  v107 = [topAnchor7 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  v126[0] = v107;
  leadingAnchor7 = [(VTUIButton *)self->_setupButton leadingAnchor];
  leadingAnchor8 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v66 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];
  v126[1] = v66;
  trailingAnchor8 = [(VTUIButton *)self->_setupButton trailingAnchor];
  trailingAnchor9 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v70 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v69];
  v126[2] = v70;
  heightAnchor4 = [(VTUIButton *)self->_setupButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v72 = [heightAnchor4 constraintEqualToConstant:?];
  v126[3] = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
  [array addObjectsFromArray:v73];

  v74 = +[VTUIFeatureFlags isNaturalUIEnabled];
  notNowButton = self->_notNowButton;
  if (v74)
  {
    topAnchor8 = [(VTUIButton *)notNowButton topAnchor];
    bottomAnchor6 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
    v118 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:?];
    v125[0] = v118;
    bottomAnchor7 = [(VTUIButton *)self->_notNowButton bottomAnchor];
    bottomAnchor8 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v121 = bottomAnchor7;
    v115 = bottomAnchor8;
    v108 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v78];
    v125[1] = v108;
    leadingAnchor9 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    leadingAnchor10 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v81 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v125[2] = v81;
    trailingAnchor10 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    trailingAnchor11 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v84 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v125[3] = v84;
    heightAnchor5 = [(VTUIButton *)self->_notNowButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v86 = [heightAnchor5 constraintEqualToConstant:?];
    v125[4] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:5];
    [array addObjectsFromArray:v87];

    bottomAnchor9 = bottomAnchor6;
    firstBaselineAnchor = topAnchor8;
  }

  else
  {
    firstBaselineAnchor = [(VTUIButton *)notNowButton firstBaselineAnchor];
    bottomAnchor9 = [(VTUIButton *)self->_setupButton bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
    v118 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor9 constant:?];
    v124[0] = v118;
    firstBaselineAnchor2 = [(VTUIButton *)self->_notNowButton firstBaselineAnchor];
    bottomAnchor10 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v121 = firstBaselineAnchor2;
    v115 = bottomAnchor10;
    v108 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor10 constant:-v92];
    v124[1] = v108;
    leadingAnchor9 = [(VTUIButton *)self->_notNowButton leadingAnchor];
    leadingAnchor10 = [(VTUIButton *)self->_setupButton leadingAnchor];
    v81 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v124[2] = v81;
    trailingAnchor10 = [(VTUIButton *)self->_notNowButton trailingAnchor];
    trailingAnchor11 = [(VTUIButton *)self->_setupButton trailingAnchor];
    v84 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v124[3] = v84;
    heightAnchor5 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
    [array addObjectsFromArray:heightAnchor5];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v93 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v93;

  v95 = *MEMORY[0x277D85DE8];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
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