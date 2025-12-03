@interface VTUIEnrollTrainingView
- (VTUIEnrollTrainingView)initWithFrame:(CGRect)frame;
- (VTUIEnrollTrainingViewDelegate)delegate;
- (void)_setupUI;
- (void)dealloc;
- (void)setContinuationLabelHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setPreludeLabelHidden:(BOOL)hidden;
- (void)showRadarExitButton:(id)button;
@end

@implementation VTUIEnrollTrainingView

- (VTUIEnrollTrainingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollTrainingView;
  v3 = [(VTUIEnrollTrainingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollTrainingView *)v3 _setupUI];
  }

  return v4;
}

- (void)_setupUI
{
  v145[3] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  readableContentGuide = [(VTUIEnrollTrainingView *)self readableContentGuide];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(VTUIEnrollTrainingView *)self setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x277D61A68]);
  [v3 orbLength];
  v7 = v6;
  [v3 orbLength];
  v9 = [v5 initWithFrame:{0.0, 0.0, v7, v8}];
  orbView = self->_orbView;
  self->_orbView = v9;

  [(SUICOrbView *)self->_orbView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIEnrollTrainingView *)self addSubview:self->_orbView];
  v11 = objc_alloc_init(VTUICheckMarkView);
  checkMark = self->_checkMark;
  self->_checkMark = v11;

  [(VTUICheckMarkView *)self->_checkMark setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIEnrollTrainingView *)self addSubview:self->_checkMark];
  v13 = objc_alloc(MEMORY[0x277D75A68]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setAxis:1];
  [v14 setSpacing:28.0];
  [(VTUIEnrollTrainingView *)self addSubview:v14];
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionPreludeLabel = self->_instructionPreludeLabel;
  self->_instructionPreludeLabel = v15;

  [(UILabel *)self->_instructionPreludeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionPreludeLabel setTextAlignment:1];
  instructionPreAndPostfixFont = [v3 instructionPreAndPostfixFont];
  [(UILabel *)self->_instructionPreludeLabel setFont:instructionPreAndPostfixFont];

  [(UILabel *)self->_instructionPreludeLabel setNumberOfLines:4];
  v18 = [v3 VTUIDeviceSpecificString:@"TEXT_LABEL_SAY_FIRST"];
  [(UILabel *)self->_instructionPreludeLabel setText:v18];

  [v14 addArrangedSubview:self->_instructionPreludeLabel];
  [v14 setCustomSpacing:self->_instructionPreludeLabel afterView:10.0];
  v19 = [VTUIPagedLabel alloc];
  [(VTUIEnrollTrainingView *)self frame];
  v20 = [(VTUIPagedLabel *)v19 initWithFrame:0 isProximity:0 forEnrollmentStyle:?];
  instructionPagedLabel = self->_instructionPagedLabel;
  self->_instructionPagedLabel = v20;

  [(VTUIPagedLabel *)self->_instructionPagedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addArrangedSubview:self->_instructionPagedLabel];
  v22 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionContinuationLabel = self->_instructionContinuationLabel;
  self->_instructionContinuationLabel = v22;

  [(UILabel *)self->_instructionContinuationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionContinuationLabel setTextAlignment:1];
  instructionPreAndPostfixFont2 = [v3 instructionPreAndPostfixFont];
  [(UILabel *)self->_instructionContinuationLabel setFont:instructionPreAndPostfixFont2];

  [(UILabel *)self->_instructionContinuationLabel setNumberOfLines:4];
  v25 = [v3 VTUIDeviceSpecificString:@"TEXT_LABEL_TO_FIRST"];
  [(UILabel *)self->_instructionContinuationLabel setText:v25];

  v135 = v14;
  [v14 addArrangedSubview:self->_instructionContinuationLabel];
  v26 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v26;

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_statusLabel setTextAlignment:1];
  instructionLabelFont = [v3 instructionLabelFont];
  [(UILabel *)self->_statusLabel setFont:instructionLabelFont];

  [(UILabel *)self->_statusLabel setNumberOfLines:4];
  [(VTUIEnrollTrainingView *)self addSubview:self->_statusLabel];
  v29 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
  skipButton = self->_skipButton;
  self->_skipButton = v29;

  [(UIButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = self->_skipButton;
  v32 = [v3 VTUIDeviceSpecificString:@"BUTTON_SET_UP_LATER"];
  [(UIButton *)v31 setTitle:v32 forState:0];

  [(VTUIEnrollTrainingView *)self addSubview:self->_skipButton];
  v33 = 0x277CBE000;
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v34 = self->_skipButton;
    [v3 primaryButtonHeight];
    [(UIButton *)v34 _setCornerRadius:v35 * 0.5];
    _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [(UIButton *)self->_skipButton setConfiguration:?];
    v36 = +[VTUIStyle sharedStyle];
    isIpad = [v36 isIpad];

    v116 = MEMORY[0x277CCAAD0];
    v38 = self->_skipButton;
    if (isIpad)
    {
      widthAnchor = [(UIButton *)v38 widthAnchor];
      [v3 footerButtonMaximumWidth];
      v118 = widthAnchor;
      [widthAnchor constraintEqualToConstant:?];
      v41 = v40 = v3;
      v145[0] = v41;
      centerXAnchor = [(UIButton *)self->_skipButton centerXAnchor];
      centerXAnchor2 = [(VTUIEnrollTrainingView *)self centerXAnchor];
      trailingAnchor = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v145[1] = trailingAnchor;
      heightAnchor = [(UIButton *)self->_skipButton heightAnchor];
      v46 = v40;
      [v40 primaryButtonHeight];
      heightAnchor2 = [heightAnchor constraintEqualToConstant:?];
      v145[2] = heightAnchor2;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
      [v116 activateConstraints:v48];
    }

    else
    {
      leadingAnchor = [(UIButton *)v38 leadingAnchor];
      [(VTUIEnrollTrainingView *)self leadingAnchor];
      v41 = v50 = v3;
      v118 = leadingAnchor;
      centerXAnchor = [leadingAnchor constraintEqualToAnchor:v41 constant:38.0];
      v144[0] = centerXAnchor;
      centerXAnchor2 = [(UIButton *)self->_skipButton trailingAnchor];
      trailingAnchor = [(VTUIEnrollTrainingView *)self trailingAnchor];
      heightAnchor = [centerXAnchor2 constraintEqualToAnchor:trailingAnchor constant:-38.0];
      v144[1] = heightAnchor;
      heightAnchor2 = [(UIButton *)self->_skipButton heightAnchor];
      v46 = v50;
      [v50 primaryButtonHeight];
      v48 = [heightAnchor2 constraintEqualToConstant:?];
      v144[2] = v48;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
      [v116 activateConstraints:v51];
    }

    v3 = v46;
    v33 = 0x277CBE000uLL;
  }

  v114 = MEMORY[0x277CCAAD0];
  topAnchor = [(SUICOrbView *)self->_orbView topAnchor];
  safeAreaLayoutGuide = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [v3 orbOffsetFromTopTraining];
  [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v52 = v3;
  v115 = v136 = v3;
  v143[0] = v115;
  centerXAnchor3 = [(SUICOrbView *)self->_orbView centerXAnchor];
  centerXAnchor4 = [(VTUIEnrollTrainingView *)self centerXAnchor];
  v55 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v143[1] = v55;
  widthAnchor2 = [(SUICOrbView *)self->_orbView widthAnchor];
  [v52 orbLength];
  v57 = [widthAnchor2 constraintEqualToConstant:?];
  v143[2] = v57;
  heightAnchor3 = [(SUICOrbView *)self->_orbView heightAnchor];
  [v52 orbLength];
  v59 = [heightAnchor3 constraintEqualToConstant:?];
  v143[3] = v59;
  v60 = [*(v33 + 2656) arrayWithObjects:v143 count:4];
  [v114 activateConstraints:v60];

  v120 = MEMORY[0x277CCAAD0];
  centerXAnchor5 = [(VTUICheckMarkView *)self->_checkMark centerXAnchor];
  centerXAnchor6 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v62 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v142[0] = v62;
  centerYAnchor = [(VTUICheckMarkView *)self->_checkMark centerYAnchor];
  centerYAnchor2 = [(SUICOrbView *)self->_orbView centerYAnchor];
  v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v142[1] = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [v120 activateConstraints:v66];

  v124 = MEMORY[0x277CCAAD0];
  topAnchor3 = [v135 topAnchor];
  bottomAnchor = [(SUICOrbView *)self->_orbView bottomAnchor];
  v67 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v141[0] = v67;
  leadingAnchor2 = [v135 leadingAnchor];
  leadingAnchor3 = [readableContentGuide leadingAnchor];
  v70 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v141[1] = v70;
  trailingAnchor2 = [v135 trailingAnchor];
  trailingAnchor3 = [readableContentGuide trailingAnchor];
  v73 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v141[2] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:3];
  [v124 activateConstraints:v74];

  LODWORD(v75) = 1148846080;
  [v135 setContentHuggingPriority:1 forAxis:v75];
  v125 = MEMORY[0x277CCAAD0];
  topAnchor4 = [(UILabel *)self->_statusLabel topAnchor];
  topAnchor5 = [v135 topAnchor];
  v76 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v140[0] = v76;
  leadingAnchor4 = [(UILabel *)self->_statusLabel leadingAnchor];
  leadingAnchor5 = [readableContentGuide leadingAnchor];
  v79 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v140[1] = v79;
  trailingAnchor4 = [(UILabel *)self->_statusLabel trailingAnchor];
  trailingAnchor5 = [readableContentGuide trailingAnchor];
  v82 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v140[2] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:3];
  [v125 activateConstraints:v83];

  v126 = MEMORY[0x277CCAAD0];
  leftAnchor = [(UIButton *)self->_skipButton leftAnchor];
  leftAnchor2 = [readableContentGuide leftAnchor];
  v84 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v139[0] = v84;
  rightAnchor = [(UIButton *)self->_skipButton rightAnchor];
  rightAnchor2 = [readableContentGuide rightAnchor];
  v87 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v139[1] = v87;
  bottomAnchor2 = [(UIButton *)self->_skipButton bottomAnchor];
  safeAreaLayoutGuide2 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
  [v136 footerSkipButtonBaselineFromBottom];
  v92 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v91];
  v139[2] = v92;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:3];
  [v126 activateConstraints:v93];

  v94 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
  if (v94)
  {
    v95 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:v94 compatibleWithTraitCollection:0];
    v134 = [v95 imageWithRenderingMode:2];

    v96 = [MEMORY[0x277D619A0] buttonWithImageTemplate:v134 style:0];
    radarButton = self->_radarButton;
    self->_radarButton = v96;

    [(SiriUIContentButton *)self->_radarButton setTranslatesAutoresizingMaskIntoConstraints:0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v99 = [blackColor colorWithAlphaComponent:0.6];
    [(SiriUIContentButton *)self->_radarButton setDefaultColorForTemplate:v99];

    blackColor2 = [MEMORY[0x277D75348] blackColor];
    v101 = [blackColor2 colorWithAlphaComponent:0.2];
    [(SiriUIContentButton *)self->_radarButton setHighlightColorForTemplate:v101];

    [(VTUIEnrollTrainingView *)self setRadarButtonHidden:0];
    [(VTUIEnrollTrainingView *)self addSubview:self->_radarButton];
    v130 = MEMORY[0x277CCAAD0];
    trailingAnchor6 = [(SiriUIContentButton *)self->_radarButton trailingAnchor];
    safeAreaLayoutGuide3 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
    trailingAnchor7 = [safeAreaLayoutGuide3 trailingAnchor];
    [v136 radarBtnHorizontalPadding];
    v106 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v105];
    v138[0] = v106;
    bottomAnchor4 = [(SiriUIContentButton *)self->_radarButton bottomAnchor];
    safeAreaLayoutGuide4 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
    bottomAnchor5 = [safeAreaLayoutGuide4 bottomAnchor];
    [v136 radarBtnVerticalPadding];
    v111 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v110];
    v138[1] = v111;
    v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
    [v130 activateConstraints:v112];
  }

  v113 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SUICOrbView *)self->_orbView invalidate];
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingView;
  [(VTUIEnrollTrainingView *)&v3 dealloc];
}

- (void)showRadarExitButton:(id)button
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75220];
  buttonCopy = button;
  v6 = [v4 buttonWithType:0];
  radarExitButton = self->_radarExitButton;
  self->_radarExitButton = v6;

  [(SiriUIContentButton *)self->_radarButton setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(UIButton *)self->_radarExitButton titleLabel];
  [titleLabel setTextAlignment:1];

  [(UIButton *)self->_radarExitButton setTitle:buttonCopy forState:0];
  v9 = self->_radarExitButton;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(UIButton *)v9 setTitleColor:systemBlueColor forState:0];

  [(VTUIEnrollTrainingView *)self addSubview:self->_radarExitButton];
  v22 = MEMORY[0x277CCAAD0];
  leftAnchor = [(UIButton *)self->_radarExitButton leftAnchor];
  readableContentGuide = [(VTUIEnrollTrainingView *)self readableContentGuide];
  leftAnchor2 = [readableContentGuide leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v26[0] = v11;
  rightAnchor = [(UIButton *)self->_radarExitButton rightAnchor];
  readableContentGuide2 = [(VTUIEnrollTrainingView *)self readableContentGuide];
  rightAnchor2 = [readableContentGuide2 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v26[1] = v15;
  bottomAnchor = [(UIButton *)self->_radarExitButton bottomAnchor];
  safeAreaLayoutGuide = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  [v22 activateConstraints:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [UIButton addTarget:"addTarget:action:forControlEvents:" action:? forControlEvents:?];
  radarButton = self->_radarButton;
  if (radarButton)
  {
    [(SiriUIContentButton *)radarButton addTarget:delegateCopy action:sel_enrollTrainingViewRadarButtonPressed_ forControlEvents:64];
  }
}

- (void)setPreludeLabelHidden:(BOOL)hidden
{
  v3 = 1.0;
  if (hidden)
  {
    v3 = 0.0;
  }

  [(UILabel *)self->_instructionPreludeLabel setAlpha:v3];
}

- (void)setContinuationLabelHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (hidden)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  instructionContinuationLabel = self->_instructionContinuationLabel;
  if (animated)
  {
    if ([(UILabel *)instructionContinuationLabel isHidden]!= hidden)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__VTUIEnrollTrainingView_setContinuationLabelHidden_animated___block_invoke;
      v7[3] = &unk_279E54AD0;
      v7[4] = self;
      *&v7[5] = v5;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v7 options:&__block_literal_global_4 animations:0.3 completion:0.0];
    }
  }

  else
  {

    [(UILabel *)instructionContinuationLabel setAlpha:v5];
  }
}

- (VTUIEnrollTrainingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end