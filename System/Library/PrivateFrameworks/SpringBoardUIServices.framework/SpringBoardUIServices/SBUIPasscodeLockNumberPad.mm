@interface SBUIPasscodeLockNumberPad
+ (BOOL)canUseGlass;
+ (CGSize)_inputButtonCircleSize;
+ (UIEdgeInsets)_inputButtonCircleSpacing;
+ (id)_buttonForCharacter:(int64_t)character withLightStyle:(BOOL)style;
- (BOOL)_holdsAuxiliaryButtonsWithinPadBounds;
- (SBUIPasscodeLockNumberPad)initWithDefaultSizeAndLightStyle:(BOOL)style;
- (SBUIPasscodeLockNumberPadDelegate)delegate;
- (double)_auxiliaryButtonCenteringOffset;
- (id)_fontForAncillaryButton;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_animateFlyingOut:(BOOL)out;
- (void)_backspaceButtonHit;
- (void)_cancelButtonHit;
- (void)_configureAdditionalButtons;
- (void)_emergencyCallButtonHit;
- (void)_numberPadTouchCancelledForEvent:(id)event;
- (void)_numberPadTouchDownForEvent:(id)event;
- (void)_numberPadTouchDragForEvent:(id)event;
- (void)_numberPadTouchUpForEvent:(id)event;
- (void)_setButtonsVisible:(BOOL)visible;
- (void)_setSnapshotsDisabled:(BOOL)disabled;
- (void)_updateAuxiliaryButtonConstraints;
- (void)didLongPress:(id)press;
- (void)setReduceTransparencyButtonColor:(id)color;
- (void)setShowsBackspaceButton:(BOOL)button;
- (void)setShowsCancelButton:(BOOL)button;
- (void)setShowsEmergencyCallButton:(BOOL)button;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBUIPasscodeLockNumberPad

+ (BOOL)canUseGlass
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x1EEE4E310]();
  }

  return v2;
}

- (id)_fontForAncillaryButton
{
  v2 = MEMORY[0x1E69DB878];
  v3 = SBUIScaledFontSizeWithMaxSizeCategory(*MEMORY[0x1E69DDC40], 16.0);

  return [v2 systemFontOfSize:v3];
}

- (BOOL)_holdsAuxiliaryButtonsWithinPadBounds
{
  v2 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || v2 < 0xFFFFFFFFFFFFFFFELL;
}

- (double)_auxiliaryButtonCenteringOffset
{
  _holdsAuxiliaryButtonsWithinPadBounds = [(SBUIPasscodeLockNumberPad *)self _holdsAuxiliaryButtonsWithinPadBounds];
  [(SBNumberPadWithDelegate *)self->_numberPad frame];
  Width = CGRectGetWidth(v7);
  v5 = -24.0;
  if (_holdsAuxiliaryButtonsWithinPadBounds)
  {
    v5 = -6.0;
  }

  return Width / v5;
}

- (void)_configureAdditionalButtons
{
  cancelButton = self->_cancelButton;
  showsBackspaceButton = 1;
  if (self->_showsCancelButton)
  {
    showsBackspaceButton = self->_showsBackspaceButton;
  }

  [(SBUIButton *)cancelButton setHidden:showsBackspaceButton];
  [(SBUIButton *)self->_backspaceButton setHidden:!self->_showsBackspaceButton];
  [(SBUIButton *)self->_emergencyCallButton setHidden:!self->_showsEmergencyCallButton];
  [(SBUIButton *)self->_emergencyCallButton setExclusiveTouch:1];

  [(SBUIPasscodeLockNumberPad *)self _updateAuxiliaryButtonConstraints];
}

- (void)_updateAuxiliaryButtonConstraints
{
  v17 = *MEMORY[0x1E69E9840];
  [(SBUIPasscodeLockNumberPad *)self _auxiliaryButtonCenteringOffset];
  v4 = v3;
  [(NSLayoutConstraint *)self->_emergencyButtonConstraintCenterX setConstant:?];
  v5 = -v4;
  [(NSLayoutConstraint *)self->_cancelButtonConstraintCenterX setConstant:v5];
  [(NSLayoutConstraint *)self->_backspaceButtonConstraintCenterX setConstant:v5];
  _holdsAuxiliaryButtonsWithinPadBounds = [(SBUIPasscodeLockNumberPad *)self _holdsAuxiliaryButtonsWithinPadBounds];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_auxiliaryButtonConstrainingConstraints;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setActive:{_holdsAuxiliaryButtonsWithinPadBounds, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (CGSize)_inputButtonCircleSize
{
  +[SBPasscodeNumberPadButton _numberPadButtonOuterCircleDiameter];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIEdgeInsets)_inputButtonCircleSpacing
{
  +[SBPasscodeNumberPadButton paddingOutsideRing];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)_buttonForCharacter:(int64_t)character withLightStyle:(BOOL)style
{
  if (character == 13)
  {
    v4 = [[SBEmptyButtonView alloc] initForCharacter:13];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    +[SBPasscodeNumberPadButton defaultSize];
    [v4 setFrame:{v5, v6, v7, v8}];
  }

  else
  {
    v10 = objc_opt_class();
    if ([objc_opt_class() canUseGlass])
    {
      v10 = objc_opt_class();
    }

    v4 = [[v10 alloc] initForCharacter:character];
  }

  return v4;
}

- (SBUIPasscodeLockNumberPad)initWithDefaultSizeAndLightStyle:(BOOL)style
{
  styleCopy = style;
  v141 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_autoreleasePoolPush();
  for (i = 0; i != 12; ++i)
  {
    v8 = [objc_opt_class() _buttonForCharacter:SBNumberPadCharacters[i] withLightStyle:styleCopy];
    [v5 addObject:v8];
  }

  objc_autoreleasePoolPop(v6);
  v9 = [[SBNumberPadWithDelegate alloc] initWithButtons:v5];
  [(SBNumberPadWithDelegate *)v9 bounds];
  v11 = v10;
  v13 = v12;
  [MEMORY[0x1E69D3FE8] pinNumberPadBottomPaddingHeight];
  v15 = SBUIFloatFloorForMainScreenScale(v14);
  [MEMORY[0x1E69D3FE8] pinNumberPadWidth];
  v137.receiver = self;
  v137.super_class = SBUIPasscodeLockNumberPad;
  v17 = [(SBUIPasscodeLockNumberPad *)&v137 initWithFrame:0.0, 0.0, v16, v13 + v15];
  v18 = v17;
  if (v17)
  {
    v17->_useLightStyle = styleCopy;
    [(SBUIPasscodeLockNumberPad *)v17 bounds];
    v20 = SBUIFloatFloorForMainScreenScale((v19 - v11) * 0.5);
    objc_storeStrong(&v18->_numberPad, v9);
    [(SBNumberPadWithDelegate *)v18->_numberPad setFrame:v20, 0.0, v11, v13];
    [(SBUIPasscodeLockNumberPad *)v18 addSubview:v18->_numberPad];
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    layer = [(SBUIPasscodeLockNumberPad *)v18 layer];
    v22 = layer;
    v116 = v5;
    v120 = styleCopy;
    if (layer)
    {
      [layer sublayerTransform];
    }

    else
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
    }

    *(&v134 + 1) = 0xBF29CA68A8A067E4;
    layer2 = [(SBUIPasscodeLockNumberPad *)v18 layer];
    v128[4] = v133;
    v128[5] = v134;
    v128[6] = v135;
    v128[7] = v136;
    v128[0] = v129;
    v128[1] = v130;
    v128[2] = v131;
    v128[3] = v132;
    [layer2 setSublayerTransform:v128];

    _fontForAncillaryButton = [(SBUIPasscodeLockNumberPad *)v18 _fontForAncillaryButton];
    [_fontForAncillaryButton pointSize];
    if (v24 <= 7.0)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 7.0 / v24;
    }

    v26 = [SBUIButton buttonWithType:1];
    cancelButton = v18->_cancelButton;
    v18->_cancelButton = v26;

    v28 = v18->_cancelButton;
    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"PASSCODE_CANCEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v28 setTitle:v30 forState:0];

    [(SBUIButton *)v18->_cancelButton addTarget:v18 action:sel__cancelButtonHit forControlEvents:64];
    v31 = [SBUIButton buttonWithType:1];
    backspaceButton = v18->_backspaceButton;
    v18->_backspaceButton = v31;

    v33 = v18->_backspaceButton;
    v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"PASSCODE_BACKSPACE" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v33 setTitle:v35 forState:0];

    [(SBUIButton *)v18->_backspaceButton addTarget:v18 action:sel__backspaceButtonHit forControlEvents:64];
    v36 = [SBUIButton buttonWithType:1];
    emergencyCallButton = v18->_emergencyCallButton;
    v18->_emergencyCallButton = v36;

    v38 = v18->_emergencyCallButton;
    v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"PASSCODE_EMERGENCY" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v38 setTitle:v40 forState:0];

    [(SBUIButton *)v18->_emergencyCallButton addTarget:v18 action:sel__emergencyCallButtonHit forControlEvents:64];
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v139[0] = v18->_cancelButton;
    v139[1] = v18->_backspaceButton;
    v139[2] = v18->_emergencyCallButton;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:3];
    v41 = [obj countByEnumeratingWithState:&v124 objects:v140 count:16];
    v123 = v18;
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v118 = *v125;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v125 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v124 + 1) + 8 * j);
          [v45 setUserInteractionEnabled:1];
          [v45 setClipsToBounds:1];
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          [v45 setBackgroundColor:clearColor];

          if (v120)
          {
            [MEMORY[0x1E69DC888] blackColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] whiteColor];
          }
          v47 = ;
          [v45 setTitleColor:v47 forState:0];

          [v45 setPointerInteractionEnabled:1];
          titleLabel = [v45 titleLabel];
          [titleLabel setFont:_fontForAncillaryButton];
          [titleLabel setLineBreakMode:5];
          [titleLabel setAdjustsFontSizeToFitWidth:1];
          [titleLabel setMinimumScaleFactor:v25];
          [(SBUIPasscodeLockNumberPad *)v123 addSubview:v45];
          [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v45 setContentHorizontalAlignment:0];
          LODWORD(v49) = 1144750080;
          [v45 setContentCompressionResistancePriority:0 forAxis:v49];
          heightAnchor = [v45 heightAnchor];
          heightAnchor2 = [(SBNumberPadWithDelegate *)v123->_numberPad heightAnchor];
          v52 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.25];

          LODWORD(v53) = 1144750080;
          [v52 setPriority:v53];
          [v52 setActive:1];
          widthAnchor = [v45 widthAnchor];
          widthAnchor2 = [(SBNumberPadWithDelegate *)v123->_numberPad widthAnchor];
          v43 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.333333333];

          LODWORD(v56) = 1144750080;
          [v43 setPriority:v56];
          [v43 setActive:1];
        }

        v42 = [obj countByEnumeratingWithState:&v124 objects:v140 count:16];
      }

      while (v42);

      v18 = v123;
    }

    _holdsAuxiliaryButtonsWithinPadBounds = [(SBUIPasscodeLockNumberPad *)v18 _holdsAuxiliaryButtonsWithinPadBounds];
    rightAnchor = [(SBNumberPadWithDelegate *)v18->_numberPad rightAnchor];
    rightAnchor2 = [(SBUIButton *)v18->_cancelButton rightAnchor];
    v58 = [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2];
    v138[0] = v58;
    rightAnchor3 = [(SBNumberPadWithDelegate *)v18->_numberPad rightAnchor];
    rightAnchor4 = [(SBUIButton *)v18->_backspaceButton rightAnchor];
    v61 = [rightAnchor3 constraintGreaterThanOrEqualToAnchor:rightAnchor4];
    v138[1] = v61;
    leftAnchor = [(SBUIButton *)v123->_emergencyCallButton leftAnchor];
    leftAnchor2 = [(SBNumberPadWithDelegate *)v123->_numberPad leftAnchor];
    v64 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
    v138[2] = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:3];
    auxiliaryButtonConstrainingConstraints = v123->_auxiliaryButtonConstrainingConstraints;
    v123->_auxiliaryButtonConstrainingConstraints = v65;

    v18 = v123;
    v67 = v123->_auxiliaryButtonConstrainingConstraints;
    if (_holdsAuxiliaryButtonsWithinPadBounds)
    {
      [MEMORY[0x1E696ACD8] activateConstraints:v67];
    }

    else
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:v67];
    }

    v5 = v116;
    v68 = MEMORY[0x1E696ACD8];
    v69 = _NSDictionaryOfVariableBindings(&cfstr_CancelbuttonEm.isa, v123->_cancelButton, v123->_emergencyCallButton, 0);
    v70 = [v68 constraintsWithVisualFormat:@"[_emergencyCallButton]-(>=10)-[_cancelButton]" options:0x10000 metrics:0 views:v69];
    [v68 activateConstraints:v70];

    v71 = MEMORY[0x1E696ACD8];
    v72 = _NSDictionaryOfVariableBindings(&cfstr_Backspacebutto.isa, v123->_backspaceButton, v123->_emergencyCallButton, 0);
    v73 = [v71 constraintsWithVisualFormat:@"[_emergencyCallButton]-(>=10)-[_backspaceButton]" options:0x10000 metrics:0 views:v72];
    [v71 activateConstraints:v73];

    firstBaselineAnchor = [(SBUIButton *)v123->_cancelButton firstBaselineAnchor];
    firstBaselineAnchor2 = [(SBUIButton *)v123->_emergencyCallButton firstBaselineAnchor];
    v76 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    [v76 setActive:1];

    firstBaselineAnchor3 = [(SBUIButton *)v123->_backspaceButton firstBaselineAnchor];
    firstBaselineAnchor4 = [(SBUIButton *)v123->_emergencyCallButton firstBaselineAnchor];
    v79 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
    [v79 setActive:1];

    [(SBUIPasscodeLockNumberPad *)v123 _auxiliaryButtonCenteringOffset];
    v81 = v80;
    centerXAnchor = [(SBUIButton *)v123->_emergencyCallButton centerXAnchor];
    leftAnchor3 = [(SBNumberPadWithDelegate *)v123->_numberPad leftAnchor];
    v84 = [centerXAnchor constraintEqualToAnchor:leftAnchor3 constant:v81];
    emergencyButtonConstraintCenterX = v123->_emergencyButtonConstraintCenterX;
    v123->_emergencyButtonConstraintCenterX = v84;

    LODWORD(v86) = 1144750080;
    [(NSLayoutConstraint *)v123->_emergencyButtonConstraintCenterX setPriority:v86];
    [(NSLayoutConstraint *)v123->_emergencyButtonConstraintCenterX setActive:1];
    centerXAnchor2 = [(SBUIButton *)v123->_cancelButton centerXAnchor];
    rightAnchor5 = [(SBNumberPadWithDelegate *)v123->_numberPad rightAnchor];
    v89 = -v81;
    v90 = [centerXAnchor2 constraintEqualToAnchor:rightAnchor5 constant:v89];
    cancelButtonConstraintCenterX = v123->_cancelButtonConstraintCenterX;
    v123->_cancelButtonConstraintCenterX = v90;

    LODWORD(v92) = 1144750080;
    [(NSLayoutConstraint *)v123->_cancelButtonConstraintCenterX setPriority:v92];
    [(NSLayoutConstraint *)v123->_cancelButtonConstraintCenterX setActive:1];
    centerXAnchor3 = [(SBUIButton *)v123->_backspaceButton centerXAnchor];
    rightAnchor6 = [(SBNumberPadWithDelegate *)v123->_numberPad rightAnchor];
    v95 = [centerXAnchor3 constraintEqualToAnchor:rightAnchor6 constant:v89];
    backspaceButtonConstraintCenterX = v123->_backspaceButtonConstraintCenterX;
    v123->_backspaceButtonConstraintCenterX = v95;

    LODWORD(v97) = 1144750080;
    [(NSLayoutConstraint *)v123->_backspaceButtonConstraintCenterX setPriority:v97];
    [(NSLayoutConstraint *)v123->_backspaceButtonConstraintCenterX setActive:1];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    Height = CGRectGetHeight(v142);
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v101 = Height >= CGRectGetWidth(v143);

    buttons = [(TPNumberPad *)v123->_numberPad buttons];
    v103 = [buttons objectAtIndex:9];

    numberPad = v123->_numberPad;
    [v103 frame];
    [(SBNumberPadWithDelegate *)numberPad convertRect:v123 toView:?];
    UIRectGetCenter();
    v106 = v105;
    [MEMORY[0x1E69D3FE8] pinNumberPadAncillaryButtonOffset:v101];
    v108 = v106 + v107;
    centerYAnchor = [(SBUIButton *)v123->_cancelButton centerYAnchor];
    topAnchor = [(SBNumberPadWithDelegate *)v123->_numberPad topAnchor];
    v111 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:v108];
    [v111 setActive:1];

    [(SBUIPasscodeLockNumberPad *)v123 setAncillaryButtonOffset:v108];
    v123->_showsCancelButton = 1;
    v123->_showsBackspaceButton = 0;
    v123->_showsEmergencyCallButton = 1;
    [(SBUIPasscodeLockNumberPad *)v123 _configureAdditionalButtons];
    v112 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v123];
    [(SBUIPasscodeLockNumberPad *)v123 addInteraction:v112];
    [(SBNumberPadWithDelegate *)v9 setDelegate:v123];
    [(SBNumberPadWithDelegate *)v9 setMultipleTouchEnabled:0];
    v113 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v123 action:sel_didLongPress_];
    gestureRecognizer = v123->_gestureRecognizer;
    v123->_gestureRecognizer = v113;

    [(UILongPressGestureRecognizer *)v123->_gestureRecognizer setMinimumPressDuration:0.0];
    [(SBNumberPadWithDelegate *)v9 addGestureRecognizer:v123->_gestureRecognizer];
  }

  return v18;
}

- (void)didLongPress:(id)press
{
  pressCopy = press;
  v7 = [pressCopy _activeEventOfType:0];
  state = [pressCopy state];

  if (state > 2)
  {
    if (state == 3)
    {
      [(SBUIPasscodeLockNumberPad *)self _numberPadTouchUpForEvent:v7];
    }

    else
    {
      v6 = v7;
      if (state != 4)
      {
        goto LABEL_11;
      }

      [(SBUIPasscodeLockNumberPad *)self _numberPadTouchCancelledForEvent:v7];
    }
  }

  else if (state == 1)
  {
    [(SBUIPasscodeLockNumberPad *)self _numberPadTouchDownForEvent:v7];
  }

  else
  {
    v6 = v7;
    if (state != 2)
    {
      goto LABEL_11;
    }

    [(SBUIPasscodeLockNumberPad *)self _numberPadTouchDragForEvent:v7];
  }

  v6 = v7;
LABEL_11:
}

- (void)setShowsCancelButton:(BOOL)button
{
  if (self->_showsCancelButton != button)
  {
    self->_showsCancelButton = button;
    [(SBUIPasscodeLockNumberPad *)self _configureAdditionalButtons];
  }
}

- (void)setShowsBackspaceButton:(BOOL)button
{
  if (self->_showsBackspaceButton != button)
  {
    self->_showsBackspaceButton = button;
    [(SBUIPasscodeLockNumberPad *)self _configureAdditionalButtons];
  }
}

- (void)setShowsEmergencyCallButton:(BOOL)button
{
  if (self->_showsEmergencyCallButton != button)
  {
    self->_showsEmergencyCallButton = button;
    [(SBUIPasscodeLockNumberPad *)self _configureAdditionalButtons];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = SBUIPasscodeLockNumberPad;
  [(SBUIPasscodeLockNumberPad *)&v21 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(SBUIPasscodeLockNumberPad *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      backspaceButton = self->_backspaceButton;
      v22[0] = self->_cancelButton;
      v22[1] = backspaceButton;
      v22[2] = self->_emergencyCallButton;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{3, 0}];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            titleLabel = [*(*(&v17 + 1) + 8 * v14) titleLabel];
            _fontForAncillaryButton = [(SBUIPasscodeLockNumberPad *)self _fontForAncillaryButton];
            [titleLabel setFont:_fontForAncillaryButton];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v12);
      }

      [(SBUIPasscodeLockNumberPad *)self setNeedsLayout];
    }
  }
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_visible != visible)
  {
    visibleCopy = visible;
    self->_visible = visible;
    if (animated && !UIAccessibilityIsReduceMotionEnabled())
    {
      v6 = !self->_visible;

      [(SBUIPasscodeLockNumberPad *)self _animateFlyingOut:v6];
    }

    else
    {

      [(SBUIPasscodeLockNumberPad *)self _setButtonsVisible:visibleCopy];
    }
  }
}

- (void)_animateFlyingOut:(BOOL)out
{
  outCopy = out;
  v72 = *MEMORY[0x1E69E9840];
  buttons = [(TPNumberPad *)self->_numberPad buttons];
  selfCopy = self;
  [(SBNumberPadWithDelegate *)self->_numberPad center];
  v6 = v5;
  v8 = v7;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = buttons;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v66;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v65 + 1) + 8 * i);
        if ([v14 character] == 4)
        {
          [v14 center];
          v6 = v15;
          v8 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v11);
  }

  v17 = v8 + -16.0;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v62;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v62 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v61 + 1) + 8 * j);
        [v24 center];
        memset(&v60, 0, sizeof(v60));
        CGAffineTransformMakeTranslation(&v60, -(v25 - v6), -(v26 - v17));
        v59 = v60;
        v27 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:&v59];
        v28 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v24];
        [v18 setObject:v27 forKey:v28];
      }

      v21 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v21);
  }

  v29 = MEMORY[0x1E69DD250];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke;
  v54[3] = &unk_1E789EDC0;
  v30 = v19;
  v55 = v30;
  v58 = outCopy;
  v31 = v18;
  v56 = v31;
  v57 = selfCopy;
  [v29 _performWithoutRetargetingAnimations:v54];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v50 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v51;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v50 + 1) + 8 * k);
        [v37 center];
        [SBUIPasscodeLockNumberPad _flyOutResponseForPoint:selfCopy center:"_flyOutResponseForPoint:center:"];
        v60.a = 0.0;
        v59.a = 0.0;
        convertDampingRatioAndResponseToTensionAndFriction();
        v38 = MEMORY[0x1E69DD250];
        a = v60.a;
        v40 = v59.a;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke_2;
        v46[3] = &unk_1E789DD20;
        v49 = outCopy;
        v47 = v31;
        v48 = v37;
        [v38 _animateUsingSpringWithTension:0 friction:v46 interactive:0 animations:a completion:v40];
      }

      v34 = [v32 countByEnumeratingWithState:&v50 objects:v69 count:16];
    }

    while (v34);
  }

  v41 = 0.0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke_3;
  v44[3] = &unk_1E789DA60;
  if (!outCopy)
  {
    v41 = 0.1;
  }

  v44[4] = selfCopy;
  v45 = outCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v44 options:0 animations:0.5 completion:v41];
}

void __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    v25 = *(MEMORY[0x1E695EFD0] + 16);
    v26 = *MEMORY[0x1E695EFD0];
    v24 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v7 layer];
        [v8 removeAllAnimations];

        *&v35.a = v26;
        *&v35.c = v25;
        *&v35.tx = v24;
        [v7 setTransform:&v35];
        if (*(a1 + 56) == 1)
        {
          [v7 setAlpha:1.0];
          v9 = [v7 layer];
          [v9 setZPosition:0.0];

          v10 = [v7 layer];
          LODWORD(v11) = 1.0;
          [v10 setOpacity:v11];
        }

        else
        {
          v12 = [v7 layer];
          [v12 setOpacity:0.0];

          memset(&v35, 0, sizeof(v35));
          v13 = *(a1 + 40);
          v14 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];
          v15 = [v13 objectForKey:v14];
          v16 = v15;
          if (v15)
          {
            [v15 CGAffineTransformValue];
          }

          else
          {
            memset(&v35, 0, sizeof(v35));
          }

          memset(&v34, 0, sizeof(v34));
          CGAffineTransformMakeScale(&v34, 0.0, 0.0);
          t1 = v34;
          memset(&v33, 0, sizeof(v33));
          t2 = v35;
          CGAffineTransformConcat(&v33, &t1, &t2);
          t1 = v33;
          [v7 setTransform:&t1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v4);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = *(a1 + 48);
  v40[0] = *(v17 + 520);
  v40[1] = *(v17 + 504);
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if (*(a1 + 56))
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.0;
        }

        [*(*(&v27 + 1) + 8 * j) setAlpha:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v20);
  }
}

void __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    memset(&v16, 0, sizeof(v16));
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696B098] valueWithNonretainedObject:*(a1 + 40)];
    v4 = [v2 objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      [v4 CGAffineTransformValue];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, 0.0, 0.0);
    t1 = v15;
    memset(&v14, 0, sizeof(v14));
    v12 = v16;
    CGAffineTransformConcat(&v14, &t1, &v12);
    v8 = *(a1 + 40);
    t1 = v14;
    [v8 setTransform:&t1];
    v9 = [*(a1 + 40) layer];
    [v9 setZPosition:-4000.0];

    v10 = [*(a1 + 40) layer];
    LODWORD(v11) = -1.0;
    [v10 setOpacity:v11];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v16.a = *MEMORY[0x1E695EFD0];
    *&v16.c = v7;
    *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v6 setTransform:&v16];
    [*(a1 + 40) setAlpha:1.0];
  }
}

void __47__SBUIPasscodeLockNumberPad__animateFlyingOut___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v13[0] = *(v2 + 520);
  v13[1] = *(v2 + 504);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:{2, 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40))
        {
          v8 = 0.0;
        }

        else
        {
          v8 = 1.0;
        }

        [*(*(&v9 + 1) + 8 * i) setAlpha:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_setButtonsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v20 = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  if (visible)
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    *&v18.c = v5;
    *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v18, 0.0, 0.0);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  buttons = [(TPNumberPad *)self->_numberPad buttons];
  v7 = [buttons countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    if (visibleCopy)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(buttons);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = v18;
        [v12 setTransform:&v13];
        [v12 setAlpha:v10];
      }

      v8 = [buttons countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_numberPadTouchDownForEvent:(id)event
{
  gestureRecognizer = self->_gestureRecognizer;
  eventCopy = event;
  v6 = [eventCopy touchesForGestureRecognizer:gestureRecognizer];
  anyObject = [v6 anyObject];

  numberPad = self->_numberPad;
  [anyObject locationInView:numberPad];
  v8 = [(SBNumberPadWithDelegate *)numberPad buttonForPoint:eventCopy forEvent:?];

  if (v8)
  {
    [(SBUIPasscodeLockNumberPad *)self setDownButton:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setHighlighted:1];
    }

    delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate passcodeLockNumberPad:self keyDown:v8];
    }
  }

  [(SBUIPasscodeLockNumberPad *)self _setSnapshotsDisabled:1];
}

- (void)_numberPadTouchUpForEvent:(id)event
{
  eventCopy = event;
  if (self->_downButton)
  {
    v10 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBUIPasscodeNumberPadButton *)self->_downButton setHighlighted:0];
    }

    v5 = [v10 touchesForGestureRecognizer:self->_gestureRecognizer];
    anyObject = [v5 anyObject];

    numberPad = self->_numberPad;
    [anyObject locationInView:numberPad];
    v8 = [(SBNumberPadWithDelegate *)numberPad touchAtPoint:self->_downButton isCloseToButton:?];
    delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate passcodeLockNumberPad:self keyUp:self->_downButton];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate passcodeLockNumberPad:self keyCancelled:self->_downButton];
    }

    [(SBUIPasscodeLockNumberPad *)self setDownButton:0];

    eventCopy = v10;
  }
}

- (void)_numberPadTouchCancelledForEvent:(id)event
{
  if (self->_downButton)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBUIPasscodeNumberPadButton *)self->_downButton setHighlighted:0];
    }

    delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate passcodeLockNumberPad:self keyCancelled:self->_downButton];
    }

    [(SBUIPasscodeLockNumberPad *)self setDownButton:0];
  }
}

- (void)_numberPadTouchDragForEvent:(id)event
{
  if (self->_downButton)
  {
    v4 = [event touchesForGestureRecognizer:self->_gestureRecognizer];
    anyObject = [v4 anyObject];

    numberPad = self->_numberPad;
    [anyObject locationInView:numberPad];
    v6 = [(SBNumberPadWithDelegate *)numberPad touchAtPoint:self->_downButton isCloseToButton:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBUIPasscodeNumberPadButton *)self->_downButton setHighlighted:v6];
    }
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  [request location];
  v8 = [(SBNumberPadWithDelegate *)self->_numberPad buttonForPoint:0 forEvent:?];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69DCDC0];
    [v8 frame];
    v11 = [v10 regionWithRect:v9 identifier:?];
  }

  else
  {
    v11 = regionCopy;
  }

  v12 = v11;

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  v5 = off_1E789CA30;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (v5 = off_1E789CA58, objc_opt_self(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_isKindOfClass(), v8, (v9))
  {
    [(__objc2_class *)*v5 _numberPadButtonOuterCircleDiameter];
  }

  v10 = objc_opt_class();
  v11 = identifier;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13 && (BSFloatIsOne() & 1) == 0)
  {
    [v13 bounds];
    UIRectCenteredRect();
    v15 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
    v16 = [MEMORY[0x1E69DCDC8] shapeWithPath:v15];
    v17 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v13];
    v18 = [MEMORY[0x1E69DCDB8] effectWithPreview:v17];
    systemPointerStyle = [MEMORY[0x1E69DCDD0] styleWithEffect:v18 shape:v16];
  }

  else
  {
    systemPointerStyle = [MEMORY[0x1E69DCDD0] systemPointerStyle];
  }

  [systemPointerStyle set_suppressesMirroring:1];

  return systemPointerStyle;
}

- (void)setReduceTransparencyButtonColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (self->_reduceTransparencyButtonColor != colorCopy)
  {
    objc_storeStrong(&self->_reduceTransparencyButtonColor, color);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    buttons = [(TPNumberPad *)self->_numberPad buttons];
    v7 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(buttons);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setReduceTransparencyButtonColor:self->_reduceTransparencyButtonColor];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setSnapshotsDisabled:(BOOL)disabled
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_snapshotsDisabled != disabled)
  {
    self->_snapshotsDisabled = disabled;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    buttons = [(TPNumberPad *)self->_numberPad buttons];
    v5 = [buttons countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(buttons);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          layer = [v9 layer];
          disableUpdateMask = [layer disableUpdateMask];

          v12 = disableUpdateMask & 0xFFFFFFFD;
          if (self->_snapshotsDisabled)
          {
            v13 = 2;
          }

          else
          {
            v13 = 0;
          }

          layer2 = [v9 layer];
          [layer2 setDisableUpdateMask:v13 | v12];
        }

        v6 = [buttons countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)_cancelButtonHit
{
  delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockNumberPadCancelButtonHit:self];
  }
}

- (void)_backspaceButtonHit
{
  delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockNumberPadBackspaceButtonHit:self];
  }
}

- (void)_emergencyCallButtonHit
{
  delegate = [(SBUIPasscodeLockNumberPad *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockNumberPadEmergencyCallButtonHit:self];
  }
}

- (SBUIPasscodeLockNumberPadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end