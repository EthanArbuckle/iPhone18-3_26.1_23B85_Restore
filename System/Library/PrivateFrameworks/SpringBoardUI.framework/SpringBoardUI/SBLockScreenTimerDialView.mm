@interface SBLockScreenTimerDialView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBLockScreenTimerDialView)initWithSymbolFont:(id)font;
- (id)_newDialViewConfiguredForSettingsAndFont;
- (void)setFont:(id)font;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SBLockScreenTimerDialView

- (SBLockScreenTimerDialView)initWithSymbolFont:(id)font
{
  fontCopy = font;
  v10.receiver = self;
  v10.super_class = SBLockScreenTimerDialView;
  v6 = [(SBLockScreenTimerDialView *)&v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_font, font);
    v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(SBLockScreenTimerDialView *)v7 setLegibilitySettings:v8];
  }

  return v7;
}

- (id)_newDialViewConfiguredForSettingsAndFont
{
  v3 = self->_legibilitySettings;
  primaryColor = [(_UILegibilitySettings *)v3 primaryColor];
  font = self->_font;
  if (font)
  {
    [(UIFont *)font pointSize];
  }

  else
  {
    [MEMORY[0x277D74300] defaultFontSize];
  }

  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:1 scale:?];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"timer" withConfiguration:v6];
  v8 = [v7 imageWithTintColor:primaryColor renderingMode:2];

  v9 = objc_alloc(MEMORY[0x277D67D00]);
  [v8 size];
  v12 = [v9 initWithFrame:{0.0, 0.0, v10, v11}];
  [v12 updateForChangedSettings:v3 options:2 image:v8 strength:self->_strength];
  [v12 setTintColor:primaryColor];

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SBUILegibilityView *)self->_dialView frame:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(SBUILegibilityView *)self->_dialView removeFromSuperview];
    _newDialViewConfiguredForSettingsAndFont = [(SBLockScreenTimerDialView *)self _newDialViewConfiguredForSettingsAndFont];
    dialView = self->_dialView;
    self->_dialView = _newDialViewConfiguredForSettingsAndFont;

    [(SBLockScreenTimerDialView *)self addSubview:self->_dialView];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBUILegibilityView *)self->_dialView removeFromSuperview];
    _newDialViewConfiguredForSettingsAndFont = [(SBLockScreenTimerDialView *)self _newDialViewConfiguredForSettingsAndFont];
    dialView = self->_dialView;
    self->_dialView = _newDialViewConfiguredForSettingsAndFont;

    [(SBLockScreenTimerDialView *)self addSubview:self->_dialView];
  }
}

@end