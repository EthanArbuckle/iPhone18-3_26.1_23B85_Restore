@interface SBLostModeBiometricAuthenticationTransientOverlayViewController
- (NSString)coverSheetIdentifier;
- (SBLostModeBiometricAuthenticationTransientOverlayViewController)initWithLockScreenManager:(id)manager biometricResource:(id)resource;
- (SBLostModeBiometricAuthenticationTransientOverlayViewControllerDelegate)delegate;
- (double)_buttonsBottomSpacing;
- (id)_biometricAuthenticationButtonAction;
- (id)_biometricCapabilityText;
- (void)_handleCancelButtonAction;
- (void)_handleEmergencyButtonAction;
- (void)_runLocalAuthenticationEvaluation;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBLostModeBiometricAuthenticationTransientOverlayViewController

- (SBLostModeBiometricAuthenticationTransientOverlayViewController)initWithLockScreenManager:(id)manager biometricResource:(id)resource
{
  managerCopy = manager;
  resourceCopy = resource;
  v13.receiver = self;
  v13.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  v9 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lockScreenManager, manager);
    objc_storeStrong(&v10->_biometricResource, resource);
    coverSheetViewController = [managerCopy coverSheetViewController];
    [coverSheetViewController registerExternalLockProvider:v10];
  }

  return v10;
}

- (void)dealloc
{
  coverSheetViewController = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [coverSheetViewController unregisterExternalLockProvider:self];
  if (!self->_didAuthenticate)
  {
    delegate = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
    [delegate lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
  }

  v5.receiver = self;
  v5.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v130[2] = *MEMORY[0x277D85DE8];
  v127.receiver = self;
  v127.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v127 viewDidLoad];
  view = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x277D02C50]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [(CSPasscodeBackgroundView *)self->_backgroundView setAutoresizingMask:18];
  [(CSPasscodeBackgroundView *)self->_backgroundView setFrame:v5, v7, v9, v11];
  [(CSPasscodeBackgroundView *)self->_backgroundView setWeighting:1.0];
  [view addSubview:self->_backgroundView];
  v14 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  _biometricCapabilityText = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  v18 = [v14 stringWithFormat:v16, _biometricCapabilityText];

  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v19;

  v21 = self->_titleLabel;
  pinKeypadStatusTitleViewTitleFont = [MEMORY[0x277D65EC0] pinKeypadStatusTitleViewTitleFont];
  [(UILabel *)v21 setFont:pinKeypadStatusTitleViewTitleFont];

  v23 = self->_titleLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v23 setTextColor:whiteColor];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v125 = v18;
  [(UILabel *)self->_titleLabel setText:v18];
  v25 = MEMORY[0x277CCACA8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [mainBundle2 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];
  _biometricCapabilityText2 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  v29 = [v25 stringWithFormat:v27, _biometricCapabilityText2];

  v30 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v30;

  v32 = self->_subtitleLabel;
  pinKeypadStatusSubtitleViewTitleFont = [MEMORY[0x277D65EC0] pinKeypadStatusSubtitleViewTitleFont];
  [(UILabel *)v32 setFont:pinKeypadStatusSubtitleViewTitleFont];

  v34 = self->_subtitleLabel;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v34 setTextColor:whiteColor2];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
  v124 = v29;
  [(UILabel *)self->_subtitleLabel setText:v29];
  v36 = objc_alloc(MEMORY[0x277D75A68]);
  v37 = self->_subtitleLabel;
  v130[0] = self->_titleLabel;
  v130[1] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
  v39 = [v36 initWithArrangedSubviews:v38];
  labelsStackView = self->_labelsStackView;
  self->_labelsStackView = v39;

  [(UIStackView *)self->_labelsStackView setAxis:1];
  [(UIStackView *)self->_labelsStackView setSpacing:5.0];
  [(UIStackView *)self->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_labelsStackView];
  filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
  v42 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  [filledButtonConfiguration setBaseBackgroundColor:v42];

  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [filledButtonConfiguration setBaseForegroundColor:whiteColor3];

  [filledButtonConfiguration setCornerStyle:4];
  _biometricCapabilityText3 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  [filledButtonConfiguration setTitle:_biometricCapabilityText3];

  v45 = MEMORY[0x277D75220];
  _biometricAuthenticationButtonAction = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricAuthenticationButtonAction];
  v123 = filledButtonConfiguration;
  v47 = [v45 buttonWithConfiguration:filledButtonConfiguration primaryAction:_biometricAuthenticationButtonAction];
  biometricAuthButton = self->_biometricAuthButton;
  self->_biometricAuthButton = v47;

  v49 = self->_biometricAuthButton;
  v50 = MEMORY[0x277D74300];
  v51 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] addingSymbolicTraits:0x8000 options:1];
  v52 = [v50 fontWithDescriptor:v51 size:0.0];
  [(UIButton *)v49 setFont:v52];

  [(UIButton *)self->_biometricAuthButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_biometricAuthButton];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v54 = [mainBundle3 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v122 = v54;
  [plainButtonConfiguration setTitle:v54];
  whiteColor4 = [MEMORY[0x277D75348] whiteColor];
  [plainButtonConfiguration setBaseForegroundColor:whiteColor4];

  v57 = [MEMORY[0x277D75220] buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v57;

  v121 = plainButtonConfiguration;
  [(UIButton *)self->_cancelButton setConfiguration:plainButtonConfiguration];
  v59 = self->_cancelButton;
  whiteColor5 = [MEMORY[0x277D75348] whiteColor];
  [(UIButton *)v59 setTitleColor:whiteColor5 forState:0];

  [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_cancelButton addTarget:self action:sel__handleCancelButtonAction forControlEvents:64];
  v126 = view;
  [view addSubview:self->_cancelButton];
  if ([(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _hasTelephonyCapability])
  {
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v62 = [mainBundle4 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_EMERGENCY" value:&stru_283094718 table:@"SpringBoard"];

    plainButtonConfiguration2 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration2 setTitle:v62];
    whiteColor6 = [MEMORY[0x277D75348] whiteColor];
    [plainButtonConfiguration2 setBaseForegroundColor:whiteColor6];

    v65 = [MEMORY[0x277D75220] buttonWithType:1];
    emergencyButton = self->_emergencyButton;
    self->_emergencyButton = v65;

    [(UIButton *)self->_emergencyButton setConfiguration:plainButtonConfiguration2];
    v67 = self->_emergencyButton;
    whiteColor7 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v67 setTitleColor:whiteColor7 forState:0];

    [(UIButton *)self->_emergencyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_emergencyButton addTarget:self action:sel__handleEmergencyButtonAction forControlEvents:64];
    [view addSubview:self->_emergencyButton];
  }

  v69 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v69;

  [view addLayoutGuide:self->_layoutGuide];
  v105 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  topAnchor2 = [view topAnchor];
  v118 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v129[0] = v118;
  leadingAnchor = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v115 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v129[1] = v115;
  trailingAnchor = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v112 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v129[2] = v112;
  heightAnchor = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
  heightAnchor2 = [view heightAnchor];
  v109 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
  v129[3] = v109;
  bottomAnchor = [(UIStackView *)self->_labelsStackView bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v106 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v129[4] = v106;
  leadingAnchor3 = [(UIStackView *)self->_labelsStackView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v102 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:50.0];
  v129[5] = v102;
  trailingAnchor3 = [(UIStackView *)self->_labelsStackView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v99 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-50.0];
  v129[6] = v99;
  heightAnchor3 = [(UIButton *)self->_biometricAuthButton heightAnchor];
  v97 = [heightAnchor3 constraintEqualToConstant:50.0];
  v129[7] = v97;
  centerXAnchor = [(UIButton *)self->_biometricAuthButton centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v94 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v129[8] = v94;
  topAnchor3 = [(UIButton *)self->_biometricAuthButton topAnchor];
  bottomAnchor3 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v91 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
  v129[9] = v91;
  widthAnchor = [(UIButton *)self->_biometricAuthButton widthAnchor];
  v72 = [widthAnchor constraintEqualToConstant:175.0];
  v129[10] = v72;
  trailingAnchor5 = [(UIButton *)self->_cancelButton trailingAnchor];
  trailingAnchor6 = [v126 trailingAnchor];
  v75 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-30.0];
  v129[11] = v75;
  bottomAnchor4 = [(UIButton *)self->_cancelButton bottomAnchor];
  bottomAnchor5 = [v126 bottomAnchor];
  [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _buttonsBottomSpacing];
  v79 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-v78];
  v129[12] = v79;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:13];
  [v105 activateConstraints:v80];

  v81 = self->_emergencyButton;
  if (v81)
  {
    v82 = MEMORY[0x277CCAAD0];
    leadingAnchor5 = [(UIButton *)v81 leadingAnchor];
    leadingAnchor6 = [v126 leadingAnchor];
    v85 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];
    v128[0] = v85;
    bottomAnchor6 = [(UIButton *)self->_emergencyButton bottomAnchor];
    bottomAnchor7 = [v126 bottomAnchor];
    [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _buttonsBottomSpacing];
    v89 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-v88];
    v128[1] = v89;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    [v82 activateConstraints:v90];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)&v5 viewWillAppear:disappear];
  if (!self->_didAuthenticate)
  {
    delegate = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
    [delegate lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)_buttonsBottomSpacing
{
  if (([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) > 1)
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v138 = 0;
    v124 = 0;
    v139 = 0;
    v123 = 0;
    v122 = 0;
    v140 = 0;
    v121 = 0;
    v120 = 0;
    v141 = 0uLL;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 21.0;
    goto LABEL_69;
  }

  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v141 + 1) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      *(&v141 + 1) = 0x100000000;
      goto LABEL_12;
    }
  }

  HIDWORD(v141) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    DWORD2(v141) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v22 == *(MEMORY[0x277D66E30] + 288) && v21 == *(MEMORY[0x277D66E30] + 296))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v140 = 0;
      v121 = 0;
      v120 = 0;
      *&v141 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 224);
      goto LABEL_69;
    }
  }

  else
  {
    DWORD2(v141) = 0;
  }

LABEL_12:
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v141 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      *&v141 = 0x100000000;
      goto LABEL_21;
    }
  }

  DWORD1(v141) = v14 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    LODWORD(v141) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 440))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v140 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 264);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_21:
  v15 = __sb__runningInSpringBoard();
  if (v15)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v140 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v140 = 0x100000000;
      goto LABEL_30;
    }
  }

  HIDWORD(v140) = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    LODWORD(v140) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v25 >= *(MEMORY[0x277D66E30] + 376))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      v136 = 0uLL;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v137 = 0;
      v125 = 0;
      v138 = 0;
      v124 = 0;
      v139 = 0;
      v123 = 0;
      v122 = 0;
      v120 = 0;
      v121 = 0;
      v119 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 248);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_30:
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v139 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_39;
    }
  }

  HIDWORD(v139) = v16 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  LODWORD(v139) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v17 >= *(MEMORY[0x277D66E30] + 280))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v138 = 0;
    v124 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 256);
    goto LABEL_69;
  }

LABEL_39:
  v18 = __sb__runningInSpringBoard();
  if (v18)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v138 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v138 = 0x100000000;
      goto LABEL_49;
    }
  }

  HIDWORD(v138) = v18 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  LODWORD(v138) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v19 >= *(MEMORY[0x277D66E30] + 264))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v137 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 240);
    goto LABEL_69;
  }

LABEL_49:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v137 = 0;
      goto LABEL_188;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v137 = 0x100000000;
      goto LABEL_188;
    }
  }

  HIDWORD(v137) = v20 ^ 1;
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v137) = mainScreen26 ^ 1;
  BSSizeRoundForScale();
  if (v27 >= *(MEMORY[0x277D66E30] + 248))
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    v136 = 0uLL;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 232);
    goto LABEL_69;
  }

LABEL_188:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_190;
    }

LABEL_196:
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v117 = 0;
    v130 = 0;
    v131 = 0;
    *&v136 = 0;
    v128 = 0;
    v129 = 0;
    DWORD2(v136) = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 216);
    HIDWORD(v136) = mainScreen26 ^ 1;
    goto LABEL_69;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_196;
  }

LABEL_190:
  HIDWORD(v136) = mainScreen26 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_194:
    *(&v136 + 4) = 0;
    goto LABEL_204;
  }

  v28 = __sb__runningInSpringBoard();
  if (v28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_194;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      *(&v136 + 4) = 0x100000000;
      goto LABEL_204;
    }
  }

  DWORD2(v136) = v28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    DWORD1(v136) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 200))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v117 = 0;
      v130 = 0;
      v131 = 0;
      LODWORD(v136) = 0;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v125 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 184);
      goto LABEL_69;
    }
  }

  else
  {
    DWORD1(v136) = 0;
  }

LABEL_204:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v117 = 0;
      LODWORD(v136) = 0;
      goto LABEL_214;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v117 = 0;
      LODWORD(v136) = 1;
      goto LABEL_214;
    }
  }

  LODWORD(v136) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    v117 = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_218;
    }
  }

  else
  {
    v117 = 0;
  }

LABEL_214:
  if (_SBF_Private_IsD94Like())
  {
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 192);
    goto LABEL_69;
  }

LABEL_218:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_222:
    v135 = 0;
    goto LABEL_232;
  }

  v30 = __sb__runningInSpringBoard();
  if (v30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_222;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_232;
    }
  }

  HIDWORD(v135) = v30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v135) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 136))
    {
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 200);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v135) = 0;
  }

LABEL_232:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_242;
    }
  }

  HIDWORD(v134) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v134) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_246;
    }
  }

  else
  {
    LODWORD(v134) = 0;
  }

LABEL_242:
  if (_SBF_Private_IsD64Like())
  {
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 208);
    goto LABEL_69;
  }

LABEL_246:
  v33 = __sb__runningInSpringBoard();
  if (v33)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v133 = 0;
      goto LABEL_256;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_256;
    }
  }

  HIDWORD(v133) = v33 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    LODWORD(v133) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 168);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v133) = 0;
  }

LABEL_256:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v132 = 0;
      goto LABEL_266;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_266;
    }
  }

  HIDWORD(v132) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v132) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_276;
    }
  }

  else
  {
    LODWORD(v132) = 0;
  }

LABEL_266:
  if (_SBF_Private_IsD54())
  {
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 176);
    goto LABEL_69;
  }

LABEL_276:
  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v131 = 0;
      goto LABEL_286;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v131 = 0x100000000;
      goto LABEL_286;
    }
  }

  HIDWORD(v131) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v38 = __sb__runningInSpringBoard();
    if (v38)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    mainScreen26 = v38 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v131) = mainScreen26;
    if (v39 >= *(MEMORY[0x277D66E30] + 120) && _SBF_Private_IsN84OrSimilarDevice())
    {
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 104);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_286:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v130 = 0;
      goto LABEL_296;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_296;
    }
  }

  HIDWORD(v130) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v130) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_305;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_296:
  if (_SBF_Private_IsD33OrSimilarDevice() && _SBF_Private_IsN84ZoomedOrSimilarDevice())
  {
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 112);
    goto LABEL_69;
  }

LABEL_305:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_309:
    v129 = 0;
    goto LABEL_316;
  }

  v41 = __sb__runningInSpringBoard();
  if (v41)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_309;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v129 = 0x100000000;
      goto LABEL_316;
    }
  }

  HIDWORD(v129) = v41 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v42 = __sb__runningInSpringBoard();
    if (v42)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    mainScreen26 = v42 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v129) = mainScreen26;
    if (v45 >= *(MEMORY[0x277D66E30] + 184))
    {
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 88);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

LABEL_316:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v128 = 0;
      goto LABEL_326;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_326;
    }
  }

  HIDWORD(v128) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v128) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_330;
    }
  }

  else
  {
    LODWORD(v128) = 0;
  }

LABEL_326:
  if (_SBF_Private_IsD93Like())
  {
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 96);
    goto LABEL_69;
  }

LABEL_330:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_334:
    v127 = 0;
    goto LABEL_344;
  }

  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_334;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v127 = 0x100000000;
      goto LABEL_344;
    }
  }

  HIDWORD(v127) = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    mainScreen26 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v127) = mainScreen26;
    if (v49 >= *(MEMORY[0x277D66E30] + 104))
    {
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 136);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v127) = 0;
  }

LABEL_344:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_354;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_354;
    }
  }

  HIDWORD(v126) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    LODWORD(v126) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_358;
    }
  }

  else
  {
    LODWORD(v126) = 0;
  }

LABEL_354:
  if (_SBF_Private_IsD63Like())
  {
    v125 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 144);
    goto LABEL_69;
  }

LABEL_358:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_362:
    v125 = 0;
    goto LABEL_372;
  }

  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_362;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      v125 = 0x100000000;
      goto LABEL_372;
    }
  }

  HIDWORD(v125) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    LODWORD(v125) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 216))
    {
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 152);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v125) = 0;
  }

LABEL_372:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v124 = 0;
      goto LABEL_382;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      v124 = 0x100000000;
      goto LABEL_382;
    }
  }

  HIDWORD(v124) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    LODWORD(v124) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_386;
    }
  }

  else
  {
    LODWORD(v124) = 0;
  }

LABEL_382:
  if (_SBF_Private_IsD23Like())
  {
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 160);
    goto LABEL_69;
  }

LABEL_386:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v123 = 0;
      goto LABEL_396;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      v123 = 0x100000000;
      goto LABEL_396;
    }
  }

  HIDWORD(v123) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v52 = __sb__runningInSpringBoard();
    if (v52)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    mainScreen26 = v52 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v123) = mainScreen26;
    if (v53 >= *(MEMORY[0x277D66E30] + 120))
    {
      v121 = 0;
      v122 = 0;
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 120);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v123) = 0;
  }

LABEL_396:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v122 = 0;
      goto LABEL_406;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      v122 = 0x100000000;
      goto LABEL_406;
    }
  }

  HIDWORD(v122) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    LODWORD(v122) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_416;
    }
  }

  else
  {
    LODWORD(v122) = 0;
  }

LABEL_406:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 128);
    goto LABEL_69;
  }

LABEL_416:
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v121 = 0;
      goto LABEL_426;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      v121 = 0x100000000;
      goto LABEL_426;
    }
  }

  HIDWORD(v121) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    LODWORD(v121) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v119 = 0;
      v120 = 0;
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 72);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v121) = 0;
  }

LABEL_426:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v120 = 0;
      goto LABEL_436;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      v120 = 0x100000000;
      goto LABEL_436;
    }
  }

  HIDWORD(v120) = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    LODWORD(v120) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_443;
    }
  }

  else
  {
    LODWORD(v120) = 0;
  }

LABEL_436:
  if (_SBF_Private_IsD53())
  {
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 80);
    goto LABEL_69;
  }

LABEL_443:
  if (_SBF_Private_IsD16() && _SBF_Private_IsD52OrSimilarDevice())
  {
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 40);
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && _SBF_Private_IsD16())
  {
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 48);
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 24);
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v119 = 0;
    v118 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 32);
    goto LABEL_69;
  }

  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v119 = 0;
      goto LABEL_463;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v119 = 0x100000000;
      goto LABEL_463;
    }
  }

  HIDWORD(v119) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen26 = __sb__runningInSpringBoard();
    if (mainScreen26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    LODWORD(v119) = mainScreen26 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 88))
    {
      v118 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 56);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v119) = 0;
  }

LABEL_463:
  mainScreen26 = __sb__runningInSpringBoard();
  if (mainScreen26)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v118 = 0;
      v8 = 0;
      goto LABEL_473;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v8 = 0;
      v118 = 1;
      goto LABEL_473;
    }
  }

  v118 = mainScreen26 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v8 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 72))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(MEMORY[0x277D02B78] + 64);
      goto LABEL_69;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_473:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_483;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_483;
    }
  }

  v9 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v10 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v60 >= *(MEMORY[0x277D66E30] + 56))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 16);
    goto LABEL_69;
  }

LABEL_483:
  mainScreen28 = __sb__runningInSpringBoard();
  if (mainScreen28)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v11 = 0;
      v12 = 0;
LABEL_500:
      v13 = *MEMORY[0x277D02B78];
      goto LABEL_69;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_500;
    }
  }

  v11 = mainScreen28 ^ 1;
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  v12 = v63 ^ 1;
  BSSizeRoundForScale();
  if (v64 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_500;
  }

  v13 = *(MEMORY[0x277D02B78] + 8);
LABEL_69:
  if (v12)
  {

    if (!v11)
    {
      goto LABEL_71;
    }
  }

  else if (!v11)
  {
LABEL_71:
    if (v10)
    {
      goto LABEL_72;
    }

    goto LABEL_182;
  }

  if (v10)
  {
LABEL_72:

    if (!v9)
    {
      goto LABEL_73;
    }

    goto LABEL_183;
  }

LABEL_182:
  if (!v9)
  {
LABEL_73:
    if (!v8)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_183:

  if (v8)
  {
LABEL_74:
  }

LABEL_75:
  if (v118)
  {
  }

  if (v119)
  {
  }

  if (HIDWORD(v119))
  {
  }

  if (v120)
  {
  }

  if (HIDWORD(v120))
  {
  }

  if (v121)
  {
  }

  if (HIDWORD(v121))
  {
  }

  if (v122)
  {
  }

  if (HIDWORD(v122))
  {
  }

  if (v123)
  {
  }

  if (HIDWORD(v123))
  {
  }

  if (v124)
  {
  }

  if (HIDWORD(v124))
  {
  }

  if (v125)
  {
  }

  if (HIDWORD(v125))
  {
  }

  if (v126)
  {
  }

  if (HIDWORD(v126))
  {
  }

  if (v127)
  {
  }

  if (HIDWORD(v127))
  {
  }

  if (v128)
  {
  }

  if (HIDWORD(v128))
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (HIDWORD(v135))
  {
  }

  if (v117)
  {
  }

  if (v136)
  {
  }

  if (DWORD1(v136))
  {
  }

  if (DWORD2(v136))
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (DWORD1(v141))
  {
  }

  if (DWORD2(v141))
  {
  }

  if (HIDWORD(v141))
  {
  }

  return v13;
}

- (void)_handleCancelButtonAction
{
  delegate = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
  [delegate lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
}

- (void)_handleEmergencyButtonAction
{
  delegate = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
  [delegate lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:self];
}

- (id)_biometricCapabilityText
{
  if (([(SBUIBiometricResource *)self->_biometricResource hasMesaSupport]& 1) != 0)
  {
    v3 = @"LOST_MODE_BIO_AUTHENTICATION_TOUCH_ID";
LABEL_5:
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [mainBundle localizedStringForKey:v3 value:&stru_283094718 table:@"SpringBoard"];

    goto LABEL_7;
  }

  if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
  {
    v3 = @"LOST_MODE_BIO_AUTHENTICATION_FACE_ID";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_biometricAuthenticationButtonAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __103__SBLostModeBiometricAuthenticationTransientOverlayViewController__biometricAuthenticationButtonAction__block_invoke;
  v5[3] = &unk_2783ADB30;
  objc_copyWeak(&v6, &location);
  v3 = [v2 actionWithHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __103__SBLostModeBiometricAuthenticationTransientOverlayViewController__biometricAuthenticationButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _runLocalAuthenticationEvaluation];
    WeakRetained = v2;
  }
}

- (void)_runLocalAuthenticationEvaluation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Cannot evaluate local authentication policy with error: %@", &v2, 0xCu);
}

void __100__SBLostModeBiometricAuthenticationTransientOverlayViewController__runLocalAuthenticationEvaluation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__SBLostModeBiometricAuthenticationTransientOverlayViewController__runLocalAuthenticationEvaluation__block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __100__SBLostModeBiometricAuthenticationTransientOverlayViewController__runLocalAuthenticationEvaluation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __100__SBLostModeBiometricAuthenticationTransientOverlayViewController__runLocalAuthenticationEvaluation__block_invoke_2_cold_1((a1 + 40), v4);
    }

    [v3 lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:*(a1 + 32)];
  }

  else
  {
    *(*(a1 + 32) + 1504) = 1;
    [v2 lostModeBiometricAuthenticationViewControllerDidSucceedAuthentication:*(a1 + 32)];
  }
}

- (SBLostModeBiometricAuthenticationTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __100__SBLostModeBiometricAuthenticationTransientOverlayViewController__runLocalAuthenticationEvaluation__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed lost mode biometric authentication with error: %@", &v3, 0xCu);
}

@end