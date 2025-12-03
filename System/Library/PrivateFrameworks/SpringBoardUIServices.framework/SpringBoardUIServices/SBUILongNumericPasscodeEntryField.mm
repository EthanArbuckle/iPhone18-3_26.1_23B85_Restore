@interface SBUILongNumericPasscodeEntryField
- (BOOL)becomeFirstResponder;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)resignFirstResponder;
- (CGSize)_viewSize;
- (SBUILongNumericPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion;
- (void)_getPasscodeFieldSize:(CGSize *)size okButtonSize:(CGSize *)buttonSize;
- (void)_handleKeyUIEvent:(id)event;
- (void)_okButtonHit;
- (void)_resetForFailedPasscode:(BOOL)passcode;
- (void)layoutSubviews;
- (void)setShowsOkButton:(BOOL)button;
- (void)setShowsPromptLabel:(BOOL)label;
@end

@implementation SBUILongNumericPasscodeEntryField

- (SBUILongNumericPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style
{
  v40.receiver = self;
  v40.super_class = SBUILongNumericPasscodeEntryField;
  v4 = [(SBUINumericPasscodeEntryFieldBase *)&v40 initWithDefaultSizeAndLightStyle:?];
  v5 = v4;
  if (v4)
  {
    [(SBUINumericPasscodeEntryFieldBase *)v4 setAllowsNewlineAcceptance:1];
    [(SBUINumericPasscodeEntryFieldBase *)v5 setAutoAcceptWhenMaxNumbersMet:0];
    [(SBUILongNumericPasscodeEntryField *)v5 setUserInteractionEnabled:1];
    [(SBUILongNumericPasscodeEntryField *)v5 setClipsToBounds:1];
    v6 = [SBUIButton buttonWithType:1];
    okButton = v5->_okButton;
    v5->_okButton = v6;

    [(SBUIButton *)v5->_okButton setHitAreaAdjustments:-15.0, -15.0, -15.0, -15.0];
    v8 = v5->_okButton;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v8 setBackgroundColor:clearColor];

    v10 = v5->_okButton;
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PASSCODE_ENTRY_OK" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)v10 setTitle:v12 forState:0];

    v13 = v5->_okButton;
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v14 = ;
    [(SBUIButton *)v13 setTitleColor:v14 forState:0];

    [(SBUIButton *)v5->_okButton addTarget:v5 action:sel__okButtonHit forControlEvents:64];
    titleLabel = [(SBUIButton *)v5->_okButton titleLabel];
    v16 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [titleLabel setFont:v16];

    [titleLabel setLineBreakMode:4];
    [titleLabel setTextAlignment:1];
    [(SBUILongNumericPasscodeEntryField *)v5 bounds];
    v18 = v17;
    v39 = *MEMORY[0x1E695F060];
    [(SBUILongNumericPasscodeEntryField *)v5 _getPasscodeFieldSize:&v39 okButtonSize:0];
    v19 = SBUIFloatFloorForMainScreenScale((v18 - *&v39) * 0.5);
    _textField = [(SBUIPasscodeEntryField *)v5 _textField];
    [_textField setFrame:{v19, 0.0, v39}];
    [_textField setTextAlignment:1];
    [_textField setAutoresizingMask:5];
    [_textField setText:0];
    v21 = objc_alloc(MEMORY[0x1E69DCC10]);
    [_textField frame];
    v22 = [v21 initWithFrame:?];
    promptLabel = v5->_promptLabel;
    v5->_promptLabel = v22;

    [(UILabel *)v5->_promptLabel setAutoresizingMask:5];
    v24 = v5->_promptLabel;
    v25 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v5->_promptLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_promptLabel setMinimumScaleFactor:0.555555556];
    v26 = v5->_promptLabel;
    [_textField bounds];
    [(UILabel *)v26 setPreferredMaxLayoutWidth:v27];
    [(UILabel *)v5->_promptLabel setLineBreakMode:4];
    v28 = v5->_promptLabel;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v28 setBackgroundColor:clearColor2];

    v30 = v5->_promptLabel;
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v31 = ;
    [(UILabel *)v30 setTextColor:v31];

    [(UILabel *)v5->_promptLabel setTextAlignment:1];
    v32 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUILongNumericPasscodeEntryField *)v5 bounds];
    v33 = [v32 initWithFrame:?];
    springViewParent = v5->_springViewParent;
    v5->_springViewParent = v33;

    v35 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBUILongNumericPasscodeEntryField *)v5 bounds];
    v36 = [v35 initWithFrame:?];
    springView = v5->_springView;
    v5->_springView = v36;

    [(UIView *)v5->_springView setAutoresizingMask:2];
    [(UIView *)v5->_springViewParent setAutoresizingMask:2];
    [(SBUILongNumericPasscodeEntryField *)v5 addSubview:v5->_springViewParent];
    [(UIView *)v5->_springViewParent addSubview:v5->_springView];
    [(UIView *)v5->_springView addSubview:_textField];
    [(UIView *)v5->_springView addSubview:v5->_okButton];
    [(UIView *)v5->_springView addSubview:v5->_promptLabel];
    [(SBUILongNumericPasscodeEntryField *)v5 setShowsOkButton:1];
    [(SBUILongNumericPasscodeEntryField *)v5 setShowsOkButton:0];
    [(SBUILongNumericPasscodeEntryField *)v5 setShowsPromptLabel:1];
    [(SBUILongNumericPasscodeEntryField *)v5 setShowsPromptLabel:0];
  }

  return v5;
}

- (void)setShowsOkButton:(BOOL)button
{
  if (self->_showsOkButton != button)
  {
    self->_showsOkButton = button;
    okButton = self->_okButton;
    v4 = 0.0;
    if (button)
    {
      v4 = 1.0;
    }

    [(SBUIButton *)okButton setAlpha:v4];
  }
}

- (void)setShowsPromptLabel:(BOOL)label
{
  if (self->_showsPromptLabel != label)
  {
    labelCopy = label;
    self->_showsPromptLabel = label;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v8 = userInterfaceIdiom & 0xFFFFFFFB;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v8 = ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    }

    promptLabel = self->_promptLabel;
    v10 = 0.0;
    if ((labelCopy & v8) != 0)
    {
      v10 = 1.0;
    }

    [(UILabel *)promptLabel setAlpha:v10];
  }
}

- (BOOL)becomeFirstResponder
{
  v4.receiver = self;
  v4.super_class = SBUILongNumericPasscodeEntryField;
  result = [(SBUIPasscodeEntryField *)&v4 becomeFirstResponder];
  self->_firstResponder = result;
  return result;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = SBUILongNumericPasscodeEntryField;
  resignFirstResponder = [(SBUINumericPasscodeEntryFieldBase *)&v6 resignFirstResponder];
  if (self->_firstResponder && resignFirstResponder)
  {
    self->_firstResponder = 0;
  }

  return resignFirstResponder;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SBUILongNumericPasscodeEntryField;
  [(SBUILongNumericPasscodeEntryField *)&v16 layoutSubviews];
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  [_textField frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  MinX = CGRectGetMinX(v17);
  v15 = *MEMORY[0x1E695F060];
  [(SBUILongNumericPasscodeEntryField *)self _getPasscodeFieldSize:0 okButtonSize:&v15];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v13 = *&v15;
    v14 = MinX + 100.0 + -100.0 - *&v15 + -16.0;
  }

  else
  {
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    v14 = CGRectGetMaxX(v18) + 16.0;
    v13 = *&v15;
  }

  [(SBUIButton *)self->_okButton setFrame:v14, 0.0, v13, *(&v15 + 1)];
  [(UIView *)self->_springView bringSubviewToFront:self->_okButton];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (self->_showsOkButton && (okButton = self->_okButton, [(SBUILongNumericPasscodeEntryField *)self convertPoint:okButton toView:x, y], [(SBUIButton *)okButton pointInside:eventCopy withEvent:?]))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBUILongNumericPasscodeEntryField;
    v9 = [(SBUILongNumericPasscodeEntryField *)&v11 pointInside:eventCopy withEvent:x, y];
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self->_showsOkButton && (okButton = self->_okButton, [(SBUILongNumericPasscodeEntryField *)self convertPoint:okButton toView:x, y], [(SBUIButton *)okButton hitTest:eventCopy withEvent:?], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = self->_okButton;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBUILongNumericPasscodeEntryField;
    v10 = [(SBUILongNumericPasscodeEntryField *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_9;
  }

  if (![eventCopy _hidEvent])
  {
    [v5 _isKeyDown];
LABEL_9:
    v9.receiver = self;
    v9.super_class = SBUILongNumericPasscodeEntryField;
    [(SBUILongNumericPasscodeEntryField *)&v9 _handleKeyUIEvent:v5];
    goto LABEL_10;
  }

  v6 = BKSHIDEventGetBaseAttributes();
  source = [v6 source];

  if (![v5 _isKeyDown] || (source & 0xFFFFFFFD) != 1)
  {
    goto LABEL_9;
  }

  _modifiedInput = [v5 _modifiedInput];
  if (([_modifiedInput isEqualToString:@"\r"] & 1) == 0 && !objc_msgSend(_modifiedInput, "isEqualToString:", @"\n"))
  {
    if ([_modifiedInput isEqualToString:@"\b"])
    {
      [(SBUIPasscodeEntryField *)self deleteLastCharacter];
    }

    else
    {
      [(SBUIPasscodeEntryField *)self appendString:_modifiedInput];
    }

    goto LABEL_9;
  }

  [(SBUILongNumericPasscodeEntryField *)self _okButtonHit];

LABEL_10:
}

- (void)_okButtonHit
{
  if (self->_showsOkButton)
  {
    [(SBUIPasscodeEntryField *)self notePasscodeFieldDidAcceptEntry];
  }
}

- (void)_getPasscodeFieldSize:(CGSize *)size okButtonSize:(CGSize *)buttonSize
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_3:
      v7 = 14.0;
      v8 = 41.0;
      v9 = 137.0;
      v10 = 169.0;
      v11 = 0x4046000000000000;
      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      goto LABEL_3;
    }
  }

  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 1) >= 2)
  {
    v8 = 28.0;
  }

  else
  {
    v8 = 38.0;
  }

  if ((activeInterfaceOrientation - 1) >= 2)
  {
    v9 = 128.0;
  }

  else
  {
    v9 = 123.0;
  }

  v7 = 10.0;
  v10 = 150.0;
  v11 = 0x4044000000000000;
LABEL_12:
  v15 = *&v11;
  okButton = self->_okButton;
  [(SBUIButton *)okButton frame];
  [(SBUIButton *)okButton sizeThatFits:v17, v18];
  v20 = v7 + v19;
  if (v15 >= v20)
  {
    v20 = v15;
  }

  v21 = v20 - v15;
  v22 = v10 - v9 - (v20 - v15);
  if (v22 < 0.0)
  {
    v20 = v20 + v22;
  }

  if (size)
  {
    if (v22 < 0.0)
    {
      v21 = v10 - v9;
    }

    size->width = v10 - v21;
    size->height = v8;
  }

  if (buttonSize)
  {
    buttonSize->width = v20;
    buttonSize->height = v8;
  }
}

- (CGSize)_viewSize
{
  v8 = *MEMORY[0x1E695F060];
  [(SBUILongNumericPasscodeEntryField *)self _getPasscodeFieldSize:&v8 okButtonSize:0];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v5 = *(&v8 + 1);

  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  v6 = [MEMORY[0x1E696AD60] stringWithString:@"000000000"];
  [_textField setText:v6];
  [_textField bounds];
  [_textField textRectForBounds:?];
  v8 = v7;
  while (1)
  {
    defaultTextAttributes = [_textField defaultTextAttributes];
    [v6 sizeWithAttributes:defaultTextAttributes];
    v11 = v10;

    if (v11 <= v8)
    {
      break;
    }

    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
    [_textField setText:v6];
  }

  v12.receiver = self;
  v12.super_class = SBUILongNumericPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v12 _autofillForBiometricAuthenticationWithCompletion:completionCopy];
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
  v29.super_class = SBUILongNumericPasscodeEntryField;
  [(SBUIPasscodeEntryField *)&v29 _resetForFailedPasscode:passcodeCopy];
}

@end