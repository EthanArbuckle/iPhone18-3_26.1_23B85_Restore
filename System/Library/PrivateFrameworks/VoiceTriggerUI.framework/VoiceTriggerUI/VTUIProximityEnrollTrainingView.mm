@interface VTUIProximityEnrollTrainingView
- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)frame;
- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)frame forEnrollmentStyle:(int64_t)style;
- (void)_setupConstraintsToSize:(CGSize)size;
- (void)_setupContent;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation VTUIProximityEnrollTrainingView

- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)frame forEnrollmentStyle:(int64_t)style
{
  self->_enrollmentStyle = style;
  v5 = [(VTUIProximityEnrollTrainingView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (style == 1)
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
    tintColor = [(VTUIProximityEnrollTrainingView *)self tintColor];
    [(UIView *)containerView setTintColor:tintColor];

    skipButton = self->_skipButton;
    tintColor2 = [(VTUIProximityEnrollTrainingView *)self tintColor];
    [(UIButton *)skipButton setTitleColor:tintColor2 forState:0];
  }
}

- (VTUIProximityEnrollTrainingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v11.receiver = self;
  v11.super_class = VTUIProximityEnrollTrainingView;
  v5 = [(VTUIProximityEnrollTrainingView *)&v11 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = +[VTUIStyle sharedStyle];
    vtStyle = v5->_vtStyle;
    v5->_vtStyle = v6;

    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    vtPrefs = v5->_vtPrefs;
    v5->_vtPrefs = mEMORY[0x277D7A8D0];

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
  proxInstructionPreAndPostfixFont = [v47 proxInstructionPreAndPostfixFont];
  [(UILabel *)self->_instructionPreludeLabel setFont:proxInstructionPreAndPostfixFont];

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
  proxInstructionFont = [v47 proxInstructionFont];
  [(UILabel *)v19 setFont:proxInstructionFont];

  v21 = self->_statusLabel;
  proxInstructionColor = [v47 proxInstructionColor];
  [(UILabel *)v21 setTextColor:proxInstructionColor];

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
  proxPageLabelColor = [v47 proxPageLabelColor];
  [(UILabel *)v27 setTextColor:proxPageLabelColor];

  [(UILabel *)self->_pageLabel setTextAlignment:1];
  [(UIView *)self->_containerView addSubview:self->_pageLabel];
  v29 = +[VTUIButton _vtuiProximityButtonWithSecondaryStyle];
  skipButton = self->_skipButton;
  self->_skipButton = v29;

  enrollmentStyle = self->_enrollmentStyle;
  titleLabel = [(UIButton *)self->_skipButton titleLabel];
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
  [titleLabel setFont:v34];

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

- (void)_setupConstraintsToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v177[3] = *MEMORY[0x277D85DE8];
  safeAreaLayoutGuide = [(VTUIProximityEnrollTrainingView *)self safeAreaLayoutGuide];
  safeAreaLayoutGuide2 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  height = [(VTUIProximityView *)self _shouldUsePhoneLandscapeLayoutForSize:width, height];
  array = [MEMORY[0x277CBEB18] array];
  v10 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v10 isDeviceIPad];

  containerView = self->_containerView;
  v163 = array;
  v156 = safeAreaLayoutGuide;
  v151 = height;
  if (isDeviceIPad)
  {
    centerYAnchor = [(UIView *)containerView centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v148 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v177[0] = v148;
    centerXAnchor = [(UIView *)self->_containerView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v16 = v15 = height;
    v177[1] = v16;
    [(UIView *)self->_containerView widthAnchor];
    v18 = v17 = array;
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidth];
    [v18 constraintEqualToConstant:?];
    v20 = v19 = safeAreaLayoutGuide2;
    v177[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:3];
    [v17 addObjectsFromArray:v21];

    safeAreaLayoutGuide2 = v19;
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_6:
    [(VTUIStyle *)self->_vtStyle proxViewHeightPhoneLandscape];
    goto LABEL_9;
  }

  bottomAnchor = [(UIView *)containerView bottomAnchor];
  bottomAnchor2 = [(VTUIProximityEnrollTrainingView *)self bottomAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v24];
  v176 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  [array addObjectsFromArray:v26];

  v27 = self->_containerView;
  if (height)
  {
    centerXAnchor3 = [(UIView *)v27 centerXAnchor];
    centerXAnchor4 = [safeAreaLayoutGuide centerXAnchor];
    v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v175[0] = v30;
    widthAnchor = [(UIView *)self->_containerView widthAnchor];
    [(VTUIStyle *)self->_vtStyle proxViewMaxWidthPhoneLandscape];
    v32 = [widthAnchor constraintEqualToConstant:?];
    v175[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
    [array addObjectsFromArray:v33];

    goto LABEL_6;
  }

  leadingAnchor = [(UIView *)v27 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v174[0] = v37;
  trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxContainerHorizontalVerticalPadding];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v40];
  v174[1] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];
  v43 = array;
  v44 = v42;
  [v43 addObjectsFromArray:v42];

LABEL_8:
  [(VTUIStyle *)self->_vtStyle proxViewHeight];
LABEL_9:
  v45 = v34;
  heightAnchor = [(UIView *)self->_containerView heightAnchor];
  v47 = [heightAnchor constraintEqualToConstant:v45];

  v155 = v47;
  [v163 addObject:v47];
  widthAnchor2 = [(SUICOrbView *)self->_orbView widthAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v149 = [widthAnchor2 constraintEqualToConstant:?];
  v173[0] = v149;
  heightAnchor2 = [(SUICOrbView *)self->_orbView heightAnchor];
  [(VTUIStyle *)self->_vtStyle orbLength];
  v49 = [heightAnchor2 constraintEqualToConstant:?];
  v173[1] = v49;
  centerXAnchor5 = [(SUICOrbView *)self->_orbView centerXAnchor];
  centerXAnchor6 = [safeAreaLayoutGuide2 centerXAnchor];
  v52 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v173[2] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:3];
  [v163 addObjectsFromArray:v53];

  topAnchor = [(SUICOrbView *)self->_orbView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v56 = [topAnchor constraintEqualToAnchor:topAnchor2];
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
  topAnchor3 = [(UIStackView *)self->_instructionStackView topAnchor];
  bottomAnchor3 = [(SUICOrbView *)self->_orbView bottomAnchor];
  v68 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:v59];
  [v163 addObject:v68];

  heightAnchor3 = [(UIStackView *)self->_instructionStackView heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxStatusLabelMaxHeight];
  v69 = [heightAnchor3 constraintEqualToConstant:?];
  v172[0] = v69;
  leadingAnchor3 = [(UIStackView *)self->_instructionStackView leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v61];
  v172[1] = v72;
  trailingAnchor3 = [(UIStackView *)self->_instructionStackView trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v75 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v65];
  v172[2] = v75;
  [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:3];
  v76 = v162 = safeAreaLayoutGuide2;
  [v163 addObjectsFromArray:v76];

  v77 = +[VTUIFeatureFlags isNaturalUIEnabled];
  skipButton = self->_skipButton;
  if (v77)
  {
    bottomAnchor4 = [(UIButton *)skipButton bottomAnchor];
    bottomAnchor5 = [(UIView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v150 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v79];
    v171[0] = v150;
    centerXAnchor7 = [(UIButton *)self->_skipButton centerXAnchor];
    centerXAnchor8 = [v162 centerXAnchor];
    v81 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v171[1] = v81;
    heightAnchor4 = [(UIButton *)self->_skipButton heightAnchor];
    [(VTUIStyle *)self->_vtStyle proxPrimaryButtonHeight];
    v145 = [heightAnchor4 constraintEqualToConstant:?];
    v171[2] = v145;
    leadingAnchor5 = [(UIButton *)self->_skipButton leadingAnchor];
    leadingAnchor6 = [v162 leadingAnchor];
    [(VTUIStyle *)self->_vtStyle proxLeading];
    v84 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
    v171[3] = v84;
    trailingAnchor5 = [(UIButton *)self->_skipButton trailingAnchor];
    trailingAnchor6 = [v162 trailingAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrailing];
    v88 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v87];
    v171[4] = v88;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:5];
    [v163 addObjectsFromArray:v89];

    firstBaselineAnchor = bottomAnchor4;
    centerXAnchor9 = centerXAnchor7;

    v92 = v150;
    bottomAnchor6 = bottomAnchor5;
  }

  else
  {
    firstBaselineAnchor = [(UIButton *)skipButton firstBaselineAnchor];
    bottomAnchor6 = [(UIView *)self->_containerView bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingBottom];
    v92 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor6 constant:-v94];
    v170[0] = v92;
    centerXAnchor9 = [(UIButton *)self->_skipButton centerXAnchor];
    centerXAnchor8 = [v162 centerXAnchor];
    v81 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor8];
    v170[1] = v81;
    heightAnchor4 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
    [v163 addObjectsFromArray:heightAnchor4];
  }

  centerYAnchor3 = [(UIButton *)self->_dismissButton centerYAnchor];
  topAnchor4 = [v162 topAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonVerticalPaddingTop];
  v97 = [centerYAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v169[0] = v97;
  centerXAnchor10 = [(UIButton *)self->_dismissButton centerXAnchor];
  trailingAnchor7 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonHorizontalPadding];
  v100 = [centerXAnchor10 constraintEqualToAnchor:trailingAnchor7 constant:?];
  v169[1] = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
  [v163 addObjectsFromArray:v101];

  widthAnchor3 = [(UIButton *)self->_dismissButton widthAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v103 = [widthAnchor3 constraintEqualToConstant:?];
  v168[0] = v103;
  heightAnchor5 = [(UIButton *)self->_dismissButton heightAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrainingDismissButtonWidthOrHeight];
  v105 = [heightAnchor5 constraintEqualToConstant:?];
  v168[1] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:2];
  [v163 addObjectsFromArray:v106];

  centerYAnchor4 = [(UILabel *)self->_statusLabel centerYAnchor];
  centerYAnchor5 = [v162 centerYAnchor];
  [(VTUIStyle *)self->_vtStyle statusLabelVerticalOffsetFromCenter];
  v108 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5 constant:?];
  v167[0] = v108;
  leadingAnchor7 = [(UILabel *)self->_statusLabel leadingAnchor];
  leadingAnchor8 = [v162 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v111 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];
  v167[1] = v111;
  trailingAnchor8 = [(UILabel *)self->_statusLabel trailingAnchor];
  trailingAnchor9 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v115 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v114];
  v167[2] = v115;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:3];
  [v163 addObjectsFromArray:v116];

  v117 = +[VTUIFeatureFlags isNaturalUIEnabled];
  v118 = self->_skipButton;
  if (v117)
  {
    topAnchor5 = [(UIButton *)v118 topAnchor];
    p_pageLabel = &self->_pageLabel;
    bottomAnchor7 = [(UILabel *)self->_pageLabel bottomAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingSkipButtonPageLabel];
    v159 = topAnchor5;
    v153 = bottomAnchor7;
    v122 = [topAnchor5 constraintEqualToAnchor:bottomAnchor7 constant:?];
    v166 = v122;
    v123 = &v166;
  }

  else
  {
    firstBaselineAnchor2 = [(UIButton *)v118 firstBaselineAnchor];
    p_pageLabel = &self->_pageLabel;
    firstBaselineAnchor3 = [(UILabel *)self->_pageLabel firstBaselineAnchor];
    [(VTUIStyle *)self->_vtStyle proxPaddingSkipButtonPageLabel];
    v159 = firstBaselineAnchor2;
    v153 = firstBaselineAnchor3;
    v122 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
    v165 = v122;
    v123 = &v165;
  }

  leadingAnchor9 = [(UILabel *)*p_pageLabel leadingAnchor];
  leadingAnchor10 = [v162 leadingAnchor];
  [(VTUIStyle *)self->_vtStyle proxLeading];
  v128 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:?];
  v123[1] = v128;
  trailingAnchor10 = [(UILabel *)*p_pageLabel trailingAnchor];
  trailingAnchor11 = [v162 trailingAnchor];
  [(VTUIStyle *)self->_vtStyle proxTrailing];
  v132 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-v131];
  v123[2] = v132;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:3];
  [v163 addObjectsFromArray:v133];

  centerYAnchor6 = [(VTUICheckMarkView *)self->_checkMark centerYAnchor];
  centerYAnchor7 = [(SUICOrbView *)self->_orbView centerYAnchor];
  v136 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
  v164[0] = v136;
  centerXAnchor11 = [(VTUICheckMarkView *)self->_checkMark centerXAnchor];
  centerXAnchor12 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v139 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
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