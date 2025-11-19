@interface DevicePINPane
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)hasText;
- (BOOL)resignFirstResponder;
- (DevicePINPane)initWithFrame:(CGRect)a3;
- (id)specifierLabel;
- (void)_setKeypadState:(BOOL)a3 animated:(BOOL)a4;
- (void)_setPlaysKeyboardClicks:(BOOL)a3;
- (void)activateKeypadView;
- (void)deactivateKeypadView;
- (void)dealloc;
- (void)delayForTextEntryAnimationsWithCompletion:(id)a3;
- (void)dismissKeypad;
- (void)insertText:(id)a3;
- (void)layoutSubviews;
- (void)pinView:(id)a3 pinEntered:(id)a4;
- (void)pinView:(id)a3 pinValueChanged:(id)a4;
- (void)setKeyboardIsNumeric:(BOOL)a3;
- (void)setKeyboardUserInteractionEnabled:(BOOL)a3;
- (void)setPINPolicyString:(id)a3 visible:(BOOL)a4;
- (void)setSimplePIN:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 showsOptions:(BOOL)a6;
- (void)setTitle:(id)a3;
- (void)showError:(id)a3 error:(id)a4 isBlocked:(BOOL)a5 animate:(BOOL)a6;
- (void)slideToNewPasscodeField:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 transition:(int)a6 showsOptionsButton:(BOOL)a7;
- (void)transitionToSimplePIN:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 showsOptions:(BOOL)a6;
- (void)transitionViewDidComplete:(id)a3;
@end

@implementation DevicePINPane

- (id)specifierLabel
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v3 = [WeakRetained pinInstructionsPrompt];

  return v3;
}

- (void)_setPlaysKeyboardClicks:(BOOL)a3
{
  inPropertyData = a3;
  inSpecifier = 1104;
  AudioServicesSetProperty(0x61637421u, 4u, &inSpecifier, 4u, &inPropertyData);
}

- (DevicePINPane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = DevicePINPane;
  v7 = [(PSEditingPane *)&v16 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(DevicePINPane *)v7 setAutocapitalizationType:0];
    v9 = 1;
    [(DevicePINPane *)v8 setAutocorrectionType:1];
    [(DevicePINPane *)v8 setAutoresizingMask:0];
    v10 = [objc_alloc(MEMORY[0x1E69DD228]) initWithFrame:{x, y, width, height}];
    transitionView = v8->_transitionView;
    v8->_transitionView = v10;

    [(DevicePINPane *)v8 addSubview:v8->_transitionView];
    [(DevicePINPane *)v8 setAutoresizingMask:18];
    [(UITransitionView *)v8->_transitionView setAutoresizingMask:18];
    v12 = CFPreferencesCopyValue(@"keyboard", @"com.apple.preferences.sounds", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v13 = v12;
    if (v12)
    {
      v9 = [v12 BOOLValue];
      v8->_playSound = v9;
    }

    else
    {
      v8->_playSound = 1;
    }

    [(DevicePINPane *)v8 _setPlaysKeyboardClicks:v9];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v8 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(PINEntryView *)self->_pinView setDelegate:0];
  [(DevicePINPane *)self _setPlaysKeyboardClicks:0];
  [(DevicePINPane *)self dismissKeypad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DevicePINPane;
  [(DevicePINPane *)&v4 dealloc];
}

- (void)setKeyboardIsNumeric:(BOOL)a3
{
  if (self->_numericKeyboard != a3)
  {
    v3 = a3;
    self->_numericKeyboard = a3;
    v5 = +[PSListController appearance];
    v6 = [v5 usesDarkTheme];

    v7 = v6;
    if (v3)
    {
      v8 = 127;
      if (PSUsePadStylePIN())
      {
        v7 = 127;
      }
    }

    else
    {
      v8 = 0;
    }

    [(DevicePINPane *)self setKeyboardType:v8];
    [(DevicePINPane *)self setKeyboardAppearance:v7];
    if ([(DevicePINPane *)self requiresKeyboard])
    {
      v9 = [(DevicePINPane *)self pinView];
      [v9 setTextFieldKeyboardType:v8];

      v10 = [(DevicePINPane *)self pinView];
      [v10 setTextFieldKeyboardAppearance:v7];
    }
  }
}

- (void)activateKeypadView
{
  if (!self->_keypadActive)
  {
    if (!self->_keypadContainerView)
    {
      v3 = objc_alloc_init(DevicePINKeypad);
      keypad = self->_keypad;
      self->_keypad = &v3->super;
      v5 = v3;

      v6 = [[DevicePINKeypadContainerView alloc] initWithKeypad:v5];
      keypadContainerView = self->_keypadContainerView;
      self->_keypadContainerView = v6;
    }

    [(UIKeyboard *)self->_keypad activate];
    [(PINEntryView *)self->_pinView setBlocked:1];
    self->_keypadActive = 1;
    v8 = [(DevicePINKeypadContainerView *)self->_keypadContainerView superview];

    if (!v8)
    {
      v9 = self->_keypadContainerView;

      [(DevicePINPane *)self addSubview:v9];
    }
  }
}

- (void)deactivateKeypadView
{
  if (self->_keypadActive)
  {
    [(PINEntryView *)self->_pinView setBlocked:0];
    [(UIKeyboard *)self->_keypad deactivate];
    self->_keypadActive = 0;
  }
}

- (void)transitionToSimplePIN:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 showsOptions:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  pinView = self->_pinView;
  if (pinView)
  {
    [(PINEntryView *)pinView setDelegate:0];
    [(PINEntryView *)self->_pinView removeFromSuperview];
    v12 = self->_pinView;
    self->_pinView = 0;
  }

  self->_simplePIN = a3;
  *(&self->super + 424) = *(&self->super + 424) & 0xFE | a4;
  if (!self->_simplePIN)
  {
    v18 = objc_alloc_init(PSTextFieldPINView);
    [(PSTextFieldPINView *)v18 setUsesNumericKeyboard:v7];
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [PSBulletedPINView alloc];
  v14 = [(DevicePINPane *)self PINLength];
  v18 = [(PSBulletedPINView *)v13 initWithFrame:v14 numberOfFields:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
LABEL_7:
    v15 = [(DevicePINPane *)self passcodeOptionsTitle];
    [(PINView *)v18 setOptionsButtonTitle:v15];

    v16 = [(DevicePINPane *)self passcodeOptionsHandler];
    [(PINView *)v18 setPasscodeOptionsHandler:v16];
  }

LABEL_8:
  [(DevicePINPane *)self setPinView:v18];
  v17 = [(DevicePINPane *)self specifierLabel];
  [(DevicePINPane *)self setTitle:v17];

  [(DevicePINPane *)self setKeyboardIsNumeric:v7];
  [(DevicePINPane *)self _setKeypadState:(*(&self->super + 424) & 1) == 0 animated:1];
  [(PINEntryView *)self->_pinView setDelegate:self];
  [(UITransitionView *)self->_transitionView addSubview:self->_pinView];
  [(DevicePINPane *)self setNeedsLayout];
}

- (void)setSimplePIN:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 showsOptions:(BOOL)a6
{
  if (!self->_pinView)
  {
    [(DevicePINPane *)self transitionToSimplePIN:a3 requiresKeyboard:a4 numericOnly:a5 showsOptions:a6];
  }
}

- (void)_setKeypadState:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    [(DevicePINPane *)self activateKeypadView];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      if (v4)
      {
        UIKeyboardOrderOutAutomatic();
      }

      else
      {
        UIKeyboardOrderOutAutomaticSkippingAnimation();
      }
    }
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = "";
  v27 = 0u;
  v28 = 0u;
  [(DevicePINKeypadContainerView *)self->_keypadContainerView frame];
  *&v27 = v7;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  if ((PSUsePadStylePIN() & 1) != 0 || !self->_keypadActive)
  {
    if (v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v5)
    {
      v11 = v24[4];
      v24[5] = v24[5] - v24[7];
      [(DevicePINKeypadContainerView *)self->_keypadContainerView setFrame:v11];
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__DevicePINPane__setKeypadState_animated___block_invoke;
      aBlock[3] = &unk_1E71DCD18;
      objc_copyWeak(&v21, &location);
      aBlock[4] = &v23;
      v12 = _Block_copy(aBlock);
      v13 = v12;
      if (v4)
      {
        v14 = MEMORY[0x1E69DD250];
        [MEMORY[0x1E69DD228] defaultDurationForTransition:7];
        [v14 animateWithDuration:v13 animations:?];
      }

      else
      {
        (*(v12 + 2))(v12);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__DevicePINPane__setKeypadState_animated___block_invoke_2;
    v18[3] = &unk_1E71DCD18;
    objc_copyWeak(&v19, &location);
    v18[4] = &v23;
    v15 = _Block_copy(v18);
    v16 = v15;
    if (v4)
    {
      v17 = MEMORY[0x1E69DD250];
      [MEMORY[0x1E69DD228] defaultDurationForTransition:7];
      [v17 animateWithDuration:v16 animations:?];
    }

    else
    {
      (*(v15 + 2))(v15);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  if (UIKeyboardAutomaticIsOffScreen())
  {
    if (v4)
    {
      UIKeyboardOrderInAutomatic();
    }

    else
    {
      UIKeyboardOrderInAutomaticSkippingAnimation();
    }
  }

  if (self->_keypadActive)
  {
    [(DevicePINPane *)self dismissKeypad];
    [(DevicePINPane *)self setNeedsLayout];
  }

LABEL_25:
  _Block_object_dispose(&v23, 8);
}

void __42__DevicePINPane__setKeypadState_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 40) = *(*(*(a1 + 32) + 8) + 56) + *(*(*(a1 + 32) + 8) + 40);
  [WeakRetained[66] setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
}

void __42__DevicePINPane__setKeypadState_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 40) = *(*(*(a1 + 32) + 8) + 56) + *(*(*(a1 + 32) + 8) + 40);
  [WeakRetained[66] setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
}

- (void)dismissKeypad
{
  [(DevicePINPane *)self deactivateKeypadView];
  keypadContainerView = self->_keypadContainerView;
  if (keypadContainerView)
  {
    [(DevicePINKeypadContainerView *)keypadContainerView removeFromSuperview];
    v4 = self->_keypadContainerView;
    self->_keypadContainerView = 0;

    keypad = self->_keypad;
    self->_keypad = 0;
  }
}

- (BOOL)canBecomeFirstResponder
{
  if (*(&self->super + 424))
  {
    return [(PINEntryView *)self->_pinView canBecomeFirstResponder];
  }

  else
  {
    return self->_keypadActive;
  }
}

- (BOOL)becomeFirstResponder
{
  if (*(&self->super + 424))
  {
    pinView = self->_pinView;

    return [(PINEntryView *)pinView becomeFirstResponder];
  }

  else
  {
    if (!self->_keypadActive)
    {
      return 0;
    }

    UIKeyboardDisableAutomaticAppearance();
    v6.receiver = self;
    v6.super_class = DevicePINPane;
    v3 = [(DevicePINPane *)&v6 becomeFirstResponder];
    if (!v3)
    {
      UIKeyboardEnableAutomaticAppearance();
    }

    [(DevicePINKeypadContainerView *)self->_keypadContainerView setNeedsLayout];
    return v3;
  }
}

- (BOOL)resignFirstResponder
{
  [(DevicePINPane *)self setKeyboardUserInteractionEnabled:1];
  if ([(DevicePINPane *)self isFirstResponder])
  {
    v5.receiver = self;
    v5.super_class = DevicePINPane;
    if ([(DevicePINPane *)&v5 resignFirstResponder])
    {
      UIKeyboardEnableAutomaticAppearance();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = [(PINEntryView *)self->_pinView resignFirstResponder];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      UIKeyboardOrderOutAutomatic();
    }
  }

  return v3;
}

- (void)setKeyboardUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    v6 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v6 setUserInteractionEnabled:v3];
  }

  else
  {
    keypad = self->_keypad;

    [(UIKeyboard *)keypad setUserInteractionEnabled:v3];
  }
}

- (void)showError:(id)a3 error:(id)a4 isBlocked:(BOOL)a5 animate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12 = a3;
  v10 = a4;
  isBlocked = self->_isBlocked;
  if (isBlocked == v7)
  {
    if ((isBlocked & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    [(PINEntryView *)self->_pinView showError:v10 animate:v6];
    goto LABEL_6;
  }

  self->_isBlocked = v7;
  [(DevicePINPane *)self setKeyboardUserInteractionEnabled:v7 ^ 1u];
  [(PINEntryView *)self->_pinView setBlocked:self->_isBlocked];
  if (self->_isBlocked)
  {
    goto LABEL_5;
  }

LABEL_6:
  [(PINEntryView *)self->_pinView setStringValue:&stru_1EFE45030];
}

- (void)setPINPolicyString:(id)a3 visible:(BOOL)a4
{
  [(PINEntryView *)self->_pinView setPINPolicyString:a3 visible:a4];
  pinView = self->_pinView;

  [(PINEntryView *)pinView setStringValue:&stru_1EFE45030];
}

- (void)setTitle:(id)a3
{
  pinView = self->_pinView;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = [WeakRetained pinInstructionsPromptFont];
  [(PINEntryView *)pinView setTitle:v5 font:v6];
}

- (void)slideToNewPasscodeField:(BOOL)a3 requiresKeyboard:(BOOL)a4 numericOnly:(BOOL)a5 transition:(int)a6 showsOptionsButton:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  *(&self->super + 424) = *(&self->super + 424) & 0xFE | a4;
  self->_simplePIN = a3;
  v32 = [(DevicePINPane *)self pinView];
  [v32 getCurrentTitleFontSize];
  v11 = v10;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    UIKeyboardDisableAutomaticAppearance();
  }

  v12 = objc_alloc_init(MEMORY[0x1E69DCF70]);
  [(UITransitionView *)self->_transitionView addSubview:v12];
  [v32 frame];
  [v12 setFrame:?];
  [v12 captureSnapshotOfView:v32 withSnapshotType:1];
  [v32 removeFromSuperview];
  [(DevicePINPane *)self hideFailedAttempts];
  [(DevicePINPane *)self setPINPolicyString:0 visible:0];
  self->_transitioning = 1;
  [(UITransitionView *)self->_transitionView setDelegate:self];
  v13 = [(DevicePINPane *)self pinView];
  [v13 setDelegate:0];

  v31 = v8;
  if (self->_simplePIN)
  {
    v14 = [PSBulletedPINView alloc];
    [v32 frame];
    v19 = [(PSBulletedPINView *)v14 initWithFrame:[(DevicePINPane *)self PINLength] numberOfFields:v15, v16, v17, v18];
  }

  else
  {
    v20 = [PSTextFieldPINView alloc];
    [v32 frame];
    v19 = [(PSTextFieldPINView *)v20 initWithFrame:?];
    [(PSBulletedPINView *)v19 setUsesNumericKeyboard:v8];
  }

  [(PINView *)v19 setDelegate:self];
  [(PSBulletedPINView *)v19 setBlocked:(*(&self->super + 424) & 1) == 0];
  v21 = MEMORY[0x1E69DB878];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v23 = [WeakRetained pinInstructionsPromptFont];
  v24 = [v23 fontDescriptor];
  v25 = [v21 fontWithDescriptor:v24 size:v11];

  v26 = [(DevicePINPane *)self specifierLabel];
  [(PINView *)v19 setTitle:v26 font:v25];

  [(PINView *)v19 setShowsOptionsButton:v7];
  if (v7)
  {
    v27 = [(DevicePINPane *)self passcodeOptionsTitle];
    [(PINView *)v19 setOptionsButtonTitle:v27];

    v28 = [(DevicePINPane *)self passcodeOptionsHandler];
    [(PINView *)v19 setPasscodeOptionsHandler:v28];
  }

  [(PSBulletedPINView *)v19 layoutIfNeeded];
  [(DevicePINPane *)self setPinView:v19];
  [(UITransitionView *)self->_transitionView transition:a6 fromView:v12 toView:v19];
  [(DevicePINPane *)self setKeyboardIsNumeric:v31];
  v29 = PSUsePadStylePIN();
  [(DevicePINPane *)self _setKeypadState:(*(&self->super + 424) & 1) == 0 animated:v29];
  if (v29)
  {
    [(DevicePINPane *)self becomeFirstResponder];
  }

  [(DevicePINPane *)self setNeedsLayout];
}

- (void)transitionViewDidComplete:(id)a3
{
  self->_transitioning = 0;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    UIKeyboardEnableAutomaticAppearance();
  }

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 sf_isiPhone];

  if (v5)
  {

    [(DevicePINPane *)self becomeFirstResponder];
  }
}

- (BOOL)hasText
{
  v2 = [(PINEntryView *)self->_pinView stringValue];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  if (!self->_isBlocked)
  {
    v8 = v4;
    v5 = [(PINEntryView *)self->_pinView stringValue];
    v6 = [v5 length];
    if (v6 >= [(DevicePINPane *)self PINLength])
    {
      simplePIN = self->_simplePIN;

      v4 = v8;
      if (simplePIN)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    [(PINEntryView *)self->_pinView hideError];
    [(PINEntryView *)self->_pinView appendString:v8];
    v4 = v8;
  }

LABEL_6:
}

- (void)delayForTextEntryAnimationsWithCompletion:(id)a3
{
  v4 = a3;
  [(PINEntryView *)self->_pinView recursivelyForceDisplayIfNeeded];
  [MEMORY[0x1E6979518] flush];
  [(DevicePINPane *)self setKeyboardUserInteractionEnabled:0];
  v5 = dispatch_time(0, 76000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__DevicePINPane_delayForTextEntryAnimationsWithCompletion___block_invoke;
  v7[3] = &unk_1E71DD4D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

uint64_t __59__DevicePINPane_delayForTextEntryAnimationsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setKeyboardUserInteractionEnabled:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)pinView:(id)a3 pinValueChanged:(id)a4
{
  if (!self->_simplePIN)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v7 = [v6 length];

    [WeakRetained adjustButtonsForPasswordLength:v7];
  }
}

- (void)pinView:(id)a3 pinEntered:(id)a4
{
  v5 = a4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__DevicePINPane_pinView_pinEntered___block_invoke;
  v12 = &unk_1E71DC570;
  v13 = self;
  v14 = v5;
  v6 = v5;
  v7 = _Block_copy(&v9);
  v8 = v7;
  if (self->_simplePIN)
  {
    [(DevicePINPane *)self delayForTextEntryAnimationsWithCompletion:v7, v9, v10, v11, v12, v13, v14];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

void __36__DevicePINPane_pinView_pinEntered___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  [WeakRetained pinEntered:*(a1 + 40)];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = DevicePINPane;
  [(DevicePINPane *)&v47 layoutSubviews];
  [(DevicePINPane *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PSEditingPane *)self viewController];
  v12 = [v11 view];
  v13 = [v12 safeAreaLayoutGuide];
  [v13 layoutFrame];
  v15 = v14;

  v16 = v6 + v15;
  v17 = v10 - v15;
  v18 = v4;
  [(UITransitionView *)self->_transitionView setFrame:v4, v16, v8, v10 - v15];
  [(UITransitionView *)self->_transitionView bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  keypadContainerView = self->_keypadContainerView;
  if (keypadContainerView)
  {
    v27 = *MEMORY[0x1E695F058];
    [(DevicePINKeypadContainerView *)keypadContainerView sizeThatFits:v8, v17];
    v28 = v16;
    v45 = v16;
    v46 = v21;
    v30 = v29;
    v32 = v31;
    v48.origin.x = v18;
    v48.origin.y = v28;
    v48.size.width = v8;
    v48.size.height = v17;
    MaxY = CGRectGetMaxY(v48);
    v44 = v8;
    v34 = v25;
    v35 = v23;
    v36 = PSRoundToPixel(MaxY - v32);
    [(DevicePINKeypadContainerView *)self->_keypadContainerView setFrame:v27, v36, v30, v32];
    v49.origin.x = v27;
    v49.origin.y = v36;
    v23 = v35;
    v25 = v34;
    v49.size.width = v30;
    v49.size.height = v32;
    v21 = v46;
    MinY = CGRectGetMinY(v49);
    v50.origin.x = v18;
    v50.size.width = v44;
    v50.origin.y = v45;
    v50.size.height = v17;
    v38 = MinY - CGRectGetMinY(v50);
LABEL_3:
    v39 = PSRoundToPixel(v38);
    goto LABEL_6;
  }

  v39 = v19;
  if ([(DevicePINPane *)self requiresKeyboard]&& (PSUsePadStylePIN() & 1) == 0)
  {
    v40 = MEMORY[0x1E69DCBB8];
    v41 = [MEMORY[0x1E69DC668] sharedApplication];
    [v40 sizeForInterfaceOrientation:{objc_msgSend(v41, "statusBarOrientation")}];
    v43 = v42;

    v38 = v39 - v43;
    goto LABEL_3;
  }

LABEL_6:
  [(PINEntryView *)self->_pinView setFrame:v21, v23, v25, v39];
}

@end