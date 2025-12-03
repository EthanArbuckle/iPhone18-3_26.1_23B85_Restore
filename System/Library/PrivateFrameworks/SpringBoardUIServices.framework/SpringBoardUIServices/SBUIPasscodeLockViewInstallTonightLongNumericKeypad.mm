@interface SBUIPasscodeLockViewInstallTonightLongNumericKeypad
- (SBUIPasscodeLockViewInstallTonightLongNumericKeypad)initWithLightStyle:(BOOL)style;
- (SBUIPasscodeLockViewInstallTonightLongNumericKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming;
- (void)_actionButtonHit;
- (void)_configureActionButton;
- (void)_layoutActionButton;
- (void)_layoutStatusView;
- (void)_setShowsCancelButton:(BOOL)button fromEmergencyCallButton:(BOOL)callButton;
- (void)_setShowsEmergencyCallButton:(BOOL)button fromCancelButton:(BOOL)cancelButton;
- (void)_sizeLabel:(id)label;
- (void)passcodeEntryFieldTextDidChange:(id)change;
@end

@implementation SBUIPasscodeLockViewInstallTonightLongNumericKeypad

- (SBUIPasscodeLockViewInstallTonightLongNumericKeypad)initWithLightStyle:(BOOL)style
{
  styleCopy = style;
  providesDimmingByDefault = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self initWithLightStyle:styleCopy providesDimming:providesDimmingByDefault];
}

- (SBUIPasscodeLockViewInstallTonightLongNumericKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming
{
  v16.receiver = self;
  v16.super_class = SBUIPasscodeLockViewInstallTonightLongNumericKeypad;
  v5 = [(SBUIPasscodeLockViewLongNumericKeypad *)&v16 initWithLightStyle:style providesDimming:dimming];
  if (v5)
  {
    v6 = [SBUIButton buttonWithType:1];
    actionButton = v5->_actionButton;
    v5->_actionButton = v6;

    [(SBUIButton *)v5->_actionButton setUserInteractionEnabled:1];
    [(SBUIButton *)v5->_actionButton setClipsToBounds:1];
    v8 = v5->_actionButton;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v8 setBackgroundColor:clearColor];

    v10 = v5->_actionButton;
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v11 = ;
    [(SBUIButton *)v10 setTitleColor:v11 forState:0];

    [(SBUIButton *)v5->_actionButton addTarget:v5 action:sel__actionButtonHit forControlEvents:64];
    [(SBUIButton *)v5->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(SBUIButton *)v5->_actionButton titleLabel];
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [titleLabel setFont:v13];

    [titleLabel setLineBreakMode:5];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
    [titleLabel setMinimumScaleFactor:2.0];
    passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)v5 passcodeAuthenticationView];
    [passcodeAuthenticationView addSubview:v5->_actionButton];

    [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)v5 setShowsCancelButton:1];
  }

  return v5;
}

- (void)_layoutStatusView
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeLockViewInstallTonightLongNumericKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v3 _layoutStatusView];
  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _layoutActionButton];
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
  v8.super_class = SBUIPasscodeLockViewInstallTonightLongNumericKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v8 setShowsEmergencyCallButton:v5];
  if (!cancelButton)
  {
    [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _setShowsCancelButton:v5 ^ 1 fromEmergencyCallButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _configureActionButton];
}

- (void)_setShowsCancelButton:(BOOL)button fromEmergencyCallButton:(BOOL)callButton
{
  buttonCopy = button;
  v8.receiver = self;
  v8.super_class = SBUIPasscodeLockViewInstallTonightLongNumericKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v8 setShowsCancelButton:?];
  _numberPad = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [_numberPad setShowsCancelButton:0];

  if (!callButton)
  {
    [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _setShowsEmergencyCallButton:!buttonCopy fromCancelButton:1];
  }

  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _configureActionButton];
}

- (void)passcodeEntryFieldTextDidChange:(id)change
{
  changeCopy = change;
  stringValue = [changeCopy stringValue];
  v6 = [stringValue length];

  actionButton = self->_actionButton;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SBUIPasscodeLockViewBase *)self showsCancelButton]^ 1;
  }

  v9 = v6 != 0;
  [(SBUIButton *)actionButton setHidden:v8];
  _numberPad = [(SBUIPasscodeLockViewWithKeypad *)self _numberPad];
  [_numberPad setShowsBackspaceButton:v9];

  [changeCopy setShowsOkButton:v9];
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v12 passcodeLockViewPasscodeDidChange:self];
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
  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self passcodeEntryFieldTextDidChange:_entryField];
}

- (void)_sizeLabel:(id)label
{
  labelCopy = label;
  [labelCopy setLineBreakMode:0];
  [labelCopy setNumberOfLines:0];
  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self bounds];
  v4 = CGRectGetWidth(v7) + -40.0;
  [labelCopy frame];
  [labelCopy setFrame:?];
  [labelCopy setPreferredMaxLayoutWidth:v4];
  [labelCopy sizeToFit];
}

- (void)_layoutActionButton
{
  titleLabel = [(SBUIButton *)self->_actionButton titleLabel];
  [(SBUIPasscodeLockViewInstallTonightLongNumericKeypad *)self _sizeLabel:titleLabel];

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