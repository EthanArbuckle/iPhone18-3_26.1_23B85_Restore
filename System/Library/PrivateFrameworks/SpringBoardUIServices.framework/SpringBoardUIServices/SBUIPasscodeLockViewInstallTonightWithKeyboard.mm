@interface SBUIPasscodeLockViewInstallTonightWithKeyboard
- (SBUIPasscodeLockViewInstallTonightWithKeyboard)initWithLightStyle:(BOOL)style;
- (void)_actionButtonHit;
- (void)_configureActionButton;
- (void)_layoutActionButton;
- (void)_layoutStatusView;
- (void)setShowsCancelButton:(BOOL)button;
- (void)setShowsEmergencyCallButton:(BOOL)button;
@end

@implementation SBUIPasscodeLockViewInstallTonightWithKeyboard

- (SBUIPasscodeLockViewInstallTonightWithKeyboard)initWithLightStyle:(BOOL)style
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIButton *)v7 setBackgroundColor:clearColor];

    v9 = v4->_actionButton;
    if (style)
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
    titleLabel = [(SBUIButton *)v4->_actionButton titleLabel];
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [titleLabel setFont:v12];

    [titleLabel setLineBreakMode:5];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
    [titleLabel setMinimumScaleFactor:2.0];
    passcodeAuthenticationView = [(SBUIPasscodeLockViewBase *)v4 passcodeAuthenticationView];
    [passcodeAuthenticationView addSubview:v4->_actionButton];

    [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)v4 _configureActionButton];
  }

  return v4;
}

- (void)setShowsEmergencyCallButton:(BOOL)button
{
  LODWORD(v3) = button;
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  if ([mEMORY[0x1E698E730] deviceClass])
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

- (void)setShowsCancelButton:(BOOL)button
{
  buttonCopy = button;
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  [(SBUIPasscodeLockViewBase *)&v5 setShowsCancelButton:?];
  if (buttonCopy)
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
    showsCancelButton = [(SBUIPasscodeLockViewBase *)self showsCancelButton];
    v5 = self->_actionButton;
    if (showsCancelButton)
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
  _statusTitleView = [(SBUIPasscodeLockViewWithKeyboard *)self _statusTitleView];
  [_statusTitleView setLineBreakMode:0];
  [_statusTitleView setNumberOfLines:2];
  _statusSubtitleView = [(SBUIPasscodeLockViewWithKeyboard *)self _statusSubtitleView];
  [_statusSubtitleView setNumberOfLines:2];
  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewInstallTonightWithKeyboard;
  [(SBUIPasscodeLockViewWithKeyboard *)&v5 _layoutStatusView];
  [(SBUIPasscodeLockViewInstallTonightWithKeyboard *)self _layoutActionButton];
}

- (void)_layoutActionButton
{
  titleLabel = [(SBUIButton *)self->_actionButton titleLabel];
  [titleLabel sizeToFit];

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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if ([(SBUIPasscodeLockViewBase *)self showsEmergencyCallButton])
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate passcodeLockViewEmergencyCallButtonPressed:self];
    }
  }

  else if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate passcodeLockViewCancelButtonPressed:self];
  }

  MEMORY[0x1EEE66BE0]();
}

@end