@interface SBUIPasscodeLockViewWithKeyboard
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGRect)_keyboardFrameForInterfaceOrientation:(int64_t)orientation;
- (SBUIPasscodeLockViewWithKeyboard)initWithLightStyle:(BOOL)style;
- (double)_keyboardToEntryFieldOffset;
- (double)_largeTextEmergencyButtonMaxWidth;
- (double)_statusFieldHeightWithWidth:(double)width;
- (double)_statusTitleWidth;
- (id)_newStatusField;
- (id)_newStatusSubtitleView;
- (id)_viewForKeyboardTracking;
- (void)_acceptOrCancelReturnKeyPress;
- (void)_hardwareReturnKeyPressed:(id)pressed;
- (void)_keyboardDidHideNotification:(id)notification;
- (void)_keyboardWillChangeFrameNotification:(id)notification;
- (void)_keyboardWillShowNotification:(id)notification;
- (void)_layoutForMinimizationState:(BOOL)state;
- (void)_layoutStatusView;
- (void)_luminanceBoostDidChange;
- (void)_notifyDelegatePasscodeCancelled;
- (void)_notifyDelegatePasscodeEntered;
- (void)_notifyDelegateThatEmergencyCallButtonWasPressed;
- (void)_setKeyboardTracksLockView:(BOOL)view;
- (void)_toggleForEmergencyCall;
- (void)_toggleForStatusField;
- (void)_updateFont;
- (void)_updateKeyboardHeightOffsetForKeyboardNotification:(id)notification;
- (void)becomeActiveWithAnimationSettings:(id)settings;
- (void)beginTransitionToState:(int64_t)state;
- (void)dealloc;
- (void)didEndTransitionToState:(int64_t)state;
- (void)layoutSubviews;
- (void)passcodeEntryFieldDidCancelEntry:(id)entry;
- (void)passcodeEntryFieldTextDidChange:(id)change;
- (void)resignActiveWithAnimationSettings:(id)settings;
- (void)setShowsEmergencyCallButton:(BOOL)button;
- (void)setShowsStatusField:(BOOL)field;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForTransitionToPasscodeView:(BOOL)view animated:(BOOL)animated;
- (void)updateStatusText:(id)text subtitle:(id)subtitle animated:(BOOL)animated;
@end

@implementation SBUIPasscodeLockViewWithKeyboard

- (SBUIPasscodeLockViewWithKeyboard)initWithLightStyle:(BOOL)style
{
  styleCopy = style;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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

  v14->_usesLightStyle = styleCopy;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SBUIPasscodeLockViewWithKeyboard *)v15 setFrame:v18, v20, v22, v24];
  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  statusFieldBackground = v15->_statusFieldBackground;
  v15->_statusFieldBackground = v25;

  passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [passcodeAuthenticationView addSubview:v15->_statusFieldBackground];

  _newStatusField = [(SBUIPasscodeLockViewWithKeyboard *)v15 _newStatusField];
  [(SBUIPasscodeLockViewWithKeyboard *)v15 setStatusField:_newStatusField];
  passcodeAuthenticationView2 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [passcodeAuthenticationView2 addSubview:_newStatusField];

  _statusSubtitleText = [(SBUIPasscodeLockViewBase *)v15 _statusSubtitleText];
  passcodeAuthenticationView3 = [_statusSubtitleText length];

  if (passcodeAuthenticationView3)
  {
    _newStatusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)v15 _newStatusSubtitleView];
    [(SBUIPasscodeLockViewWithKeyboard *)v15 setStatusSubtitleView:_newStatusSubtitleView];
    passcodeAuthenticationView3 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
    [passcodeAuthenticationView3 addSubview:_newStatusSubtitleView];
  }

  v33 = [[SBUIAlphanumericPasscodeEntryField alloc] initWithDefaultSizeAndLightStyle:styleCopy];
  alphaEntryField = v15->_alphaEntryField;
  v15->_alphaEntryField = v33;

  [(SBUIPasscodeEntryField *)v15->_alphaEntryField setDelegate:v15];
  [(SBUIPasscodeLockViewBase *)v15 _setEntryField:v15->_alphaEntryField];
  passcodeAuthenticationView4 = [(SBUIPasscodeLockViewBase *)v15 passcodeAuthenticationView];
  [passcodeAuthenticationView4 addSubview:v15->_alphaEntryField];

  v36 = v15->_alphaEntryField;
  v37 = MEMORY[0x1E69DB878];
  v38 = __sb__runningInSpringBoard();
  v39 = v38;
  currentDevice = 0x1E69DC000;
  if (v38)
  {
    v41 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    passcodeAuthenticationView3 = [MEMORY[0x1E69DC938] currentDevice];
    v41 = [passcodeAuthenticationView3 userInterfaceIdiom] == 1;
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v15 selector:sel__hardwareReturnKeyPressed_ name:@"SBUIHardwareKeyboardReturnKeyPressedNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v15 selector:sel__keyboardDidHideNotification_ name:*MEMORY[0x1E69DDF70] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v15 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:v15 selector:sel__keyboardWillChangeFrameNotification_ name:*MEMORY[0x1E69DE068] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:v15 selector:sel__keyboardDidRequestDismissalNotification_ name:@"UIKeyboardPrivateDidRequestDismissalNotification" object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [(SBUIPasscodeLockViewBase *)self _luminosityBoost];
    [activeKeyboard _setPasscodeOutlineAlpha:?];
  }
}

- (void)setShowsEmergencyCallButton:(BOOL)button
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 setShowsEmergencyCallButton:button];
  [(SBUIPasscodeLockViewWithKeyboard *)self _toggleForEmergencyCall];
}

- (void)setShowsStatusField:(BOOL)field
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 setShowsStatusField:field];
  [(SBUIPasscodeLockViewWithKeyboard *)self _toggleForStatusField];
}

- (void)beginTransitionToState:(int64_t)state
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 beginTransitionToState:state];
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:1];
}

- (void)didEndTransitionToState:(int64_t)state
{
  v4.receiver = self;
  v4.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v4 didEndTransitionToState:state];
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:0];
}

- (void)updateForTransitionToPasscodeView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v7 = MEMORY[0x1E698E608];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v9 = [v7 settingsWithDuration:v8 timingFunction:0.15];

  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:v9];
  v10.receiver = self;
  v10.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v10 updateForTransitionToPasscodeView:viewCopy animated:animatedCopy];
}

- (id)_viewForKeyboardTracking
{
  mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
  _currentInputView = [mEMORY[0x1E69DCD68] _currentInputView];
  superview = [_currentInputView superview];

  return superview;
}

- (void)_setKeyboardTracksLockView:(BOOL)view
{
  viewCopy = view;
  v44[4] = *MEMORY[0x1E69E9840];
  self->_keyboardTracksLockView = view;
  _viewForKeyboardTracking = [(SBUIPasscodeLockViewWithKeyboard *)self _viewForKeyboardTracking];
  v6 = _viewForKeyboardTracking;
  if (viewCopy)
  {
    if (!self->_keyboardTrackingView)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      keyboardTrackingView = self->_keyboardTrackingView;
      self->_keyboardTrackingView = v8;

      passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [passcodeAuthenticationView addSubview:self->_keyboardTrackingView];
    }

    v11 = MEMORY[0x1E69DD250];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __63__SBUIPasscodeLockViewWithKeyboard__setKeyboardTracksLockView___block_invoke;
    v41[3] = &unk_1E789DD98;
    v12 = v6;
    v42 = v12;
    selfCopy = self;
    [v11 performWithoutAnimation:v41];
    layer = [(UIView *)v12 layer];
    [layer removeAnimationForKey:@"KeyboardTracking_MatchMoveAnimation"];

    animation = [MEMORY[0x1E69793B8] animation];
    layer2 = [(UIView *)self->_keyboardTrackingView layer];
    [animation setSourceLayer:layer2];

    [animation setDuration:INFINITY];
    layer3 = [(UIView *)self->_keyboardTrackingView layer];
    [layer3 bounds];
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
    [animation setSourcePoints:v37];

    [animation setFillMode:*MEMORY[0x1E69797E0]];
    [animation setRemovedOnCompletion:0];
    layer4 = [(UIView *)v12 layer];
    [layer4 addAnimation:animation forKey:@"KeyboardTracking_MatchMoveAnimation"];

    v39 = v42;
  }

  else
  {
    layer5 = [_viewForKeyboardTracking layer];
    [layer5 removeAnimationForKey:@"KeyboardTracking_MatchMoveAnimation"];

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
  selfCopy = self;
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
  v4[4] = selfCopy;
  v4[5] = &v6;
  [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v4 options:0 animations:0.0 completion:0.0];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  selfCopy = self;
  self->_isResigningResponderStatus = 1;
  _viewForKeyboardTracking = [(SBUIPasscodeLockViewWithKeyboard *)self _viewForKeyboardTracking];
  layer = [_viewForKeyboardTracking layer];
  [layer removeAllAnimations];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SBUIPasscodeLockViewWithKeyboard_resignFirstResponder__block_invoke;
  v6[3] = &unk_1E789ED20;
  v6[4] = selfCopy;
  v6[5] = &v7;
  [MEMORY[0x1E69DD250] animateWithDuration:32 delay:v6 options:0 animations:0.0 completion:0.0];
  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
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

- (void)becomeActiveWithAnimationSettings:(id)settings
{
  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:settings];

  [(SBUIPasscodeLockViewWithKeyboard *)self becomeFirstResponder];
}

- (void)resignActiveWithAnimationSettings:(id)settings
{
  [(SBPasscodeKeyboardAnimator *)self->_keyboardAnimator setAnimationSettings:settings];

  [(SBUIPasscodeLockViewWithKeyboard *)self resignFirstResponder];
}

- (void)_hardwareReturnKeyPressed:(id)pressed
{
  if (([(SBUIPasscodeLockViewWithKeyboard *)self isFirstResponder]& 1) != 0 || [(SBUIPasscodeEntryField *)self->_alphaEntryField isFirstResponder])
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _acceptOrCancelReturnKeyPress];
  }
}

- (void)_notifyDelegatePasscodeEntered
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockViewPasscodeEntered:self];
  }
}

- (void)_notifyDelegateThatEmergencyCallButtonWasPressed
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockViewEmergencyCallButtonPressed:self];
  }
}

- (void)_notifyDelegatePasscodeCancelled
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeLockViewCancelButtonPressed:self];
  }
}

- (void)passcodeEntryFieldDidCancelEntry:(id)entry
{
  if ([(SBUIPasscodeLockViewBase *)self showsCancelButton])
  {

    [(SBUIPasscodeLockViewWithKeyboard *)self _notifyDelegatePasscodeCancelled];
  }
}

- (void)passcodeEntryFieldTextDidChange:(id)change
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v5 = delegate;
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
  currentDevice7 = 0x1E69DC000uLL;
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:
      v8 = MEMORY[0x1E69DB878];
      currentDevice2 = __sb__runningInSpringBoard();
      if (currentDevice2)
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
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          v10 = 0;
          v12 = 27.0;
          v11 = 1;
          goto LABEL_92;
        }
      }

      v11 = currentDevice2 ^ 1;
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
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice2 userInterfaceIdiom])
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
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v15 = 27.0;
      v40 = 0x100000000;
      goto LABEL_32;
    }
  }

  HIDWORD(v40) = v14 ^ 1;
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
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
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice4 userInterfaceIdiom])
    {
      v15 = 18.0;
      LODWORD(v40) = 1;
      goto LABEL_32;
    }
  }

  LODWORD(v40) = mainScreen ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v15 = 22.0;
  }

  else
  {
    v15 = 18.0;
  }

LABEL_32:
  currentDevice6 = __sb__runningInSpringBoard();
  if (currentDevice6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      currentDevice2 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice5 userInterfaceIdiom])
    {
      currentDevice2 = 1;
      goto LABEL_40;
    }
  }

  currentDevice2 = currentDevice6 ^ 1;
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
    currentDevice6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice6 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_51;
    }
  }

  v18 = v22 ^ 1;
  currentDevice7 = __sb__runningInSpringBoard();
  if (currentDevice7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v36 = mainScreen;
  v19 = currentDevice7 ^ 1;
  BSSizeRoundForScale();
  if (v23 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_53;
  }

  currentDevice7 = 0x1E69DC000uLL;
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
    currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] == 1)
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

  if (currentDevice2)
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
  _statusText = [(SBUIPasscodeLockViewBase *)self _statusText];
  [v4 setText:_statusText];

  [v4 setClipsToBounds:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  if (self->_usesLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  currentDevice8 = ;
  [v4 setTextColor:currentDevice8];

  [v4 setTextAlignment:1];
  [v4 setAdjustsFontSizeToFitWidth:1];
  v29 = __sb__runningInSpringBoard();
  v30 = v29;
  if (!v29)
  {
    currentDevice8 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice8 userInterfaceIdiom] == 1)
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
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom])
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
  currentDevice7 = 0x1E69DC000uLL;
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_9:
      v8 = MEMORY[0x1E69DB878];
      currentDevice2 = __sb__runningInSpringBoard();
      if (currentDevice2)
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
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          v10 = 0;
          v12 = 22.0;
          v11 = 1;
          goto LABEL_92;
        }
      }

      v11 = currentDevice2 ^ 1;
      currentDevice9 = __sb__runningInSpringBoard();
      if (currentDevice9)
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
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice2 userInterfaceIdiom])
        {
          v12 = 14.0;
          v10 = 1;
          goto LABEL_92;
        }
      }

      v10 = currentDevice9 ^ 1;
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
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
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
  selfCopy = self;
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
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
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice4 userInterfaceIdiom])
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
  currentDevice6 = __sb__runningInSpringBoard();
  if (currentDevice6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice5 userInterfaceIdiom])
    {
      v18 = 1;
      goto LABEL_40;
    }
  }

  v18 = currentDevice6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice9 = 0x1E69DC000uLL;
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
    currentDevice6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice6 userInterfaceIdiom])
    {
      v20 = 0;
      v19 = 1;
      goto LABEL_51;
    }
  }

  currentDevice9 = 0x1E69DC000uLL;
  v19 = v23 ^ 1;
  currentDevice7 = __sb__runningInSpringBoard();
  if (currentDevice7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [currentDevice3 _referenceBounds];
  }

  v20 = currentDevice7 ^ 1;
  BSSizeRoundForScale();
  if (v24 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_53;
  }

  currentDevice7 = 0x1E69DC000uLL;
LABEL_51:
  v25 = __sb__runningInSpringBoard();
  if (v25)
  {
    currentDevice9 = 0x1E69DC000uLL;
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
    currentDevice9 = 0x1E69DC000uLL;
    currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] == 1)
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

  self = selfCopy;
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:clearColor];

  if (self->_usesLightStyle)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  currentDevice8 = ;
  [v5 setTextColor:currentDevice8];

  [v5 setTextAlignment:1];
  [v5 setAdjustsFontSizeToFitWidth:1];
  v29 = __sb__runningInSpringBoard();
  v30 = v29;
  if (!v29)
  {
    currentDevice8 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice8 userInterfaceIdiom] == 1)
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
      currentDevice9 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice9 userInterfaceIdiom])
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
  _statusSubtitleText = [(SBUIPasscodeLockViewBase *)self _statusSubtitleText];
  [v5 setText:_statusSubtitleText];

  return v5;
}

- (void)_acceptOrCancelReturnKeyPress
{
  stringValue = [(SBUIPasscodeEntryField *)self->_alphaEntryField stringValue];
  v4 = [stringValue length];

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
    backgroundColor = [(UIView *)self->_statusFieldBackground backgroundColor];
    [(UIView *)self->_statusFieldBackground alpha];
    if (self->_emergencyCallButton)
    {
LABEL_63:
      passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [passcodeAuthenticationView addSubview:self->_emergencyCallButton];

      goto LABEL_64;
    }

    v5 = v4;
    v6 = MEMORY[0x1E69DB878];
    v7 = __sb__runningInSpringBoard();
    currentDevice4 = 0x1E69DC000uLL;
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
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
    mainScreen = __sb__runningInSpringBoard();
    if (mainScreen)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom])
      {
        v12 = 1;
        goto LABEL_22;
      }
    }

    v12 = mainScreen ^ 1;
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
      currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice3 userInterfaceIdiom])
      {
        v13 = 0;
        v15 = 1;
        goto LABEL_33;
      }
    }

    v15 = v17 ^ 1;
    currentDevice4 = __sb__runningInSpringBoard();
    if (currentDevice4)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v37 = mainScreen;
    v13 = currentDevice4 ^ 1;
    BSSizeRoundForScale();
    if (v18 >= *(MEMORY[0x1E69D4380] + 40))
    {
      goto LABEL_35;
    }

    currentDevice4 = 0x1E69DC000uLL;
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
      currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] == 1)
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
      currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice5 userInterfaceIdiom])
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
          titleLabel = [(UIControl *)v27 titleLabel];
          [titleLabel setFont:v20];

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
    [emergencyCallButton setColorInsideRing:backgroundColor];
    [emergencyCallButton setColorOutsideRing:backgroundColor];
    [emergencyCallButton setAlphaInsideRing:v5];
    [emergencyCallButton setAlphaOutsideRing:v5];
    [emergencyCallButton setCornerRadius:4.0];
    v32 = self->_emergencyCallButton;
    self->_emergencyCallButton = v31;
    v33 = v31;

    label = [(UIControl *)v33 label];

    [label setFont:v20];
    [label setTextColor:v21];
    [label setText:v23];
    [label setAdjustsFontSizeToFitWidth:1];
    [label setMinimumScaleFactor:0.5];

    goto LABEL_62;
  }

  v10 = self->_emergencyCallButton;
  if (!v10)
  {
    goto LABEL_65;
  }

  [(UIControl *)v10 removeFromSuperview];
  backgroundColor = self->_emergencyCallButton;
  self->_emergencyCallButton = 0;
LABEL_64:

LABEL_65:

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_toggleForStatusField
{
  showsStatusField = [(SBUIPasscodeLockViewBase *)self showsStatusField];
  statusField = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  [statusField setHidden:!showsStatusField];

  statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  [statusSubtitleView setHidden:!showsStatusField];
}

- (void)_layoutForMinimizationState:(BOOL)state
{
  stateCopy = state;
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
  if (!stateCopy)
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

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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
  statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  text = [statusSubtitleView text];
  currentDevice2 = [text length];

  if (!currentDevice2)
  {
    goto LABEL_37;
  }

  [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleWidth];
  v30 = v29;
  v62.size.width = v11;
  v62.origin.x = v7;
  v62.size.height = v13;
  v62.origin.y = v9;
  [statusSubtitleView sizeThatFits:{v30, CGRectGetHeight(v62)}];
  v32 = v31;
  font = [statusSubtitleView font];
  [font lineHeight];
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

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
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
    font2 = [statusSubtitleView font];
    [font2 lineHeight];
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    goto LABEL_63;
  }

  if (!__sb__runningInSpringBoard())
  {
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
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
    label = [(UIControl *)self->_emergencyCallButton label];
    goto LABEL_62;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_61;
  }

LABEL_60:
  label = [(UIControl *)self->_emergencyCallButton titleLabel];
LABEL_62:
  v55 = label;
  [(SBUIPasscodeLockViewWithKeyboard *)self _largeTextEmergencyButtonMaxWidth];
  [v55 sizeThatFits:?];

LABEL_63:
  UIRectCenteredXInRectScale();
  [(UIControl *)self->_emergencyCallButton setFrame:0];
LABEL_64:
  [(SBUIPasscodeLockViewWithKeyboard *)self _layoutStatusView];
  [(SBUIPasscodeLockViewWithKeyboard *)self bringSubviewToFront:self->_statusField];
}

- (CGRect)_keyboardFrameForInterfaceOrientation:(int64_t)orientation
{
  [MEMORY[0x1E69DCBB8] keyboardSizeForInterfaceOrientation:?];
  v5 = v4;
  v7 = v6;
  [MEMORY[0x1E69DCBE0] deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:0];
  v9 = v7 + v8;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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
  _isBoundsPortraitOriented = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];
  currentDevice2 = __sb__runningInSpringBoard();
  if (currentDevice2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = v8;
  v10 = *(MEMORY[0x1E69D4380] + 280);
  if ((v7 & 1) == 0)
  {
  }

  if ((currentDevice2 & 1) == 0)
  {
  }

  if (v9 >= v10)
  {
    v11 = !_isBoundsPortraitOriented;
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
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
          if (_isBoundsPortraitOriented)
          {
            return result;
          }

          goto LABEL_34;
        }
      }

      else
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if (![currentDevice2 userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
        {
LABEL_30:

LABEL_34:
          v17 = MEMORY[0x1E69D3FE8];

          [v17 pinAlphanumericEntryFieldBottomYDistanceFromKeyboard:{_isBoundsPortraitOriented, result}];
          return result;
        }
      }

      goto LABEL_33;
    }
  }

  v11 = !_isBoundsPortraitOriented;
  result = 135.0;
  v13 = 322.0;
LABEL_25:
  if (!v11)
  {
    return v13;
  }

  return result;
}

- (double)_statusFieldHeightWithWidth:(double)width
{
  statusField = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  [statusField sizeThatFits:{width, 0.0}];
  v6 = v5;

  return v6;
}

- (double)_statusTitleWidth
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3 + -40.0;

  return v4;
}

- (double)_largeTextEmergencyButtonMaxWidth
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3 + -40.0;

  return v4;
}

- (void)updateStatusText:(id)text subtitle:(id)subtitle animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  subtitleCopy = subtitle;
  v31.receiver = self;
  v31.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v31 updateStatusText:textCopy subtitle:subtitleCopy animated:animatedCopy];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented])
  {
    goto LABEL_16;
  }

  statusField = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
  text = [statusField text];
  v14 = [textCopy isEqualToString:text];

  if (v14)
  {

    statusField = 0;
    _newStatusField = 0;
  }

  else
  {
    _newStatusField = [(SBUIPasscodeLockViewWithKeyboard *)self _newStatusField];
    [_newStatusField setText:textCopy];
    [(SBUIPasscodeLockViewWithKeyboard *)self setStatusField:_newStatusField];
  }

  statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  if (subtitleCopy)
  {
    [(SBUIPasscodeLockViewBase *)self _setStatusSubtitleText:subtitleCopy];
    _newStatusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self _newStatusSubtitleView];
    [(SBUIPasscodeLockViewWithKeyboard *)self setStatusSubtitleView:_newStatusSubtitleView];
    passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
    [passcodeAuthenticationView insertSubview:_newStatusSubtitleView aboveSubview:self->_statusFieldBackground];

    if (!statusField)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (_newStatusField)
    {
      passcodeAuthenticationView2 = [(SBUIPasscodeLockViewBase *)self passcodeAuthenticationView];
      [passcodeAuthenticationView2 insertSubview:_newStatusField aboveSubview:statusField];
    }

    goto LABEL_12;
  }

  [(SBUIPasscodeLockViewWithKeyboard *)self setStatusSubtitleView:0];
  _newStatusSubtitleView = 0;
  if (statusField)
  {
    goto LABEL_10;
  }

LABEL_12:
  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
  if (animatedCopy)
  {
    [_newStatusField setAlpha:0.0];
    v20 = MEMORY[0x1E69DD250];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__SBUIPasscodeLockViewWithKeyboard_updateStatusText_subtitle_animated___block_invoke;
    v28[3] = &unk_1E789DD98;
    v29 = statusField;
    v30 = statusSubtitleView;
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
    v23 = _newStatusField;
    v24 = _newStatusSubtitleView;
    [v21 animateWithDuration:0 delay:v22 options:0 animations:0.4 completion:0.17];
  }

  else
  {
    [statusField removeFromSuperview];
    [statusSubtitleView removeFromSuperview];
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
  statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
  text = [statusSubtitleView text];
  currentDevice2 = [text length];

  v48 = v11;
  v46 = v5;
  v47 = v9;
  if (currentDevice2)
  {
    [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleWidth];
    v23 = v22;
    v52.origin.x = v5;
    v52.origin.y = v7;
    v52.size.width = v9;
    v52.size.height = v11;
    [statusSubtitleView sizeThatFits:{v23, CGRectGetHeight(v52)}];
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
    [statusSubtitleView setFrame:{v28, CGRectGetMinY(v53) - v25 + -14.0, v30, v32, 0}];
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
  if (currentDevice2)
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    v39 = v46;
    if ([currentDevice2 userInterfaceIdiom])
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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

  statusField = [(SBUIPasscodeLockViewWithKeyboard *)self statusField];
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      v10 = 0;
      v11 = 27.0;
      v67 = 1;
      goto LABEL_23;
    }
  }

  v67 = v9 ^ 1;
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
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
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
    {
      v11 = 18.0;
      v10 = 1;
      goto LABEL_23;
    }
  }

  v10 = mainScreen ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v11 = 22.0;
  }

  else
  {
    v11 = 18.0;
  }

LABEL_23:
  currentDevice5 = __sb__runningInSpringBoard();
  if (currentDevice5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice4 userInterfaceIdiom])
    {
      v13 = 1;
      goto LABEL_31;
    }
  }

  v13 = currentDevice5 ^ 1;
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
    currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice5 userInterfaceIdiom])
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_41;
    }
  }

  v15 = v18 ^ 1;
  currentDevice6 = __sb__runningInSpringBoard();
  if (currentDevice6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v14 = currentDevice6 ^ 1;
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
    currentDevice6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] == 1)
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
  [statusField setFont:v21];

  if (v16)
  {
  }

  if (v14)
  {
  }

  currentDevice8 = 0x1E69DC000uLL;
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

  statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self statusSubtitleView];
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      v26 = 0;
      v27 = 22.0;
      v68 = 1;
      goto LABEL_73;
    }
  }

  v68 = v25 ^ 1;
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
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
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
    {
      v27 = 14.0;
      v26 = 1;
      goto LABEL_73;
    }
  }

  v26 = mainScreen ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 14.0;
  }

LABEL_73:
  currentDevice7 = __sb__runningInSpringBoard();
  if (currentDevice7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v28 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice4 userInterfaceIdiom])
    {
      v28 = 1;
      goto LABEL_81;
    }
  }

  v28 = currentDevice7 ^ 1;
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
      currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice7 userInterfaceIdiom])
      {
        v30 = 0;
        v29 = 1;
        goto LABEL_91;
      }
    }

    v29 = v33 ^ 1;
    currentDevice8 = __sb__runningInSpringBoard();
    if (currentDevice8)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v30 = currentDevice8 ^ 1;
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
      currentDevice8 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice8 userInterfaceIdiom] == 1)
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
  [statusSubtitleView setFont:v36];

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
    currentDevice9 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
    }

    else
    {
      v38 = SBFEffectiveHomeButtonType();

      if (v38 == 2)
      {
LABEL_118:
        titleLabel = [(UIControl *)self->_emergencyCallButton titleLabel];
        goto LABEL_120;
      }
    }
  }

  titleLabel = [(UIControl *)self->_emergencyCallButton label];
LABEL_120:
  v69 = titleLabel;
  v40 = MEMORY[0x1E69DB878];
  currentDevice10 = __sb__runningInSpringBoard();
  if (currentDevice10)
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
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
    {
      v43 = 12.0;
      v42 = 1;
      goto LABEL_129;
    }
  }

  v42 = currentDevice10 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v43 = 16.0;
  }

  else
  {
    v43 = 12.0;
  }

LABEL_129:
  currentDevice11 = __sb__runningInSpringBoard();
  if (currentDevice11)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v45 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v45 = 1;
      goto LABEL_137;
    }
  }

  v45 = currentDevice11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = MEMORY[0x1E69DDC58];
    goto LABEL_153;
  }

LABEL_137:
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
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
    currentDevice11 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v47 = 0;
      v46 = 1;
      goto LABEL_147;
    }
  }

  v46 = mainScreen ^ 1;
  currentDevice7 = __sb__runningInSpringBoard();
  if (currentDevice7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v47 = currentDevice7 ^ 1;
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
    currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] == 1)
    {
      v49 = MEMORY[0x1E69DDC28];
      v48 = 1;
      goto LABEL_153;
    }
  }

  v48 = v51 ^ 1;
  v49 = MEMORY[0x1E69DDC30];
LABEL_153:
  currentDevice12 = [v40 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*v49, v43)}];
  [v69 setFont:currentDevice12];

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
  currentDevice13 = 0x1E69DC000;
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
    currentDevice12 = [MEMORY[0x1E69DC938] currentDevice];
    v58 = [currentDevice12 userInterfaceIdiom] == 1;
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
    currentDevice13 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SBUIPasscodeLockViewWithKeyboard;
  [(SBUIPasscodeLockViewWithKeyboard *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(SBUIPasscodeLockViewWithKeyboard *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(SBUIPasscodeLockViewWithKeyboard *)self _updateFont];
      [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
    }
  }
}

- (void)_updateKeyboardHeightOffsetForKeyboardNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;

  if (v7 > 0.0)
  {
    self->_keyboardHeightOffset = v7;
  }
}

- (void)_keyboardWillChangeFrameNotification:(id)notification
{
  [(SBUIPasscodeLockViewWithKeyboard *)self _updateKeyboardHeightOffsetForKeyboardNotification:notification];

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_keyboardWillShowNotification:(id)notification
{
  self->_keyboardVisible = 1;
  notificationCopy = notification;
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:1];
  [(SBUIPasscodeLockViewWithKeyboard *)self _updateKeyboardHeightOffsetForKeyboardNotification:notificationCopy];

  [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
}

- (void)_keyboardDidHideNotification:(id)notification
{
  [(SBUIPasscodeLockViewWithKeyboard *)self _setKeyboardTracksLockView:0];
  if (!self->_isResigningResponderStatus)
  {
    self->_keyboardVisible = 0;

    [(SBUIPasscodeLockViewWithKeyboard *)self setNeedsLayout];
  }
}

@end