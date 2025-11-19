@interface VTUIVoiceSelectionView
- (VTUIVoiceSelectionView)initWithAllowsRandomVoiceSelection:(BOOL)a3 showContinueButton:(BOOL)a4;
- (id)footerView;
- (void)_setupButtons;
- (void)tintColorDidChange;
@end

@implementation VTUIVoiceSelectionView

- (VTUIVoiceSelectionView)initWithAllowsRandomVoiceSelection:(BOOL)a3 showContinueButton:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = VTUIVoiceSelectionView;
  v6 = [(VTUIVoiceSelectionView *)&v11 init];
  if (v6)
  {
    v7 = +[VTUIStyle sharedStyle];
    [v7 setIsFloatingWithReducedWidth:1];

    v6->_allowsRandomSelection = a3;
    v6->_shouldShowContinueButton = a4;
    [(VTUIVoiceSelectionView *)v6 _setupButtons];
    [(VTUIEnrollmentBaseView *)v6 setShowsVerticalScrollIndicator:0];
    if (!v6->_shouldShowContinueButton && !v6->_allowsRandomSelection)
    {
      v8 = [(VTUIEnrollmentBaseView *)v6 backdropView];
      [v8 setHidden:1];

      v9 = [(VTUIVoiceSelectionView *)v6 footerView];
      [v9 setUserInteractionEnabled:0];
    }
  }

  return v6;
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = VTUIVoiceSelectionView;
  [(VTUIVoiceSelectionView *)&v8 tintColorDidChange];
  continueButton = self->_continueButton;
  v4 = [(VTUIVoiceSelectionView *)self tintColor];
  v5 = [VTUIButton vtuiBackgroundButtonImageWithColor:v4];
  [(UIButton *)continueButton setBackgroundImage:v5 forState:0];

  chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
  v7 = [(VTUIVoiceSelectionView *)self tintColor];
  [(UIButton *)chooseRandomVoiceButton setTitleColor:v7 forState:0];
}

- (id)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)_setupButtons
{
  v93[4] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  v4 = [(VTUIVoiceSelectionView *)self footerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = v4;
  v87 = v3;
  if (self->_shouldShowContinueButton)
  {
    v5 = +[VTUIButton _vtuiButtonWithPrimaryStyleForNormalAndDisabledState];
    continueButton = self->_continueButton;
    self->_continueButton = v5;

    v7 = self->_continueButton;
    v8 = [v3 VTUIDeviceSpecificString:@"BUTTON_CONTINUE_SETUP"];
    [(UIButton *)v7 setTitle:v8 forState:0];

    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v9 = self->_continueButton;
      [v3 primaryButtonHeight];
      [(UIButton *)v9 _setCornerRadius:v10 * 0.5];
      v11 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
      [(UIButton *)self->_continueButton setConfiguration:v11];
    }

    [v4 addSubview:self->_continueButton];
    [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if (+[VTUIFeatureFlags isNaturalUIEnabled](VTUIFeatureFlags, "isNaturalUIEnabled") && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isIpad], v12, (v13 & 1) == 0))
    {
      v77 = MEMORY[0x277CCAAD0];
      v25 = [(UIButton *)self->_continueButton topAnchor];
      v26 = [v4 topAnchor];
      [v3 continueButtonOffset];
      v81 = v26;
      v83 = v25;
      v79 = [v25 constraintEqualToAnchor:v26 constant:?];
      v93[0] = v79;
      v27 = [(UIButton *)self->_continueButton leadingAnchor];
      v17 = [(VTUIVoiceSelectionView *)self leadingAnchor];
      v78 = v27;
      [v27 constraintEqualToAnchor:v17 constant:38.0];
      v19 = v28 = v3;
      v93[1] = v19;
      v20 = [(UIButton *)self->_continueButton trailingAnchor];
      v21 = [(VTUIVoiceSelectionView *)self trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:-38.0];
      v93[2] = v22;
      v23 = [(UIButton *)self->_continueButton heightAnchor];
      [v28 primaryButtonHeight];
      v24 = [v23 constraintEqualToConstant:?];
      v93[3] = v24;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
      [v77 activateConstraints:v29];
    }

    else
    {
      v14 = [(UIButton *)self->_continueButton topAnchor];
      v15 = [v4 topAnchor];
      [v3 continueButtonOffset];
      v81 = v15;
      v83 = v14;
      v79 = [v14 constraintEqualToAnchor:v15 constant:?];
      v92[0] = v79;
      v16 = [(UIButton *)self->_continueButton centerXAnchor];
      v17 = [v4 centerXAnchor];
      v78 = v16;
      [v16 constraintEqualToAnchor:v17];
      v19 = v18 = v3;
      v92[1] = v19;
      v20 = [(UIButton *)self->_continueButton widthAnchor];
      [v18 footerButtonMaximumWidth];
      v21 = [v20 constraintEqualToConstant:?];
      v92[2] = v21;
      v22 = [(UIButton *)self->_continueButton heightAnchor];
      [v18 primaryButtonHeight];
      v23 = [v22 constraintEqualToConstant:?];
      v92[3] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
      [v76 activateConstraints:v24];
    }

    allowsRandomSelection = self->_allowsRandomSelection;
    v31 = MEMORY[0x277CCAAD0];
    v32 = [(UIButton *)self->_continueButton bottomAnchor];
    v4 = v86;
    v33 = [v86 bottomAnchor];
    v3 = v87;
    if (allowsRandomSelection)
    {
      [v87 continueButtonFromBottomTwoButtons];
      v35 = [v32 constraintEqualToAnchor:v33 constant:-v34];
      v90 = v35;
      v36 = &v90;
    }

    else
    {
      [v87 continueButtonFromBottom];
      v35 = [v32 constraintEqualToAnchor:v33 constant:-v37];
      v91 = v35;
      v36 = &v91;
    }

    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v31 activateConstraints:v38];
  }

  if (self->_allowsRandomSelection)
  {
    v39 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
    chooseRandomVoiceButton = self->_chooseRandomVoiceButton;
    self->_chooseRandomVoiceButton = v39;

    [(UIButton *)self->_chooseRandomVoiceButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = self->_chooseRandomVoiceButton;
    v42 = [v3 VTUIDeviceSpecificString:@"BUTTON_CHOOSE_FOR_ME"];
    [(UIButton *)v41 setTitle:v42 forState:0];

    [v4 addSubview:self->_chooseRandomVoiceButton];
    v43 = [(UIButton *)self->_chooseRandomVoiceButton topAnchor];
    v44 = [v4 topAnchor];
    [v3 continueButtonOffset];
    v45 = [v43 constraintEqualToAnchor:v44 constant:?];

    if (self->_shouldShowContinueButton)
    {
      v46 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      v47 = [(UIButton *)self->_continueButton leadingAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];

      v45 = v48;
    }

    v85 = v45;
    if (+[VTUIFeatureFlags isNaturalUIEnabled](VTUIFeatureFlags, "isNaturalUIEnabled") && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 isIpad], v49, (v50 & 1) == 0))
    {
      v80 = MEMORY[0x277CCAAD0];
      v89[0] = v45;
      v63 = [(UIButton *)self->_chooseRandomVoiceButton leadingAnchor];
      v82 = [(VTUIVoiceSelectionView *)self leadingAnchor];
      v84 = v63;
      v53 = [v63 constraintEqualToAnchor:38.0 constant:?];
      v89[1] = v53;
      v54 = [(UIButton *)self->_chooseRandomVoiceButton trailingAnchor];
      [(VTUIVoiceSelectionView *)self trailingAnchor];
      v56 = v64 = v3;
      [v54 constraintEqualToAnchor:v56 constant:-38.0];
      v59 = v65 = v4;
      v89[2] = v59;
      v60 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      v61 = [v65 bottomAnchor];
      [v64 footerSkipButtonBaselineFromBottom];
      v62 = [v60 constraintEqualToAnchor:v61 constant:-v66];
      v89[3] = v62;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
      [v80 activateConstraints:v67];
    }

    else
    {
      v51 = MEMORY[0x277CCAAD0];
      v88[0] = v45;
      v52 = [(UIButton *)self->_chooseRandomVoiceButton widthAnchor];
      [v3 footerButtonMaximumWidth];
      v84 = v52;
      v82 = [v52 constraintEqualToConstant:?];
      v88[1] = v82;
      v53 = [(UIButton *)self->_chooseRandomVoiceButton bottomAnchor];
      v54 = [v4 bottomAnchor];
      [v3 footerSkipButtonBaselineFromBottom];
      v56 = [v53 constraintEqualToAnchor:v54 constant:-v55];
      v88[2] = v56;
      v57 = [(UIButton *)self->_chooseRandomVoiceButton centerXAnchor];
      v58 = v4;
      v59 = v57;
      v60 = [v58 centerXAnchor];
      v61 = [v59 constraintEqualToAnchor:v60];
      v88[3] = v61;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
      [v51 activateConstraints:v62];
    }

    v3 = v87;
    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v68 = self->_chooseRandomVoiceButton;
      v69 = [MEMORY[0x277D75348] systemGray6Color];
      [(UIButton *)v68 setBackgroundColor:v69];

      v70 = self->_chooseRandomVoiceButton;
      [v87 primaryButtonHeight];
      [(UIButton *)v70 _setCornerRadius:v71 * 0.5];
      v72 = [(UIButton *)self->_chooseRandomVoiceButton heightAnchor];
      [v87 primaryButtonHeight];
      v73 = [v72 constraintEqualToConstant:?];
      [v73 setActive:1];

      v74 = [MEMORY[0x277D75230] _glassButtonConfiguration];
      [(UIButton *)self->_chooseRandomVoiceButton setConfiguration:v74];
    }

    v4 = v86;
  }

  v75 = *MEMORY[0x277D85DE8];
}

@end