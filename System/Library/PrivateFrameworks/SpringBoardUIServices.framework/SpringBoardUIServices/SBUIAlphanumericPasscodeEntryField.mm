@interface SBUIAlphanumericPasscodeEntryField
- (CGSize)_viewSize;
- (SBUIAlphanumericPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style;
- (UITextInputTraits)textInputTraits;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion;
- (void)_resetForFailedPasscode:(BOOL)passcode;
- (void)layoutSubviews;
- (void)notePasscodeFieldTextDidChange;
@end

@implementation SBUIAlphanumericPasscodeEntryField

- (SBUIAlphanumericPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style
{
  v32.receiver = self;
  v32.super_class = SBUIAlphanumericPasscodeEntryField;
  v4 = [(SBUIPasscodeEntryField *)&v32 initWithDefaultSizeAndLightStyle:style];
  if (v4)
  {
    v5 = MEMORY[0x1E69DB878];
    v6 = __sb__runningInSpringBoard();
    v7 = v6;
    currentDevice3 = 0x1E69DC000;
    if (v6)
    {
      v9 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      v9 = [currentDevice userInterfaceIdiom] == 1;
    }

    v10 = 17.0;
    if (v9)
    {
      v10 = 27.0;
    }

    v11 = [v5 systemFontOfSize:{SBUIScaledFontSizeWithMaxSizeCategory(*MEMORY[0x1E69DDC30], v10)}];
    if ((v7 & 1) == 0)
    {
    }

    if (__sb__runningInSpringBoard())
    {
      v12 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      v12 = [currentDevice2 userInterfaceIdiom] == 1;
    }

    [v11 _bodyLeading];
    v15 = v14 + 12.0;
    v16 = 38.0;
    if (v12)
    {
      v16 = 74.0;
    }

    if (v16 >= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    [(SBUIAlphanumericPasscodeEntryField *)v4 setUserInteractionEnabled:1];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    [(SBUIAlphanumericPasscodeEntryField *)v4 setFrame:0.0, 0.0];

    [(SBUIAlphanumericPasscodeEntryField *)v4 setClipsToBounds:1];
    _textField = [(SBUIPasscodeEntryField *)v4 _textField];
    v20 = __sb__runningInSpringBoard();
    v21 = v20;
    if (v20)
    {
      v22 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
      v22 = [currentDevice3 userInterfaceIdiom] == 1;
    }

    if (v22)
    {
      v23 = 526.0;
    }

    else
    {
      v23 = 314.0;
    }

    [_textField setFrame:{0.0, 0.0, v23, v17}];
    if ((v21 & 1) == 0)
    {
    }

    [_textField setTextAlignment:0];
    [_textField setClearButtonMode:0];
    [_textField setEmptyContentReturnKeyType:1];
    [_textField setReturnKeyType:9];
    [_textField setFont:v11];
    textInputTraits = [_textField textInputTraits];
    [textInputTraits setAcceptsSplitKeyboard:0];
    [textInputTraits setAcceptsFloatingKeyboard:0];
    [textInputTraits setUseInterfaceLanguageForLocalization:1];
    [textInputTraits setReturnKeyType:9];
    v25 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUIAlphanumericPasscodeEntryField *)v4 bounds];
    v26 = [v25 initWithFrame:?];
    springViewParent = v4->_springViewParent;
    v4->_springViewParent = v26;

    v28 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUIAlphanumericPasscodeEntryField *)v4 bounds];
    v29 = [v28 initWithFrame:?];
    springView = v4->_springView;
    v4->_springView = v29;

    [(UIView *)v4->_springView setAutoresizingMask:2];
    [(UIView *)v4->_springViewParent setAutoresizingMask:2];
    [(SBUIAlphanumericPasscodeEntryField *)v4 addSubview:v4->_springViewParent];
    [(UIView *)v4->_springViewParent addSubview:v4->_springView];
    [(UIView *)v4->_springView addSubview:_textField];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBUIAlphanumericPasscodeEntryField;
  [(SBUIAlphanumericPasscodeEntryField *)&v13 layoutSubviews];
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  [_textField frame];
  [(SBUIAlphanumericPasscodeEntryField *)self bounds];
  UIRectCenteredXInRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _textField2 = [(SBUIPasscodeEntryField *)self _textField];
  [_textField2 setFrame:{v5, v7, v9, v11}];
}

- (UITextInputTraits)textInputTraits
{
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  textInputTraits = [_textField textInputTraits];

  return textInputTraits;
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  [_textField setText:@"0000000000"];
  v6.receiver = self;
  v6.super_class = SBUIAlphanumericPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v6 _autofillForBiometricAuthenticationWithCompletion:completionCopy];
}

- (void)notePasscodeFieldTextDidChange
{
  mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
  [mEMORY[0x1E69DCBE0] updateReturnKey:0];

  v4.receiver = self;
  v4.super_class = SBUIAlphanumericPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v4 notePasscodeFieldTextDidChange];
}

- (void)_resetForFailedPasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
  [v5 setMass:1.20000005];
  [v5 setStiffness:1200.0];
  [v5 setDamping:12.0];
  LODWORD(v6) = 1028389654;
  LODWORD(v7) = 990057071;
  LODWORD(v8) = 1059712716;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v6 :v7 :v8 :v9];
  [v5 setTimingFunction:v10];

  [v5 setDuration:0.666999996];
  [v5 setVelocity:0.0];
  v11 = *MEMORY[0x1E69797D8];
  [v5 setFillMode:*MEMORY[0x1E69797D8]];
  v12 = MEMORY[0x1E696AD98];
  layer = [(UIView *)self->_springView layer];
  [layer position];
  v15 = v14 + 75.0;
  *&v15 = v15;
  v16 = [v12 numberWithFloat:v15];
  [v5 setFromValue:v16];

  layer2 = [(UIView *)self->_springView layer];
  [layer2 addAnimation:v5 forKey:@"shake"];

  v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.x"];
  LODWORD(v19) = 1054276898;
  LODWORD(v20) = 1058305108;
  LODWORD(v21) = 1.0;
  v22 = [MEMORY[0x1E69793D0] functionWithControlPoints:v19 :0.0 :v20 :v21];
  [v18 setTimingFunction:v22];

  [v18 setDuration:0.100000001];
  [v18 setFillMode:v11];
  v23 = MEMORY[0x1E696AD98];
  layer3 = [(UIView *)self->_springViewParent layer];
  [layer3 position];
  v26 = v25 + -75.0;
  *&v26 = v26;
  v27 = [v23 numberWithFloat:v26];
  [v18 setFromValue:v27];

  layer4 = [(UIView *)self->_springViewParent layer];
  [layer4 addAnimation:v18 forKey:@"force-off-center"];

  v29.receiver = self;
  v29.super_class = SBUIAlphanumericPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v29 _resetForFailedPasscode:passcodeCopy];
}

- (CGSize)_viewSize
{
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  font = [_textField font];

  if (__sb__runningInSpringBoard())
  {
    v4 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [currentDevice userInterfaceIdiom] == 1;
  }

  [font _bodyLeading];
  v7 = v6 + 12.0;
  v8 = 38.0;
  if (v4)
  {
    v8 = 74.0;
  }

  if (v8 >= v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v12 = v11;

  v13 = v12;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

@end