@interface SBUIPasscodeViewWithLockScreenStyle
- (SBUIPasscodeViewWithLockScreenStyle)initWithFrame:(CGRect)frame includeBlur:(BOOL)blur passcodeViewGenerator:(id)generator;
- (void)layoutSubviews;
- (void)setBlurEnabled:(BOOL)enabled;
@end

@implementation SBUIPasscodeViewWithLockScreenStyle

- (SBUIPasscodeViewWithLockScreenStyle)initWithFrame:(CGRect)frame includeBlur:(BOOL)blur passcodeViewGenerator:(id)generator
{
  blurCopy = blur;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  generatorCopy = generator;
  v27.receiver = self;
  v27.super_class = SBUIPasscodeViewWithLockScreenStyle;
  height = [(SBUIPasscodeViewWithLockScreenStyle *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    if (blurCopy)
    {
      v13 = objc_alloc(MEMORY[0x277D67998]);
      [(SBUIPasscodeViewWithLockScreenStyle *)height bounds];
      v14 = [v13 initWithFrame:?];
      backgroundView = height->_backgroundView;
      height->_backgroundView = v14;

      [(SBUIBackgroundView *)height->_backgroundView setAutoresizingMask:18];
      [(SBUIBackgroundView *)height->_backgroundView setBackgroundStyle:3];
      [(SBUIPasscodeViewWithLockScreenStyle *)height addSubview:height->_backgroundView];
      [(SBUIPasscodeViewWithLockScreenStyle *)height sendSubviewToBack:height->_backgroundView];
    }

    v16 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2030];
    combinedTintColor = [v16 combinedTintColor];

    v18 = generatorCopy[2](generatorCopy);
    passcodeView = height->_passcodeView;
    height->_passcodeView = v18;

    v20 = height->_passcodeView;
    [combinedTintColor alphaComponent];
    v21 = [combinedTintColor colorWithAlphaComponent:?];
    [(SBUIPasscodeLockView *)v20 setCustomBackgroundColor:v21];

    [(SBUIPasscodeLockView *)height->_passcodeView setShowsEmergencyCallButton:0];
    [(SBUIPasscodeViewWithLockScreenStyle *)height addSubview:height->_passcodeView];
    v22 = objc_alloc(MEMORY[0x277D65E00]);
    backdropView = [(SBUIBackgroundView *)height->_backgroundView backdropView];
    v24 = [v22 initWithBackdropView:backdropView];

    [(SBUIPasscodeLockView *)height->_passcodeView setBackgroundLegibilitySettingsProvider:v24];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBUIPasscodeViewWithLockScreenStyle *)height setBackgroundColor:clearColor];
  }

  return height;
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

- (void)setBlurEnabled:(BOOL)enabled
{
  backgroundView = self->_backgroundView;
  if (enabled)
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