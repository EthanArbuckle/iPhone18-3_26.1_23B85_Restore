@interface SBUIPasscodeLockViewWithKeyboard
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGRect)_keyboardFrameForInterfaceOrientation:(int64_t)a3;
- (SBUIPasscodeLockViewWithKeyboard)initWithLightStyle:(BOOL)a3;
- (double)_keyboardToEntryFieldOffset;
- (double)_largeTextEmergencyButtonMaxWidth;
- (double)_statusFieldHeightWithWidth:(double)a3;
- (double)_statusTitleWidth;
- (id)_newStatusField;
- (id)_newStatusSubtitleView;
- (id)_viewForKeyboardTracking;
- (void)_acceptOrCancelReturnKeyPress;
- (void)_hardwareReturnKeyPressed:(id)a3;
- (void)_keyboardDidHideNotification:(id)a3;
- (void)_keyboardWillChangeFrameNotification:(id)a3;
- (void)_keyboardWillShowNotification:(id)a3;
- (void)_layoutForMinimizationState:(BOOL)a3;
- (void)_layoutStatusView;
- (void)_luminanceBoostDidChange;
- (void)_notifyDelegatePasscodeCancelled;
- (void)_notifyDelegatePasscodeEntered;
- (void)_notifyDelegateThatEmergencyCallButtonWasPressed;
- (void)_setKeyboardTracksLockView:(BOOL)a3;
- (void)_toggleForEmergencyCall;
- (void)_toggleForStatusField;
- (void)_updateFont;
- (void)_updateKeyboardHeightOffsetForKeyboardNotification:(id)a3;
- (void)becomeActiveWithAnimationSettings:(id)a3;
- (void)beginTransitionToState:(int64_t)a3;
- (void)dealloc;
- (void)didEndTransitionToState:(int64_t)a3;
- (void)layoutSubviews;
- (void)passcodeEntryFieldDidCancelEntry:(id)a3;
- (void)passcodeEntryFieldTextDidChange:(id)a3;
- (void)resignActiveWithAnimationSettings:(id)a3;
- (void)setShowsEmergencyCallButton:(BOOL)a3;
- (void)setShowsStatusField:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForTransitionToPasscodeView:(BOOL)a3 animated:(BOOL)a4;
- (void)updateStatusText:(id)a3 subtitle:(id)a4 animated:(BOOL)a5;
@end

@implementation SBUIPasscodeLockViewWithKeyboard

- (SBUIPasscodeLockViewWithKeyboard)initWithLightStyle:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v56.receiver = self;
  v56.super_class = SBUIPasscodeLockViewWithKeyboard;
  v14 = [(SBUIPasscodeLockViewBase *)&v56 initWithFrame:v7, v9, v11, v13];
  v15 = v14;
  if (!v14)
  {
    return v15;
  }

  v14->_usesLightStyle = v3;
  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SBUIPasscodeLockViewWithKeyboard *)v15 setFrame:v18, v20, v22, v24];
  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  statusFieldBackground = v15->_statusFieldBackground;
  v15->_statusFieldBackground = v25;

  v27 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [v27 addSubview:v15->_statusFieldBackground];

  v28 = [(SBUIPasscodeLockViewWithKeyboard *)v15 _newStatusField];
  [(SBUIPasscodeLockViewWithKeyboard *)v15 setStatusField:v28];
  v29 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [v29 addSubview:v28];

  v30 = [(SBUIPasscodeLockViewBase *)v15 _statusSubtitleText];
  v31 = [v30 length];

  if (v31)
  {
    v32 = [(SBUIPasscodeLockViewWithKeyboard *)v15 _newStatusSubtitleView];
    [(SBUIPasscodeLockViewWithKeyboard *)v15 setStatusSubtitleView:v32];
    v31 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
    [v31 addSubview:v32];
  }

  v33 = [[SBUIAlphanumericPasscodeEntryField alloc] initWithDefaultSizeAndLightStyle:v3];
  alphaEntryField = v15->_alphaEntryField;
  v15->_alphaEntryField = v33;

  [(SBUIPasscodeEntryField *)v15->_alphaEntryField setDelegate:v15];
  [(SBUIPasscodeLockViewBase *)v15 _setEntryField:v15->_alphaEntryField];
  v35 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [v35 addSubview:v15->_alphaEntryField];

  v36 = v15->_alphaEntryField;
  v37 = MEMORY[0x1E69DB878];
  v38 = __sb__runningInSpringBoard();
  v39 = v38;
  v40 = 0x1E69DC000;
  if (v38)
  {
    v41 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v31 = [MEMORY[0x1E69DC938] currentDevice];
    v41 = [v31 userInterfaceIdiom] == 1;
  }

  if (v41)
  {
    v42 = 27.0;
  }

  else
  {
    v42 = 17.0;
  }

  v43 = __sb__runningInSpringBoard();
  if (v43)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v44 = 0;
LABEL_18:
      v45 = MEMORY[0x1E69DDC20];
      goto LABEL_19;
    }
  }

  else
  {
    v40 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v40 userInterfaceIdiom])
    {
      v44 = 1;
      goto LABEL_18;
    }
  }

  v44 = v43 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_18;
  }

  v45 = MEMORY[0x1E69DDC60];
LABEL_19:
  v46 = [v37 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v45, v42)}];
  [(SBUIPasscodeEntryField *)v36 setFont:v46];

  if (v44)
  {
  }

  if ((v39 & 1) == 0)
  {
  }

  v15->_keyboardVisible = 1;
  v47 = objc_alloc_init(SBPasscodeKeyboardAnimator);
  keyboardAnimator = v15->_keyboardAnimator;
  v15->_keyboardAnimator = v47;

  v49 = [MEMORY[0x1E696AD88] defaultCenter];
  [v49 addObserver:v15 selector:sel__hardwareReturnKeyPressed_ name:@"SBUIHardwareKeyboardReturnKeyPressedNotification" object:0];

  v50 = [MEMORY[0x1E696AD88] defaultCenter];
  [v50 addObserver:v15 selector:sel__keyboardDidHideNotification_ name:*MEMORY[0x1E69DDF70] object:0];

  v51 = [MEMORY[0x1E696AD88] defaultCenter];
  [v51 addObserver:v15 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v52 = [MEMORY[0x1E696AD88] defaultCenter];
  [v52 addObserver:v15 selector:sel__keyboardWillChangeFrameNotification_ name:*MEMORY[0x1E69DE068] object:0];

  v53 = [MEMORY[0x1E696AD88] defaultCenter];
  [v53 addObserver:v15 selector:sel__keyboardDidRequestDismissalNotification_ name:@"UIKeyboardPrivateDidRequestDismissalNotification" object:0];

  [(SBUIPasscodeLockViewWithKeyboard *)v15 _toggleForEmergencyCall];
  if (v15->_usesLightStyle)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v54 = ;
  [(SBUIPasscodeLockViewBase *)v15 setCustomBackgroundColor:v54];

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 dealloc];
}

- (void)_luminanceBoostDidChange
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 _luminanceBoostDidChange];
  if (!self->_usesLightStyle)
  {
    v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [(SBUIPasscodeLockViewBase *)self _luminosityBoost];
    [v3 _setPasscodeOutlineAlpha:?];
  }
}

- (void)setShowsEmergencyCallButton:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 setShowsEmergencyCallButton:a3];
  [(SBUIPasscodeLockViewWithKeyboard *)self _toggleForEmergencyCall];
}

- (void)setShowsStatusField:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 setShowsStatusField:a3];
  [(SBUIPasscodeLockViewWithKeyboard *)self _toggleForStatusField];
}

- (void)beginTransitionToState:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 beginTransitionToState:a3];
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:1];
}

- (void)didEndTransitionToState:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 didEndTransitionToState:a3];
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:0];
}

- (void)updateForTransitionToPasscodeView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = MEMORY[0x1E698E608];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v9 = [v7 settingsWithDuration:v8 timingFunction:0.15];

  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:v9];
  v10.receiver = self;
  v10.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v10 updateForTransitionToPasscodeView:v5 animated:v4];
}

- (id)_viewForKeyboardTracking
{
  v2 = [MEMORY[0x1E69DCD68] sharedInstance];
  v3 = [v2 _currentInputView];
  v4 = [v3 superview];

  return v4;
}

- (void)_setKeyboardTracksLockView:(BOOL)a3
{
  v3 = a3;
  v44[4] = *MEMORY[0x1E69E9840];
  self->_keyboardTracksLockView = a3;
  v5 = [(SBUIPasscodeLockViewWithKeyboard *)self _viewForKeyboardTracking];
  v6 = v5;
  if (v3)
  {
    if (!self->_keyboardTrackingView)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      keyboardTrackingView = self->_keyboardTrackingView;
      self->_keyboardTrackingView = v8;

      v10 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [v10 addSubview:self->_keyboardTrackingView];
    }

    v11 = MEMORY[0x1E69DD250];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __63__SBUIPasscodeLockViewWithKeyboard__setKeyboardTracksLockView___block_invoke;
    v41[3] = &unk_1E789DD98;
    v12 = v6;
    v42 = v12;
    v43 = self;
    [v11 performWithoutAnimation:v41];
    v13 = [(UIView *)v12 layer];
    [v13 removeAnimationForKey:@"KeyboardTracking_MatchMoveAnimation"];

    v14 = [MEMORY[0x1E69793B8] animation];
    v15 = [(UIView *)self->_keyboardTrackingView layer];
    [v14 setSourceLayer:v15];

    [v14 setDuration:INFINITY];
    v16 = [(UIView *)self->_keyboardTrackingView layer];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = MEMORY[0x1E696B098];
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = v18;
    v46.origin.y = v20;
    v46.size.width = v22;
    v46.size.height = v24;
    v27 = [v25 valueWithCGPoint:{MinX, CGRectGetMinY(v46)}];
    v44[0] = v27;
    v28 = MEMORY[0x1E696B098];
    v47.origin.x = v18;
    v47.origin.y = v20;
    v47.size.width = v22;
    v47.size.height = v24;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v18;
    v48.origin.y = v20;
    v48.size.width = v22;
    v48.size.height = v24;
    v30 = [v28 valueWithCGPoint:{MaxX, CGRectGetMinY(v48)}];
    v44[1] = v30;
    v31 = MEMORY[0x1E696B098];
    v49.origin.x = v18;
    v49.origin.y = v20;
    v49.size.width = v22;
    v49.size.height = v24;
    v32 = CGRectGetMaxX(v49);
    v50.origin.x = v18;
    v50.origin.y = v20;
    v50.size.width = v22;
    v50.size.height = v24;
    v33 = [v31 valueWithCGPoint:{v32, CGRectGetMaxY(v50)}];
    v44[2] = v33;
    v34 = MEMORY[0x1E696B098];
    v51.origin.x = v18;
    v51.origin.y = v20;
    v51.size.width = v22;
    v51.size.height = v24;
    v35 = CGRectGetMinX(v51);
    v52.origin.x = v18;
    v52.origin.y = v20;
    v52.size.width = v22;
    v52.size.height = v24;
    v36 = [v34 valueWithCGPoint:{v35, CGRectGetMaxY(v52)}];
    v44[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    [v14 setSourcePoints:v37];

    [v14 setFillMode:*MEMORY[0x1E69797E0]];
    [v14 setRemovedOnCompletion:0];
    v38 = [(UIView *)v12 layer];
    [v38 addAnimation:v14 forKey:@"KeyboardTracking_MatchMoveAnimation"];

    v39 = v42;
  }

  else
  {
    v40 = [v5 layer];
    [v40 removeAnimationForKey:@"KeyboardTracking_MatchMoveAnimation"];

    [(UIView *)self->_keyboardTrackingView removeFromSuperview];
    v39 = self->_keyboardTrackingView;
    self->_keyboardTrackingView = 0;
  }
}

uint64_t __63__SBUIPasscodeLockViewWithKeyboard__setKeyboardTracksLockView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  [*(a1 + 40) bounds];
  v7 = *(*(a1 + 40) + 872);

  return [v7 setFrame:{0.0, v6 - v5, v3, v5}];
}

- (void)layoutSubviews
{
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:self->_keyboardTracksLockView];
  [(SBUIPasscodeLockViewWithKeyboard *)self _layoutForMinimizationState:0];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v3 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  self->_isResigningResponderStatus = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke;
  v5[3] = &unk_1E789DA38;
  v5[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke_2;
  v4[3] = &unk_1E789ED20;
  v4[4] = v2;
  v4[5] = &v6;
  [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v4 options:0 animations:0.0 completion:0.0];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 makeKeyAndVisible];
}

uint64_t __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 816);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke_3;
  v4[3] = &unk_1E789ED70;
  v5 = v1;
  return [v2 applyToKeyboardOperations:v4];
}

id __56__SBUIPasscodeLockViewWithKeyboard_becomeFirstResponder__block_invoke_3(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = SBUIPasscodeLockViewWithKeyboard;
  result = objc_msgSendSuper2(&v3, sel_becomeFirstResponder);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  self->_isResigningResponderStatus = 1;
  v3 = [(SBUIPasscodeLockViewWithKeyboard *)self _viewForKeyboardTracking];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SBUIPasscodeLockViewWithKeyboard_resignFirstResponder__block_invoke;
  v6[3] = &unk_1E789ED20;
  v6[4] = v2;
  v6[5] = &v7;
  [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v6 options:0 animations:0.0 completion:0.0];
  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __56__SBUIPasscodeLockViewWithKeyboard_resignFirstResponder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 816);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SBUIPasscodeLockViewWithKeyboard_resignFirstResponder__block_invoke_2;
  v4[3] = &unk_1E789ED70;
  v5 = v1;
  return [v2 applyToKeyboardOperations:v4];
}

id __56__SBUIPasscodeLockViewWithKeyboard_resignFirstResponder__block_invoke_2(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = SBUIPasscodeLockViewWithKeyboard;
  result = objc_msgSendSuper2(&v3, sel_resignFirstResponder);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)becomeActiveWithAnimationSettings:(id)a3
{
  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:a3];

  [(SBUIPasscodeLockViewWithKeyboard *)self becomeFirstResponder];
}

- (void)resignActiveWithAnimationSettings:(id)a3
{
  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:a3];

  [(SBUIPasscodeLockViewWithKeyboard *)self resignFirstResponder];
}

- (void)_hardwareReturnKeyPressed:(id)a3
{
  if (([(SBUIPasscodeLockViewWithKeyboard *)self isFirstResponder]& 1) != 0 || [(SBUIPasscodeEntryField *)self->_alphaEntryField isFirstResponder])
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _acceptOrCancelReturnKeyPress];
  }
}

- (void)_notifyDelegatePasscodeEntered
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 passcodeLockViewPasscodeEntered:self];
  }
}

- (void)_notifyDelegateThatEmergencyCallButtonWasPressed
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 passcodeLockViewEmergencyCallButtonPressed:self];
  }
}

- (void)_notifyDelegatePasscodeCancelled
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 passcodeLockViewCancelButtonPressed:self];
  }
}

- (void)passcodeEntryFieldDidCancelEntry:(id)a3
{
  if ([(SBUIPasscodeLockViewBase *)self showsCancelButton])
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _notifyDelegatePasscodeCancelled];
  }
}

- (void)passcodeEntryFieldTextDidChange:(id)a3
{
  v4 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 passcodeLockViewPasscodeDidChange:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)_newStatusField
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v5 = 0x1E69DC000uLL;
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:
      v8 = MEMORY[0x1E69DB878];
      v9 = __sb__runningInSpringBoard();
      if (v9)
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          v10 = 0;
          v11 = 0;
          v12 = 27.0;
          goto LABEL_92;
        }
      }

      else
      {
        v39 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v39 userInterfaceIdiom] == 1)
        {
          v10 = 0;
          v12 = 27.0;
          v11 = 1;
          goto LABEL_92;
        }
      }

      v11 = v9 ^ 1;
      v16 = __sb__runningInSpringBoard();
      if (v16)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v10 = 0;
          v12 = 18.0;
          goto LABEL_92;
        }
      }

      else
      {
        v9 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v9 userInterfaceIdiom])
        {
          v12 = 18.0;
          v10 = 1;
          goto LABEL_92;
        }
      }

      v10 = v16 ^ 1;
      v34 = SBFEffectiveHomeButtonType();
      v12 = 18.0;
      if (v34 == 2)
      {
        v12 = 22.0;
      }

LABEL_92:
      v35 = [v8 systemFontOfSize:v12];
      [v4 setFont:v35];

      if (v10)
      {
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_68:

      goto LABEL_69;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 userInterfaceIdiom])
    {
    }

    else
    {
      v7 = SBFEffectiveHomeButtonType();

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }
  }

  v13 = MEMORY[0x1E69DB878];
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v40 = 0;
      v15 = 27.0;
      goto LABEL_32;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v39 userInterfaceIdiom] == 1)
    {
      v15 = 27.0;
      v40 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v40) = v14 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v40) = 0;
      v15 = 18.0;
      goto LABEL_32;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v38 userInterfaceIdiom])
    {
      v15 = 18.0;
      LODWORD(v40) = 1;
      goto LABEL_32;
    }
  }

  LODWORD(v40) = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v15 = 22.0;
  }

  else
  {
    v15 = 18.0;
  }

LABEL_32:
  v17 = __sb__runningInSpringBoard();
  if (v17)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v37 userInterfaceIdiom])
    {
      v9 = 1;
      goto LABEL_40;
    }
  }

  v9 = v17 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = MEMORY[0x1E69DDC50];
    goto LABEL_57;
  }

LABEL_40:
  v22 = __sb__runningInSpringBoard();
  if (v22)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v17 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_51;
    }
  }

  v18 = v22 ^ 1;
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  v36 = v2;
  v19 = v5 ^ 1;
  BSSizeRoundForScale();
  if (v23 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_53;
  }

  v5 = 0x1E69DC000uLL;
LABEL_51:
  v24 = __sb__runningInSpringBoard();
  if (v24)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_53:
      v20 = 0;
      v21 = MEMORY[0x1E69DDC30];
      goto LABEL_57;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom] == 1)
    {
      v21 = MEMORY[0x1E69DDC30];
      v20 = 1;
      goto LABEL_57;
    }
  }

  v20 = v24 ^ 1;
  v21 = MEMORY[0x1E69DDC38];
LABEL_57:
  v25 = [v13 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v21, v15)}];
  [v4 setFont:v25];

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v9)
  {
  }

  if (v40)
  {
  }

  if (HIDWORD(v40))
  {
    goto LABEL_68;
  }

LABEL_69:
  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  v26 = [(SBUIPasscodeLockViewBase *)self _statusText];
  [v4 setText:v26];

  [v4 setClipsToBounds:1];
  v27 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v27];

  if (self->_usesLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v28 = ;
  [v4 setTextColor:v28];

  [v4 setTextAlignment:1];
  [v4 setAdjustsFontSizeToFitWidth:1];
  v29 = __sb__runningInSpringBoard();
  v30 = v29;
  if (!v29)
  {
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v28 userInterfaceIdiom] == 1)
    {
      [v4 setMinimumScaleFactor:0.444444444];
      goto LABEL_86;
    }

LABEL_77:
    v31 = __sb__runningInSpringBoard();
    v32 = v31;
    if (v31)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        [v4 setMinimumScaleFactor:0.666666667];
        goto LABEL_85;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v9 userInterfaceIdiom])
      {
        [v4 setMinimumScaleFactor:0.666666667];
LABEL_84:

LABEL_85:
        if (v30)
        {
          return v4;
        }

LABEL_86:

        return v4;
      }
    }

    [v4 setMinimumScaleFactor:dbl_1A9B2AA60[SBFEffectiveHomeButtonType() == 2]];
    if (v32)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    goto LABEL_77;
  }

  [v4 setMinimumScaleFactor:0.444444444];
  return v4;
}

- (id)_newStatusSubtitleView
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v6 = 0x1E69DC000uLL;
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:
      v8 = MEMORY[0x1E69DB878];
      v9 = __sb__runningInSpringBoard();
      if (v9)
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          v10 = 0;
          v11 = 0;
          v12 = 22.0;
          goto LABEL_92;
        }
      }

      else
      {
        v39 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v39 userInterfaceIdiom] == 1)
        {
          v10 = 0;
          v12 = 22.0;
          v11 = 1;
          goto LABEL_92;
        }
      }

      v11 = v9 ^ 1;
      v3 = __sb__runningInSpringBoard();
      if (v3)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v10 = 0;
          v12 = 14.0;
          goto LABEL_92;
        }
      }

      else
      {
        v9 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v9 userInterfaceIdiom])
        {
          v12 = 14.0;
          v10 = 1;
          goto LABEL_92;
        }
      }

      v10 = v3 ^ 1;
      v35 = SBFEffectiveHomeButtonType();
      v12 = 14.0;
      if (v35 == 2)
      {
        v12 = 15.0;
      }

LABEL_92:
      v36 = [v8 systemFontOfSize:v12];
      [v5 setFont:v36];

      if (v10)
      {
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_68:

      goto LABEL_69;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
    }

    else
    {
      v7 = SBFEffectiveHomeButtonType();

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }
  }

  v13 = MEMORY[0x1E69DB878];
  v14 = __sb__runningInSpringBoard();
  v41 = self;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v40 = 0;
      v15 = 22.0;
      goto LABEL_32;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v39 userInterfaceIdiom] == 1)
    {
      v15 = 22.0;
      v40 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v40) = v14 ^ 1;
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v40) = 0;
      v15 = 14.0;
      goto LABEL_32;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v38 userInterfaceIdiom])
    {
      v15 = 14.0;
      LODWORD(v40) = 1;
      goto LABEL_32;
    }
  }

  LODWORD(v40) = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 14.0;
  }

LABEL_32:
  v17 = __sb__runningInSpringBoard();
  if (v17)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v37 userInterfaceIdiom])
    {
      v18 = 1;
      goto LABEL_40;
    }
  }

  v18 = v17 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v3 = 0x1E69DC000uLL;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = MEMORY[0x1E69DDC58];
    goto LABEL_57;
  }

LABEL_40:
  v23 = __sb__runningInSpringBoard();
  if (v23)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v17 userInterfaceIdiom])
    {
      v20 = 0;
      v19 = 1;
      goto LABEL_51;
    }
  }

  v3 = 0x1E69DC000uLL;
  v19 = v23 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  v20 = v6 ^ 1;
  BSSizeRoundForScale();
  if (v24 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_53;
  }

  v6 = 0x1E69DC000uLL;
LABEL_51:
  v25 = __sb__runningInSpringBoard();
  if (v25)
  {
    v3 = 0x1E69DC000uLL;
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_53:
      v21 = 0;
      v22 = MEMORY[0x1E69DDC30];
      goto LABEL_57;
    }
  }

  else
  {
    v3 = 0x1E69DC000uLL;
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 userInterfaceIdiom] == 1)
    {
      v22 = MEMORY[0x1E69DDC30];
      v21 = 1;
      goto LABEL_57;
    }
  }

  v21 = v25 ^ 1;
  v22 = MEMORY[0x1E69DDC38];
LABEL_57:
  v26 = [v13 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v22, v15)}];
  [v5 setFont:v26];

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  self = v41;
  if (v40)
  {
  }

  if (HIDWORD(v40))
  {
    goto LABEL_68;
  }

LABEL_69:
  [v5 setNumberOfLines:0];
  [v5 setLineBreakMode:0];
  [v5 setClipsToBounds:1];
  v27 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v27];

  if (self->_usesLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v28 = ;
  [v5 setTextColor:v28];

  [v5 setTextAlignment:1];
  [v5 setAdjustsFontSizeToFitWidth:1];
  v29 = __sb__runningInSpringBoard();
  v30 = v29;
  if (!v29)
  {
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v28 userInterfaceIdiom] == 1)
    {
      [v5 setMinimumScaleFactor:0.545454545];
      goto LABEL_86;
    }

LABEL_77:
    v31 = __sb__runningInSpringBoard();
    v32 = v31;
    if (v31)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        [v5 setMinimumScaleFactor:0.857142857];
        goto LABEL_85;
      }
    }

    else
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v3 userInterfaceIdiom])
      {
        [v5 setMinimumScaleFactor:0.857142857];
LABEL_84:

LABEL_85:
        if (v30)
        {
          goto LABEL_87;
        }

LABEL_86:

        goto LABEL_87;
      }
    }

    [v5 setMinimumScaleFactor:dbl_1A9B2AA70[SBFEffectiveHomeButtonType() == 2]];
    if (v32)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    goto LABEL_77;
  }

  [v5 setMinimumScaleFactor:0.545454545];
LABEL_87:
  v33 = [(SBUIPasscodeLockViewBase *)self _statusSubtitleText];
  [v5 setText:v33];

  return v5;
}

- (void)_acceptOrCancelReturnKeyPress
{
  v3 = [(SBUIPasscodeEntryField *)self->_alphaEntryField stringValue];
  v4 = [v3 length];

  if (v4)
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _notifyDelegatePasscodeEntered];
  }

  else if ([(SBUIPasscodeLockViewBase *)self showsCancelButton])
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _notifyDelegatePasscodeCancelled];
  }
}

- (void)_toggleForEmergencyCall
{
  if ([(SBUIPasscodeLockViewBase *)self showsEmergencyCallButton])
  {
    v3 = [(UIView *)self->_statusFieldBackground backgroundColor];
    [(UIView *)self->_statusFieldBackground alpha];
    if (self->_emergencyCallButton)
    {
LABEL_63:
      v35 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [v35 addSubview:self->_emergencyCallButton];

      goto LABEL_64;
    }

    v5 = v4;
    v6 = MEMORY[0x1E69DB878];
    v7 = __sb__runningInSpringBoard();
    v8 = 0x1E69DC000uLL;
    if (v7)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v40 = 0;
        v9 = 12.0;
        goto LABEL_14;
      }
    }

    else
    {
      v39 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v39 userInterfaceIdiom])
      {
        v9 = 12.0;
        v40 = 1;
        goto LABEL_14;
      }
    }

    v40 = v7 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v9 = 16.0;
    }

    else
    {
      v9 = 12.0;
    }

LABEL_14:
    v11 = __sb__runningInSpringBoard();
    if (v11)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v38 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v38 userInterfaceIdiom])
      {
        v12 = 1;
        goto LABEL_22;
      }
    }

    v12 = v11 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = MEMORY[0x1E69DDC58];
      goto LABEL_39;
    }

LABEL_22:
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v13 = 0;
        v15 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v36 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v36 userInterfaceIdiom])
      {
        v13 = 0;
        v15 = 1;
        goto LABEL_33;
      }
    }

    v15 = v17 ^ 1;
    v8 = __sb__runningInSpringBoard();
    if (v8)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v11 _referenceBounds];
    }

    v37 = v11;
    v13 = v8 ^ 1;
    BSSizeRoundForScale();
    if (v18 >= *(MEMORY[0x1E69D4380] + 40))
    {
      goto LABEL_35;
    }

    v8 = 0x1E69DC000uLL;
LABEL_33:
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
LABEL_35:
        v14 = 0;
        v16 = MEMORY[0x1E69DDC28];
        goto LABEL_39;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v8 userInterfaceIdiom] == 1)
      {
        v16 = MEMORY[0x1E69DDC28];
        v14 = 1;
        goto LABEL_39;
      }
    }

    v14 = v19 ^ 1;
    v16 = MEMORY[0x1E69DDC30];
LABEL_39:
    v20 = [v6 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v16, v9)}];
    if (v14)
    {
    }

    if (v13)
    {
    }

    if (v15)
    {
    }

    if (v12)
    {
    }

    if (v40)
    {
    }

    if (self->_usesLightStyle)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v21 = ;
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"PASSCODE_EMERGENCY" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    if (__sb__runningInSpringBoard())
    {
      if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v24 userInterfaceIdiom])
      {
      }

      else
      {
        v25 = SBFEffectiveHomeButtonType();

        if (v25 == 2)
        {
LABEL_60:
          v26 = objc_alloc(MEMORY[0x1E69DC738]);
          v27 = [v26 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
          [(UIControl *)v27 setTitle:v23 forState:0];
          [(UIControl *)v27 setTitleColor:v21 forState:0];
          v28 = [(UIControl *)v27 titleLabel];
          [v28 setFont:v20];

          emergencyCallButton = self->_emergencyCallButton;
          self->_emergencyCallButton = v27;
LABEL_62:

          [(UIControl *)self->_emergencyCallButton addTarget:self action:sel__notifyDelegateThatEmergencyCallButtonWasPressed forControlEvents:64];
          [(UIControl *)self->_emergencyCallButton setExclusiveTouch:1];

          goto LABEL_63;
        }
      }
    }

    v30 = [SBUIRingViewLabelButton alloc];
    v31 = [(SBUIRingViewLabelButton *)v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    emergencyCallButton = [(UIControl *)v31 backgroundRing];
    [emergencyCallButton setColorInsideRing:v3];
    [emergencyCallButton setColorOutsideRing:v3];
    [emergencyCallButton setAlphaInsideRing:v5];
    [emergencyCallButton setAlphaOutsideRing:v5];
    [emergencyCallButton setCornerRadius:4.0];
    v32 = self->_emergencyCallButton;
    self->_emergencyCallButton = v31;
    v33 = v31;

    v34 = [(UIControl *)v33 label];

    [v34 setFont:v20];
    [v34 setTextColor:v21];
    [v34 setText:v23];
    [v34 setAdjustsFontSizeToFitWidth:1];
    [v34 setMinimumScaleFactor:0.5];

    goto LABEL_62;
  }

  v10 = self->_emergencyCallButton;
  if (!v10)
  {
    goto LABEL_65;
  }

  [(UIControl *)v10 removeFromSuperview];
  v3 = self->_emergencyCallButton;
  self->_emergencyCallButton = 0;
LABEL_64:

LABEL_65:

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_toggleForStatusField
{
  v3 = [(SBUIPasscodeLockViewBase *)self showsStatusField];
  v4 = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  [v4 setHidden:!v3];

  v5 = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  [v5 setHidden:!v3];
}

- (void)_layoutForMinimizationState:(BOOL)a3
{
  v4 = a3;
  [(SBUIPasscodeLockViewWithKeyboard *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SBUIPasscodeLockViewWithKeyboard *)self _keyboardFrameForInterfaceOrientation:[(SBUIPasscodeLockViewBase *)self _orientation]];
  MinY = CGRectGetMinY(v59);
  [(SBUIAlphanumericPasscodeEntryField *)self->_alphaEntryField frame];
  v16 = v15;
  v18 = v17;
  v60.origin.x = v7;
  v60.origin.y = v9;
  v60.size.width = v11;
  v60.size.height = v13;
  Width = CGRectGetWidth(v60);
  [(SBUIPasscodeEntryField *)self->_alphaEntryField sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v20 = v19;
  if (!v4)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
      {
        goto LABEL_12;
      }

LABEL_11:
      [(SBUIPasscodeLockViewWithKeyboard *)self _keyboardToEntryFieldOffset];
      v26 = MinY - v25 - v20;
      goto LABEL_14;
    }

    v23 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v23 userInterfaceIdiom])
    {
    }

    else
    {
      v24 = SBFEffectiveHomeButtonType();

      if (v24 == 2)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    [MEMORY[0x1E69D3FE8] pinKeyboardEntryFieldOffset:{-[SBUIPasscodeLockViewBase _isBoundsPortraitOriented](self, "_isBoundsPortraitOriented")}];
    goto LABEL_13;
  }

  v61.origin.x = v7;
  v61.origin.y = v9;
  v61.size.width = v11;
  v61.size.height = v13;
  Height = CGRectGetHeight(v61);
  v22 = SBUIFloatFloorForMainScreenScale(Height * 0.5 - v20);
LABEL_13:
  v26 = v22;
LABEL_14:
  v57 = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  v27 = [v57 text];
  v28 = [v27 length];

  if (!v28)
  {
    goto LABEL_37;
  }

  [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleWidth];
  v30 = v29;
  v62.size.width = v11;
  v62.origin.x = v7;
  v62.size.height = v13;
  v62.origin.y = v9;
  [v57 sizeThatFits:{v30, CGRectGetHeight(v62)}];
  v32 = v31;
  v33 = [v57 font];
  [v33 lineHeight];
  v35 = (v32 / v34);

  v36 = __sb__runningInSpringBoard();
  v37 = v36;
  if (v36)
  {
    if (SBFEffectiveDeviceClass() != 2 || SBFEffectiveHomeButtonType() != 2)
    {
      v38 = 2;
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v28 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v28 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
  {
LABEL_21:
    v39 = __sb__runningInSpringBoard();
    v40 = v39;
    if (v39)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v42 == *(MEMORY[0x1E69D4380] + 296) && v41 == *(MEMORY[0x1E69D4380] + 288))
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    if ((v40 & 1) == 0)
    {
    }

    if (v37)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v38 = 2;
LABEL_34:

LABEL_35:
  if (v35 > v38)
  {
    v44 = [v57 font];
    [v44 lineHeight];
    v26 = v26 + (v35 - v38) * v45;
  }

LABEL_37:
  [(SBUIAlphanumericPasscodeEntryField *)self->_alphaEntryField setFrame:v16, v26, Width, v18];
  if (!self->_emergencyCallButton)
  {
    goto LABEL_64;
  }

  v46 = __sb__runningInSpringBoard();
  v47 = v46;
  if (v46)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v28 userInterfaceIdiom])
    {
LABEL_49:

      goto LABEL_50;
    }
  }

  v48 = __sb__runningInSpringBoard();
  v49 = v48;
  if (v48)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((v49 & 1) == 0)
  {
  }

  if ((v47 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  v50 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v50);

  if (!IsAccessibilityCategory)
  {
    goto LABEL_63;
  }

  if (!__sb__runningInSpringBoard())
  {
    v52 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v52 userInterfaceIdiom])
    {
    }

    else
    {
      v53 = SBFEffectiveHomeButtonType();

      if (v53 == 2)
      {
        goto LABEL_60;
      }
    }

LABEL_61:
    v54 = [(UIControl *)self->_emergencyCallButton label];
    goto LABEL_62;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_61;
  }

LABEL_60:
  v54 = [(UIControl *)self->_emergencyCallButton titleLabel];
LABEL_62:
  v55 = v54;
  [(SBUIPasscodeLockViewWithKeyboard *)self _largeTextEmergencyButtonMaxWidth];
  [v55 sizeThatFits:?];

LABEL_63:
  UIRectCenteredXInRectScale();
  [(UIControl *)self->_emergencyCallButton setFrame:0];
LABEL_64:
  [(SBUIPasscodeLockViewWithKeyboard *)self _layoutStatusView];
  [(SBUIPasscodeLockViewWithKeyboard *)self bringSubviewToFront:self->_statusField];
}

- (CGRect)_keyboardFrameForInterfaceOrientation:(int64_t)a3
{
  [MEMORY[0x1E69DCBB8] keyboardSizeForInterfaceOrientation:?];
  v5 = v4;
  v7 = v6;
  [MEMORY[0x1E69DCBE0] deviceSpecificPaddingForInterfaceOrientation:a3 inputMode:0];
  v9 = v7 + v8;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 bounds];
  v12 = v11;

  v13 = v12 - v9;
  v14 = 0.0;
  v15 = v5;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (double)_keyboardToEntryFieldOffset
{
  v4 = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {

      goto LABEL_15;
    }
  }

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v8;
  v10 = *(MEMORY[0x1E69D4380] + 280);
  if ((v7 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
  }

  if (v9 >= v10)
  {
    v11 = !v4;
    result = 242.0;
    v13 = 430.0;
    goto LABEL_25;
  }

LABEL_15:
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v5 userInterfaceIdiom];

    if (v16 != 1)
    {
LABEL_17:
      v14 = __sb__runningInSpringBoard();
      if (v14)
      {
        v15 = v14;
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_33;
        }

        if (SBFEffectiveHomeButtonType() == 2)
        {
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }

        if (v15)
        {
LABEL_33:
          result = 4.0;
          if (v4)
          {
            return result;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v5 = [MEMORY[0x1E69DC938] currentDevice];
        if (![v5 userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
        {
LABEL_30:

LABEL_34:
          v17 = MEMORY[0x1E69D3FE8];

          [v17 pinAlphanumericEntryFieldBottomYDistanceFromKeyboard:{v4, result}];
          return result;
        }
      }

      goto LABEL_33;
    }
  }

  v11 = !v4;
  result = 135.0;
  v13 = 322.0;
LABEL_25:
  if (!v11)
  {
    return v13;
  }

  return result;
}

- (double)_statusFieldHeightWithWidth:(double)a3
{
  v4 = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  [v4 sizeThatFits:{a3, 0.0}];
  v6 = v5;

  return v6;
}

- (double)_statusTitleWidth
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3 + -40.0;

  return v4;
}

- (double)_largeTextEmergencyButtonMaxWidth
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3 + -40.0;

  return v4;
}

- (void)updateStatusText:(id)a3 subtitle:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v31 updateStatusText:v8 subtitle:v9 animated:v5];
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented])
  {
    goto LABEL_16;
  }

  v12 = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  v13 = [v12 text];
  v14 = [v8 isEqualToString:v13];

  if (v14)
  {

    v12 = 0;
    v15 = 0;
  }

  else
  {
    v15 = [(SBUIPasscodeLockViewWithKeyboard *)self _newStatusField];
    [v15 setText:v8];
    [(SBUIPasscodeLockViewWithKeyboard *)self setStatusField:v15];
  }

  v16 = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  if (v9)
  {
    [(SBUIPasscodeLockViewBase *)self _setStatusSubtitleText:v9];
    v17 = [(SBUIPasscodeLockViewWithKeyboard *)self _newStatusSubtitleView];
    [(SBUIPasscodeLockViewWithKeyboard *)self setStatusSubtitleView:v17];
    v18 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
    [v18 insertSubview:v17 aboveSubview:self->_statusFieldBackground];

    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v15)
    {
      v19 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [v19 insertSubview:v15 aboveSubview:v12];
    }

    goto LABEL_12;
  }

  [(SBUIPasscodeLockViewWithKeyboard *)self setStatusSubtitleView:0];
  v17 = 0;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_12:
  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
  if (v5)
  {
    [v15 setAlpha:0.0];
    v20 = MEMORY[0x1E69DD250];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke;
    v28[3] = &unk_1E789DD98;
    v29 = v12;
    v30 = v16;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke_2;
    v25[3] = &unk_1E789E7D8;
    v26 = v29;
    v27 = v30;
    [v20 animateWithDuration:v28 animations:v25 completion:0.22];
    v21 = MEMORY[0x1E69DD250];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke_3;
    v22[3] = &unk_1E789DD98;
    v23 = v15;
    v24 = v17;
    [v21 animateWithDuration:0 delay:v22 options:0 animations:0.4 completion:0.17];
  }

  else
  {
    [v12 removeFromSuperview];
    [v16 removeFromSuperview];
  }

LABEL_16:
}

uint64_t __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

uint64_t __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (void)_layoutStatusView
{
  [(SBUIPasscodeLockViewWithKeyboard *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBUIAlphanumericPasscodeEntryField *)self->_alphaEntryField frame];
  rect = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  rect_8 = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  v19 = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  v20 = [v19 text];
  v21 = [v20 length];

  v48 = v11;
  v46 = v5;
  v47 = v9;
  if (v21)
  {
    [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleWidth];
    v23 = v22;
    v52.origin.x = v5;
    v52.origin.y = v7;
    v52.size.width = v9;
    v52.size.height = v11;
    [v19 sizeThatFits:{v23, CGRectGetHeight(v52)}];
    v25 = v24;
    v26 = v7;
    UIRectCenteredXInRectScale();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v53.origin.x = rect;
    v53.origin.y = v14;
    v53.size.width = v16;
    v53.size.height = v18;
    [v19 setFrame:{v28, CGRectGetMinY(v53) - v25 + -14.0, v30, v32, 0}];
    v33 = v25 + 14.0;
  }

  else
  {
    v26 = v7;
    v33 = 0.0;
  }

  v34 = v18;
  [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleWidth];
  [(SBUIPasscodeLockViewWithKeyboard *)self _statusFieldHeightWithWidth:?];
  v36 = v35;
  v37 = __sb__runningInSpringBoard();
  v38 = v37;
  if (v21)
  {
    v39 = v46;
    if (v37)
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v40 = 3;
      }

      else
      {
        v40 = 4;
      }
    }

    else
    {
      v41 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v41 userInterfaceIdiom] == 1)
      {
        v40 = 3;
      }

      else
      {
        v40 = 4;
      }
    }

    goto LABEL_29;
  }

  if (v37)
  {
    v39 = v46;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v40 = 13;
      goto LABEL_29;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    v39 = v46;
    if ([v21 userInterfaceIdiom])
    {
      v40 = 13;
LABEL_28:

      goto LABEL_29;
    }
  }

  v42 = __sb__runningInSpringBoard();
  v43 = v42;
  if (v42)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v44 < *(MEMORY[0x1E69D4380] + 40))
  {
    v40 = 13;
  }

  else
  {
    v40 = 24;
  }

  if ((v43 & 1) == 0)
  {
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v54.origin.x = rect;
  v54.origin.y = v14;
  v54.size.width = v16;
  v54.size.height = v34;
  v45 = CGRectGetMinY(v54) - v36 - v33 - v40;
  v55.origin.x = v39;
  v55.origin.y = v26;
  v55.size.width = v47;
  v55.size.height = v48;
  [(UIView *)self->_statusFieldBackground setFrame:0.0, v45, CGRectGetWidth(v55), v33 + v36 + v40];
  UIRectCenteredXInRectScale();
  [rect_8 setFrame:0];
}

- (void)_updateFont
{
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
    }

    else
    {
      v6 = SBFEffectiveHomeButtonType();

      if (v6 == 2)
      {
        goto LABEL_110;
      }
    }
  }

  v7 = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  v8 = MEMORY[0x1E69DB878];
  v9 = __sb__runningInSpringBoard();
  if (v9)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v10 = 0;
      v67 = 0;
      v11 = 27.0;
      goto LABEL_23;
    }
  }

  else
  {
    v65 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v65 userInterfaceIdiom] == 1)
    {
      v10 = 0;
      v11 = 27.0;
      v67 = 1;
      goto LABEL_23;
    }
  }

  v67 = v9 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v10 = 0;
      v11 = 18.0;
      goto LABEL_23;
    }
  }

  else
  {
    v66 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v66 userInterfaceIdiom])
    {
      v11 = 18.0;
      v10 = 1;
      goto LABEL_23;
    }
  }

  v10 = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = 22.0;
  }

  else
  {
    v11 = 18.0;
  }

LABEL_23:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v64 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v64 userInterfaceIdiom])
    {
      v13 = 1;
      goto LABEL_31;
    }
  }

  v13 = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = MEMORY[0x1E69DDC50];
    goto LABEL_47;
  }

LABEL_31:
  v18 = __sb__runningInSpringBoard();
  if (v18)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v12 userInterfaceIdiom])
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_41;
    }
  }

  v15 = v18 ^ 1;
  v4 = __sb__runningInSpringBoard();
  if (v4)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  v14 = v4 ^ 1;
  BSSizeRoundForScale();
  if (v19 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_43;
  }

LABEL_41:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_43:
      v16 = 0;
      v17 = MEMORY[0x1E69DDC30];
      goto LABEL_47;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v17 = MEMORY[0x1E69DDC30];
      v16 = 1;
      goto LABEL_47;
    }
  }

  v16 = v20 ^ 1;
  v17 = MEMORY[0x1E69DDC38];
LABEL_47:
  v21 = [v8 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v17, v11)}];
  [v7 setFont:v21];

  if (v16)
  {
  }

  if (v14)
  {
  }

  v22 = 0x1E69DC000uLL;
  if (v15)
  {
  }

  if (v13)
  {
  }

  if (v10)
  {
  }

  if (v67)
  {
  }

  v23 = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  v24 = MEMORY[0x1E69DB878];
  v25 = __sb__runningInSpringBoard();
  if (v25)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v68 = 0;
      v26 = 0;
      v27 = 22.0;
      goto LABEL_73;
    }
  }

  else
  {
    v65 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v65 userInterfaceIdiom] == 1)
    {
      v26 = 0;
      v27 = 22.0;
      v68 = 1;
      goto LABEL_73;
    }
  }

  v68 = v25 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v26 = 0;
      v27 = 14.0;
      goto LABEL_73;
    }
  }

  else
  {
    v66 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v66 userInterfaceIdiom])
    {
      v27 = 14.0;
      v26 = 1;
      goto LABEL_73;
    }
  }

  v26 = v2 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 14.0;
  }

LABEL_73:
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v28 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    v64 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v64 userInterfaceIdiom])
    {
      v28 = 1;
      goto LABEL_81;
    }
  }

  v28 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
LABEL_81:
    v33 = __sb__runningInSpringBoard();
    if (v33)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v29 = 0;
        v30 = 0;
        goto LABEL_91;
      }
    }

    else
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v3 userInterfaceIdiom])
      {
        v30 = 0;
        v29 = 1;
        goto LABEL_91;
      }
    }

    v29 = v33 ^ 1;
    v22 = __sb__runningInSpringBoard();
    if (v22)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v2 _referenceBounds];
    }

    v30 = v22 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x1E69D4380] + 40))
    {
      goto LABEL_93;
    }

LABEL_91:
    v35 = __sb__runningInSpringBoard();
    if (v35)
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
LABEL_93:
        v31 = 0;
        v32 = MEMORY[0x1E69DDC30];
        goto LABEL_97;
      }
    }

    else
    {
      v22 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v22 userInterfaceIdiom] == 1)
      {
        v32 = MEMORY[0x1E69DDC30];
        v31 = 1;
        goto LABEL_97;
      }
    }

    v31 = v35 ^ 1;
    v32 = MEMORY[0x1E69DDC38];
    goto LABEL_97;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = MEMORY[0x1E69DDC58];
LABEL_97:
  v36 = [v24 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v32, v27)}];
  [v23 setFont:v36];

  if (v31)
  {
  }

  if (v30)
  {
  }

  if (v29)
  {
  }

  if (v28)
  {
  }

  if (v26)
  {
  }

  if (v68)
  {
  }

LABEL_110:
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v37 userInterfaceIdiom])
    {
    }

    else
    {
      v38 = SBFEffectiveHomeButtonType();

      if (v38 == 2)
      {
LABEL_118:
        v39 = [(UIControl *)self->_emergencyCallButton titleLabel];
        goto LABEL_120;
      }
    }
  }

  v39 = [(UIControl *)self->_emergencyCallButton label];
LABEL_120:
  v69 = v39;
  v40 = MEMORY[0x1E69DB878];
  v41 = __sb__runningInSpringBoard();
  if (v41)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v42 = 0;
      v43 = 12.0;
      goto LABEL_129;
    }
  }

  else
  {
    v66 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v66 userInterfaceIdiom])
    {
      v43 = 12.0;
      v42 = 1;
      goto LABEL_129;
    }
  }

  v42 = v41 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v43 = 16.0;
  }

  else
  {
    v43 = 12.0;
  }

LABEL_129:
  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v45 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v41 userInterfaceIdiom])
    {
      v45 = 1;
      goto LABEL_137;
    }
  }

  v45 = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = MEMORY[0x1E69DDC58];
    goto LABEL_153;
  }

LABEL_137:
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v46 = 0;
      v47 = 0;
      goto LABEL_147;
    }
  }

  else
  {
    v44 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v44 userInterfaceIdiom])
    {
      v47 = 0;
      v46 = 1;
      goto LABEL_147;
    }
  }

  v46 = v2 ^ 1;
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  v47 = v3 ^ 1;
  BSSizeRoundForScale();
  if (v50 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_149;
  }

LABEL_147:
  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_149:
      v48 = 0;
      v49 = MEMORY[0x1E69DDC28];
      goto LABEL_153;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] == 1)
    {
      v49 = MEMORY[0x1E69DDC28];
      v48 = 1;
      goto LABEL_153;
    }
  }

  v48 = v51 ^ 1;
  v49 = MEMORY[0x1E69DDC30];
LABEL_153:
  v52 = [v40 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v49, v43)}];
  [v69 setFont:v52];

  if (v48)
  {

    if (!v47)
    {
      goto LABEL_155;
    }
  }

  else if (!v47)
  {
LABEL_155:
    if (v46)
    {
      goto LABEL_156;
    }

LABEL_160:
    if (!v45)
    {
      goto LABEL_162;
    }

    goto LABEL_161;
  }

  if (!v46)
  {
    goto LABEL_160;
  }

LABEL_156:

  if (v45)
  {
LABEL_161:
  }

LABEL_162:
  v53 = 0x1E69DC000;
  if (v42)
  {
  }

  alphaEntryField = self->_alphaEntryField;
  v55 = MEMORY[0x1E69DB878];
  v56 = __sb__runningInSpringBoard();
  v57 = v56;
  if (v56)
  {
    v58 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v52 = [MEMORY[0x1E69DC938] currentDevice];
    v58 = [v52 userInterfaceIdiom] == 1;
  }

  if (v58)
  {
    v59 = 27.0;
  }

  else
  {
    v59 = 17.0;
  }

  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v61 = 0;
      goto LABEL_178;
    }
  }

  else
  {
    v53 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v53 userInterfaceIdiom])
    {
      v61 = 1;
      goto LABEL_178;
    }
  }

  v61 = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v62 = MEMORY[0x1E69DDC60];
    goto LABEL_179;
  }

LABEL_178:
  v62 = MEMORY[0x1E69DDC20];
LABEL_179:
  v63 = [v55 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v62, v59)}];
  [(SBUIPasscodeEntryField *)alphaEntryField setFont:v63];

  if (v61)
  {
  }

  if ((v57 & 1) == 0)
  {
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewWithKeyboard *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(SBUIPasscodeLockViewWithKeyboard *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(SBUIPasscodeLockViewWithKeyboard *)self _updateFont];
      [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
    }
  }
}

- (void)_updateKeyboardHeightOffsetForKeyboardNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;

  if (v7 > 0.0)
  {
    self->_keyboardHeightOffset = v7;
  }
}

- (void)_keyboardWillChangeFrameNotification:(id)a3
{
  [(SBUIPasscodeLockViewWithKeyboard *)self _updateKeyboardHeightOffsetForKeyboardNotification:a3];

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_keyboardWillShowNotification:(id)a3
{
  self->_keyboardVisible = 1;
  v4 = a3;
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:1];
  [(SBUIPasscodeLockViewWithKeyboard *)self _updateKeyboardHeightOffsetForKeyboardNotification:v4];

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_keyboardDidHideNotification:(id)a3
{
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:0];
  if (!self->_isResigningResponderStatus)
  {
    self->_keyboardVisible = 0;

    [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
  }
}

@end