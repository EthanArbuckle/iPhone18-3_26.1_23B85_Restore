@interface VTUIProximityEnrollmentLanguageOptionsView
- (VTUIProximityEnrollmentLanguageOptionsView)initWithFrame:(CGRect)frame languageOptions:(id)options;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupContent;
@end

@implementation VTUIProximityEnrollmentLanguageOptionsView

- (VTUIProximityEnrollmentLanguageOptionsView)initWithFrame:(CGRect)frame languageOptions:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = VTUIProximityEnrollmentLanguageOptionsView;
  height = [(VTUIProximityEnrollmentLanguageOptionsView *)&v15 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = +[VTUIStyle sharedStyle];
    vtStyle = height->_vtStyle;
    height->_vtStyle = v12;

    objc_storeStrong(&height->_continueButtonsLanguages, options);
    [(VTUIProximityEnrollmentLanguageOptionsView *)height _setupContent];
    [(VTUIProximityEnrollmentLanguageOptionsView *)height _setupConstraintsToSize:width, height];
  }

  return height;
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
  proxHeaderFont = [(VTUIStyle *)self->_vtStyle proxHeaderFont];
  [(UILabel *)v8 setFont:proxHeaderFont];

  v10 = self->_titleLabel;
  proxInstructionColor = [(VTUIStyle *)self->_vtStyle proxInstructionColor];
  [(UILabel *)v10 setTextColor:proxInstructionColor];

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
  proxFooterFont = [(VTUIStyle *)self->_vtStyle proxFooterFont];
  [(UILabel *)v25 setFont:proxFooterFont];

  v27 = self->_settingsLabel;
  footerTextColor = [(VTUIStyle *)self->_vtStyle footerTextColor];
  [(UILabel *)v27 setTextColor:footerTextColor];

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

  titleLabel = [(VTUIButton *)self->_continueButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [(UIView *)self->_footerView addSubview:self->_continueButton];
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v156[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityEnrollmentLanguageOptionsView *)self safeAreaLayoutGuide];
  array = [MEMORY[0x277CBEB18] array];
  height = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v9 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v9 isDeviceIPad];

  containerView = self->_containerView;
  v145 = array;
  v141 = height;
  v135 = safeAreaLayoutGuide;
  if (isDeviceIPad)
  {
    centerYAnchor = [(VTUIProximityContainerView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v156[0] = v13;
    centerXAnchor = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v156[1] = v16;
    widthAnchor = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v18 = [widthAnchor constraintEqualToConstant:?];
    v156[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
    [v145 addObjectsFromArray:v19];

    array = v145;
    v20 = v141;

    if (!v141)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  bottomAnchor = [(VTUIProximityContainerView *)containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityEnrollmentLanguageOptionsView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v23];
  v155 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
  [array addObjectsFromArray:v25];

  v26 = self->_containerView;
  if (height)
  {
    centerXAnchor3 = [(VTUIProximityContainerView *)v26 centerXAnchor];
    centerXAnchor4 = [safeAreaLayoutGuide centerXAnchor];
    v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v154[0] = v29;
    widthAnchor2 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v31 = [widthAnchor2 constraintEqualToConstant:?];
    v154[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:2];
    [array addObjectsFromArray:v32];

    v20 = v141;
    goto LABEL_6;
  }

  leadingAnchor = [(VTUIProximityContainerView *)v26 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v153[0] = v35;
  trailingAnchor = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v38];
  v153[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:2];
  [array addObjectsFromArray:v40];

  v20 = v141;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v41 = v33;
  heightAnchor = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:v41];

  v134 = v43;
  [array addObject:v43];
  safeAreaLayoutGuide2 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
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
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTitleFirstBaselineFromTop];
  v47 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  v152[0] = v47;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v152[1] = v50;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v46];
  v152[2] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:3];
  [v145 addObjectsFromArray:v54];

  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v55 = [centerYAnchor3 constraintEqualToAnchor:topAnchor2 constant:?];
  v151[0] = v55;
  centerXAnchor5 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v58 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:?];
  v151[1] = v58;
  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v60 = [widthAnchor3 constraintEqualToConstant:?];
  v151[2] = v60;
  heightAnchor2 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v62 = [heightAnchor2 constraintEqualToConstant:?];
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
  leadingAnchor5 = [(UIView *)self->_languagesView leadingAnchor];
  leadingAnchor6 = [(VTUIProximityContainerView *)self->_containerView leadingAnchor];
  v122 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v150[0] = v122;
  trailingAnchor6 = [(UIView *)self->_languagesView trailingAnchor];
  trailingAnchor7 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v68 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v150[1] = v68;
  centerYAnchor4 = [(UIPickerView *)self->_languagesPickerView centerYAnchor];
  centerYAnchor5 = [(VTUIProximityContainerView *)self->_containerView centerYAnchor];
  v71 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
  v150[2] = v71;
  heightAnchor3 = [(UIView *)self->_languagesView heightAnchor];
  v73 = [heightAnchor3 constraintEqualToConstant:v66];
  v150[3] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
  [v145 addObjectsFromArray:v74];

  centerXAnchor6 = [(UIPickerView *)self->_languagesPickerView centerXAnchor];
  centerXAnchor7 = [(UIView *)self->_languagesView centerXAnchor];
  v76 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
  v149[0] = v76;
  centerYAnchor6 = [(UIPickerView *)self->_languagesPickerView centerYAnchor];
  centerYAnchor7 = [(UIView *)self->_languagesView centerYAnchor];
  v79 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  v149[1] = v79;
  heightAnchor4 = [(UIPickerView *)self->_languagesPickerView heightAnchor];
  heightAnchor5 = [(UIView *)self->_languagesView heightAnchor];
  v82 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v149[2] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  [v145 addObjectsFromArray:v83];

  topAnchor3 = [(UIView *)self->_footerView topAnchor];
  bottomAnchor3 = [(UIPickerView *)self->_languagesPickerView bottomAnchor];
  v123 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v148[0] = v123;
  bottomAnchor4 = [(UIView *)self->_footerView bottomAnchor];
  bottomAnchor5 = [safeAreaLayoutGuide2 bottomAnchor];
  v85 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v148[1] = v85;
  leadingAnchor7 = [(UIView *)self->_footerView leadingAnchor];
  leadingAnchor8 = [safeAreaLayoutGuide2 leadingAnchor];
  v88 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v148[2] = v88;
  trailingAnchor8 = [(UIView *)self->_footerView trailingAnchor];
  trailingAnchor9 = [safeAreaLayoutGuide2 trailingAnchor];
  v91 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
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
  heightAnchor6 = [(VTUIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v133 = [heightAnchor6 constraintEqualToConstant:?];
  v147[0] = v133;
  leadingAnchor9 = [(VTUIButton *)self->_continueButton leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_footerView leadingAnchor];
  v121 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:v95];
  v147[1] = v121;
  trailingAnchor10 = [(VTUIButton *)self->_continueButton trailingAnchor];
  trailingAnchor11 = [(UIView *)self->_footerView trailingAnchor];
  v101 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-v98];
  v147[2] = v101;
  bottomAnchor6 = [(VTUIButton *)self->_continueButton bottomAnchor];
  bottomAnchor7 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxPaddingFromBottom];
  v105 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-v104];
  v147[3] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
  [v145 addObjectsFromArray:v106];

  leadingAnchor11 = [(UILabel *)self->_settingsLabel leadingAnchor];
  leadingAnchor12 = [(UIView *)self->_footerView leadingAnchor];
  v107 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v146[0] = v107;
  trailingAnchor12 = [(UILabel *)self->_settingsLabel trailingAnchor];
  trailingAnchor13 = [(UIView *)self->_footerView trailingAnchor];
  v110 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  v146[1] = v110;
  bottomAnchor8 = [(UILabel *)self->_settingsLabel bottomAnchor];
  topAnchor4 = [(VTUIButton *)self->_continueButton topAnchor];
  [(VTUIStyle *)self->_vtStyle proxSettingsLabelBottomMargin];
  v114 = [bottomAnchor8 constraintEqualToAnchor:topAnchor4 constant:-v113];
  v146[2] = v114;
  v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
  [v145 addObjectsFromArray:v115];

  [MEMORY[0x277CCAAD0] activateConstraints:v145];
  v116 = [MEMORY[0x277CBEA60] arrayWithArray:v145];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v116;

  v118 = *MEMORY[0x277D85DE8];
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (!languageCode)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale localeIdentifier];
  }

  v10 = [(NSArray *)self->_continueButtonsLanguages objectAtIndex:row];
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v12 = [mEMORY[0x277CEF2D8] localizedCompactNameForSiriLanguage:v10 inDisplayLanguage:languageCode];
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