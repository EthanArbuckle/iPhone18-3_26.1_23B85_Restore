@interface SBLostModeBiometricAuthenticationTransientOverlayViewController
- (NSString)coverSheetIdentifier;
- (SBLostModeBiometricAuthenticationTransientOverlayViewController)initWithLockScreenManager:(id)a3 biometricResource:(id)a4;
- (SBLostModeBiometricAuthenticationTransientOverlayViewControllerDelegate)delegate;
- (double)_buttonsBottomSpacing;
- (id)_biometricAuthenticationButtonAction;
- (id)_biometricCapabilityText;
- (void)_handleCancelButtonAction;
- (void)_handleEmergencyButtonAction;
- (void)_runLocalAuthenticationEvaluation;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBLostModeBiometricAuthenticationTransientOverlayViewController

- (SBLostModeBiometricAuthenticationTransientOverlayViewController)initWithLockScreenManager:(id)a3 biometricResource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  v9 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lockScreenManager, a3);
    objc_storeStrong(&v10->_biometricResource, a4);
    v11 = [v7 coverSheetViewController];
    [v11 registerExternalLockProvider:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [v3 unregisterExternalLockProvider:self];
  if (!self->_didAuthenticate)
  {
    v4 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
    [v4 lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
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
  v3 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self view];
  [v3 bounds];
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
  [v3 addSubview:self->_backgroundView];
  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v17 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  v18 = [v14 stringWithFormat:v16, v17];

  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v19;

  v21 = self->_titleLabel;
  v22 = [MEMORY[0x277D65EC0] pinKeypadStatusTitleViewTitleFont];
  [(UILabel *)v21 setFont:v22];

  v23 = self->_titleLabel;
  v24 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v23 setTextColor:v24];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v125 = v18;
  [(UILabel *)self->_titleLabel setText:v18];
  v25 = MEMORY[0x277CCACA8];
  v26 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [v26 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];
  v28 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  v29 = [v25 stringWithFormat:v27, v28];

  v30 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v30;

  v32 = self->_subtitleLabel;
  v33 = [MEMORY[0x277D65EC0] pinKeypadStatusSubtitleViewTitleFont];
  [(UILabel *)v32 setFont:v33];

  v34 = self->_subtitleLabel;
  v35 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v34 setTextColor:v35];

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
  [v3 addSubview:self->_labelsStackView];
  v41 = [MEMORY[0x277D75230] filledButtonConfiguration];
  v42 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  [v41 setBaseBackgroundColor:v42];

  v43 = [MEMORY[0x277D75348] whiteColor];
  [v41 setBaseForegroundColor:v43];

  [v41 setCornerStyle:4];
  v44 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricCapabilityText];
  [v41 setTitle:v44];

  v45 = MEMORY[0x277D75220];
  v46 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _biometricAuthenticationButtonAction];
  v123 = v41;
  v47 = [v45 buttonWithConfiguration:v41 primaryAction:v46];
  biometricAuthButton = self->_biometricAuthButton;
  self->_biometricAuthButton = v47;

  v49 = self->_biometricAuthButton;
  v50 = MEMORY[0x277D74300];
  v51 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] addingSymbolicTraits:0x8000 options:1];
  v52 = [v50 fontWithDescriptor:v51 size:0.0];
  [(UIButton *)v49 setFont:v52];

  [(UIButton *)self->_biometricAuthButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_biometricAuthButton];
  v53 = [MEMORY[0x277CCA8D8] mainBundle];
  v54 = [v53 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v55 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v122 = v54;
  [v55 setTitle:v54];
  v56 = [MEMORY[0x277D75348] whiteColor];
  [v55 setBaseForegroundColor:v56];

  v57 = [MEMORY[0x277D75220] buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v57;

  v121 = v55;
  [(UIButton *)self->_cancelButton setConfiguration:v55];
  v59 = self->_cancelButton;
  v60 = [MEMORY[0x277D75348] whiteColor];
  [(UIButton *)v59 setTitleColor:v60 forState:0];

  [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_cancelButton addTarget:self action:sel__handleCancelButtonAction forControlEvents:64];
  v126 = v3;
  [v3 addSubview:self->_cancelButton];
  if ([(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _hasTelephonyCapability])
  {
    v61 = [MEMORY[0x277CCA8D8] mainBundle];
    v62 = [v61 localizedStringForKey:@"LOST_MODE_BIO_AUTHENTICATION_EMERGENCY" value:&stru_283094718 table:@"SpringBoard"];

    v63 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v63 setTitle:v62];
    v64 = [MEMORY[0x277D75348] whiteColor];
    [v63 setBaseForegroundColor:v64];

    v65 = [MEMORY[0x277D75220] buttonWithType:1];
    emergencyButton = self->_emergencyButton;
    self->_emergencyButton = v65;

    [(UIButton *)self->_emergencyButton setConfiguration:v63];
    v67 = self->_emergencyButton;
    v68 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v67 setTitleColor:v68 forState:0];

    [(UIButton *)self->_emergencyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_emergencyButton addTarget:self action:sel__handleEmergencyButtonAction forControlEvents:64];
    [v3 addSubview:self->_emergencyButton];
  }

  v69 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v69;

  [v3 addLayoutGuide:self->_layoutGuide];
  v105 = MEMORY[0x277CCAAD0];
  v120 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v119 = [v3 topAnchor];
  v118 = [v120 constraintEqualToAnchor:v119];
  v129[0] = v118;
  v117 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v116 = [v3 leadingAnchor];
  v115 = [v117 constraintEqualToAnchor:v116];
  v129[1] = v115;
  v114 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v113 = [v3 trailingAnchor];
  v112 = [v114 constraintEqualToAnchor:v113];
  v129[2] = v112;
  v111 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
  v110 = [v3 heightAnchor];
  v109 = [v111 constraintEqualToAnchor:v110 multiplier:0.5];
  v129[3] = v109;
  v108 = [(UIStackView *)self->_labelsStackView bottomAnchor];
  v107 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v106 = [v108 constraintEqualToAnchor:v107 constant:-10.0];
  v129[4] = v106;
  v104 = [(UIStackView *)self->_labelsStackView leadingAnchor];
  v103 = [v3 leadingAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:50.0];
  v129[5] = v102;
  v101 = [(UIStackView *)self->_labelsStackView trailingAnchor];
  v100 = [v3 trailingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100 constant:-50.0];
  v129[6] = v99;
  v98 = [(UIButton *)self->_biometricAuthButton heightAnchor];
  v97 = [v98 constraintEqualToConstant:50.0];
  v129[7] = v97;
  v96 = [(UIButton *)self->_biometricAuthButton centerXAnchor];
  v95 = [v3 centerXAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v129[8] = v94;
  v93 = [(UIButton *)self->_biometricAuthButton topAnchor];
  v92 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v91 = [v93 constraintEqualToAnchor:v92 constant:10.0];
  v129[9] = v91;
  v71 = [(UIButton *)self->_biometricAuthButton widthAnchor];
  v72 = [v71 constraintEqualToConstant:175.0];
  v129[10] = v72;
  v73 = [(UIButton *)self->_cancelButton trailingAnchor];
  v74 = [v126 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-30.0];
  v129[11] = v75;
  v76 = [(UIButton *)self->_cancelButton bottomAnchor];
  v77 = [v126 bottomAnchor];
  [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _buttonsBottomSpacing];
  v79 = [v76 constraintLessThanOrEqualToAnchor:v77 constant:-v78];
  v129[12] = v79;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:13];
  [v105 activateConstraints:v80];

  v81 = self->_emergencyButton;
  if (v81)
  {
    v82 = MEMORY[0x277CCAAD0];
    v83 = [(UIButton *)v81 leadingAnchor];
    v84 = [v126 leadingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84 constant:30.0];
    v128[0] = v85;
    v86 = [(UIButton *)self->_emergencyButton bottomAnchor];
    v87 = [v126 bottomAnchor];
    [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self _buttonsBottomSpacing];
    v89 = [v86 constraintLessThanOrEqualToAnchor:v87 constant:-v88];
    v128[1] = v89;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    [v82 activateConstraints:v90];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBLostModeBiometricAuthenticationTransientOverlayViewController;
  [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)&v5 viewWillAppear:a3];
  if (!self->_didAuthenticate)
  {
    v4 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
    [v4 lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
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
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom] != 1)
    {
      *(&v141 + 1) = 0x100000000;
      goto LABEL_12;
    }
  }

  HIDWORD(v141) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    DWORD2(v141) = v2 ^ 1;
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
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom] != 1)
    {
      *&v141 = 0x100000000;
      goto LABEL_21;
    }
  }

  DWORD1(v141) = v14 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    LODWORD(v141) = v2 ^ 1;
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
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom] != 1)
    {
      v140 = 0x100000000;
      goto LABEL_30;
    }
  }

  HIDWORD(v140) = v15 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v105 = [MEMORY[0x277D759A0] mainScreen];
      [v105 _referenceBounds];
    }

    LODWORD(v140) = v2 ^ 1;
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
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_39;
    }
  }

  HIDWORD(v139) = v16 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v110 = [MEMORY[0x277D759A0] mainScreen];
    [v110 _referenceBounds];
  }

  LODWORD(v139) = v2 ^ 1;
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
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom] != 1)
    {
      v138 = 0x100000000;
      goto LABEL_49;
    }
  }

  HIDWORD(v138) = v18 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v108 = [MEMORY[0x277D759A0] mainScreen];
    [v108 _referenceBounds];
  }

  LODWORD(v138) = v2 ^ 1;
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
    v111 = [MEMORY[0x277D75418] currentDevice];
    if ([v111 userInterfaceIdiom] != 1)
    {
      v137 = 0x100000000;
      goto LABEL_188;
    }
  }

  HIDWORD(v137) = v20 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v104 = [MEMORY[0x277D759A0] mainScreen];
    [v104 _referenceBounds];
  }

  LODWORD(v137) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
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
    HIDWORD(v136) = v2 ^ 1;
    goto LABEL_69;
  }

  v109 = [MEMORY[0x277D75418] currentDevice];
  if ([v109 userInterfaceIdiom] == 1)
  {
    goto LABEL_196;
  }

LABEL_190:
  HIDWORD(v136) = v2 ^ 1;
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
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      *(&v136 + 4) = 0x100000000;
      goto LABEL_204;
    }
  }

  DWORD2(v136) = v28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 _referenceBounds];
    }

    DWORD1(v136) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
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
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      v117 = 0;
      LODWORD(v136) = 1;
      goto LABEL_214;
    }
  }

  LODWORD(v136) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v98 = [MEMORY[0x277D759A0] mainScreen];
      [v98 _referenceBounds];
    }

    v117 = v2 ^ 1;
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
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_232;
    }
  }

  HIDWORD(v135) = v30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    LODWORD(v135) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_242;
    }
  }

  HIDWORD(v134) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v94 = [MEMORY[0x277D759A0] mainScreen];
      [v94 _referenceBounds];
    }

    LODWORD(v134) = v2 ^ 1;
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
    v100 = [MEMORY[0x277D75418] currentDevice];
    if ([v100 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_256;
    }
  }

  HIDWORD(v133) = v33 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    LODWORD(v133) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v132 = 0;
      goto LABEL_266;
    }
  }

  else
  {
    v97 = [MEMORY[0x277D75418] currentDevice];
    if ([v97 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_266;
    }
  }

  HIDWORD(v132) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 _referenceBounds];
    }

    LODWORD(v132) = v2 ^ 1;
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
    v96 = [MEMORY[0x277D75418] currentDevice];
    if ([v96 userInterfaceIdiom])
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
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    v2 = v38 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v131) = v2;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v130 = 0;
      goto LABEL_296;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_296;
    }
  }

  HIDWORD(v130) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v85 = [MEMORY[0x277D759A0] mainScreen];
      [v85 _referenceBounds];
    }

    LODWORD(v130) = v2 ^ 1;
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
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
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
      v79 = [MEMORY[0x277D759A0] mainScreen];
      [v79 _referenceBounds];
    }

    v2 = v42 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v129) = v2;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v128 = 0;
      goto LABEL_326;
    }
  }

  else
  {
    v92 = [MEMORY[0x277D75418] currentDevice];
    if ([v92 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_326;
    }
  }

  HIDWORD(v128) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 _referenceBounds];
    }

    LODWORD(v128) = v2 ^ 1;
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
    v84 = [MEMORY[0x277D75418] currentDevice];
    if ([v84 userInterfaceIdiom])
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
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    v2 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v127) = v2;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_354;
    }
  }

  else
  {
    v87 = [MEMORY[0x277D75418] currentDevice];
    if ([v87 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_354;
    }
  }

  HIDWORD(v126) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v78 = [MEMORY[0x277D759A0] mainScreen];
      [v78 _referenceBounds];
    }

    LODWORD(v126) = v2 ^ 1;
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
    v80 = [MEMORY[0x277D75418] currentDevice];
    if ([v80 userInterfaceIdiom])
    {
      v125 = 0x100000000;
      goto LABEL_372;
    }
  }

  HIDWORD(v125) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v71 = [MEMORY[0x277D759A0] mainScreen];
      [v71 _referenceBounds];
    }

    LODWORD(v125) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v124 = 0;
      goto LABEL_382;
    }
  }

  else
  {
    v83 = [MEMORY[0x277D75418] currentDevice];
    if ([v83 userInterfaceIdiom])
    {
      v124 = 0x100000000;
      goto LABEL_382;
    }
  }

  HIDWORD(v124) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v74 = [MEMORY[0x277D759A0] mainScreen];
      [v74 _referenceBounds];
    }

    LODWORD(v124) = v2 ^ 1;
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
    v81 = [MEMORY[0x277D75418] currentDevice];
    if ([v81 userInterfaceIdiom])
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
      v72 = [MEMORY[0x277D759A0] mainScreen];
      [v72 _referenceBounds];
    }

    v2 = v52 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v123) = v2;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v122 = 0;
      goto LABEL_406;
    }
  }

  else
  {
    v77 = [MEMORY[0x277D75418] currentDevice];
    if ([v77 userInterfaceIdiom])
    {
      v122 = 0x100000000;
      goto LABEL_406;
    }
  }

  HIDWORD(v122) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v70 = [MEMORY[0x277D759A0] mainScreen];
      [v70 _referenceBounds];
    }

    LODWORD(v122) = v2 ^ 1;
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
    v76 = [MEMORY[0x277D75418] currentDevice];
    if ([v76 userInterfaceIdiom])
    {
      v121 = 0x100000000;
      goto LABEL_426;
    }
  }

  HIDWORD(v121) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v69 = [MEMORY[0x277D759A0] mainScreen];
      [v69 _referenceBounds];
    }

    LODWORD(v121) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v120 = 0;
      goto LABEL_436;
    }
  }

  else
  {
    v73 = [MEMORY[0x277D75418] currentDevice];
    if ([v73 userInterfaceIdiom])
    {
      v120 = 0x100000000;
      goto LABEL_436;
    }
  }

  HIDWORD(v120) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v68 = [MEMORY[0x277D759A0] mainScreen];
      [v68 _referenceBounds];
    }

    LODWORD(v120) = v2 ^ 1;
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
    v67 = [MEMORY[0x277D75418] currentDevice];
    if ([v67 userInterfaceIdiom])
    {
      v119 = 0x100000000;
      goto LABEL_463;
    }
  }

  HIDWORD(v119) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = __sb__runningInSpringBoard();
    if (v2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v65 = [MEMORY[0x277D759A0] mainScreen];
      [v65 _referenceBounds];
    }

    LODWORD(v119) = v2 ^ 1;
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
  v2 = __sb__runningInSpringBoard();
  if (v2)
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
    v66 = [MEMORY[0x277D75418] currentDevice];
    if ([v66 userInterfaceIdiom])
    {
      v8 = 0;
      v118 = 1;
      goto LABEL_473;
    }
  }

  v118 = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v3 = __sb__runningInSpringBoard();
    if (v3)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    v8 = v3 ^ 1;
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
  v3 = __sb__runningInSpringBoard();
  if (v3)
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
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom])
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_483;
    }
  }

  v9 = v3 ^ 1;
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 _referenceBounds];
  }

  v10 = v3 ^ 1;
  BSSizeRoundForScale();
  if (v60 >= *(MEMORY[0x277D66E30] + 56))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(MEMORY[0x277D02B78] + 16);
    goto LABEL_69;
  }

LABEL_483:
  v5 = __sb__runningInSpringBoard();
  if (v5)
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
    v3 = [MEMORY[0x277D75418] currentDevice];
    if ([v3 userInterfaceIdiom])
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_500;
    }
  }

  v11 = v5 ^ 1;
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 _referenceBounds];
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
  v3 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
  [v3 lostModeBiometricAuthenticationViewControllerDidFailOrCancelAuthentication:self];
}

- (void)_handleEmergencyButtonAction
{
  v3 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self delegate];
  [v3 lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:self];
}

- (id)_biometricCapabilityText
{
  if (([(SBUIBiometricResource *)self->_biometricResource hasMesaSupport]& 1) != 0)
  {
    v3 = @"LOST_MODE_BIO_AUTHENTICATION_TOUCH_ID";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_283094718 table:@"SpringBoard"];

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
  v3 = a1;
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