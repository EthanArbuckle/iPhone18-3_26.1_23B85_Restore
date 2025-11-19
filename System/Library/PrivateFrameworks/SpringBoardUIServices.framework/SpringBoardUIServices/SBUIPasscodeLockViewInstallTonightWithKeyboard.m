@interface SBUIPasscodeLockViewInstallTonightWithKeyboard
- (SBUIPasscodeLockViewInstallTonightWithKeyboard)initWithLightStyle:(BOOL)a3;
- (void)_actionButtonHit;
- (void)_configureActionButton;
- (void)_layoutActionButton;
- (void)_layoutStatusView;
- (void)setShowsCancelButton:(BOOL)a3;
- (void)setShowsEmergencyCallButton:(BOOL)a3;
@end

@implementation SBUIPasscodeLockViewInstallTonightWithKeyboard

- (SBUIPasscodeLockViewInstallTonightWithKeyboard)initWithLightStyle:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  v4 = [(SBUIPasscodeLockViewWithKeyboard *)&v15 initWithLightStyle:?];
  if (v4)
  {
    v5 = [SBUIButton buttonWithType:1];
    actionButton = v4->_actionButton;
    v4->_actionButton = v5;

    [(SBUIButton *)v4->_actionButton setUserInteractionEnabled:1];
    [(SBUIButton *)v4->_actionButton setClipsToBounds:1];
    v7 = v4->_actionButton;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v7 setBackgroundColor:v8];

    v9 = v4->_actionButton;
    if (a3)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v10 = ;
    [(SBUIButton *)v9 setTitleColor:v10 forState:0];

    [(SBUIButton *)v4->_actionButton addTarget:v4 action:sel__actionButtonHit forControlEvents:64];
    [(SBUIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:1];
    v11 = [(SBUIButton *)v4->_actionButton titleLabel];
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [v11 setFont:v12];

    [v11 setLineBreakMode:5];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setMinimumScaleFactor:2.0];
    v13 = [(SBUIPasscodeLockViewBase *)v4 passcodeAuthenticationView];
    [v13 addSubview:v4->_actionButton];

    [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)v4 _configureActionButton];
  }

  return v4;
}

- (void)setShowsEmergencyCallButton:(BOOL)a3
{
  LODWORD(v3) = a3;
  v5 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v5 deviceClass])
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  v6.receiver = self;
  v6.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  [(SBUIPasscodeLockViewWithKeyboard *)&v6 setShowsEmergencyCallButton:v3];
  if (v3)
  {
    [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self setShowsCancelButton:0];
  }

  [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self _configureActionButton];
}

- (void)setShowsCancelButton:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v5 setShowsCancelButton:?];
  if (v3)
  {
    [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self setShowsEmergencyCallButton:0];
  }

  [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self _configureActionButton];
}

- (void)_configureActionButton
{
  if ([(SBUIPasscodeLockViewBase *)self showsEmergencyCallButton])
  {
    actionButton = self->_actionButton;
  }

  else
  {
    v4 = [(SBUIPasscodeLockViewBase *)self showsCancelButton];
    v5 = self->_actionButton;
    if (v4)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"SOFTWARE_UPDATE_PASSCODE_REMIND_LATER" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
      [(SBUIButton *)v5 setTitle:v7 forState:0];

      actionButton = self->_actionButton;
      v8 = 0;
      goto LABEL_7;
    }

    actionButton = self->_actionButton;
  }

  v8 = 1;
LABEL_7:

  [(SBUIButton *)actionButton setHidden:v8];
}

- (void)_layoutStatusView
{
  v3 = [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleView];
  [v3 setLineBreakMode:0];
  [v3 setNumberOfLines:2];
  v4 = [(SBUIPasscodeLockViewWithKeyboard *)self _statusSubtitleView];
  [v4 setNumberOfLines:2];
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  [(SBUIPasscodeLockViewWithKeyboard *)&v5 _layoutStatusView];
  [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self _layoutActionButton];
}

- (void)_layoutActionButton
{
  v5 = [(SBUIButton *)self->_actionButton titleLabel];
  [v5 sizeToFit];

  [(SBUIButton *)self->_actionButton sizeToFit];
  [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self bounds];
  [(SBUIPasscodeLockViewWithKeyboard *)self _keyboardFrameForInterfaceOrientation:[(SBUIPasscodeLockViewBase *)self _orientation]];
  CGRectGetMinY(v12);
  [(SBUIButton *)self->_actionButton frame];
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((v9 & 1) == 0)
  {
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  UIRectCenteredXInRectScale();
  actionButton = self->_actionButton;

  [(SBUIButton *)actionButton setFrame:?];
}

- (void)_actionButtonHit
{
  v3 = [(SBUIPasscodeLockViewBase *)self delegate];
  if ([(SBUIPasscodeLockViewBase *)self showsEmergencyCallButton])
  {
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 passcodeLockViewEmergencyCallButtonPressed:self];
    }
  }

  else if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 passcodeLockViewCancelButtonPressed:self];
  }

  MEMORY[0x1EEE66BE0]();
}

@end