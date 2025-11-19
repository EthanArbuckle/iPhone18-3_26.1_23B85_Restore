@interface SBUIPasscodeLockViewWithKeypad
+ (BOOL)providesDimmingByDefault;
- (BOOL)becomeFirstResponder;
- (CGRect)_defaultEntryFieldPosition;
- (SBUIPasscodeLockViewWithKeypad)initWithLightStyle:(BOOL)a3;
- (SBUIPasscodeLockViewWithKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4;
- (double)_offsetForCenteringTitleAndEntryFieldFrame:(CGRect)a3 withTopYvalue:(double)a4 bottomYvalue:(double)a5;
- (double)_statusTitleWidth;
- (double)_topBoundingOffset;
- (id)_newStatusSubtitleView;
- (id)_newStatusTitleView;
- (id)_numericEntryFieldIfExists;
- (id)passcode;
- (void)_layoutStatusView;
- (void)_noteBackspaceHit;
- (void)_noteKeyUp:(id)a3;
- (void)_noteStringEntered:(id)a3 eligibleForPlayingSounds:(BOOL)a4;
- (void)_notifyDelegatePasscodeCancelled;
- (void)_notifyDelegatePasscodeEntered;
- (void)_toggleForStatusField;
- (void)_updateFonts;
- (void)dealloc;
- (void)layoutSubviews;
- (void)passcodeEntryFieldDidCancelEntry:(id)a3;
- (void)passcodeEntryFieldTextDidChange:(id)a3;
- (void)passcodeLockNumberPad:(id)a3 keyCancelled:(id)a4;
- (void)passcodeLockNumberPad:(id)a3 keyDown:(id)a4;
- (void)passcodeLockNumberPad:(id)a3 keyUp:(id)a4;
- (void)passcodeLockNumberPadEmergencyCallButtonHit:(id)a3;
- (void)reset;
- (void)resetForFailedPasscode;
- (void)setKeypadVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsCancelButton:(BOOL)a3;
- (void)setShowsEmergencyCallButton:(BOOL)a3;
- (void)setShowsStatusField:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForTransitionToPasscodeView:(BOOL)a3 animated:(BOOL)a4;
- (void)updateStatusText:(id)a3 subtitle:(id)a4 animated:(BOOL)a5;
@end

@implementation SBUIPasscodeLockViewWithKeypad

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v19 layoutSubviews];
  if (!self->_hasPerformedLayoutOnce)
  {
    self->_hasPerformedLayoutOnce = 1;
  }

  [(SBUIPasscodeLockViewWithKeypad *)self bounds];
  [(SBUIPasscodeLockNumberPad *)self->_numberPad frame];
  UIRectCenteredXInRectScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(SBUIPasscodeLockViewBase *)self _numberPadOffsetFromTopOfScreen:self->_numberPad, 0];
  v10 = v9;
  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  glassGroupOutset = self->_glassGroupOutset;
  v14 = -glassGroupOutset;
  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = -glassGroupOutset;
  }

  else
  {
    v15 = 0.0;
  }

  v20.origin.x = v4;
  v20.origin.y = v10;
  v20.size.width = v6;
  v20.size.height = v8;
  v21 = CGRectInset(v20, v15, v14);
  [(UIView *)self->_numberPadGlassGroupView setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  v16 = [MEMORY[0x1E69DC938] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = self->_glassGroupOutset;
  }

  else
  {
    v18 = 0.0;
  }

  [(SBUIPasscodeLockNumberPad *)self->_numberPad setFrame:v18, self->_glassGroupOutset, v6, v8];
  [(SBUIPasscodeLockViewWithKeypad *)self _layoutEntryField];
  [(SBUIPasscodeLockViewWithKeypad *)self _layoutStatusView];
  if (self->_statusTitleView)
  {
    [(SBUIPasscodeLockViewWithKeypad *)self bringSubviewToFront:?];
  }
}

- (void)_layoutStatusView
{
  v73 = [(SBUIPasscodeLockViewWithKeypad *)self statusTitleView];
  v3 = [(SBUIPasscodeLockViewWithKeypad *)self statusSubtitleView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 text];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  [(SBUIPasscodeLockViewWithKeypad *)self bounds];
  v8 = v7;
  v9 = [(SBUIPasscodeLockViewBase *)self _entryField];
  [(SBUIPasscodeLockViewWithKeypad *)self _defaultEntryFieldPosition];
  v69 = v10;
  v70 = v11;
  v13 = v12;
  v71 = v14;
  [(SBUIPasscodeLockViewWithKeypad *)self _statusTitleWidth];
  v16 = v15;
  v17 = MEMORY[0x1E695F058];
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  [v73 setLineBreakMode:0];
  [v73 setNumberOfLines:2];
  v72 = v8;
  [v73 sizeThatFits:{v16, v8}];
  v21 = v20;
  v23 = v22;
  [v73 setBounds:{v18, v19, v20, v22}];
  if (v6)
  {
    [v4 setLineBreakMode:0];
    [v4 setNumberOfLines:2];
    v25 = *MEMORY[0x1E695EFF8];
    v24 = *(MEMORY[0x1E695EFF8] + 8);
    [v4 sizeThatFits:{v16, v72}];
    v66 = v13;
    [v4 setBounds:{v25, v24, v26, v27}];
    v17 = 0x1E69D3000;
    [MEMORY[0x1E69D3FE8] pinKeypadStatusTitleBaselineOffsetFromEntryFieldIncludingSubtitle];
    v28 = v23;
    v30 = v13 - v29;
    [MEMORY[0x1E69D3FE8] pinKeypadStatusTitleBaselineOffsetFromTitle];
    [v73 _lastLineBaseline];
    v32 = v31;
    [MEMORY[0x1E69D3FE8] pinKeypadStatusTitleExtraOffsetIncludingSubtitle];
    v34 = v30 - (v32 + v33);
    [v4 _firstLineBaselineOffsetFromBoundsTop];
    [MEMORY[0x1E69D3FE8] pinKeypadStatusSubtitleTitleExtraOffset];
    v35 = fmax(v34, 0.0);
    if (SBUIPasscodeScreenShouldNotWrapSubtitle([(SBUIPasscodeLockViewBase *)self _orientation]))
    {
      v35 = v35 + 20.0;
    }

    v75.origin.x = v18;
    v75.origin.y = v35;
    v75.size.width = v21;
    v75.size.height = v28;
    CGRectGetMaxY(v75);
    UIRectCenteredXInRectScale();
    v37 = v36;
    v19 = v38;
    v40 = v39;
    v42 = v41;
    [MEMORY[0x1E69D3FE8] pinKeypadEntryFieldOffsetForSubtitle];
    v44 = v66 + v43;
    v67 = v37;
    v68 = v42;
    v76.origin.x = v37;
    v76.origin.y = v19;
    v76.size.width = v40;
    v76.size.height = v42;
    MaxY = CGRectGetMaxY(v76);
    if (v44 >= MaxY)
    {
      v46 = v44;
    }

    else
    {
      v46 = MaxY;
    }

    v47 = v35;
  }

  else
  {
    v48 = v17[2];
    v68 = v17[3];
    [MEMORY[0x1E69D3FE8] pinKeypadStatusTitleBaselineOffsetFromEntryField];
    v46 = v13;
    v50 = v13 - v49;
    v40 = v48;
    [v73 _lastLineBaseline];
    v47 = v50 - v51;
    v67 = v18;
  }

  v52 = __sb__runningInSpringBoard();
  if (v52)
  {
    v53 = v52;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_26;
    }

    if (SBFEffectiveHomeButtonType() == 2)
    {
      if (![(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented])
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if (v53)
    {
      goto LABEL_26;
    }

LABEL_25:

    goto LABEL_26;
  }

  v17 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v17 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_25;
  }

  v54 = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];

  if (!v54)
  {
    goto LABEL_26;
  }

LABEL_21:
  [v73 _capOffsetFromBoundsTop];
  [(SBUIPasscodeLockViewWithKeypad *)self _offsetForCenteringTitleAndEntryFieldFrame:v69 withTopYvalue:v46 bottomYvalue:v71, v70, v47 + v55, v70 + v46];
  v46 = v46 - v56;
  v57 = v19 - v56;
  if (v6)
  {
    v19 = v57;
  }

LABEL_26:
  UIRectCenteredXInRectScale();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  [v73 setPreferredMaxLayoutWidth:{v62, 0}];
  [v73 setFrame:{v59, v61, v63, v65}];
  [v9 setFrame:{v69, v46, v71, v70}];
  if (v6)
  {
    [v4 setFrame:{v67, v19, v40, v68}];
  }
}

- (CGRect)_defaultEntryFieldPosition
{
  [(SBUIPasscodeLockViewWithKeypad *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBUIPasscodeLockViewBase *)self _entryField];
  [v11 bounds];
  v13 = v12;
  [(UIView *)self->_numberPadGlassGroupView frame];
  v14 = CGRectGetMinY(v24) + self->_glassGroupOutset;
  [(SBUIPasscodeLockNumberPad *)self->_numberPad _distanceToTopOfFirstButton];
  v16 = v14 + v15;
  [(SBUIPasscodeLockViewWithKeypad *)self _entryFieldBottomYDistanceFromNumberPadTopButton];
  v18 = v16 - v17 - v13;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  Width = CGRectGetWidth(v25);

  v20 = 0.0;
  v21 = v18;
  v22 = Width;
  v23 = v13;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)_statusTitleWidth
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v4 = v3 + -40.0;

  return v4;
}

- (double)_topBoundingOffset
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (!v4)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      IsD94Like = _SBF_Private_IsD94Like();

      if (IsD94Like)
      {
        return 42.0;
      }

      goto LABEL_22;
    }

LABEL_9:
    if (SBFEffectiveHomeButtonType() != 2)
    {
      v9 = _SBF_Private_IsD94Like();
      goto LABEL_19;
    }

    v7 = __sb__runningInSpringBoard();
    v8 = v7;
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v10 >= *(MEMORY[0x1E69D4380] + 200))
    {
      v9 = 0;
      if (v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = _SBF_Private_IsD94Like();
      if (v8)
      {
LABEL_19:
        if ((v5 & 1) == 0)
        {
        }

        if (v9)
        {
          return 42.0;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_9;
  }

  if (_SBF_Private_IsD94Like())
  {
    return 42.0;
  }

LABEL_22:
  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_40;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v12)
      {
        goto LABEL_40;
      }

LABEL_32:

      goto LABEL_40;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_32;
    }
  }

  v13 = __sb__runningInSpringBoard();
  v14 = v13;
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v16 = v15;
  v17 = *(MEMORY[0x1E69D4380] + 200);
  if ((v14 & 1) == 0)
  {
  }

  if ((v12 & 1) == 0)
  {
  }

  if (v16 >= v17)
  {
    return 87.3333333;
  }

LABEL_40:
  v19 = __sb__runningInSpringBoard();
  v20 = v19;
  if (v19)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      if (_SBF_Private_IsD93Like())
      {
        return 42.0;
      }

      goto LABEL_47;
    }

LABEL_58:
    if (SBFEffectiveHomeButtonType() != 2)
    {
      IsD93Like = _SBF_Private_IsD93Like();
      goto LABEL_68;
    }

    v26 = __sb__runningInSpringBoard();
    v27 = v26;
    if (v26)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x1E69D4380] + 184))
    {
      IsD93Like = 0;
      if (v27)
      {
        goto LABEL_68;
      }
    }

    else
    {
      IsD93Like = _SBF_Private_IsD93Like();
      if (v27)
      {
LABEL_68:
        if ((v20 & 1) == 0)
        {
        }

        if (IsD93Like)
        {
          return 42.0;
        }

        goto LABEL_47;
      }
    }

    goto LABEL_68;
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v2 userInterfaceIdiom])
  {
    goto LABEL_58;
  }

  v21 = _SBF_Private_IsD93Like();

  if (v21)
  {
    return 42.0;
  }

LABEL_47:
  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_79;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v23)
      {
        goto LABEL_79;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_57:

      goto LABEL_79;
    }
  }

  v24 = __sb__runningInSpringBoard();
  v25 = v24;
  if (v24)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v31 = v30;
  v32 = *(MEMORY[0x1E69D4380] + 184);
  if ((v25 & 1) == 0)
  {
  }

  if ((v23 & 1) == 0)
  {
  }

  if (v31 >= v32)
  {
    return 86.0;
  }

LABEL_79:
  v33 = MEMORY[0x1E69D3FE8];

  [v33 proudLockOffsetFromTopOfScreen];
  return result;
}

- (void)_toggleForStatusField
{
  v3 = [(SBUIPasscodeLockViewBase *)self showsStatusField];
  [(UILabel *)self->_statusTitleView setHidden:!v3];
  statusSubtitleView = self->_statusSubtitleView;

  [(UILabel *)statusSubtitleView setHidden:!v3];
}

- (id)_newStatusTitleView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setUserInteractionEnabled:0];
  v4 = [(SBUIPasscodeLockViewWithKeypad *)self _statusTitleViewTitleFont];
  [v3 setFont:v4];

  [v3 setLineBreakMode:4];
  v5 = [(SBUIPasscodeLockViewBase *)self _statusText];
  [v3 setText:v5];

  [v3 setAdjustsFontSizeToFitWidth:1];
  v6 = [v3 font];
  [v6 pointSize];
  [v3 setMinimumScaleFactor:12.0 / v7];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v8];

  if (self->_useLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v9 = ;
  [v3 setTextColor:v9];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:1];
  return v3;
}

- (void)reset
{
  [(SBUIPasscodeLockViewWithKeypad *)self setLastCharacterBeforeBackspace:0];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v3 reset];
  [(SBUIPasscodeLockViewWithKeypad *)self _setHasInput:0];
}

- (void)dealloc
{
  [(SBUIPasscodeLockViewBase *)self setPlaysKeypadSounds:0];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v3 dealloc];
}

- (SBUIPasscodeLockViewWithKeypad)initWithLightStyle:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewWithKeypad *)self initWithLightStyle:v3 providesDimming:v5];
}

- (SBUIPasscodeLockViewWithKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v55.receiver = self;
  v55.super_class = SBUIPasscodeLockViewWithKeypad;
  v16 = [(SBUIPasscodeLockViewBase *)&v55 initWithFrame:v9, v11, v13, v15];
  v17 = v16;
  if (v16)
  {
    v16->_useLightStyle = a3;
    if (v4)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
      numberPadDimmingView = v17->_numberPadDimmingView;
      v17->_numberPadDimmingView = v18;

      v20 = v17->_numberPadDimmingView;
      v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
      [(UIView *)v20 setBackgroundColor:v21];

      v22 = [(SBUIPasscodeLockViewBase *)v17 passcodeAuthenticationView];
      [v22 addSubview:v17->_numberPadDimmingView];
    }

    v23 = [(SBUIPasscodeLockViewWithKeypad *)v17 _newStatusTitleView];
    [(SBUIPasscodeLockViewWithKeypad *)v17 setStatusTitleView:v23];

    v24 = [(SBUIPasscodeLockViewBase *)v17 passcodeAuthenticationView];
    v25 = [(SBUIPasscodeLockViewWithKeypad *)v17 statusTitleView];
    [v24 addSubview:v25];

    v26 = [(SBUIPasscodeLockViewBase *)v17 _statusSubtitleText];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [(SBUIPasscodeLockViewWithKeypad *)v17 _newStatusSubtitleView];
      [(SBUIPasscodeLockViewWithKeypad *)v17 setStatusSubtitleView:v28];

      v29 = [(SBUIPasscodeLockViewBase *)v17 passcodeAuthenticationView];
      v30 = [(SBUIPasscodeLockViewWithKeypad *)v17 statusSubtitleView];
      [v29 addSubview:v30];
    }

    v31 = [[SBUIPasscodeLockNumberPad alloc] initWithDefaultSizeAndLightStyle:v17->_useLightStyle];
    numberPad = v17->_numberPad;
    v17->_numberPad = v31;

    [(SBUIPasscodeLockNumberPad *)v17->_numberPad setDelegate:v17];
    [(SBUIPasscodeLockNumberPad *)v17->_numberPad setShowsBackspaceButton:0];
    [(SBUIPasscodeLockNumberPad *)v17->_numberPad setShowsEmergencyCallButton:[(SBUIPasscodeLockViewBase *)v17 showsEmergencyCallButton]];
    [(SBUIPasscodeLockNumberPad *)v17->_numberPad bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v17->_glassGroupOutset = 20.0;
    v41 = [MEMORY[0x1E69DC938] currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if ((v42 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v43 = -v17->_glassGroupOutset;
    }

    else
    {
      v43 = 0.0;
    }

    v56.origin.x = v34;
    v56.origin.y = v36;
    v56.size.width = v38;
    v56.size.height = v40;
    v57 = CGRectInset(v56, v43, -v17->_glassGroupOutset);
    width = v57.size.width;
    height = v57.size.height;
    v46 = objc_alloc(MEMORY[0x1E69DD250]);
    v47 = [v46 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height}];
    numberPadGlassGroupView = v17->_numberPadGlassGroupView;
    v17->_numberPadGlassGroupView = v47;

    v49 = v17->_numberPadGlassGroupView;
    v50 = objc_alloc_init(MEMORY[0x1E69DD820]);
    [(UIView *)v49 _setBackground:v50];

    [(UIView *)v17->_numberPadGlassGroupView addSubview:v17->_numberPad];
    v51 = [(SBUIPasscodeLockViewBase *)v17 passcodeAuthenticationView];
    [v51 addSubview:v17->_numberPadGlassGroupView];

    v52 = [(SBUIPasscodeLockViewWithKeypad *)v17 _newEntryField];
    [v52 setDelegate:v17];
    [(SBUIPasscodeLockViewBase *)v17 _setEntryField:v52];
    v53 = [(SBUIPasscodeLockViewBase *)v17 passcodeAuthenticationView];
    [v53 addSubview:v52];

    [(SBUIPasscodeLockViewWithKeypad *)v17 _setHasInput:0];
    v17->_undoInputOnTouchCancellation = 1;
  }

  return v17;
}

+ (BOOL)providesDimmingByDefault
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x1EEE4E310]();
  }

  return v2;
}

- (id)passcode
{
  v2 = [(SBUIPasscodeLockViewBase *)self _entryField];
  v3 = [v2 stringValue];

  return v3;
}

- (void)resetForFailedPasscode
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v3 resetForFailedPasscode];
  [(SBUIPasscodeLockViewWithKeypad *)self _setHasInput:0];
  [(SBUIPasscodeLockViewWithKeypad *)self setLastCharacterBeforeBackspace:0];
}

- (void)setShowsEmergencyCallButton:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v5 setShowsEmergencyCallButton:?];
  [(SBUIPasscodeLockNumberPad *)self->_numberPad setShowsEmergencyCallButton:v3];
}

- (void)setShowsCancelButton:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v5 setShowsCancelButton:?];
  [(SBUIPasscodeLockNumberPad *)self->_numberPad setShowsCancelButton:v3];
}

- (void)setShowsStatusField:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v4 setShowsStatusField:a3];
  [(SBUIPasscodeLockViewWithKeypad *)self _toggleForStatusField];
}

- (void)setKeypadVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = SBUIPasscodeLockViewWithKeypad;
  [SBUIPasscodeLockViewBase setKeypadVisible:sel_setKeypadVisible_animated_ animated:?];
  [(SBUIPasscodeLockNumberPad *)self->_numberPad setVisible:v5 animated:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(SBUIPasscodeLockViewWithKeypad *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(SBUIPasscodeLockViewWithKeypad *)self _updateFonts];
      [(SBUIPasscodeLockViewWithKeypad *)self setNeedsLayout];
    }
  }
}

- (void)updateForTransitionToPasscodeView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBUIPasscodeLockViewWithKeypad;
  [SBUIPasscodeLockViewBase updateForTransitionToPasscodeView:sel_updateForTransitionToPasscodeView_animated_ animated:?];
  if (v5)
  {
    v7 = self;
    v8 = 1;
    v9 = v4;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v7 = self;
    v8 = 0;
    v9 = 1;
  }

  [(SBUIPasscodeLockViewWithKeypad *)v7 setKeypadVisible:v8 animated:v9];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SBUIPasscodeLockViewBase *)self _entryField];
  v4 = [v3 becomeFirstResponder];

  if (v4)
  {
    [(SBUIPasscodeLockViewBase *)self _evaluateMatchingAndHandleBiometricAuthenticationIfNeeded];
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIPasscodeLockViewWithKeypad;
    return [(SBUIPasscodeLockViewBase *)&v6 becomeFirstResponder];
  }
}

- (void)updateStatusText:(id)a3 subtitle:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = SBUIPasscodeLockViewWithKeypad;
  [(SBUIPasscodeLockViewBase *)&v32 updateStatusText:v8 subtitle:v9 animated:v5];
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(SBUIPasscodeLockViewBase *)self _orientation]- 3) > 1)
  {
    v12 = [(SBUIPasscodeLockViewWithKeypad *)self statusTitleView];
    v13 = [v12 text];
    v14 = [v8 isEqualToString:v13];

    if (v14)
    {

      v12 = 0;
      v15 = 0;
    }

    else
    {
      v15 = [(SBUIPasscodeLockViewWithKeypad *)self _newStatusTitleView];
      [v15 setText:v8];
      [(SBUIPasscodeLockViewWithKeypad *)self setStatusTitleView:v15];
    }

    v16 = [(SBUIPasscodeLockViewWithKeypad *)self statusSubtitleView];
    if (v9)
    {
      [(SBUIPasscodeLockViewBase *)self _setStatusSubtitleText:v9];
      v17 = [(SBUIPasscodeLockViewWithKeypad *)self _newStatusSubtitleView];
      [(SBUIPasscodeLockViewWithKeypad *)self setStatusSubtitleView:v17];
      v18 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      v19 = [(SBUIPasscodeLockViewBase *)self _entryField];
      [v18 insertSubview:v17 belowSubview:v19];
    }

    else
    {
      [(SBUIPasscodeLockViewWithKeypad *)self setStatusSubtitleView:0];
      v17 = 0;
    }

    [(SBUIPasscodeLockViewWithKeypad *)self setNeedsLayout];
    if (v12 && v15)
    {
      v20 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [v20 insertSubview:v15 aboveSubview:v12];
    }

    if (self->_hasPerformedLayoutOnce && v5)
    {
      [v15 setAlpha:0.0];
      [v17 setAlpha:0.0];
      v21 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke;
      v29[3] = &unk_1E789DD98;
      v30 = v12;
      v31 = v16;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke_2;
      v26[3] = &unk_1E789E7D8;
      v27 = v30;
      v28 = v31;
      [v21 animateWithDuration:v29 animations:v26 completion:0.22];
      v22 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke_3;
      v23[3] = &unk_1E789DD98;
      v24 = v15;
      v25 = v17;
      [v22 animateWithDuration:0 delay:v23 options:0 animations:0.4 completion:0.17];
    }

    else
    {
      [v12 removeFromSuperview];
      [v16 removeFromSuperview];
    }
  }

  else
  {
    [(SBUIPasscodeLockViewWithKeypad *)self setStatusTitleView:0];
    [(SBUIPasscodeLockViewWithKeypad *)self setStatusSubtitleView:0];
  }
}

uint64_t __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

uint64_t __69__SBUIPasscodeLockViewWithKeypad_updateStatusText_subtitle_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (id)_newStatusSubtitleView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setUserInteractionEnabled:0];
  v4 = [(SBUIPasscodeLockViewWithKeypad *)self _statusSubtitleViewTitleFont];
  [v3 setFont:v4];

  [v3 setLineBreakMode:4];
  [v3 setAdjustsFontSizeToFitWidth:1];
  [v3 setMinimumScaleFactor:0.8];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v5];

  if (self->_useLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v6 = ;
  [v3 setTextColor:v6];

  [v3 setTextAlignment:1];
  v7 = [(SBUIPasscodeLockViewBase *)self _statusSubtitleText];
  [v3 setText:v7];
  v8 = [v7 componentsSeparatedByString:@"\n"];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [v3 setNumberOfLines:v10];

  return v3;
}

- (double)_offsetForCenteringTitleAndEntryFieldFrame:(CGRect)a3 withTopYvalue:(double)a4 bottomYvalue:(double)a5
{
  height = a3.size.height;
  y = a3.origin.y;
  [(SBUIPasscodeLockViewWithKeypad *)self _entryFieldBottomYDistanceFromNumberPadTopButton:a3.origin.x];
  v11 = v10;
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1 && SBFEffectiveHomeButtonType() == 2 || ([MEMORY[0x1E69DC938] currentDevice], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, (v15 & 0xFFFFFFFFFFFFFFFBLL) != 1) && SBFEffectiveHomeButtonType() == 2 && (SBSIsSystemApertureAvailable() & 1) == 0)
  {
    [MEMORY[0x1E69D3FE8] proudLockOffsetFromTopOfScreen];
  }

  else
  {
    [(SBUIPasscodeLockViewWithKeypad *)self _topBoundingOffset];
  }

  return SBUIFloatFloorForMainScreenScale((height + y + v11 - v16 - (a5 - a4)) * 0.5) - (height + y + v11 - a5);
}

- (void)_notifyDelegatePasscodeEntered
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeLockViewPasscodeEntered:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_notifyDelegatePasscodeCancelled
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeLockViewCancelButtonPressed:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_noteStringEntered:(id)a3 eligibleForPlayingSounds:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    if (v4 && [(SBUIPasscodeLockViewBase *)self playsKeypadSounds])
    {
      v7 = [(SBUIPasscodeLockViewBase *)self keyboardFeedbackBehavior];
      [v7 actionOccurred:1];
    }

    v8 = [(SBUIPasscodeLockViewBase *)self _entryField];
    [v8 appendString:v9];

    v6 = v9;
  }
}

- (void)_noteBackspaceHit
{
  v3 = [(SBUIPasscodeLockViewBase *)self _entryField];
  v4 = [v3 stringValue];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(SBUIPasscodeLockViewBase *)self _entryField];
    v7 = [v6 stringValue];
    v8 = [v7 substringFromIndex:v5 - 1];
    [(SBUIPasscodeLockViewWithKeypad *)self setLastCharacterBeforeBackspace:v8];

    v9 = [(SBUIPasscodeLockViewBase *)self _entryField];
    [v9 deleteLastCharacter];
  }
}

- (void)_noteKeyUp:(id)a3
{
  if ([a3 characterType] == 1)
  {
    [(SBUIPasscodeLockViewBase *)self _sendDelegateKeypadKeyUp];
  }

  [(SBUIPasscodeLockViewWithKeypad *)self setLastCharacterBeforeBackspace:0];
  v4 = [(SBUIPasscodeLockViewBase *)self _entryField];
  v7 = [v4 stringValue];

  v5 = [(SBUIPasscodeLockViewWithKeypad *)self _numericEntryFieldIfExists];
  if (v5)
  {
    v6 = [v7 length];
    if (v6 >= [v5 maxNumbersAllowed])
    {
      [(SBUIPasscodeLockViewWithKeypad *)self _notifyDelegatePasscodeEntered];
    }
  }
}

- (id)_numericEntryFieldIfExists
{
  v3 = [(SBUIPasscodeLockViewBase *)self _entryField];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SBUIPasscodeLockViewBase *)self _entryField];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateFonts
{
  statusTitleView = self->_statusTitleView;
  v4 = [(SBUIPasscodeLockViewWithKeypad *)self _statusTitleViewTitleFont];
  [(UILabel *)statusTitleView setFont:v4];

  statusSubtitleView = self->_statusSubtitleView;
  v6 = [(SBUIPasscodeLockViewWithKeypad *)self _statusSubtitleViewTitleFont];
  [(UILabel *)statusSubtitleView setFont:v6];
}

- (void)passcodeLockNumberPad:(id)a3 keyDown:(id)a4
{
  v8 = a4;
  v5 = [(SBUIPasscodeLockViewWithKeypad *)self _numericEntryFieldIfExists];
  [v5 setAutoAcceptWhenMaxNumbersMet:0];

  v6 = [v8 characterType];
  if (v6 == 1)
  {
    [(SBUIPasscodeLockViewBase *)self _sendDelegateKeypadKeyDown];
    v7 = [v8 stringCharacter];
    [(SBUIPasscodeLockViewWithKeypad *)self _noteStringEntered:v7 eligibleForPlayingSounds:1];
  }

  else if (v6 == 2)
  {
    [(SBUIPasscodeLockViewWithKeypad *)self _noteBackspaceHit];
  }
}

- (void)passcodeLockNumberPad:(id)a3 keyUp:(id)a4
{
  v6 = a4;
  v5 = [(SBUIPasscodeLockViewWithKeypad *)self _numericEntryFieldIfExists];
  [v5 setAutoAcceptWhenMaxNumbersMet:1];

  [(SBUIPasscodeLockViewWithKeypad *)self _noteKeyUp:v6];
}

- (void)passcodeLockNumberPad:(id)a3 keyCancelled:(id)a4
{
  v7 = a4;
  v5 = [(SBUIPasscodeLockViewWithKeypad *)self _numericEntryFieldIfExists];
  [v5 setAutoAcceptWhenMaxNumbersMet:1];

  v6 = [v7 characterType];
  if (v6 == 2)
  {
    if (!self->_lastCharacterBeforeBackspace)
    {
      goto LABEL_9;
    }

    if (self->_undoInputOnTouchCancellation)
    {
      [SBUIPasscodeLockViewWithKeypad _noteStringEntered:"_noteStringEntered:eligibleForPlayingSounds:" eligibleForPlayingSounds:?];
    }
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    if (self->_undoInputOnTouchCancellation)
    {
      [(SBUIPasscodeLockViewWithKeypad *)self _noteBackspaceHit];
    }
  }

  [(SBUIPasscodeLockViewWithKeypad *)self _noteKeyUp:v7];
LABEL_9:
}

- (void)passcodeLockNumberPadEmergencyCallButtonHit:(id)a3
{
  v4 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 passcodeLockViewEmergencyCallButtonPressed:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)passcodeEntryFieldDidCancelEntry:(id)a3
{
  if ([(SBUIPasscodeLockViewBase *)self showsCancelButton])
  {

    [(SBUIPasscodeLockViewWithKeypad *)self _notifyDelegatePasscodeCancelled];
  }
}

- (void)passcodeEntryFieldTextDidChange:(id)a3
{
  v4 = [a3 stringValue];
  -[SBUIPasscodeLockViewWithKeypad _setHasInput:](self, "_setHasInput:", [v4 length] != 0);

  v5 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v6 passcodeLockViewPasscodeDidChange:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

@end