@interface VTUIEnrollTrainingView
- (VTUIEnrollTrainingView)initWithFrame:(CGRect)a3;
- (VTUIEnrollTrainingViewDelegate)delegate;
- (void)_setupUI;
- (void)dealloc;
- (void)setContinuationLabelHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setPreludeLabelHidden:(BOOL)a3;
- (void)showRadarExitButton:(id)a3;
@end

@implementation VTUIEnrollTrainingView

- (VTUIEnrollTrainingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollTrainingView;
  v3 = [(VTUIEnrollTrainingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v137 = [(VTUIEnrollTrainingView *)self readableContentGuide];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(VTUIEnrollTrainingView *)self setBackgroundColor:v4];

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
  v17 = [v3 instructionPreAndPostfixFont];
  [(UILabel *)self->_instructionPreludeLabel setFont:v17];

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
  v24 = [v3 instructionPreAndPostfixFont];
  [(UILabel *)self->_instructionContinuationLabel setFont:v24];

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
  v28 = [v3 instructionLabelFont];
  [(UILabel *)self->_statusLabel setFont:v28];

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
    v121 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [(UIButton *)self->_skipButton setConfiguration:?];
    v36 = +[VTUIStyle sharedStyle];
    v37 = [v36 isIpad];

    v116 = MEMORY[0x277CCAAD0];
    v38 = self->_skipButton;
    if (v37)
    {
      v39 = [(UIButton *)v38 widthAnchor];
      [v3 footerButtonMaximumWidth];
      v118 = v39;
      [v39 constraintEqualToConstant:?];
      v41 = v40 = v3;
      v145[0] = v41;
      v42 = [(UIButton *)self->_skipButton centerXAnchor];
      v43 = [(VTUIEnrollTrainingView *)self centerXAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      v145[1] = v44;
      v45 = [(UIButton *)self->_skipButton heightAnchor];
      v46 = v40;
      [v40 primaryButtonHeight];
      v47 = [v45 constraintEqualToConstant:?];
      v145[2] = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
      [v116 activateConstraints:v48];
    }

    else
    {
      v49 = [(UIButton *)v38 leadingAnchor];
      [(VTUIEnrollTrainingView *)self leadingAnchor];
      v41 = v50 = v3;
      v118 = v49;
      v42 = [v49 constraintEqualToAnchor:v41 constant:38.0];
      v144[0] = v42;
      v43 = [(UIButton *)self->_skipButton trailingAnchor];
      v44 = [(VTUIEnrollTrainingView *)self trailingAnchor];
      v45 = [v43 constraintEqualToAnchor:v44 constant:-38.0];
      v144[1] = v45;
      v47 = [(UIButton *)self->_skipButton heightAnchor];
      v46 = v50;
      [v50 primaryButtonHeight];
      v48 = [v47 constraintEqualToConstant:?];
      v144[2] = v48;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
      [v116 activateConstraints:v51];
    }

    v3 = v46;
    v33 = 0x277CBE000uLL;
  }

  v114 = MEMORY[0x277CCAAD0];
  v119 = [(SUICOrbView *)self->_orbView topAnchor];
  v122 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
  v117 = [v122 topAnchor];
  [v3 orbOffsetFromTopTraining];
  [v119 constraintEqualToAnchor:v117 constant:?];
  v52 = v3;
  v115 = v136 = v3;
  v143[0] = v115;
  v53 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v54 = [(VTUIEnrollTrainingView *)self centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  v143[1] = v55;
  v56 = [(SUICOrbView *)self->_orbView widthAnchor];
  [v52 orbLength];
  v57 = [v56 constraintEqualToConstant:?];
  v143[2] = v57;
  v58 = [(SUICOrbView *)self->_orbView heightAnchor];
  [v52 orbLength];
  v59 = [v58 constraintEqualToConstant:?];
  v143[3] = v59;
  v60 = [*(v33 + 2656) arrayWithObjects:v143 count:4];
  [v114 activateConstraints:v60];

  v120 = MEMORY[0x277CCAAD0];
  v123 = [(VTUICheckMarkView *)self->_checkMark centerXAnchor];
  v61 = [(SUICOrbView *)self->_orbView centerXAnchor];
  v62 = [v123 constraintEqualToAnchor:v61];
  v142[0] = v62;
  v63 = [(VTUICheckMarkView *)self->_checkMark centerYAnchor];
  v64 = [(SUICOrbView *)self->_orbView centerYAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v142[1] = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [v120 activateConstraints:v66];

  v124 = MEMORY[0x277CCAAD0];
  v127 = [v135 topAnchor];
  v131 = [(SUICOrbView *)self->_orbView bottomAnchor];
  v67 = [v127 constraintEqualToAnchor:v131];
  v141[0] = v67;
  v68 = [v135 leadingAnchor];
  v69 = [v137 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  v141[1] = v70;
  v71 = [v135 trailingAnchor];
  v72 = [v137 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v141[2] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:3];
  [v124 activateConstraints:v74];

  LODWORD(v75) = 1148846080;
  [v135 setContentHuggingPriority:1 forAxis:v75];
  v125 = MEMORY[0x277CCAAD0];
  v132 = [(UILabel *)self->_statusLabel topAnchor];
  v128 = [v135 topAnchor];
  v76 = [v132 constraintEqualToAnchor:v128];
  v140[0] = v76;
  v77 = [(UILabel *)self->_statusLabel leadingAnchor];
  v78 = [v137 leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  v140[1] = v79;
  v80 = [(UILabel *)self->_statusLabel trailingAnchor];
  v81 = [v137 trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
  v140[2] = v82;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:3];
  [v125 activateConstraints:v83];

  v126 = MEMORY[0x277CCAAD0];
  v133 = [(UIButton *)self->_skipButton leftAnchor];
  v129 = [v137 leftAnchor];
  v84 = [v133 constraintEqualToAnchor:v129];
  v139[0] = v84;
  v85 = [(UIButton *)self->_skipButton rightAnchor];
  v86 = [v137 rightAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];
  v139[1] = v87;
  v88 = [(UIButton *)self->_skipButton bottomAnchor];
  v89 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
  v90 = [v89 bottomAnchor];
  [v136 footerSkipButtonBaselineFromBottom];
  v92 = [v88 constraintEqualToAnchor:v90 constant:-v91];
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
    v98 = [MEMORY[0x277D75348] blackColor];
    v99 = [v98 colorWithAlphaComponent:0.6];
    [(SiriUIContentButton *)self->_radarButton setDefaultColorForTemplate:v99];

    v100 = [MEMORY[0x277D75348] blackColor];
    v101 = [v100 colorWithAlphaComponent:0.2];
    [(SiriUIContentButton *)self->_radarButton setHighlightColorForTemplate:v101];

    [(VTUIEnrollTrainingView *)self setRadarButtonHidden:0];
    [(VTUIEnrollTrainingView *)self addSubview:self->_radarButton];
    v130 = MEMORY[0x277CCAAD0];
    v102 = [(SiriUIContentButton *)self->_radarButton trailingAnchor];
    v103 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
    v104 = [v103 trailingAnchor];
    [v136 radarBtnHorizontalPadding];
    v106 = [v102 constraintEqualToAnchor:v104 constant:-v105];
    v138[0] = v106;
    v107 = [(SiriUIContentButton *)self->_radarButton bottomAnchor];
    v108 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
    v109 = [v108 bottomAnchor];
    [v136 radarBtnVerticalPadding];
    v111 = [v107 constraintEqualToAnchor:v109 constant:-v110];
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

  [(VTUIEnrollTrainingView *)self addSubview:self->_radarExitButton];
  v22 = MEMORY[0x277CCAAD0];
  v24 = [(UIButton *)self->_radarExitButton leftAnchor];
  v25 = [(VTUIEnrollTrainingView *)self readableContentGuide];
  v23 = [v25 leftAnchor];
  v11 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v11;
  v12 = [(UIButton *)self->_radarExitButton rightAnchor];
  v13 = [(VTUIEnrollTrainingView *)self readableContentGuide];
  v14 = [v13 rightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[1] = v15;
  v16 = [(UIButton *)self->_radarExitButton bottomAnchor];
  v17 = [(VTUIEnrollTrainingView *)self safeAreaLayoutGuide];
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

- (void)setPreludeLabelHidden:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(UILabel *)self->_instructionPreludeLabel setAlpha:v3];
}

- (void)setContinuationLabelHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  instructionContinuationLabel = self->_instructionContinuationLabel;
  if (a4)
  {
    if ([(UILabel *)instructionContinuationLabel isHidden]!= a3)
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