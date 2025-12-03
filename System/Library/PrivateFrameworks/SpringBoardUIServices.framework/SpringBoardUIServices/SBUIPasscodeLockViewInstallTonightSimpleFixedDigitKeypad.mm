@interface SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad
- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style numberOfDigits:(unint64_t)digits;
- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming numberOfDigits:(unint64_t)digits;
- (void)_actionButtonHit;
- (void)_configureActionButton;
- (void)_layoutActionButton;
- (void)_layoutStatusView;
- (void)_setShowsCancelButton:(BOOL)button fromEmergencyCallButton:(BOOL)callButton;
- (void)_setShowsEmergencyCallButton:(BOOL)button fromCancelButton:(BOOL)cancelButton;
- (void)_sizeLabel:(id)label;
- (void)passcodeEntryFieldTextDidChange:(id)change;
@end

@implementation SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad

- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style numberOfDigits:(unint64_t)digits
{
  styleCopy = style;
  providesDimmingByDefault = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self initWithLightStyle:styleCopy providesDimming:providesDimmingByDefault numberOfDigits:digits];
}

- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming numberOfDigits:(unint64_t)digits
{
  v17.receiver = self;
  v17.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  v6 = [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)&v17 initWithLightStyle:style providesDimming:dimming numberOfDigits:digits];
  if (v6)
  {
    v7 = [SBUIButton buttonWithType:1];
    actionButton = v6->_actionButton;
    v6->_actionButton = v7;

    [(SBUIButton *)v6->_actionButton setUserInteractionEnabled:1];
    [(SBUIButton *)v6->_actionButton setClipsToBounds:1];
    v9 = v6->_actionButton;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v9 setBackgroundColor:clearColor];

    v11 = v6->_actionButton;
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v12 = ;
    [(SBUIButton *)v11 setTitleColor:v12 forState:0];

    [(SBUIButton *)v6->_actionButton addTarget:v6 action:sel__actionButtonHit forControlEvents:64];
    [(SBUIButton *)v6->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(SBUIButton *)v6->_actionButton titleLabel];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [titleLabel setFont:v14];

    [titleLabel setLineBreakMode:5];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
    [titleLabel setMinimumScaleFactor:2.0];
    passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)v6 passcodeAuthenticationView];
    [passcodeAuthenticationView addSubview:v6->_actionButton];

    [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)v6 setShowsCancelButton:1];
  }

  return v6;
}

- (void)_layoutStatusView
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v3 _layoutStatusView];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _layoutActionButton];
}

- (void)_setShowsEmergencyCallButton:(BOOL)button fromCancelButton:(BOOL)cancelButton
{
  LODWORD(v5) = button;
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  if ([mEMORY[0x1E698E730] deviceClass])
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  v8.receiver = self;
  v8.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v8 setShowsEmergencyCallButton:v5];
  if (!cancelButton)
  {
    [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _setShowsCancelButton:v5 ^ 1 fromEmergencyCallButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _configureActionButton];
}

- (void)_setShowsCancelButton:(BOOL)button fromEmergencyCallButton:(BOOL)callButton
{
  buttonCopy = button;
  v8.receiver = self;
  v8.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v8 setShowsCancelButton:?];
  _numberPad = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [_numberPad setShowsCancelButton:0];

  if (!callButton)
  {
    [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _setShowsEmergencyCallButton:!buttonCopy fromCancelButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _configureActionButton];
}

- (void)passcodeEntryFieldTextDidChange:(id)change
{
  stringValue = [change stringValue];
  v5 = [stringValue length];

  actionButton = self->_actionButton;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(SBUIPasscodeLockViewBase *)self showsCancelButton]^ 1;
  }

  [(SBUIButton *)actionButton setHidden:v7];
  _numberPad = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [_numberPad setShowsBackspaceButton:v5 != 0];

  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v10 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v10 passcodeLockViewPasscodeDidChange:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_configureActionButton
{
  showsCancelButton = [(SBUIPasscodeLockViewBase *)self showsCancelButton];
  actionButton = self->_actionButton;
  if (showsCancelButton)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SOFTWARE_UPDATE_PASSCODE_REMIND_LATER" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
    [(SBUIButton *)actionButton setTitle:v6 forState:0];

    v7 = self->_actionButton;
    v8 = 0;
  }

  else
  {
    v7 = self->_actionButton;
    v8 = 1;
  }

  [(SBUIButton *)v7 setHidden:v8];
  _entryField = [(SBUIPasscodeLockViewBase *)self _entryField];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self passcodeEntryFieldTextDidChange:_entryField];
}

- (void)_sizeLabel:(id)label
{
  labelCopy = label;
  [labelCopy setLineBreakMode:0];
  [labelCopy setNumberOfLines:0];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self bounds];
  v4 = CGRectGetWidth(v7) + -40.0;
  [labelCopy frame];
  [labelCopy setFrame:?];
  [labelCopy setPreferredMaxLayoutWidth:v4];
  [labelCopy sizeToFit];
}

- (void)_layoutActionButton
{
  titleLabel = [(SBUIButton *)self->_actionButton titleLabel];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _sizeLabel:titleLabel];

  [(SBUIButton *)self->_actionButton sizeToFit];
  _numberPad = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  centerXAnchor = [(SBUIButton *)self->_actionButton centerXAnchor];
  centerXAnchor2 = [_numberPad centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v6 setActive:1];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      backspaceButton = [_numberPad backspaceButton];
      firstBaselineAnchor = [(SBUIButton *)self->_actionButton firstBaselineAnchor];
      firstBaselineAnchor2 = [backspaceButton firstBaselineAnchor];
      v10 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      [v10 setActive:1];

      goto LABEL_6;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  backspaceButton = [(SBUIButton *)self->_actionButton topAnchor];
  firstBaselineAnchor = [_numberPad bottomAnchor];
  firstBaselineAnchor2 = [backspaceButton constraintEqualToAnchor:firstBaselineAnchor];
  [firstBaselineAnchor2 setActive:1];
LABEL_6:
}

- (void)_actionButtonHit
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if ([(SBUIPasscodeLockViewBase *)self showsCancelButton]&& delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate passcodeLockViewCancelButtonPressed:self];
  }

  MEMORY[0x1EEE66BE0]();
}

@end