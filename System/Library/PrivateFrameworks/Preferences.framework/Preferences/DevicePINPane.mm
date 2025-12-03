@interface DevicePINPane
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)hasText;
- (BOOL)resignFirstResponder;
- (DevicePINPane)initWithFrame:(CGRect)frame;
- (id)specifierLabel;
- (void)_setKeypadState:(BOOL)state animated:(BOOL)animated;
- (void)_setPlaysKeyboardClicks:(BOOL)clicks;
- (void)activateKeypadView;
- (void)deactivateKeypadView;
- (void)dealloc;
- (void)delayForTextEntryAnimationsWithCompletion:(id)completion;
- (void)dismissKeypad;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)pinView:(id)view pinEntered:(id)entered;
- (void)pinView:(id)view pinValueChanged:(id)changed;
- (void)setKeyboardIsNumeric:(BOOL)numeric;
- (void)setKeyboardUserInteractionEnabled:(BOOL)enabled;
- (void)setPINPolicyString:(id)string visible:(BOOL)visible;
- (void)setSimplePIN:(BOOL)n requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only showsOptions:(BOOL)options;
- (void)setTitle:(id)title;
- (void)showError:(id)error error:(id)a4 isBlocked:(BOOL)blocked animate:(BOOL)animate;
- (void)slideToNewPasscodeField:(BOOL)field requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only transition:(int)transition showsOptionsButton:(BOOL)button;
- (void)transitionToSimplePIN:(BOOL)n requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only showsOptions:(BOOL)options;
- (void)transitionViewDidComplete:(id)complete;
@end

@implementation DevicePINPane

- (id)specifierLabel
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  pinInstructionsPrompt = [WeakRetained pinInstructionsPrompt];

  return pinInstructionsPrompt;
}

- (void)_setPlaysKeyboardClicks:(BOOL)clicks
{
  inPropertyData = clicks;
  inSpecifier = 1104;
  AudioServicesSetProperty(0x61637421u, 4u, &inSpecifier, 4u, &inPropertyData);
}

- (DevicePINPane)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16.receiver = self;
  v16.super_class = DevicePINPane;
  v7 = [(PSEditingPane *)&v16 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(DevicePINPane *)v7 setAutocapitalizationType:0];
    bOOLValue = 1;
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
      bOOLValue = [v12 BOOLValue];
      v8->_playSound = bOOLValue;
    }

    else
    {
      v8->_playSound = 1;
    }

    [(DevicePINPane *)v8 _setPlaysKeyboardClicks:bOOLValue];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(PINEntryView *)self->_pinView setDelegate:0];
  [(DevicePINPane *)self _setPlaysKeyboardClicks:0];
  [(DevicePINPane *)self dismissKeypad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DevicePINPane;
  [(DevicePINPane *)&v4 dealloc];
}

- (void)setKeyboardIsNumeric:(BOOL)numeric
{
  if (self->_numericKeyboard != numeric)
  {
    numericCopy = numeric;
    self->_numericKeyboard = numeric;
    v5 = +[PSListController appearance];
    usesDarkTheme = [v5 usesDarkTheme];

    v7 = usesDarkTheme;
    if (numericCopy)
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
      pinView = [(DevicePINPane *)self pinView];
      [pinView setTextFieldKeyboardType:v8];

      pinView2 = [(DevicePINPane *)self pinView];
      [pinView2 setTextFieldKeyboardAppearance:v7];
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
    superview = [(DevicePINKeypadContainerView *)self->_keypadContainerView superview];

    if (!superview)
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

- (void)transitionToSimplePIN:(BOOL)n requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only showsOptions:(BOOL)options
{
  optionsCopy = options;
  onlyCopy = only;
  pinView = self->_pinView;
  if (pinView)
  {
    [(PINEntryView *)pinView setDelegate:0];
    [(PINEntryView *)self->_pinView removeFromSuperview];
    v12 = self->_pinView;
    self->_pinView = 0;
  }

  self->_simplePIN = n;
  *(&self->super + 424) = *(&self->super + 424) & 0xFE | keyboard;
  if (!self->_simplePIN)
  {
    v18 = objc_alloc_init(PSTextFieldPINView);
    [(PSTextFieldPINView *)v18 setUsesNumericKeyboard:onlyCopy];
    if (!optionsCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [PSBulletedPINView alloc];
  pINLength = [(DevicePINPane *)self PINLength];
  v18 = [(PSBulletedPINView *)v13 initWithFrame:pINLength numberOfFields:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (optionsCopy)
  {
LABEL_7:
    passcodeOptionsTitle = [(DevicePINPane *)self passcodeOptionsTitle];
    [(PINView *)v18 setOptionsButtonTitle:passcodeOptionsTitle];

    passcodeOptionsHandler = [(DevicePINPane *)self passcodeOptionsHandler];
    [(PINView *)v18 setPasscodeOptionsHandler:passcodeOptionsHandler];
  }

LABEL_8:
  [(DevicePINPane *)self setPinView:v18];
  specifierLabel = [(DevicePINPane *)self specifierLabel];
  [(DevicePINPane *)self setTitle:specifierLabel];

  [(DevicePINPane *)self setKeyboardIsNumeric:onlyCopy];
  [(DevicePINPane *)self _setKeypadState:(*(&self->super + 424) & 1) == 0 animated:1];
  [(PINEntryView *)self->_pinView setDelegate:self];
  [(UITransitionView *)self->_transitionView addSubview:self->_pinView];
  [(DevicePINPane *)self setNeedsLayout];
}

- (void)setSimplePIN:(BOOL)n requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only showsOptions:(BOOL)options
{
  if (!self->_pinView)
  {
    [(DevicePINPane *)self transitionToSimplePIN:n requiresKeyboard:keyboard numericOnly:only showsOptions:options];
  }
}

- (void)_setKeypadState:(BOOL)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if (state)
  {
    [(DevicePINPane *)self activateKeypadView];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      if (animatedCopy)
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
    if (stateCopy)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (stateCopy)
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
      if (animatedCopy)
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
    if (animatedCopy)
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
    if (animatedCopy)
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
    becomeFirstResponder = [(DevicePINPane *)&v6 becomeFirstResponder];
    if (!becomeFirstResponder)
    {
      UIKeyboardEnableAutomaticAppearance();
    }

    [(DevicePINKeypadContainerView *)self->_keypadContainerView setNeedsLayout];
    return becomeFirstResponder;
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
    resignFirstResponder = [(PINEntryView *)self->_pinView resignFirstResponder];
    if (UIKeyboardAutomaticIsOnScreen())
    {
      UIKeyboardOrderOutAutomatic();
    }
  }

  return resignFirstResponder;
}

- (void)setKeyboardUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard setUserInteractionEnabled:enabledCopy];
  }

  else
  {
    keypad = self->_keypad;

    [(UIKeyboard *)keypad setUserInteractionEnabled:enabledCopy];
  }
}

- (void)showError:(id)error error:(id)a4 isBlocked:(BOOL)blocked animate:(BOOL)animate
{
  animateCopy = animate;
  blockedCopy = blocked;
  errorCopy = error;
  v10 = a4;
  isBlocked = self->_isBlocked;
  if (isBlocked == blockedCopy)
  {
    if ((isBlocked & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    [(PINEntryView *)self->_pinView showError:v10 animate:animateCopy];
    goto LABEL_6;
  }

  self->_isBlocked = blockedCopy;
  [(DevicePINPane *)self setKeyboardUserInteractionEnabled:blockedCopy ^ 1u];
  [(PINEntryView *)self->_pinView setBlocked:self->_isBlocked];
  if (self->_isBlocked)
  {
    goto LABEL_5;
  }

LABEL_6:
  [(PINEntryView *)self->_pinView setStringValue:&stru_1EFE45030];
}

- (void)setPINPolicyString:(id)string visible:(BOOL)visible
{
  [(PINEntryView *)self->_pinView setPINPolicyString:string visible:visible];
  pinView = self->_pinView;

  [(PINEntryView *)pinView setStringValue:&stru_1EFE45030];
}

- (void)setTitle:(id)title
{
  pinView = self->_pinView;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  pinInstructionsPromptFont = [WeakRetained pinInstructionsPromptFont];
  [(PINEntryView *)pinView setTitle:titleCopy font:pinInstructionsPromptFont];
}

- (void)slideToNewPasscodeField:(BOOL)field requiresKeyboard:(BOOL)keyboard numericOnly:(BOOL)only transition:(int)transition showsOptionsButton:(BOOL)button
{
  buttonCopy = button;
  onlyCopy = only;
  *(&self->super + 424) = *(&self->super + 424) & 0xFE | keyboard;
  self->_simplePIN = field;
  pinView = [(DevicePINPane *)self pinView];
  [pinView getCurrentTitleFontSize];
  v11 = v10;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    UIKeyboardDisableAutomaticAppearance();
  }

  v12 = objc_alloc_init(MEMORY[0x1E69DCF70]);
  [(UITransitionView *)self->_transitionView addSubview:v12];
  [pinView frame];
  [v12 setFrame:?];
  [v12 captureSnapshotOfView:pinView withSnapshotType:1];
  [pinView removeFromSuperview];
  [(DevicePINPane *)self hideFailedAttempts];
  [(DevicePINPane *)self setPINPolicyString:0 visible:0];
  self->_transitioning = 1;
  [(UITransitionView *)self->_transitionView setDelegate:self];
  pinView2 = [(DevicePINPane *)self pinView];
  [pinView2 setDelegate:0];

  v31 = onlyCopy;
  if (self->_simplePIN)
  {
    v14 = [PSBulletedPINView alloc];
    [pinView frame];
    v19 = [(PSBulletedPINView *)v14 initWithFrame:[(DevicePINPane *)self PINLength] numberOfFields:v15, v16, v17, v18];
  }

  else
  {
    v20 = [PSTextFieldPINView alloc];
    [pinView frame];
    v19 = [(PSTextFieldPINView *)v20 initWithFrame:?];
    [(PSBulletedPINView *)v19 setUsesNumericKeyboard:onlyCopy];
  }

  [(PINView *)v19 setDelegate:self];
  [(PSBulletedPINView *)v19 setBlocked:(*(&self->super + 424) & 1) == 0];
  v21 = MEMORY[0x1E69DB878];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  pinInstructionsPromptFont = [WeakRetained pinInstructionsPromptFont];
  fontDescriptor = [pinInstructionsPromptFont fontDescriptor];
  v25 = [v21 fontWithDescriptor:fontDescriptor size:v11];

  specifierLabel = [(DevicePINPane *)self specifierLabel];
  [(PINView *)v19 setTitle:specifierLabel font:v25];

  [(PINView *)v19 setShowsOptionsButton:buttonCopy];
  if (buttonCopy)
  {
    passcodeOptionsTitle = [(DevicePINPane *)self passcodeOptionsTitle];
    [(PINView *)v19 setOptionsButtonTitle:passcodeOptionsTitle];

    passcodeOptionsHandler = [(DevicePINPane *)self passcodeOptionsHandler];
    [(PINView *)v19 setPasscodeOptionsHandler:passcodeOptionsHandler];
  }

  [(PSBulletedPINView *)v19 layoutIfNeeded];
  [(DevicePINPane *)self setPinView:v19];
  [(UITransitionView *)self->_transitionView transition:transition fromView:v12 toView:v19];
  [(DevicePINPane *)self setKeyboardIsNumeric:v31];
  v29 = PSUsePadStylePIN();
  [(DevicePINPane *)self _setKeypadState:(*(&self->super + 424) & 1) == 0 animated:v29];
  if (v29)
  {
    [(DevicePINPane *)self becomeFirstResponder];
  }

  [(DevicePINPane *)self setNeedsLayout];
}

- (void)transitionViewDidComplete:(id)complete
{
  self->_transitioning = 0;
  if ([(DevicePINPane *)self requiresKeyboard])
  {
    UIKeyboardEnableAutomaticAppearance();
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isiPhone = [currentDevice sf_isiPhone];

  if (sf_isiPhone)
  {

    [(DevicePINPane *)self becomeFirstResponder];
  }
}

- (BOOL)hasText
{
  stringValue = [(PINEntryView *)self->_pinView stringValue];
  v3 = [stringValue length] != 0;

  return v3;
}

- (void)insertText:(id)text
{
  textCopy = text;
  if (!self->_isBlocked)
  {
    v8 = textCopy;
    stringValue = [(PINEntryView *)self->_pinView stringValue];
    v6 = [stringValue length];
    if (v6 >= [(DevicePINPane *)self PINLength])
    {
      simplePIN = self->_simplePIN;

      textCopy = v8;
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
    textCopy = v8;
  }

LABEL_6:
}

- (void)delayForTextEntryAnimationsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PINEntryView *)self->_pinView recursivelyForceDisplayIfNeeded];
  [MEMORY[0x1E6979518] flush];
  [(DevicePINPane *)self setKeyboardUserInteractionEnabled:0];
  v5 = dispatch_time(0, 76000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__DevicePINPane_delayForTextEntryAnimationsWithCompletion___block_invoke;
  v7[3] = &unk_1E71DD4D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)pinView:(id)view pinValueChanged:(id)changed
{
  if (!self->_simplePIN)
  {
    changedCopy = changed;
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v7 = [changedCopy length];

    [WeakRetained adjustButtonsForPasswordLength:v7];
  }
}

- (void)pinView:(id)view pinEntered:(id)entered
{
  enteredCopy = entered;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__DevicePINPane_pinView_pinEntered___block_invoke;
  v12 = &unk_1E71DC570;
  selfCopy = self;
  v14 = enteredCopy;
  v6 = enteredCopy;
  v7 = _Block_copy(&v9);
  v8 = v7;
  if (self->_simplePIN)
  {
    [(DevicePINPane *)self delayForTextEntryAnimationsWithCompletion:v7, v9, v10, v11, v12, selfCopy, v14];
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
  viewController = [(PSEditingPane *)self viewController];
  view = [viewController view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [v40 sizeForInterfaceOrientation:{objc_msgSend(mEMORY[0x1E69DC668], "statusBarOrientation")}];
    v43 = v42;

    v38 = v39 - v43;
    goto LABEL_3;
  }

LABEL_6:
  [(PINEntryView *)self->_pinView setFrame:v21, v23, v25, v39];
}

@end