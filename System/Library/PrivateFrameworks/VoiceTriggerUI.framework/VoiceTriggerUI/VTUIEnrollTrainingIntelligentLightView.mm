@interface VTUIEnrollTrainingIntelligentLightView
- (VTUIEnrollTrainingIntelligentLightView)initWithFrame:(CGRect)frame;
- (VTUIEnrollTrainingViewDelegate)delegate;
- (void)_setupUI;
- (void)animateSuccessfulStepWithCompletion:(id)completion;
- (void)clearInstructionLabel;
- (void)dealloc;
- (void)setContinuationLabel:(id)label;
- (void)setDelegate:(id)delegate;
- (void)setPreludeLabel:(id)label;
- (void)showRadarExitButton:(id)button;
- (void)slideInText:(id)text afterDelay:(double)delay completion:(id)completion;
@end

@implementation VTUIEnrollTrainingIntelligentLightView

- (VTUIEnrollTrainingIntelligentLightView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollTrainingIntelligentLightView;
  v3 = [(VTUIEnrollTrainingIntelligentLightView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollTrainingIntelligentLightView *)v3 _setupUI];
  }

  return v4;
}

- (void)_setupUI
{
  v166[4] = *MEMORY[0x277D85DE8];
  v157 = +[VTUIStyle sharedStyle];
  readableContentGuide = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
  if ([v157 isIpad])
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;
  [(VTUIEnrollTrainingIntelligentLightView *)self setBackgroundColor:v3];

  v4 = objc_alloc(MEMORY[0x277CF0D48]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 initWithPackageName:@"BurstEffectForLightLayer" inBundle:v5];
  lightView = self->_lightView;
  self->_lightView = v6;

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_lightView];
  v8 = objc_alloc_init(MEMORY[0x277D61A60]);
  lightLayer = self->_lightLayer;
  self->_lightLayer = v8;

  v10 = self->_lightLayer;
  [(BSUICAPackageView *)self->_lightView bounds];
  [(SUICIntelligentLightLayer *)v10 setFrame:?];
  [(SUICIntelligentLightLayer *)self->_lightLayer setIsQuicktationPill:0];
  [(SUICIntelligentLightLayer *)self->_lightLayer setMinimumPowerLevel:0.0];
  [(SUICIntelligentLightLayer *)self->_lightLayer setColorPalette:104];
  [(SUICIntelligentLightLayer *)self->_lightLayer setPaused:0];
  v11 = [(BSUICAPackageView *)self->_lightView publishedObjectWithName:@"lightlayer"];
  superlayer = [v11 superlayer];
  [superlayer insertSublayer:self->_lightLayer above:v11];

  v155 = v11;
  [v11 removeFromSuperlayer];
  [(VTUIEnrollTrainingIntelligentLightView *)self bounds];
  v14 = v13;
  [(VTUIEnrollTrainingIntelligentLightView *)self bounds];
  *&v14 = vabdd_f64(v14, v15) * 0.5;
  [(BSUICAPackageView *)self->_lightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v144 = MEMORY[0x277CCAAD0];
  topAnchor = [(BSUICAPackageView *)self->_lightView topAnchor];
  topAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self topAnchor];
  v149 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v166[0] = v149;
  bottomAnchor = [(BSUICAPackageView *)self->_lightView bottomAnchor];
  bottomAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v166[1] = v17;
  trailingAnchor = [(BSUICAPackageView *)self->_lightView trailingAnchor];
  trailingAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*&v14];
  v166[2] = v20;
  leadingAnchor = [(BSUICAPackageView *)self->_lightView leadingAnchor];
  leadingAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-*&v14];
  v166[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:4];
  [v144 activateConstraints:v24];

  appearance = [MEMORY[0x277D75780] appearance];
  v164 = *MEMORY[0x277D740C0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v165 = whiteColor;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
  [appearance setTitleTextAttributes:v27];

  v28 = objc_opt_new();
  enrollmentTextViewManager = self->_enrollmentTextViewManager;
  self->_enrollmentTextViewManager = v28;

  v30 = +[VTUIFeatureFlags isNaturalUIEnabled];
  v31 = MEMORY[0x277D74418];
  if (!v30)
  {
    v31 = MEMORY[0x277D743F8];
  }

  v32 = *v31;
  v33 = [_TtC14VoiceTriggerUI21GMEnrollmentTextModel alloc];
  v34 = [v157 instructionPreAndPostfixFontWithWeight:v32];
  v35 = [v157 VTUIDeviceSpecificString:@"TEXT_LABEL_SAY_FIRST"];
  v36 = [(GMEnrollmentTextModel *)v33 initWithFont:v34 label:v35 hidden:0];

  v37 = [_TtC14VoiceTriggerUI21GMEnrollmentTextModel alloc];
  v38 = [v157 instructionLabelFontWithWeight:v32];
  v39 = [(GMEnrollmentTextModel *)v37 initWithFont:v38 label:&stru_2881E5778 hidden:0];

  v40 = [_TtC14VoiceTriggerUI21GMEnrollmentTextModel alloc];
  v41 = [v157 instructionPreAndPostfixFontWithWeight:v32];
  v42 = [v157 VTUIDeviceSpecificString:@"TEXT_LABEL_TO_FIRST"];
  v43 = [(GMEnrollmentTextModel *)v40 initWithFont:v41 label:v42 hidden:0];

  v152 = v39;
  v154 = v36;
  v150 = v43;
  v44 = [[_TtC14VoiceTriggerUI21GMEnrollmentViewModel alloc] initWithPrelude:v36 instruction:v39 continuation:v43];
  enrollmentViewModel = self->_enrollmentViewModel;
  self->_enrollmentViewModel = v44;

  v148 = [(GMEnrollmentTextViewManager *)self->_enrollmentTextViewManager createViewControllerWithEnrollmentViewModel:self->_enrollmentViewModel];
  view = [v148 view];
  [view setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:view];
  v48 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v48;

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_statusLabel setTextAlignment:1];
  v50 = [v157 instructionLabelFontWithWeight:v32];
  [(UILabel *)self->_statusLabel setFont:v50];

  [(UILabel *)self->_statusLabel setNumberOfLines:4];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)self->_statusLabel setTextColor:systemWhiteColor];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_statusLabel];
  v52 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
  skipButton = self->_skipButton;
  self->_skipButton = v52;

  v54 = self->_skipButton;
  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIButton *)v54 setTitleColor:systemWhiteColor2 forState:0];

  [(UIButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = self->_skipButton;
  v57 = [v157 VTUIDeviceSpecificString:@"BUTTON_SET_UP_LATER"];
  [(UIButton *)v56 setTitle:v57 forState:0];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_skipButton];
  v128 = MEMORY[0x277CCAAD0];
  topAnchor3 = [view topAnchor];
  safeAreaLayoutGuide = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  [v157 instructionOffsetFromTopTrainingForGM];
  v129 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v163[0] = v129;
  leadingAnchor3 = [view leadingAnchor];
  leadingAnchor4 = [readableContentGuide leadingAnchor];
  [v157 instructionHorizontalPadding];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  v163[1] = v59;
  trailingAnchor3 = [view trailingAnchor];
  trailingAnchor4 = [readableContentGuide trailingAnchor];
  [v157 instructionHorizontalPadding];
  v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v62];
  v163[2] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:3];
  [v128 activateConstraints:v64];

  LODWORD(v65) = 1148846080;
  [view setContentHuggingPriority:1 forAxis:v65];
  v134 = MEMORY[0x277CCAAD0];
  topAnchor5 = [(UILabel *)self->_statusLabel topAnchor];
  v146 = view;
  topAnchor6 = [view topAnchor];
  v67 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:72.0];
  v162[0] = v67;
  leadingAnchor5 = [(UILabel *)self->_statusLabel leadingAnchor];
  leadingAnchor6 = [readableContentGuide leadingAnchor];
  v70 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v162[1] = v70;
  trailingAnchor5 = [(UILabel *)self->_statusLabel trailingAnchor];
  trailingAnchor6 = [readableContentGuide trailingAnchor];
  v73 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v162[2] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:3];
  [v134 activateConstraints:v74];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    isIpad = [v157 isIpad];
    v130 = MEMORY[0x277CCAAD0];
    leftAnchor = [(UIButton *)self->_skipButton leftAnchor];
    v140 = leftAnchor;
    if (isIpad)
    {
      leftAnchor2 = [readableContentGuide leftAnchor];
      v77 = [leftAnchor constraintEqualToAnchor:30.0 constant:?];
      v161[0] = v77;
      rightAnchor = [(UIButton *)self->_skipButton rightAnchor];
      rightAnchor2 = [readableContentGuide rightAnchor];
      v80 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-30.0];
      v161[1] = v80;
      v81 = v161;
    }

    else
    {
      leftAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self leftAnchor];
      v77 = [leftAnchor constraintEqualToAnchor:38.0 constant:?];
      v160[0] = v77;
      rightAnchor = [(UIButton *)self->_skipButton rightAnchor];
      rightAnchor2 = [(VTUIEnrollTrainingIntelligentLightView *)self rightAnchor];
      v80 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-38.0];
      v160[1] = v80;
      v81 = v160;
    }

    bottomAnchor3 = [(UIButton *)self->_skipButton bottomAnchor];
    bottomAnchor4 = [(VTUIEnrollTrainingIntelligentLightView *)self bottomAnchor];
    v94 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-38.0];
    v81[2] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
    [v130 activateConstraints:v95];

    leftAnchor3 = +[VTUIStyle sharedStyle];
    [leftAnchor3 primaryButtonHeight];
    v97 = v96;
    v98 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769A8]];
    [v98 scaledValueForValue:v97];
    v100 = v99;

    heightAnchor = [(UIButton *)self->_skipButton heightAnchor];
    v102 = [heightAnchor constraintEqualToConstant:v100];
    [v102 setActive:1];

    [(UIButton *)self->_skipButton _setCornerRadius:v100 * 0.5];
    isIpad2 = [leftAnchor3 isIpad];
    v104 = self->_skipButton;
    if (isIpad2)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UIButton *)v104 setTitleColor:blackColor forState:0];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UIButton *)v104 setTitleColor:secondaryLabelColor forState:0];

      [(UIButton *)self->_skipButton setOverrideUserInterfaceStyle:2];
    }

    _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [(UIButton *)self->_skipButton setConfiguration:_glassButtonConfiguration];
  }

  else
  {
    v131 = MEMORY[0x277CCAAD0];
    leftAnchor3 = [(UIButton *)self->_skipButton leftAnchor];
    _glassButtonConfiguration = [readableContentGuide leftAnchor];
    v141 = [leftAnchor3 constraintEqualToAnchor:_glassButtonConfiguration];
    v159[0] = v141;
    rightAnchor3 = [(UIButton *)self->_skipButton rightAnchor];
    rightAnchor4 = [readableContentGuide rightAnchor];
    v85 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v159[1] = v85;
    bottomAnchor5 = [(UIButton *)self->_skipButton bottomAnchor];
    safeAreaLayoutGuide2 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    bottomAnchor6 = [safeAreaLayoutGuide2 bottomAnchor];
    [v157 footerSkipButtonBaselineFromBottom];
    v90 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v89];
    v159[2] = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:3];
    [v131 activateConstraints:v91];
  }

  v107 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
  v108 = v157;
  if (v107)
  {
    v143 = v107;
    v109 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:v107 compatibleWithTraitCollection:0];
    v142 = [v109 imageWithRenderingMode:2];

    v110 = [MEMORY[0x277D619A0] buttonWithImageTemplate:v142 style:0];
    radarButton = self->_radarButton;
    self->_radarButton = v110;

    [(SiriUIContentButton *)self->_radarButton setTranslatesAutoresizingMaskIntoConstraints:0];
    systemWhiteColor3 = [MEMORY[0x277D75348] systemWhiteColor];
    v113 = [systemWhiteColor3 colorWithAlphaComponent:0.6];
    [(SiriUIContentButton *)self->_radarButton setDefaultColorForTemplate:v113];

    systemWhiteColor4 = [MEMORY[0x277D75348] systemWhiteColor];
    v115 = [systemWhiteColor4 colorWithAlphaComponent:0.2];
    [(SiriUIContentButton *)self->_radarButton setHighlightColorForTemplate:v115];

    [(VTUIEnrollTrainingIntelligentLightView *)self setRadarButtonHidden:0];
    [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_radarButton];
    v132 = MEMORY[0x277CCAAD0];
    trailingAnchor7 = [(SiriUIContentButton *)self->_radarButton trailingAnchor];
    safeAreaLayoutGuide3 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    trailingAnchor8 = [safeAreaLayoutGuide3 trailingAnchor];
    [v157 radarBtnHorizontalPadding];
    v119 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v118];
    v158[0] = v119;
    bottomAnchor7 = [(SiriUIContentButton *)self->_radarButton bottomAnchor];
    safeAreaLayoutGuide4 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    bottomAnchor8 = [safeAreaLayoutGuide4 bottomAnchor];
    [v157 radarBtnVerticalPadding];
    v124 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v123];
    v158[1] = v124;
    v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
    [v132 activateConstraints:v125];

    v108 = v157;
    [(BSUICAPackageView *)self->_lightView setHidden:1];

    v107 = v143;
  }

  v126 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VTUIEnrollTrainingIntelligentLightView;
  [(VTUIEnrollTrainingIntelligentLightView *)&v2 dealloc];
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

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_radarExitButton];
  v22 = MEMORY[0x277CCAAD0];
  leftAnchor = [(UIButton *)self->_radarExitButton leftAnchor];
  readableContentGuide = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
  leftAnchor2 = [readableContentGuide leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v26[0] = v11;
  rightAnchor = [(UIButton *)self->_radarExitButton rightAnchor];
  readableContentGuide2 = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
  rightAnchor2 = [readableContentGuide2 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v26[1] = v15;
  bottomAnchor = [(UIButton *)self->_radarExitButton bottomAnchor];
  safeAreaLayoutGuide = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
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

- (void)slideInText:(id)text afterDelay:(double)delay completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v10 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__VTUIEnrollTrainingIntelligentLightView_slideInText_afterDelay_completion___block_invoke;
  block[3] = &unk_279E54B70;
  block[4] = self;
  v14 = textCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = textCopy;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

uint64_t __76__VTUIEnrollTrainingIntelligentLightView_slideInText_afterDelay_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollmentViewModel];
  [v2 setIntructionLabel:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)clearInstructionLabel
{
  enrollmentViewModel = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [enrollmentViewModel setIntructionLabel:&stru_2881E5778];
}

- (void)setPreludeLabel:(id)label
{
  labelCopy = label;
  enrollmentViewModel = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [enrollmentViewModel setPreludeLabel:labelCopy];
}

- (void)setContinuationLabel:(id)label
{
  labelCopy = label;
  enrollmentViewModel = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [enrollmentViewModel setContinuationLabel:labelCopy];
}

- (void)animateSuccessfulStepWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(BSUICAPackageView *)self->_lightView setState:@"State 1" animated:1];
  v5 = dispatch_time(0, 1000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__VTUIEnrollTrainingIntelligentLightView_animateSuccessfulStepWithCompletion___block_invoke;
  v6[3] = &unk_279E541F8;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  completionCopy[2](completionCopy);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __78__VTUIEnrollTrainingIntelligentLightView_animateSuccessfulStepWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained lightView];
    [v2 setState:@"State 2" animated:0];

    WeakRetained = v3;
  }
}

- (VTUIEnrollTrainingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setContinuationLabelHidden:(os_log_t)log animated:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUIEnrollTrainingIntelligentLightView setContinuationLabelHidden:animated:]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s Hiding countinuation label with animation is not supported", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end