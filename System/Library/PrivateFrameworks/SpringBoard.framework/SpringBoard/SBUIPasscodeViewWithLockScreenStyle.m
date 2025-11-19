@interface SBUIPasscodeViewWithLockScreenStyle
- (SBUIPasscodeViewWithLockScreenStyle)initWithFrame:(CGRect)a3 includeBlur:(BOOL)a4 passcodeViewGenerator:(id)a5;
- (void)layoutSubviews;
- (void)setBlurEnabled:(BOOL)a3;
@end

@implementation SBUIPasscodeViewWithLockScreenStyle

- (SBUIPasscodeViewWithLockScreenStyle)initWithFrame:(CGRect)a3 includeBlur:(BOOL)a4 passcodeViewGenerator:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = SBUIPasscodeViewWithLockScreenStyle;
  v12 = [(SBUIPasscodeViewWithLockScreenStyle *)&v27 initWithFrame:x, y, width, height];
  if (v12)
  {
    if (v5)
    {
      v13 = objc_alloc(MEMORY[0x277D67998]);
      [(SBUIPasscodeViewWithLockScreenStyle *)v12 bounds];
      v14 = [v13 initWithFrame:?];
      backgroundView = v12->_backgroundView;
      v12->_backgroundView = v14;

      [(SBUIBackgroundView *)v12->_backgroundView setAutoresizingMask:18];
      [(SBUIBackgroundView *)v12->_backgroundView setBackgroundStyle:3];
      [(SBUIPasscodeViewWithLockScreenStyle *)v12 addSubview:v12->_backgroundView];
      [(SBUIPasscodeViewWithLockScreenStyle *)v12 sendSubviewToBack:v12->_backgroundView];
    }

    v16 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2030];
    v17 = [v16 combinedTintColor];

    v18 = v11[2](v11);
    passcodeView = v12->_passcodeView;
    v12->_passcodeView = v18;

    v20 = v12->_passcodeView;
    [v17 alphaComponent];
    v21 = [v17 colorWithAlphaComponent:?];
    [(SBUIPasscodeLockView *)v20 setCustomBackgroundColor:v21];

    [(SBUIPasscodeLockView *)v12->_passcodeView setShowsEmergencyCallButton:0];
    [(SBUIPasscodeViewWithLockScreenStyle *)v12 addSubview:v12->_passcodeView];
    v22 = objc_alloc(MEMORY[0x277D65E00]);
    v23 = [(SBUIBackgroundView *)v12->_backgroundView backdropView];
    v24 = [v22 initWithBackdropView:v23];

    [(SBUIPasscodeLockView *)v12->_passcodeView setBackgroundLegibilitySettingsProvider:v24];
    v25 = [MEMORY[0x277D75348] clearColor];
    [(SBUIPasscodeViewWithLockScreenStyle *)v12 setBackgroundColor:v25];
  }

  return v12;
}

- (void)layoutSubviews
{
  [(SBUIPasscodeViewWithLockScreenStyle *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBUIPasscodeLockView *)self->_passcodeView setFrame:?];
  backgroundView = self->_backgroundView;

  [(SBUIBackgroundView *)backgroundView setFrame:v4, v6, v8, v10];
}

- (void)setBlurEnabled:(BOOL)a3
{
  backgroundView = self->_backgroundView;
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(SBUIBackgroundView *)backgroundView setBackgroundStyle:v4];
}

@end