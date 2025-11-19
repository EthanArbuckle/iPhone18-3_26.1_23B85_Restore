@interface VTUIVoiceSelectionProximityView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (VTUIVoiceSelectionProximityView)initWithTitle:(id)a3 allowsRandomVoiceSelection:(BOOL)a4 forSelectionStyle:(int64_t)a5;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupContentWithTitle:(id)a3;
- (void)setContentView:(id)a3;
@end

@implementation VTUIVoiceSelectionProximityView

- (VTUIVoiceSelectionProximityView)initWithTitle:(id)a3 allowsRandomVoiceSelection:(BOOL)a4 forSelectionStyle:(int64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = VTUIVoiceSelectionProximityView;
  v9 = [(VTUIVoiceSelectionProximityView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v9)
  {
    v10 = +[VTUIStyle sharedStyle];
    vtStyle = v9->_vtStyle;
    v9->_vtStyle = v10;

    v9->_allowsRandomVoiceSelection = a4;
    v9->_selectionStyle = a5;
    v9->_isHidingCompactBackgroundCardView = 0;
    [(VTUIVoiceSelectionProximityView *)v9 _setupContentWithTitle:v8];
    [(VTUIVoiceSelectionProximityView *)v9 _setupConstraintsToSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v12 = [MEMORY[0x277D75348] clearColor];
    [(VTUIVoiceSelectionProximityView *)v9 setBackgroundColor:v12];
  }

  return v9;
}

- (void)_setupContentWithTitle:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 136315138;
    v40 = "[VTUIVoiceSelectionProximityView _setupContentWithTitle:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Setup content", &v39, 0xCu);
  }

  v6 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = v6;

  [(VTUIProximityContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIVoiceSelectionProximityView *)self addSubview:self->_containerView];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  v9 = [(VTUIStyle *)self->_vtStyle siriIconImage];
  v10 = [v8 initWithImage:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_orbImage, v10);
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_orbImage];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setNumberOfLines:3];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_titleLabel;
  vtStyle = self->_vtStyle;
  if (self->_selectionStyle == 1)
  {
    v15 = [(VTUIStyle *)vtStyle PRXheaderFont];
    [(UILabel *)v13 setFont:v15];

    v16 = self->_titleLabel;
    [(VTUIStyle *)self->_vtStyle PRXheaderColor];
  }

  else
  {
    v17 = [(VTUIStyle *)vtStyle proxHeaderFont];
    [(UILabel *)v13 setFont:v17];

    v16 = self->_titleLabel;
    [(VTUIStyle *)self->_vtStyle proxHeaderColor];
  }
  v18 = ;
  [(UILabel *)v16 setTextColor:v18];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setText:v4];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_titleLabel];
  v19 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v19;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_dismissButton];
  v21 = objc_alloc_init(MEMORY[0x277D75D18]);
  footerView = self->_footerView;
  self->_footerView = v21;

  [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIVoiceSelectionProximityView *)self addSubview:self->_footerView];
  if (self->_selectionStyle == 1)
  {
    +[VTUIButton _vtuiProximityButtonWithPRXStyle];
  }

  else
  {
    +[VTUIButton _vtuiProximityButtonWithPrimaryStyle];
  }
  v23 = ;
  continueButton = self->_continueButton;
  self->_continueButton = v23;

  [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_continueButton;
  v26 = [(VTUIStyle *)self->_vtStyle VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
  [(UIButton *)v25 setTitle:v26 forState:0];

  v27 = [(UIButton *)self->_continueButton titleLabel];
  [v27 setNumberOfLines:0];

  [(UIView *)self->_footerView addSubview:self->_continueButton];
  if (self->_allowsRandomVoiceSelection)
  {
    v28 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    self->_chooseRandomVoiceButton = v28;

    v30 = [(UIButton *)self->_chooseRandomVoiceButton titleLabel];
    v31 = [(VTUIStyle *)self->_vtStyle proxCancelFont];
    [v30 setFont:v31];

    [(UIButton *)self->_chooseRandomVoiceButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = self->_chooseRandomVoiceButton;
    v33 = self->_vtStyle;
    if (self->_selectionStyle == 1)
    {
      v34 = [(VTUIStyle *)v33 homeAppTintColor];
      [(UIButton *)v32 setTintColor:v34];

      v32 = self->_chooseRandomVoiceButton;
      v33 = self->_vtStyle;
      v35 = @"BUTTON_CHOOSE_FOR_ME_CAPITALIZED";
    }

    else
    {
      v35 = @"BUTTON_CHOOSE_FOR_ME";
    }

    v36 = [(VTUIStyle *)v33 VTUIDeviceSpecificString:v35];
    [(UIButton *)v32 setTitle:v36 forState:0];

    v37 = [(UIButton *)self->_chooseRandomVoiceButton titleLabel];
    [v37 setNumberOfLines:0];

    [(UIView *)self->_footerView addSubview:self->_chooseRandomVoiceButton];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)setContentView:(id)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_contentView, a3);
  v26 = a3;
  [(VTUIProximityContainerView *)self->_containerView addSubview:self->_contentView];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(UIView *)self->_footerView topAnchor];
  v6 = [(UIView *)self->_contentView bottomAnchor];
  v7 = +[VTUIStyle sharedStyle];
  [v7 proxBottomPaddingVoiceSelectionOptions];
  v20 = [v5 constraintEqualToAnchor:v6 constant:?];

  LODWORD(v8) = 1132068864;
  [v20 setPriority:v8];
  v21 = MEMORY[0x277CCAAD0];
  v25 = [(UIView *)self->_contentView topAnchor];
  v23 = [(UILabel *)self->_titleLabel bottomAnchor];
  v24 = +[VTUIStyle sharedStyle];
  [v24 proxTopPaddingVoiceSelectionOptions];
  v22 = [v25 constraintEqualToAnchor:v23 constant:?];
  v27[0] = v22;
  v9 = [(UIView *)self->_contentView leadingAnchor];
  v10 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v11 = [v10 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
  v12 = [v9 constraintEqualToAnchor:v11 constant:?];
  v27[1] = v12;
  v13 = [(UIView *)self->_contentView trailingAnchor];
  v14 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  v15 = [v14 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  v17 = [v13 constraintEqualToAnchor:v15 constant:-v16];
  v27[2] = v17;
  v27[3] = v20;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v21 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setupConstraintsToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v178[3] = *MEMORY[0x277D85DE8];
  v6 = [(VTUIVoiceSelectionProximityView *)self safeAreaLayoutGuide];
  v7 = [MEMORY[0x277CBEB18] array];
  v157 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v8 = +[MGWrapper sharedMGWrapper];
  v9 = [v8 isDeviceIPad];

  containerView = self->_containerView;
  v164 = v7;
  v152 = v6;
  if (v9)
  {
    v161 = [(VTUIProximityContainerView *)containerView centerYAnchor];
    v11 = [v6 centerYAnchor];
    v12 = [v161 constraintEqualToAnchor:v11];
    v178[0] = v12;
    v13 = [(VTUIProximityContainerView *)self->_containerView centerXAnchor];
    v14 = [v6 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v178[1] = v15;
    v16 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    v17 = [v16 constraintEqualToConstant:?];
    v178[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:3];
    [v164 addObjectsFromArray:v18];

    v7 = v164;
    v19 = v157;
    if (!v157)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  v20 = [(VTUIProximityContainerView *)containerView bottomAnchor];
  v21 = [(VTUIVoiceSelectionProximityView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v23 = [v20 constraintEqualToAnchor:v21 constant:-v22];
  v177 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v177 count:1];
  [v7 addObjectsFromArray:v24];

  v25 = self->_containerView;
  if (v157)
  {
    v26 = [(VTUIProximityContainerView *)v25 centerXAnchor];
    v27 = [v6 centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v176[0] = v28;
    v29 = [(VTUIProximityContainerView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v30 = [v29 constraintEqualToConstant:?];
    v176[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];
    [v7 addObjectsFromArray:v31];

    v19 = v157;
    goto LABEL_6;
  }

  v162 = [(VTUIProximityContainerView *)v25 leadingAnchor];
  v33 = [v6 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v34 = [v162 constraintEqualToAnchor:v33 constant:?];
  v175[0] = v34;
  v35 = [(VTUIProximityContainerView *)self->_containerView trailingAnchor];
  v36 = [v6 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v38 = [v35 constraintEqualToAnchor:v36 constant:-v37];
  v175[1] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
  [v7 addObjectsFromArray:v39];

  v19 = 0;
LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v40 = v32;
  v41 = [(VTUIProximityContainerView *)self->_containerView heightAnchor];
  v42 = [v41 constraintGreaterThanOrEqualToConstant:v40];

  v151 = v42;
  [v7 addObject:v42];
  v43 = [(VTUIProximityContainerView *)self->_containerView safeAreaLayoutGuide];
  vtStyle = self->_vtStyle;
  if (v19)
  {
    [(VTUIStyle *)vtStyle proxTitleTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxTrailing];
  }

  v46 = v45;
  v153 = [(UIImageView *)self->_orbImage firstBaselineAnchor];
  v146 = [v43 topAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageOffsetFromTopEnrollment];
  v143 = [v153 constraintEqualToAnchor:v146 constant:?];
  v174[0] = v143;
  v47 = [(UIImageView *)self->_orbImage centerXAnchor];
  v48 = [(VTUIVoiceSelectionProximityView *)self centerXAnchor];
  [v47 constraintEqualToAnchor:v48];
  v49 = v163 = v43;
  v174[1] = v49;
  v50 = [(UIImageView *)self->_orbImage widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v51 = [v50 constraintEqualToConstant:?];
  v174[2] = v51;
  v52 = [(UIImageView *)self->_orbImage heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v53 = [v52 constraintEqualToConstant:?];
  v174[3] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:4];
  [v164 addObjectsFromArray:v54];

  v154 = [(UILabel *)self->_titleLabel topAnchor];
  v55 = [(UIImageView *)self->_orbImage bottomAnchor];
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrbImage];
  v56 = [v154 constraintEqualToAnchor:v55 constant:?];
  v173[0] = v56;
  v57 = [(UILabel *)self->_titleLabel leadingAnchor];
  v58 = [v163 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v59 = [v57 constraintEqualToAnchor:v58 constant:?];
  v173[1] = v59;
  v60 = [(UILabel *)self->_titleLabel trailingAnchor];
  v61 = [v163 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-v46];
  v173[2] = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:3];
  [v164 addObjectsFromArray:v63];

  selectionStyle = self->_selectionStyle;
  v65 = [(UIButton *)self->_dismissButton centerYAnchor];
  v66 = [v163 topAnchor];
  v67 = self->_vtStyle;
  v155 = v65;
  if (selectionStyle == 1)
  {
    [(VTUIStyle *)v67 PRXdismissButtonMargin];
    v68 = [v65 constraintEqualToAnchor:v66 constant:?];
    v172[0] = v68;
    v69 = [(UIButton *)self->_dismissButton centerXAnchor];
    v70 = [v163 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle PRXdismissButtonMargin];
    v72 = [v69 constraintEqualToAnchor:v70 constant:-v71];
    v172[1] = v72;
    v73 = v172;
  }

  else
  {
    [(VTUIStyle *)v67 proxTrainingDismissButtonVerticalPaddingTop];
    v68 = [v65 constraintEqualToAnchor:v66 constant:?];
    v171[0] = v68;
    v69 = [(UIButton *)self->_dismissButton centerXAnchor];
    v70 = [v163 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
    v72 = [v69 constraintEqualToAnchor:v70 constant:?];
    v171[1] = v72;
    v73 = v171;
  }

  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  [v164 addObjectsFromArray:v74];

  v75 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v76 = [v75 constraintEqualToConstant:?];
  v170[0] = v76;
  v77 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v78 = [v77 constraintEqualToConstant:?];
  v170[1] = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
  [v164 addObjectsFromArray:v79];

  v147 = [(UIView *)self->_footerView topAnchor];
  v144 = [(UIButton *)self->_continueButton topAnchor];
  v140 = [v147 constraintEqualToAnchor:v144];
  v169[0] = v140;
  v137 = [(UIView *)self->_footerView bottomAnchor];
  v134 = [v163 bottomAnchor];
  v80 = [v137 constraintEqualToAnchor:v134];
  v169[1] = v80;
  v81 = [(UIView *)self->_footerView leadingAnchor];
  v82 = [v163 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  v169[2] = v83;
  v84 = [(UIView *)self->_footerView trailingAnchor];
  v85 = [v163 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  v169[3] = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:4];
  [v164 addObjectsFromArray:v87];

  v88 = self->_vtStyle;
  if (v157)
  {
    [(VTUIStyle *)v88 proxLeadingLandscape];
    v90 = v89;
    [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)v88 proxLeading];
    v90 = v92;
    [(VTUIStyle *)self->_vtStyle proxTrailing];
  }

  v93 = v91;
  v158 = [(UIButton *)self->_continueButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v148 = [v158 constraintEqualToConstant:?];
  v168[0] = v148;
  v94 = [(UIButton *)self->_continueButton leadingAnchor];
  v95 = [(UIView *)self->_footerView leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:v90];
  v168[1] = v96;
  v97 = [(UIButton *)self->_continueButton trailingAnchor];
  v98 = [(UIView *)self->_footerView trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:-v93];
  v168[2] = v99;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:3];
  [v164 addObjectsFromArray:v100];

  if (self->_allowsRandomVoiceSelection)
  {
    v101 = +[VTUIFeatureFlags isNaturalUIEnabled];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    if (v101)
    {
      v103 = [(UIButton *)chooseRandomVoiceButton topAnchor];
      v159 = [(UIButton *)self->_continueButton bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingNotNowButtonVerticalPaddingTop];
      v149 = [v103 constraintEqualToAnchor:v159 constant:?];
      v167[0] = v149;
      v104 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      v156 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
      v145 = [v104 constraintEqualToAnchor:v156 constant:-v105];
      v167[1] = v145;
      v141 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      v138 = [(UIButton *)self->_continueButton leadingAnchor];
      v135 = [v141 constraintEqualToAnchor:v138];
      v167[2] = v135;
      v132 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      v130 = [(UIButton *)self->_continueButton trailingAnchor];
      v129 = [v132 constraintEqualToAnchor:v130];
      v167[3] = v129;
      v128 = [(UIButton *)self->_chooseRandomVoiceButton heightAnchor];
      [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
      v106 = [v128 constraintEqualToConstant:?];
      v167[4] = v106;
      v107 = [(UIButton *)self->_continueButton bottomAnchor];
      v108 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
      [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
      v110 = [v107 constraintEqualToAnchor:v108 constant:-v109];
      v167[5] = v110;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:6];
      v112 = v164;
      [v164 addObjectsFromArray:v111];

      v113 = v149;
      v114 = v159;

      v115 = v141;
    }

    else
    {
      v142 = [(UIButton *)chooseRandomVoiceButton firstBaselineAnchor];
      v160 = [(UIButton *)self->_continueButton bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
      v150 = [v142 constraintEqualToAnchor:v160 constant:?];
      v166[0] = v150;
      v104 = [(UIButton *)self->_chooseRandomVoiceButton firstBaselineAnchor];
      v156 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
      [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
      v145 = [v104 constraintEqualToAnchor:v156 constant:-v117];
      v166[1] = v145;
      v139 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      v136 = [(UIButton *)self->_continueButton leadingAnchor];
      v133 = [v139 constraintEqualToAnchor:v136];
      v166[2] = v133;
      v131 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      v118 = [(UIButton *)self->_continueButton trailingAnchor];
      v119 = [v131 constraintEqualToAnchor:v118];
      v166[3] = v119;
      v120 = [(UIButton *)self->_continueButton bottomAnchor];
      v121 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
      [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
      v123 = [v120 constraintEqualToAnchor:v121 constant:-v122];
      v166[4] = v123;
      v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:5];
      v112 = v164;
      [v164 addObjectsFromArray:v124];

      v113 = v150;
      v103 = v142;

      v114 = v160;
      v115 = v139;
    }
  }

  else
  {
    v103 = [(UIButton *)self->_continueButton bottomAnchor];
    v114 = [(VTUIProximityContainerView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingFromBottom];
    v113 = [v103 constraintEqualToAnchor:v114 constant:-v116];
    v165 = v113;
    v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:1];
    [v164 addObjectsFromArray:v104];
    v112 = v164;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v112];
  v125 = [MEMORY[0x277CBEA60] arrayWithArray:v112];
  constraints = self->_constraints;
  self->_constraints = v125;

  v127 = *MEMORY[0x277D85DE8];
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v4 = v3;
  v6 = v5;
  [(VTUIStyle *)self->_vtStyle proxTopPaddingVoiceSelectionOptions];
  v8 = v6 + v7;
  [(VTUIStyle *)self->_vtStyle proxBottomPaddingVoiceSelectionOptions];
  v10 = v8 + v9;
  [(VTUIStyle *)self->_vtStyle orbImageLength];
  v12 = v10 + v11;
  [(VTUIStyle *)self->_vtStyle orbImageOffsetFromTopEnrollment];
  v14 = v12 + v13;
  [(VTUIStyle *)self->_vtStyle titleOffsetFromOrb];
  v16 = v14 + v15;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v18 = v16 + v17;
  [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
  v20 = v18 + v19;
  vtStyle = self->_vtStyle;
  if (self->_allowsRandomVoiceSelection)
  {
    [(VTUIStyle *)vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v23 = v20 + v22;
    [(VTUIStyle *)self->_vtStyle proxChooseForMeTopPaddingFromContinueButton];
    v25 = v23 + v24;
    [(UIButton *)self->_chooseRandomVoiceButton intrinsicContentSize];
    v27 = v25 + v26;
  }

  else
  {
    [(VTUIStyle *)vtStyle proxPaddingFromBottom];
    v27 = v20 + v28;
  }

  v29 = v4;
  result.height = v27;
  result.width = v29;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!self->_isHidingCompactBackgroundCardView)
  {
    v13.receiver = self;
    v13.super_class = VTUIVoiceSelectionProximityView;
    v10 = [(VTUIVoiceSelectionProximityView *)&v13 pointInside:v7 withEvent:x, y];
LABEL_6:
    v9 = v10;
    goto LABEL_7;
  }

  footerView = self->_footerView;
  [(VTUIVoiceSelectionProximityView *)self convertPoint:footerView toView:x, y];
  if (![(UIView *)footerView pointInside:v7 withEvent:?])
  {
    contentView = self->_contentView;
    [(VTUIVoiceSelectionProximityView *)self convertPoint:contentView toView:x, y];
    v10 = [(UIView *)contentView pointInside:v7 withEvent:?];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

@end