@interface VTUIEnrollTrainingIntelligentLightView
- (VTUIEnrollTrainingIntelligentLightView)initWithFrame:(CGRect)a3;
- (VTUIEnrollTrainingViewDelegate)delegate;
- (void)_setupUI;
- (void)animateSuccessfulStepWithCompletion:(id)a3;
- (void)clearInstructionLabel;
- (void)dealloc;
- (void)setContinuationLabel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPreludeLabel:(id)a3;
- (void)showRadarExitButton:(id)a3;
- (void)slideInText:(id)a3 afterDelay:(double)a4 completion:(id)a5;
@end

@implementation VTUIEnrollTrainingIntelligentLightView

- (VTUIEnrollTrainingIntelligentLightView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollTrainingIntelligentLightView;
  v3 = [(VTUIEnrollTrainingIntelligentLightView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v156 = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
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
  v12 = [v11 superlayer];
  [v12 insertSublayer:self->_lightLayer above:v11];

  v155 = v11;
  [v11 removeFromSuperlayer];
  [(VTUIEnrollTrainingIntelligentLightView *)self bounds];
  v14 = v13;
  [(VTUIEnrollTrainingIntelligentLightView *)self bounds];
  *&v14 = vabdd_f64(v14, v15) * 0.5;
  [(BSUICAPackageView *)self->_lightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v144 = MEMORY[0x277CCAAD0];
  v153 = [(BSUICAPackageView *)self->_lightView topAnchor];
  v151 = [(VTUIEnrollTrainingIntelligentLightView *)self topAnchor];
  v149 = [v153 constraintEqualToAnchor:v151];
  v166[0] = v149;
  v147 = [(BSUICAPackageView *)self->_lightView bottomAnchor];
  v16 = [(VTUIEnrollTrainingIntelligentLightView *)self bottomAnchor];
  v17 = [v147 constraintEqualToAnchor:v16];
  v166[1] = v17;
  v18 = [(BSUICAPackageView *)self->_lightView trailingAnchor];
  v19 = [(VTUIEnrollTrainingIntelligentLightView *)self trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:*&v14];
  v166[2] = v20;
  v21 = [(BSUICAPackageView *)self->_lightView leadingAnchor];
  v22 = [(VTUIEnrollTrainingIntelligentLightView *)self leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-*&v14];
  v166[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:4];
  [v144 activateConstraints:v24];

  v25 = [MEMORY[0x277D75780] appearance];
  v164 = *MEMORY[0x277D740C0];
  v26 = [MEMORY[0x277D75348] whiteColor];
  v165 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
  [v25 setTitleTextAttributes:v27];

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
  v46 = [v148 view];
  [v46 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = [MEMORY[0x277D75348] clearColor];
  [v46 setBackgroundColor:v47];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:v46];
  v48 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v48;

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_statusLabel setTextAlignment:1];
  v50 = [v157 instructionLabelFontWithWeight:v32];
  [(UILabel *)self->_statusLabel setFont:v50];

  [(UILabel *)self->_statusLabel setNumberOfLines:4];
  v51 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UILabel *)self->_statusLabel setTextColor:v51];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_statusLabel];
  v52 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
  skipButton = self->_skipButton;
  self->_skipButton = v52;

  v54 = self->_skipButton;
  v55 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIButton *)v54 setTitleColor:v55 forState:0];

  [(UIButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = self->_skipButton;
  v57 = [v157 VTUIDeviceSpecificString:@"BUTTON_SET_UP_LATER"];
  [(UIButton *)v56 setTitle:v57 forState:0];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_skipButton];
  v128 = MEMORY[0x277CCAAD0];
  v138 = [v46 topAnchor];
  v145 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
  v133 = [v145 topAnchor];
  [v157 instructionOffsetFromTopTrainingForGM];
  v129 = [v138 constraintEqualToAnchor:v133 constant:?];
  v163[0] = v129;
  v127 = [v46 leadingAnchor];
  v58 = [v156 leadingAnchor];
  [v157 instructionHorizontalPadding];
  v59 = [v127 constraintEqualToAnchor:v58 constant:?];
  v163[1] = v59;
  v60 = [v46 trailingAnchor];
  v61 = [v156 trailingAnchor];
  [v157 instructionHorizontalPadding];
  v63 = [v60 constraintEqualToAnchor:v61 constant:-v62];
  v163[2] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:3];
  [v128 activateConstraints:v64];

  LODWORD(v65) = 1148846080;
  [v46 setContentHuggingPriority:1 forAxis:v65];
  v134 = MEMORY[0x277CCAAD0];
  v139 = [(UILabel *)self->_statusLabel topAnchor];
  v146 = v46;
  v66 = [v46 topAnchor];
  v67 = [v139 constraintEqualToAnchor:v66 constant:72.0];
  v162[0] = v67;
  v68 = [(UILabel *)self->_statusLabel leadingAnchor];
  v69 = [v156 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  v162[1] = v70;
  v71 = [(UILabel *)self->_statusLabel trailingAnchor];
  v72 = [v156 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v162[2] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:3];
  [v134 activateConstraints:v74];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v75 = [v157 isIpad];
    v130 = MEMORY[0x277CCAAD0];
    v76 = [(UIButton *)self->_skipButton leftAnchor];
    v140 = v76;
    if (v75)
    {
      v135 = [v156 leftAnchor];
      v77 = [v76 constraintEqualToAnchor:30.0 constant:?];
      v161[0] = v77;
      v78 = [(UIButton *)self->_skipButton rightAnchor];
      v79 = [v156 rightAnchor];
      v80 = [v78 constraintEqualToAnchor:v79 constant:-30.0];
      v161[1] = v80;
      v81 = v161;
    }

    else
    {
      v135 = [(VTUIEnrollTrainingIntelligentLightView *)self leftAnchor];
      v77 = [v76 constraintEqualToAnchor:38.0 constant:?];
      v160[0] = v77;
      v78 = [(UIButton *)self->_skipButton rightAnchor];
      v79 = [(VTUIEnrollTrainingIntelligentLightView *)self rightAnchor];
      v80 = [v78 constraintEqualToAnchor:v79 constant:-38.0];
      v160[1] = v80;
      v81 = v160;
    }

    v92 = [(UIButton *)self->_skipButton bottomAnchor];
    v93 = [(VTUIEnrollTrainingIntelligentLightView *)self bottomAnchor];
    v94 = [v92 constraintEqualToAnchor:v93 constant:-38.0];
    v81[2] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
    [v130 activateConstraints:v95];

    v82 = +[VTUIStyle sharedStyle];
    [v82 primaryButtonHeight];
    v97 = v96;
    v98 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769A8]];
    [v98 scaledValueForValue:v97];
    v100 = v99;

    v101 = [(UIButton *)self->_skipButton heightAnchor];
    v102 = [v101 constraintEqualToConstant:v100];
    [v102 setActive:1];

    [(UIButton *)self->_skipButton _setCornerRadius:v100 * 0.5];
    v103 = [v82 isIpad];
    v104 = self->_skipButton;
    if (v103)
    {
      v105 = [MEMORY[0x277D75348] blackColor];
      [(UIButton *)v104 setTitleColor:v105 forState:0];
    }

    else
    {
      v106 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UIButton *)v104 setTitleColor:v106 forState:0];

      [(UIButton *)self->_skipButton setOverrideUserInterfaceStyle:2];
    }

    v83 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [(UIButton *)self->_skipButton setConfiguration:v83];
  }

  else
  {
    v131 = MEMORY[0x277CCAAD0];
    v82 = [(UIButton *)self->_skipButton leftAnchor];
    v83 = [v156 leftAnchor];
    v141 = [v82 constraintEqualToAnchor:v83];
    v159[0] = v141;
    v136 = [(UIButton *)self->_skipButton rightAnchor];
    v84 = [v156 rightAnchor];
    v85 = [v136 constraintEqualToAnchor:v84];
    v159[1] = v85;
    v86 = [(UIButton *)self->_skipButton bottomAnchor];
    v87 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    v88 = [v87 bottomAnchor];
    [v157 footerSkipButtonBaselineFromBottom];
    v90 = [v86 constraintEqualToAnchor:v88 constant:-v89];
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
    v112 = [MEMORY[0x277D75348] systemWhiteColor];
    v113 = [v112 colorWithAlphaComponent:0.6];
    [(SiriUIContentButton *)self->_radarButton setDefaultColorForTemplate:v113];

    v114 = [MEMORY[0x277D75348] systemWhiteColor];
    v115 = [v114 colorWithAlphaComponent:0.2];
    [(SiriUIContentButton *)self->_radarButton setHighlightColorForTemplate:v115];

    [(VTUIEnrollTrainingIntelligentLightView *)self setRadarButtonHidden:0];
    [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_radarButton];
    v132 = MEMORY[0x277CCAAD0];
    v137 = [(SiriUIContentButton *)self->_radarButton trailingAnchor];
    v116 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    v117 = [v116 trailingAnchor];
    [v157 radarBtnHorizontalPadding];
    v119 = [v137 constraintEqualToAnchor:v117 constant:-v118];
    v158[0] = v119;
    v120 = [(SiriUIContentButton *)self->_radarButton bottomAnchor];
    v121 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
    v122 = [v121 bottomAnchor];
    [v157 radarBtnVerticalPadding];
    v124 = [v120 constraintEqualToAnchor:v122 constant:-v123];
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

- (void)showRadarExitButton:(id)a3
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D75220];
  v5 = a3;
  v6 = [v4 buttonWithType:0];
  radarExitButton = self->_radarExitButton;
  self->_radarExitButton = v6;

  [(SiriUIContentButton *)self->_radarButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(UIButton *)self->_radarExitButton titleLabel];
  [v8 setTextAlignment:1];

  [(UIButton *)self->_radarExitButton setTitle:v5 forState:0];
  v9 = self->_radarExitButton;
  v10 = [MEMORY[0x277D75348] systemBlueColor];
  [(UIButton *)v9 setTitleColor:v10 forState:0];

  [(VTUIEnrollTrainingIntelligentLightView *)self addSubview:self->_radarExitButton];
  v22 = MEMORY[0x277CCAAD0];
  v24 = [(UIButton *)self->_radarExitButton leftAnchor];
  v25 = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
  v23 = [v25 leftAnchor];
  v11 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v11;
  v12 = [(UIButton *)self->_radarExitButton rightAnchor];
  v13 = [(VTUIEnrollTrainingIntelligentLightView *)self readableContentGuide];
  v14 = [v13 rightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[1] = v15;
  v16 = [(UIButton *)self->_radarExitButton bottomAnchor];
  v17 = [(VTUIEnrollTrainingIntelligentLightView *)self safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v26[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  [v22 activateConstraints:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  [UIButton addTarget:"addTarget:action:forControlEvents:" action:? forControlEvents:?];
  radarButton = self->_radarButton;
  if (radarButton)
  {
    [(SiriUIContentButton *)radarButton addTarget:v5 action:sel_enrollTrainingViewRadarButtonPressed_ forControlEvents:64];
  }
}

- (void)slideInText:(id)a3 afterDelay:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__VTUIEnrollTrainingIntelligentLightView_slideInText_afterDelay_completion___block_invoke;
  block[3] = &unk_279E54B70;
  block[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
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
  v2 = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [v2 setIntructionLabel:&stru_2881E5778];
}

- (void)setPreludeLabel:(id)a3
{
  v4 = a3;
  v5 = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [v5 setPreludeLabel:v4];
}

- (void)setContinuationLabel:(id)a3
{
  v4 = a3;
  v5 = [(VTUIEnrollTrainingIntelligentLightView *)self enrollmentViewModel];
  [v5 setContinuationLabel:v4];
}

- (void)animateSuccessfulStepWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(BSUICAPackageView *)self->_lightView setState:@"State 1" animated:1];
  v5 = dispatch_time(0, 1000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__VTUIEnrollTrainingIntelligentLightView_animateSuccessfulStepWithCompletion___block_invoke;
  v6[3] = &unk_279E541F8;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  v4[2](v4);
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