@interface SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad
- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4;
- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4 numberOfDigits:(unint64_t)a5;
- (void)_actionButtonHit;
- (void)_configureActionButton;
- (void)_layoutActionButton;
- (void)_layoutStatusView;
- (void)_setShowsCancelButton:(BOOL)a3 fromEmergencyCallButton:(BOOL)a4;
- (void)_setShowsEmergencyCallButton:(BOOL)a3 fromCancelButton:(BOOL)a4;
- (void)_sizeLabel:(id)a3;
- (void)passcodeEntryFieldTextDidChange:(id)a3;
@end

@implementation SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad

- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4
{
  v5 = a3;
  v7 = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self initWithLightStyle:v5 providesDimming:v7 numberOfDigits:a4];
}

- (SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4 numberOfDigits:(unint64_t)a5
{
  v17.receiver = self;
  v17.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  v6 = [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)&v17 initWithLightStyle:a3 providesDimming:a4 numberOfDigits:a5];
  if (v6)
  {
    v7 = [SBUIButton buttonWithType:1];
    actionButton = v6->_actionButton;
    v6->_actionButton = v7;

    [(SBUIButton *)v6->_actionButton setUserInteractionEnabled:1];
    [(SBUIButton *)v6->_actionButton setClipsToBounds:1];
    v9 = v6->_actionButton;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v9 setBackgroundColor:v10];

    v11 = v6->_actionButton;
    if (a3)
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
    v13 = [(SBUIButton *)v6->_actionButton titleLabel];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [v13 setFont:v14];

    [v13 setLineBreakMode:5];
    [v13 setAdjustsFontSizeToFitWidth:1];
    [v13 setMinimumScaleFactor:2.0];
    v15 = [(SBUIPasscodeLockViewBase *)v6 passcodeAuthenticationView];
    [v15 addSubview:v6->_actionButton];

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

- (void)_setShowsEmergencyCallButton:(BOOL)a3 fromCancelButton:(BOOL)a4
{
  LODWORD(v5) = a3;
  v7 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v7 deviceClass])
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
  if (!a4)
  {
    [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _setShowsCancelButton:v5 ^ 1 fromEmergencyCallButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _configureActionButton];
}

- (void)_setShowsCancelButton:(BOOL)a3 fromEmergencyCallButton:(BOOL)a4
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v8 setShowsCancelButton:?];
  v7 = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [v7 setShowsCancelButton:0];

  if (!a4)
  {
    [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _setShowsEmergencyCallButton:!v5 fromCancelButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _configureActionButton];
}

- (void)passcodeEntryFieldTextDidChange:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [v4 length];

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
  v8 = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [v8 setShowsBackspaceButton:v5 != 0];

  v9 = [(SBUIPasscodeLockViewBase *)self delegate];
  if (v9)
  {
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v10 passcodeLockViewPasscodeDidChange:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_configureActionButton
{
  v3 = [(SBUIPasscodeLockViewBase *)self showsCancelButton];
  actionButton = self->_actionButton;
  if (v3)
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
  v9 = [(SBUIPasscodeLockViewBase *)self _entryField];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self passcodeEntryFieldTextDidChange:v9];
}

- (void)_sizeLabel:(id)a3
{
  v5 = a3;
  [v5 setLineBreakMode:0];
  [v5 setNumberOfLines:0];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self bounds];
  v4 = CGRectGetWidth(v7) + -40.0;
  [v5 frame];
  [v5 setFrame:?];
  [v5 setPreferredMaxLayoutWidth:v4];
  [v5 sizeToFit];
}

- (void)_layoutActionButton
{
  v3 = [(SBUIButton *)self->_actionButton titleLabel];
  [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)self _sizeLabel:v3];

  [(SBUIButton *)self->_actionButton sizeToFit];
  v13 = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  v4 = [(SBUIButton *)self->_actionButton centerXAnchor];
  v5 = [v13 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v7 = [v13 backspaceButton];
      v8 = [(SBUIButton *)self->_actionButton firstBaselineAnchor];
      v9 = [v7 firstBaselineAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      [v10 setActive:1];

      goto LABEL_6;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 != 1)
    {
      goto LABEL_3;
    }
  }

  v7 = [(SBUIButton *)self->_actionButton topAnchor];
  v8 = [v13 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];
LABEL_6:
}

- (void)_actionButtonHit
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if ([(SBUIPasscodeLockViewBase *)self showsCancelButton]&& v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 passcodeLockViewCancelButtonPressed:self];
  }

  MEMORY[0x1EEE66BE0]();
}

@end