@interface VTUIProximityEnrollmentSuccessView
- (VTUIProximityEnrollmentSuccessView)initWithFrame:(CGRect)a3;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupContent;
- (void)_setupPhoneLandscapeConstraints;
- (void)_setupPortraitConstraints;
@end

@implementation VTUIProximityEnrollmentSuccessView

- (VTUIProximityEnrollmentSuccessView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = VTUIProximityEnrollmentSuccessView;
  v5 = [(VTUIProximityEnrollmentSuccessView *)&v9 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    [(VTUIProximityEnrollmentSuccessView *)v5 _setupContent];
    [(VTUIProximityEnrollmentSuccessView *)v5 _setupConstraintsToSize:width, height];
  }

  return v5;
}

- (void)_setupContent
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[VTUIProximityEnrollmentSuccessView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = v5;

  v7 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v7;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentSuccessView *)self addSubview:self->_containerView];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_titleLabel;
  v12 = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v11 setFont:v12];

  v13 = self->_titleLabel;
  v14 = [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  [(UILabel *)v13 setTextColor:v14];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v15 = self->_titleLabel;
  v16 = +[VTUIStringsHelper sharedStringsHelper];
  v17 = [v16 uiLocalizedStringForKey:@"TEXT_TITLE_READY"];
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
  if (![(VTUIStyle *)self->_vtStyle currentLocaleSupportsCompactVoiceTrigger])
  {
    v23 = MEMORY[0x277CCAB68];
    vtStyle = self->_vtStyle;
    v25 = @"PROX_TEXT_MAIN_READY";
    goto LABEL_7;
  }

  if ([(VTUIStyle *)self->_vtStyle proxAccessorySupportsCompactTrigger])
  {
    v23 = MEMORY[0x277CCAB68];
    vtStyle = self->_vtStyle;
    v25 = @"PROX_TEXT_MAIN_READY_MIXED";
LABEL_7:
    v26 = [(VTUIStyle *)vtStyle VTUIDeviceSpecificString:v25];
LABEL_8:
    v27 = v26;
    v28 = [v23 stringWithString:v26];
    goto LABEL_9;
  }

  v41 = [(VTUIStyle *)self->_vtStyle audioAccessoryName];

  v23 = MEMORY[0x277CCAB68];
  v42 = self->_vtStyle;
  if (!v41)
  {
    v26 = [(VTUIStyle *)v42 proxHSDescription:@"PROX_TEXT_MAIN_READY_MIXED_UNSUPPORTED_ACCESSORY"];
    goto LABEL_8;
  }

  v27 = [(VTUIStyle *)v42 VTUIDeviceSpecificString:@"PROX_TEXT_MAIN_READY_MIXED_UNSUPPORTED_ACCESSORY"];
  v43 = [(VTUIStyle *)self->_vtStyle audioAccessoryName];
  v28 = [v23 stringWithFormat:v27, v43];

LABEL_9:
  if ([(VTUIStyle *)self->_vtStyle supportsSiriConversationsAndBargeIn])
  {
    v29 = +[VTUIStringsHelper sharedStringsHelper];
    v30 = [v29 uiLocalizedStringForKey:@"PROX_READY_SPEAK_FREELY_SUFFIX"];
    [v28 appendString:v30];
  }

  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v31;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = self->_subtitleLabel;
  v34 = [(VTUIStyle *)self->_vtStyle proxSubtitleFont];
  [(UILabel *)v33 setFont:v34];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setText:v28];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_subtitleLabel];
  v35 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  continueButton = self->_continueButton;
  self->_continueButton = v35;

  [(VTUIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = self->_continueButton;
  v38 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  [(VTUIButton *)v37 setTitle:v38 forState:0];

  v39 = [(VTUIButton *)self->_continueButton titleLabel];
  [v39 setNumberOfLines:0];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_continueButton];
  v40 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)a3
{
  v4 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:a3.width, a3.height];
  [(UILabel *)self->_subtitleLabel setHidden:v4];
  if (v4)
  {

    [(VTUIProximityEnrollmentSuccessView *)self _setupPhoneLandscapeConstraints];
  }

  else
  {

    [(VTUIProximityEnrollmentSuccessView *)self _setupPortraitConstraints];
  }
}

- (void)_setupPortraitConstraints
{
  v93[3] = *MEMORY[0x277D85DE8];
  v3 = [(VTUIProximityEnrollmentSuccessView *)self safeAreaLayoutGuide];
  v84 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v85 = [MEMORY[0x277CBEB18] array];
  v4 = +[MGWrapper sharedMGWrapper];
  v5 = [v4 isDeviceIPad];

  containerView = self->_containerView;
  v83 = v3;
  if (v5)
  {
    v7 = [(VTUIProximityContainerView *)containerView centerYAnchor];
    v8 = [v3 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v93[0] = v9;
    v10 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    v11 = [v3 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v93[1] = v12;
    v13 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v14 = [v13 constraintEqualToConstant:?];
    v93[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
    [v85 addObjectsFromArray:v15];
  }

  else
  {
    v16 = [(VTUIProximityContainerView *)containerView bottomAnchor];
    v17 = [(VTUIProximityEnrollmentSuccessView *)self bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v19 = [v16 constraintEqualToAnchor:v17 constant:-v18];
    v92 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    [v85 addObjectsFromArray:v20];

    v7 = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
    v8 = [v3 leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v9 = [v7 constraintEqualToAnchor:v8 constant:?];
    v91[0] = v9;
    v10 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
    v11 = [v3 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-v21];
    v91[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    [v85 addObjectsFromArray:v13];
  }

  v22 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
  v82 = [v22 constraintEqualToConstant:?];

  [v85 addObject:v82];
  v74 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v70 = [v74 constraintEqualToConstant:?];
  v90[0] = v70;
  v67 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v23 = [v67 constraintEqualToConstant:?];
  v90[1] = v23;
  v24 = [(UIImageView *)self->_orbImage centerXAnchor];
  v25 = [v84 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v90[2] = v26;
  v27 = [(UIImageView *)self->_orbImage topAnchor];
  v28 = [v84 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v29 = [v27 constraintEqualToAnchor:v28 constant:?];
  v90[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
  [v85 addObjectsFromArray:v30];

  v75 = [(UIButton *)self->_dismissButton centerYAnchor];
  v71 = [v84 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v68 = [v75 constraintEqualToAnchor:v71 constant:?];
  v89[0] = v68;
  v31 = [(UIButton *)self->_dismissButton centerXAnchor];
  v32 = [v84 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v33 = [v31 constraintEqualToAnchor:v32 constant:?];
  v89[1] = v33;
  v34 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v35 = [v34 constraintEqualToConstant:?];
  v89[2] = v35;
  v36 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v37 = [v36 constraintEqualToConstant:?];
  v89[3] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
  [v85 addObjectsFromArray:v38];

  v76 = [(UILabel *)self->_titleLabel topAnchor];
  v79 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v72 = [v76 constraintEqualToAnchor:v79 constant:?];
  v88[0] = v72;
  v39 = [(UILabel *)self->_titleLabel leadingAnchor];
  v40 = [v84 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v41 = [v39 constraintEqualToAnchor:v40 constant:?];
  v88[1] = v41;
  v42 = [(UILabel *)self->_titleLabel trailingAnchor];
  v43 = [v84 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v45 = [v42 constraintEqualToAnchor:v43 constant:-v44];
  v88[2] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
  [v85 addObjectsFromArray:v46];

  v80 = [(UILabel *)self->_subtitleLabel topAnchor];
  v77 = [(UILabel *)self->_titleLabel bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessSubtitle];
  v47 = [v80 constraintEqualToAnchor:v77 constant:?];
  v87[0] = v47;
  v48 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v49 = [v84 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v50 = [v48 constraintEqualToAnchor:v49 constant:?];
  v87[1] = v50;
  v51 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v52 = [v84 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v54 = [v51 constraintEqualToAnchor:v52 constant:-v53];
  v87[2] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
  [v85 addObjectsFromArray:v55];

  v81 = [(VTUIButton *)self->_continueButton leadingAnchor];
  v78 = [v84 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v73 = [v81 constraintEqualToAnchor:v78 constant:?];
  v86[0] = v73;
  v69 = [(VTUIButton *)self->_continueButton trailingAnchor];
  v56 = [v84 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v58 = [v69 constraintEqualToAnchor:v56 constant:-v57];
  v86[1] = v58;
  v59 = [(VTUIButton *)self->_continueButton bottomAnchor];
  v60 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessFromBottom];
  v62 = [v59 constraintEqualToAnchor:v60 constant:-v61];
  v86[2] = v62;
  v63 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v64 = [v63 constraintEqualToConstant:?];
  v86[3] = v64;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:4];
  [v85 addObjectsFromArray:v65];

  [MEMORY[0x277CCAAD0] activateConstraints:v85];
  [(VTUIProximityEnrollmentSuccessView *)self setViewConstraints:v85];

  v66 = *MEMORY[0x277D85DE8];
}

- (void)_setupPhoneLandscapeConstraints
{
  v70[4] = *MEMORY[0x277D85DE8];
  v63 = [(VTUIProximityEnrollmentSuccessView *)self safeAreaLayoutGuide];
  v65 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v64 = [MEMORY[0x277CBEB18] array];
  v58 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
  v53 = [v63 centerXAnchor];
  v49 = [v58 constraintEqualToAnchor:v53];
  v70[0] = v49;
  v48 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
  v3 = [v48 constraintEqualToConstant:?];
  v70[1] = v3;
  v4 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
  v5 = [v4 constraintEqualToConstant:?];
  v70[2] = v5;
  v6 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  v7 = [(VTUIProximityEnrollmentSuccessView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v9 = [v6 constraintEqualToAnchor:v7 constant:-v8];
  v70[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
  [v64 addObjectsFromArray:v10];

  v59 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v54 = [v59 constraintEqualToConstant:?];
  v69[0] = v54;
  v50 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v11 = [v50 constraintEqualToConstant:?];
  v69[1] = v11;
  v12 = [(UIImageView *)self->_orbImage centerXAnchor];
  v13 = [v65 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v69[2] = v14;
  v15 = [(UIImageView *)self->_orbImage topAnchor];
  v16 = [v65 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImagePadding];
  v17 = [v15 constraintEqualToAnchor:v16 constant:?];
  v69[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
  [v64 addObjectsFromArray:v18];

  v60 = [(UILabel *)self->_titleLabel topAnchor];
  v55 = [v65 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessTitleLandscape];
  v19 = [v60 constraintEqualToAnchor:v55 constant:?];
  v68[0] = v19;
  v20 = [(UILabel *)self->_titleLabel leadingAnchor];
  v21 = [v65 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v22 = [v20 constraintEqualToAnchor:v21 constant:?];
  v68[1] = v22;
  v23 = [(UILabel *)self->_titleLabel trailingAnchor];
  v24 = [v65 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v26 = [v23 constraintEqualToAnchor:v24 constant:-v25];
  v68[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  [v64 addObjectsFromArray:v27];

  v61 = [(UIButton *)self->_dismissButton centerYAnchor];
  v56 = [v65 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v51 = [v61 constraintEqualToAnchor:v56 constant:?];
  v67[0] = v51;
  v28 = [(UIButton *)self->_dismissButton centerXAnchor];
  v29 = [v65 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v30 = [v28 constraintEqualToAnchor:v29 constant:?];
  v67[1] = v30;
  v31 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v32 = [v31 constraintEqualToConstant:?];
  v67[2] = v32;
  v33 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v34 = [v33 constraintEqualToConstant:?];
  v67[3] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  [v64 addObjectsFromArray:v35];

  v62 = [(VTUIButton *)self->_continueButton leadingAnchor];
  v57 = [v65 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v52 = [v62 constraintEqualToAnchor:v57 constant:?];
  v66[0] = v52;
  v36 = [(VTUIButton *)self->_continueButton trailingAnchor];
  v37 = [v65 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v39 = [v36 constraintEqualToAnchor:v37 constant:-v38];
  v66[1] = v39;
  v40 = [(VTUIButton *)self->_continueButton bottomAnchor];
  v41 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingSuccessFromBottomLandscape];
  v43 = [v40 constraintEqualToAnchor:v41 constant:-v42];
  v66[2] = v43;
  v44 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v45 = [v44 constraintEqualToConstant:?];
  v66[3] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
  [v64 addObjectsFromArray:v46];

  [MEMORY[0x277CCAAD0] activateConstraints:v64];
  v47 = *MEMORY[0x277D85DE8];
}

@end