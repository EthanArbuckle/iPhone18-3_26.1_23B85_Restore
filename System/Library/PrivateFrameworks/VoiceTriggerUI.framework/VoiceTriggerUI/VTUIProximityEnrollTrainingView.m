@interface VTUIProximityEnrollTrainingView
- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)a3;
- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)a3 forEnrollmentStyle:(int64_t)a4;
- (void)_setupConstraintsToSize:(CGSize)a3;
- (void)_setupContent;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation VTUIProximityEnrollTrainingView

- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)a3 forEnrollmentStyle:(int64_t)a4
{
  self->_enrollmentStyle = a4;
  v5 = [(VTUIProximityEnrollTrainingView *)self initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (a4 == 1)
  {
    v6 = +[VTUIStyle sharedStyle];
    skipButton = v5->_skipButton;
    v8 = [v6 VTUIDeviceSpecificString:@"BUTTON_DONT_RECOGNIZE_VOICE"];
    [(UIButton *)skipButton setTitle:v8 forState:0];
  }

  return v5;
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = VTUIProximityEnrollTrainingView;
  [(VTUIProximityEnrollTrainingView *)&v7 didMoveToWindow];
  if (self->_enrollmentStyle == 1)
  {
    containerView = self->_containerView;
    v4 = [(VTUIProximityEnrollTrainingView *)self tintColor];
    [(UIView *)containerView setTintColor:v4];

    skipButton = self->_skipButton;
    v6 = [(VTUIProximityEnrollTrainingView *)self tintColor];
    [(UIButton *)skipButton setTitleColor:v6 forState:0];
  }
}

- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v11.receiver = self;
  v11.super_class = VTUIProximityEnrollTrainingView;
  v5 = [(VTUIProximityEnrollTrainingView *)&v11 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    v8 = [MEMORY[0x277D7A8D0] sharedPreferences];
    vtPrefs = v5->_vtPrefs;
    v5->_vtPrefs = v8;

    [(VTUIProximityEnrollTrainingView *)v5 _setupContent];
    [(VTUIProximityEnrollTrainingView *)v5 _setupConstraintsToSize:width, height];
  }

  return v5;
}

- (void)dealloc
{
  [(SUICOrbView *)self->_orbView invalidate];
  v3.receiver = self;
  v3.super_class = VTUIProximityEnrollTrainingView;
  [(VTUIProximityEnrollTrainingView *)&v3 dealloc];
}

- (void)_setupContent
{
  v47 = +[VTUIStyle sharedStyle];
  v3 = objc_alloc_init(VTUIProximityContainerView);
  containerView = self->_containerView;
  self->_containerView = &v3->super;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIProximityEnrollTrainingView *)self addSubview:self->_containerView];
  v5 = objc_alloc(MEMORY[0x277D75A68]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  instructionStackView = self->_instructionStackView;
  self->_instructionStackView = v6;

  [(UIStackView *)self->_instructionStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_instructionStackView setAxis:1];
  [(UIStackView *)self->_instructionStackView setSpacing:28.0];
  [(UIView *)self->_containerView addSubview:self->_instructionStackView];
  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionPreludeLabel = self->_instructionPreludeLabel;
  self->_instructionPreludeLabel = v8;

  [(UILabel *)self->_instructionPreludeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionPreludeLabel setTextAlignment:1];
  v10 = [v47 proxInstructionPreAndPostfixFont];
  [(UILabel *)self->_instructionPreludeLabel setFont:v10];

  [(UILabel *)self->_instructionPreludeLabel setNumberOfLines:4];
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  v12 = [v11 uiLocalizedStringForKey:@"TEXT_LABEL_SAY"];
  [(UILabel *)self->_instructionPreludeLabel setText:v12];

  [(UIStackView *)self->_instructionStackView addArrangedSubview:self->_instructionPreludeLabel];
  [(UIStackView *)self->_instructionStackView setCustomSpacing:self->_instructionPreludeLabel afterView:10.0];
  v13 = self->_enrollmentStyle == 1;
  v14 = [VTUIPagedLabel alloc];
  [(VTUIProximityEnrollTrainingView *)self frame];
  v15 = [(VTUIPagedLabel *)v14 initWithFrame:1 isProximity:v13 forEnrollmentStyle:?];
  instructionPagedLabel = self->_instructionPagedLabel;
  self->_instructionPagedLabel = v15;

  [(VTUIPagedLabel *)self->_instructionPagedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_instructionStackView addArrangedSubview:self->_instructionPagedLabel];
  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v17;

  [(UILabel *)self->_statusLabel setNumberOfLines:4];
  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = self->_statusLabel;
  v20 = [v47 proxInstructionFont];
  [(UILabel *)v19 setFont:v20];

  v21 = self->_statusLabel;
  v22 = [v47 proxInstructionColor];
  [(UILabel *)v21 setTextColor:v22];

  [(UILabel *)self->_statusLabel setTextAlignment:1];
  [(UIView *)self->_containerView addSubview:self->_statusLabel];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  pageLabel = self->_pageLabel;
  self->_pageLabel = v23;

  [(UILabel *)self->_pageLabel setNumberOfLines:1];
  [(UILabel *)self->_pageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_pageLabel;
  if (self->_enrollmentStyle == 1)
  {
    [v47 PRXpageFont];
  }

  else
  {
    [v47 proxPageFont];
  }
  v26 = ;
  [(UILabel *)v25 setFont:v26];

  v27 = self->_pageLabel;
  v28 = [v47 proxPageLabelColor];
  [(UILabel *)v27 setTextColor:v28];

  [(UILabel *)self->_pageLabel setTextAlignment:1];
  [(UIView *)self->_containerView addSubview:self->_pageLabel];
  v29 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  skipButton = self->_skipButton;
  self->_skipButton = v29;

  enrollmentStyle = self->_enrollmentStyle;
  v32 = [(UIButton *)self->_skipButton titleLabel];
  vtStyle = self->_vtStyle;
  if (enrollmentStyle == 1)
  {
    [(VTUIStyle *)vtStyle PRXcancelFont];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxCancelFont];
  }
  v34 = ;
  [v32 setFont:v34];

  v35 = self->_skipButton;
  v36 = [v47 VTUIDeviceSpecificString:@"BUTTON_SET_UP_LATER"];
  [(UIButton *)v35 setTitle:v36 forState:0];

  [(UIButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_skipButton setClipsToBounds:0];
  [(UIView *)self->_containerView addSubview:self->_skipButton];
  v37 = +[VTUIButton _vtuiProximityDismissButton];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v37;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_dismissButton];
  v39 = objc_alloc(MEMORY[0x277D61A68]);
  [(VTUIStyle *)self->_vtStyle orbLength];
  v41 = v40;
  [(VTUIStyle *)self->_vtStyle orbLength];
  v43 = [v39 initWithFrame:{0.0, 0.0, v41, v42}];
  orbView = self->_orbView;
  self->_orbView = v43;

  [(SUICOrbView *)self->_orbView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_orbView];
  v45 = objc_alloc_init(VTUICheckMarkView);
  checkMark = self->_checkMark;
  self->_checkMark = v45;

  [(VTUICheckMarkView *)self->_checkMark setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_checkMark];
}

- (void)_setupConstraintsToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v177[3] = *MEMORY[0x277D85DE8];
  v6 = [(VTUIProximityEnrollTrainingView *)self safeAreaLayoutGuide];
  v7 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  v8 = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = +[MGWrapper sharedMGWrapper];
  v11 = [v10 isDeviceIPad];

  containerView = self->_containerView;
  v163 = v9;
  v156 = v6;
  v151 = v8;
  if (v11)
  {
    v160 = [(UIView *)containerView centerYAnchor];
    v154 = [v6 centerYAnchor];
    v148 = [v160 constraintEqualToAnchor:v154];
    v177[0] = v148;
    v13 = [(UIView *)self->_containerView centerXAnchor];
    v14 = [v6 centerXAnchor];
    [v13 constraintEqualToAnchor:v14];
    v16 = v15 = v8;
    v177[1] = v16;
    [(UIView *)self->_containerView widthAnchor];
    v18 = v17 = v9;
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    [v18 constraintEqualToConstant:?];
    v20 = v19 = v7;
    v177[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:3];
    [v17 addObjectsFromArray:v21];

    v7 = v19;
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  v22 = [(UIView *)containerView bottomAnchor];
  v23 = [(VTUIProximityEnrollTrainingView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v25 = [v22 constraintEqualToAnchor:v23 constant:-v24];
  v176 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  [v9 addObjectsFromArray:v26];

  v27 = self->_containerView;
  if (v8)
  {
    v28 = [(UIView *)v27 centerXAnchor];
    v29 = [v6 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v175[0] = v30;
    v31 = [(UIView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v32 = [v31 constraintEqualToConstant:?];
    v175[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
    [v9 addObjectsFromArray:v33];

    goto LABEL_6;
  }

  v35 = [(UIView *)v27 leadingAnchor];
  v36 = [v6 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v37 = [v35 constraintEqualToAnchor:v36 constant:?];
  v174[0] = v37;
  v38 = [(UIView *)self->_containerView trailingAnchor];
  v39 = [v6 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v41 = [v38 constraintEqualToAnchor:v39 constant:-v40];
  v174[1] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];
  v43 = v9;
  v44 = v42;
  [v43 addObjectsFromArray:v42];

LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v45 = v34;
  v46 = [(UIView *)self->_containerView heightAnchor];
  v47 = [v46 constraintEqualToConstant:v45];

  v155 = v47;
  [v163 addObject:v47];
  v161 = [(SUICOrbView *)self->_orbView widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v149 = [v161 constraintEqualToConstant:?];
  v173[0] = v149;
  v48 = [(SUICOrbView *)self->_orbView heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v49 = [v48 constraintEqualToConstant:?];
  v173[1] = v49;
  v50 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v51 = [v7 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v173[2] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:3];
  [v163 addObjectsFromArray:v53];

  v54 = [(SUICOrbView *)self->_orbView topAnchor];
  v55 = [v7 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  [v163 addObject:v56];

  vtStyle = self->_vtStyle;
  if (v151)
  {
    [(VTUIStyle *)vtStyle proxPaddingTrainingTitleLandscape];
    v59 = v58;
    [(VTUIStyle *)self->_vtStyle proxLeadingLandscape];
    v61 = v60;
    [(VTUIStyle *)self->_vtStyle proxTrailingLandscape];
  }

  else
  {
    [(VTUIStyle *)vtStyle proxPaddingTrainingTitle];
    v59 = v63;
    [(VTUIStyle *)self->_vtStyle proxLeading];
    v61 = v64;
    [(VTUIStyle *)self->_vtStyle proxTrailing];
  }

  v65 = v62;
  v66 = [(UIStackView *)self->_instructionStackView topAnchor];
  v67 = [(SUICOrbView *)self->_orbView bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:v59];
  [v163 addObject:v68];

  v152 = [(UIStackView *)self->_instructionStackView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxStatusLabelMaxHeight];
  v69 = [v152 constraintEqualToConstant:?];
  v172[0] = v69;
  v70 = [(UIStackView *)self->_instructionStackView leadingAnchor];
  v71 = [v7 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:v61];
  v172[1] = v72;
  v73 = [(UIStackView *)self->_instructionStackView trailingAnchor];
  v74 = [v7 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-v65];
  v172[2] = v75;
  [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:3];
  v76 = v162 = v7;
  [v163 addObjectsFromArray:v76];

  v77 = +[VTUIFeatureFlags isNaturalUIEnabled];
  skipButton = self->_skipButton;
  if (v77)
  {
    v147 = [(UIButton *)skipButton bottomAnchor];
    v157 = [(UIView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v150 = [v147 constraintEqualToAnchor:v157 constant:-v79];
    v171[0] = v150;
    v146 = [(UIButton *)self->_skipButton centerXAnchor];
    v80 = [v162 centerXAnchor];
    v81 = [v146 constraintEqualToAnchor:v80];
    v171[1] = v81;
    v82 = [(UIButton *)self->_skipButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v145 = [v82 constraintEqualToConstant:?];
    v171[2] = v145;
    v144 = [(UIButton *)self->_skipButton leadingAnchor];
    v83 = [v162 leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxLeading];
    v84 = [v144 constraintEqualToAnchor:v83 constant:?];
    v171[3] = v84;
    v85 = [(UIButton *)self->_skipButton trailingAnchor];
    v86 = [v162 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrailing];
    v88 = [v85 constraintEqualToAnchor:v86 constant:-v87];
    v171[4] = v88;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:5];
    [v163 addObjectsFromArray:v89];

    v90 = v147;
    v91 = v146;

    v92 = v150;
    v93 = v157;
  }

  else
  {
    v90 = [(UIButton *)skipButton firstBaselineAnchor];
    v93 = [(UIView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v92 = [v90 constraintEqualToAnchor:v93 constant:-v94];
    v170[0] = v92;
    v91 = [(UIButton *)self->_skipButton centerXAnchor];
    v80 = [v162 centerXAnchor];
    v81 = [v91 constraintEqualToAnchor:v80];
    v170[1] = v81;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
    [v163 addObjectsFromArray:v82];
  }

  v95 = [(UIButton *)self->_dismissButton centerYAnchor];
  v96 = [v162 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v97 = [v95 constraintEqualToAnchor:v96 constant:?];
  v169[0] = v97;
  v98 = [(UIButton *)self->_dismissButton centerXAnchor];
  v99 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v100 = [v98 constraintEqualToAnchor:v99 constant:?];
  v169[1] = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
  [v163 addObjectsFromArray:v101];

  v102 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v103 = [v102 constraintEqualToConstant:?];
  v168[0] = v103;
  v104 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v105 = [v104 constraintEqualToConstant:?];
  v168[1] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:2];
  [v163 addObjectsFromArray:v106];

  v158 = [(UILabel *)self->_statusLabel centerYAnchor];
  v107 = [v162 centerYAnchor];
  [(VTUIStyle *)self->_vtStyle statusLabelVerticalOffsetFromCenter];
  v108 = [v158 constraintEqualToAnchor:v107 constant:?];
  v167[0] = v108;
  v109 = [(UILabel *)self->_statusLabel leadingAnchor];
  v110 = [v162 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v111 = [v109 constraintEqualToAnchor:v110 constant:?];
  v167[1] = v111;
  v112 = [(UILabel *)self->_statusLabel trailingAnchor];
  v113 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v115 = [v112 constraintEqualToAnchor:v113 constant:-v114];
  v167[2] = v115;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:3];
  [v163 addObjectsFromArray:v116];

  v117 = +[VTUIFeatureFlags isNaturalUIEnabled];
  v118 = self->_skipButton;
  if (v117)
  {
    v119 = [(UIButton *)v118 topAnchor];
    p_pageLabel = &self->_pageLabel;
    v121 = [(UILabel *)self->_pageLabel bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingSkipButtonPageLabel];
    v159 = v119;
    v153 = v121;
    v122 = [v119 constraintEqualToAnchor:v121 constant:?];
    v166 = v122;
    v123 = &v166;
  }

  else
  {
    v124 = [(UIButton *)v118 firstBaselineAnchor];
    p_pageLabel = &self->_pageLabel;
    v125 = [(UILabel *)self->_pageLabel firstBaselineAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingSkipButtonPageLabel];
    v159 = v124;
    v153 = v125;
    v122 = [v124 constraintEqualToAnchor:v125 constant:?];
    v165 = v122;
    v123 = &v165;
  }

  v126 = [(UILabel *)*p_pageLabel leadingAnchor];
  v127 = [v162 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v128 = [v126 constraintEqualToAnchor:v127 constant:?];
  v123[1] = v128;
  v129 = [(UILabel *)*p_pageLabel trailingAnchor];
  v130 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v132 = [v129 constraintEqualToAnchor:v130 constant:-v131];
  v123[2] = v132;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:3];
  [v163 addObjectsFromArray:v133];

  v134 = [(VTUICheckMarkView *)self->_checkMark centerYAnchor];
  v135 = [(SUICOrbView *)self->_orbView centerYAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];
  v164[0] = v136;
  v137 = [(VTUICheckMarkView *)self->_checkMark centerXAnchor];
  v138 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v139 = [v137 constraintEqualToAnchor:v138];
  v164[1] = v139;
  v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:2];
  [v163 addObjectsFromArray:v140];

  [MEMORY[0x277CCAAD0] activateConstraints:v163];
  v141 = [MEMORY[0x277CBEA60] arrayWithArray:v163];
  viewConstraints = self->_viewConstraints;
  self->_viewConstraints = v141;

  v143 = *MEMORY[0x277D85DE8];
}

@end