@interface VTUIProximityEnrollmentLanguageOptionsView
- (VTUIProximityEnrollmentLanguageOptionsView)initWithFrame:(CGRect)a3 languageOptions:(id)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupContent;
@end

@implementation VTUIProximityEnrollmentLanguageOptionsView

- (VTUIProximityEnrollmentLanguageOptionsView)initWithFrame:(CGRect)a3 languageOptions:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = VTUIProximityEnrollmentLanguageOptionsView;
  v11 = [(VTUIProximityEnrollmentLanguageOptionsView *)&v15 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = +[VTUIStyle sharedStyle];
    vtStyle = v11->_vtStyle;
    v11->_vtStyle = v12;

    objc_storeStrong(&v11->_continueButtonsLanguages, a4);
    [(VTUIProximityEnrollmentLanguageOptionsView *)v11 _setupContent];
    [(VTUIProximityEnrollmentLanguageOptionsView *)v11 _setupConstraintsToSize:width, height];
  }

  return v11;
}

- (void)_setupContent
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 136315138;
    v38 = "[VTUIProximityEnrollmentLanguageOptionsView _setupContent]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v37, 0xCu);
  }

  v4 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v4;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentLanguageOptionsView *)self addSubview:self->_containerView];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v6;

  [(UILabel *)self->_titleLabel setNumberOfLines:3];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_titleLabel;
  v9 = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v8 setFont:v9];

  v10 = self->_titleLabel;
  v11 = [(VTUIStyle *)self->_vtStyle proxInstructionColor];
  [(UILabel *)v10 setTextColor:v11];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v12 = self->_titleLabel;
  v13 = +[VTUIStringsHelper sharedStringsHelper];
  v14 = [v13 uiLocalizedStringForKey:@"TEXT_TITLE_LANGUAGE_OPTIONS"];
  [(UILabel *)v12 setText:v14];

  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v15 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v15;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v17 = objc_alloc_init(MEMORY[0x277D75D18]);
  footerView = self->_footerView;
  self->_footerView = v17;

  [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentLanguageOptionsView *)self addSubview:self->_footerView];
  v19 = objc_alloc_init(MEMORY[0x277D75D18]);
  languagesView = self->_languagesView;
  self->_languagesView = v19;

  [(UIView *)self->_languagesView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollmentLanguageOptionsView *)self addSubview:self->_languagesView];
  v21 = objc_alloc_init(MEMORY[0x277D75840]);
  languagesPickerView = self->_languagesPickerView;
  self->_languagesPickerView = v21;

  [(UIPickerView *)self->_languagesPickerView setDelegate:self];
  [(UIPickerView *)self->_languagesPickerView setDataSource:self];
  [(UIPickerView *)self->_languagesPickerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_languagesView addSubview:self->_languagesPickerView];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  settingsLabel = self->_settingsLabel;
  self->_settingsLabel = v23;

  [(UILabel *)self->_settingsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_settingsLabel;
  v26 = [(VTUIStyle *)self->_vtStyle proxFooterFont];
  [(UILabel *)v25 setFont:v26];

  v27 = self->_settingsLabel;
  v28 = [(VTUIStyle *)self->_vtStyle footerTextColor];
  [(UILabel *)v27 setTextColor:v28];

  [(UILabel *)self->_settingsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_settingsLabel setTextAlignment:1];
  [(UILabel *)self->_settingsLabel setNumberOfLines:0];
  v29 = self->_settingsLabel;
  v30 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"TEXT_CHANGE_IN_SETTINGS"];
  [(UILabel *)v29 setText:v30];

  [(UIView *)self->_footerView addSubview:self->_settingsLabel];
  v31 = +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  continueButton = self->_continueButton;
  self->_continueButton = v31;

  [(VTUIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = self->_continueButton;
  v34 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  [(VTUIButton *)v33 setTitle:v34 forState:0];

  v35 = [(VTUIButton *)self->_continueButton titleLabel];
  [v35 setNumberOfLines:0];

  [(UIView *)self->_footerView addSubview:self->_continueButton];
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v156[3] = *MEMORY[0x277D85DE8];
  v6 = [(VTUIProximityEnrollmentLanguageOptionsView *)self safeAreaLayoutGuide];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v9 = +[MGWrapper sharedMGWrapper];
  v10 = [v9 isDeviceIPad];

  containerView = self->_containerView;
  v145 = v7;
  v141 = v8;
  v135 = v6;
  if (v10)
  {
    v138 = [(VTUIProximityContainerView *)containerView centerYAnchor];
    v12 = [v6 centerYAnchor];
    v13 = [v138 constraintEqualToAnchor:v12];
    v156[0] = v13;
    v14 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    v15 = [v6 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v156[1] = v16;
    v17 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v18 = [v17 constraintEqualToConstant:?];
    v156[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
    [v145 addObjectsFromArray:v19];

    v7 = v145;
    v20 = v141;

    if (!v141)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  v21 = [(VTUIProximityContainerView *)containerView bottomAnchor];
  v22 = [(VTUIProximityEnrollmentLanguageOptionsView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v24 = [v21 constraintEqualToAnchor:v22 constant:-v23];
  v155 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
  [v7 addObjectsFromArray:v25];

  v26 = self->_containerView;
  if (v8)
  {
    v27 = [(VTUIProximityContainerView *)v26 centerXAnchor];
    v28 = [v6 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v154[0] = v29;
    v30 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v31 = [v30 constraintEqualToConstant:?];
    v154[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:2];
    [v7 addObjectsFromArray:v32];

    v20 = v141;
    goto LABEL_6;
  }

  v139 = [(VTUIProximityContainerView *)v26 leadingAnchor];
  v34 = [v6 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v35 = [v139 constraintEqualToAnchor:v34 constant:?];
  v153[0] = v35;
  v36 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v37 = [v6 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v39 = [v36 constraintEqualToAnchor:v37 constant:-v38];
  v153[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:2];
  [v7 addObjectsFromArray:v40];

  v20 = v141;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v41 = v33;
  v42 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v43 = [v42 constraintEqualToConstant:v41];

  v134 = v43;
  [v7 addObject:v43];
  v140 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  vtStyle = self->_vtStyle;
  if (v20)
  {
    [(VTUIStyle *)vtStyle proxTitleTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxTrailing];
  }

  v46 = v45;
  v136 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v128 = [v140 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTitleFirstBaselineFromTop];
  v47 = [v136 constraintEqualToAnchor:v128 constant:?];
  v152[0] = v47;
  v48 = [(UILabel *)self->_titleLabel leadingAnchor];
  v49 = [v140 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v50 = [v48 constraintEqualToAnchor:v49 constant:?];
  v152[1] = v50;
  v51 = [(UILabel *)self->_titleLabel trailingAnchor];
  v52 = [v140 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v46];
  v152[2] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:3];
  [v145 addObjectsFromArray:v54];

  v137 = [(UIButton *)self->_dismissButton centerYAnchor];
  v129 = [v140 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v55 = [v137 constraintEqualToAnchor:v129 constant:?];
  v151[0] = v55;
  v56 = [(UIButton *)self->_dismissButton centerXAnchor];
  v57 = [v140 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v58 = [v56 constraintEqualToAnchor:v57 constant:?];
  v151[1] = v58;
  v59 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v60 = [v59 constraintEqualToConstant:?];
  v151[2] = v60;
  v61 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v62 = [v61 constraintEqualToConstant:?];
  v151[3] = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  [v145 addObjectsFromArray:v63];

  v64 = self->_vtStyle;
  if (v141)
  {
    [(VTUIStyle *)v64 proxViewLanguageOptionsHeightPhoneLandscape];
  }

  else
  {
    [(VTUIStyle *)v64 proxViewLanguageOptionsHeight];
  }

  v66 = v65;
  v130 = [(UIView *)self->_languagesView leadingAnchor];
  v125 = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
  v122 = [v130 constraintEqualToAnchor:v125];
  v150[0] = v122;
  v119 = [(UIView *)self->_languagesView trailingAnchor];
  v67 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v68 = [v119 constraintEqualToAnchor:v67];
  v150[1] = v68;
  v69 = [(UIPickerView *)self->_languagesPickerView centerYAnchor];
  v70 = [(VTUIProximityContainerView *)self->_containerView centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];
  v150[2] = v71;
  v72 = [(UIView *)self->_languagesView heightAnchor];
  v73 = [v72 constraintEqualToConstant:v66];
  v150[3] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
  [v145 addObjectsFromArray:v74];

  v131 = [(UIPickerView *)self->_languagesPickerView centerXAnchor];
  v75 = [(UIView *)self->_languagesView centerXAnchor];
  v76 = [v131 constraintEqualToAnchor:v75];
  v149[0] = v76;
  v77 = [(UIPickerView *)self->_languagesPickerView centerYAnchor];
  v78 = [(UIView *)self->_languagesView centerYAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  v149[1] = v79;
  v80 = [(UIPickerView *)self->_languagesPickerView heightAnchor];
  v81 = [(UIView *)self->_languagesView heightAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
  v149[2] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  [v145 addObjectsFromArray:v83];

  v132 = [(UIView *)self->_footerView topAnchor];
  v126 = [(UIPickerView *)self->_languagesPickerView bottomAnchor];
  v123 = [v132 constraintEqualToAnchor:v126];
  v148[0] = v123;
  v120 = [(UIView *)self->_footerView bottomAnchor];
  v84 = [v140 bottomAnchor];
  v85 = [v120 constraintEqualToAnchor:v84];
  v148[1] = v85;
  v86 = [(UIView *)self->_footerView leadingAnchor];
  v87 = [v140 leadingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];
  v148[2] = v88;
  v89 = [(UIView *)self->_footerView trailingAnchor];
  v90 = [v140 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];
  v148[3] = v91;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];
  [v145 addObjectsFromArray:v92];

  v93 = self->_vtStyle;
  if (v141)
  {
    [(VTUIStyle *)v93 proxLeadingLandscape];
    v95 = v94;
    [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)v93 proxLeading];
    v95 = v97;
    [(VTUIStyle *)self->_vtStyle proxTrailing];
  }

  v98 = v96;
  v142 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v133 = [v142 constraintEqualToConstant:?];
  v147[0] = v133;
  v127 = [(VTUIButton *)self->_continueButton leadingAnchor];
  v124 = [(UIView *)self->_footerView leadingAnchor];
  v121 = [v127 constraintEqualToAnchor:v124 constant:v95];
  v147[1] = v121;
  v99 = [(VTUIButton *)self->_continueButton trailingAnchor];
  v100 = [(UIView *)self->_footerView trailingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:-v98];
  v147[2] = v101;
  v102 = [(VTUIButton *)self->_continueButton bottomAnchor];
  v103 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFromBottom];
  v105 = [v102 constraintEqualToAnchor:v103 constant:-v104];
  v147[3] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
  [v145 addObjectsFromArray:v106];

  v144 = [(UILabel *)self->_settingsLabel leadingAnchor];
  v143 = [(UIView *)self->_footerView leadingAnchor];
  v107 = [v144 constraintEqualToAnchor:v143];
  v146[0] = v107;
  v108 = [(UILabel *)self->_settingsLabel trailingAnchor];
  v109 = [(UIView *)self->_footerView trailingAnchor];
  v110 = [v108 constraintEqualToAnchor:v109];
  v146[1] = v110;
  v111 = [(UILabel *)self->_settingsLabel bottomAnchor];
  v112 = [(VTUIButton *)self->_continueButton topAnchor];
  [(VTUIStyle *)self->_vtStyle proxSettingsLabelBottomMargin];
  v114 = [v111 constraintEqualToAnchor:v112 constant:-v113];
  v146[2] = v114;
  v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
  [v145 addObjectsFromArray:v115];

  [MEMORY[0x277CCAAD0] activateConstraints:v145];
  v116 = [MEMORY[0x277CBEA60] arrayWithArray:v145];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v116;

  v118 = *MEMORY[0x277D85DE8];
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [v7 languageCode];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v9 localeIdentifier];
  }

  v10 = [(NSArray *)self->_continueButtonsLanguages objectAtIndex:a4];
  v11 = [MEMORY[0x277CEF2D8] sharedInstance];
  v12 = [v11 localizedCompactNameForSiriLanguage:v10 inDisplayLanguage:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  v16 = MEMORY[0x277CCACA8];
  v17 = +[VTUIStringsHelper sharedStringsHelper];
  v18 = [v17 uiLocalizedStringForKey:@"BUTTON_LANG_OPTION"];
  v19 = +[VTUIStringsHelper sharedStringsHelper];
  v20 = [v19 uiLocalizedStringForKey:v15];

  v21 = [v16 stringWithFormat:v18, v20];

  return v21;
}

@end