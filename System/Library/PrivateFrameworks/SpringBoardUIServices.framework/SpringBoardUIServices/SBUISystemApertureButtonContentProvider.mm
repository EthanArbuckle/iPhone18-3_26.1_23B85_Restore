@interface SBUISystemApertureButtonContentProvider
- (SBUISystemApertureButtonContentProvider)initWithButtonConfiguration:(id)configuration action:(id)action;
- (SBUISystemApertureButtonContentProvider)initWithDefaultSymbolActionConfigurationWithAction:(id)action;
- (SBUISystemApertureButtonContentProvider)initWithDefaultTextActionConfigurationWithAction:(id)action;
- (SBUISystemApertureContentViewContaining)contentContainer;
- (UIButtonConfiguration)buttonConfiguration;
- (UIColor)contentColor;
- (void)setButtonConfiguration:(id)configuration;
- (void)setContentColor:(id)color;
@end

@implementation SBUISystemApertureButtonContentProvider

- (SBUISystemApertureButtonContentProvider)initWithDefaultTextActionConfigurationWithAction:(id)action
{
  v4 = MEMORY[0x1E69DC740];
  actionCopy = action;
  sbui_systemApertureTextButtonConfiguration = [v4 sbui_systemApertureTextButtonConfiguration];
  v7 = [(SBUISystemApertureButtonContentProvider *)self initWithButtonConfiguration:sbui_systemApertureTextButtonConfiguration action:actionCopy];

  return v7;
}

- (SBUISystemApertureButtonContentProvider)initWithDefaultSymbolActionConfigurationWithAction:(id)action
{
  v4 = MEMORY[0x1E69DC740];
  actionCopy = action;
  sbui_systemApertureSymbolButtonConfiguration = [v4 sbui_systemApertureSymbolButtonConfiguration];
  v7 = [(SBUISystemApertureButtonContentProvider *)self initWithButtonConfiguration:sbui_systemApertureSymbolButtonConfiguration action:actionCopy];

  return v7;
}

- (SBUISystemApertureButtonContentProvider)initWithButtonConfiguration:(id)configuration action:(id)action
{
  configurationCopy = configuration;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = SBUISystemApertureButtonContentProvider;
  v8 = [(SBUISystemApertureButtonContentProvider *)&v12 init];
  if (v8)
  {
    v9 = [SBUISystemApertureButton buttonWithConfiguration:configurationCopy primaryAction:actionCopy];
    providedView = v8->_providedView;
    v8->_providedView = v9;
  }

  return v8;
}

- (UIButtonConfiguration)buttonConfiguration
{
  _providedView = [(SBUISystemApertureButtonContentProvider *)self _providedView];
  configuration = [_providedView configuration];

  return configuration;
}

- (void)setButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _providedView = [(SBUISystemApertureButtonContentProvider *)self _providedView];
  [_providedView setConfiguration:configurationCopy];
}

- (UIColor)contentColor
{
  buttonConfiguration = [(SBUISystemApertureButtonContentProvider *)self buttonConfiguration];
  baseForegroundColor = [buttonConfiguration baseForegroundColor];
  v4 = baseForegroundColor;
  if (baseForegroundColor)
  {
    baseBackgroundColor = baseForegroundColor;
  }

  else
  {
    baseBackgroundColor = [buttonConfiguration baseBackgroundColor];
  }

  v6 = baseBackgroundColor;

  return v6;
}

- (void)setContentColor:(id)color
{
  colorCopy = color;
  buttonConfiguration = [(SBUISystemApertureButtonContentProvider *)self buttonConfiguration];
  [buttonConfiguration setBaseForegroundColor:colorCopy];
  [buttonConfiguration setBaseBackgroundColor:colorCopy];

  [(SBUISystemApertureButtonContentProvider *)self setButtonConfiguration:buttonConfiguration];
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

@end