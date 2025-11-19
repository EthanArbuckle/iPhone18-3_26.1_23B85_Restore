@interface SBUISystemApertureButtonContentProvider
- (SBUISystemApertureButtonContentProvider)initWithButtonConfiguration:(id)a3 action:(id)a4;
- (SBUISystemApertureButtonContentProvider)initWithDefaultSymbolActionConfigurationWithAction:(id)a3;
- (SBUISystemApertureButtonContentProvider)initWithDefaultTextActionConfigurationWithAction:(id)a3;
- (SBUISystemApertureContentViewContaining)contentContainer;
- (UIButtonConfiguration)buttonConfiguration;
- (UIColor)contentColor;
- (void)setButtonConfiguration:(id)a3;
- (void)setContentColor:(id)a3;
@end

@implementation SBUISystemApertureButtonContentProvider

- (SBUISystemApertureButtonContentProvider)initWithDefaultTextActionConfigurationWithAction:(id)a3
{
  v4 = MEMORY[0x1E69DC740];
  v5 = a3;
  v6 = [v4 sbui_systemApertureTextButtonConfiguration];
  v7 = [(SBUISystemApertureButtonContentProvider *)self initWithButtonConfiguration:v6 action:v5];

  return v7;
}

- (SBUISystemApertureButtonContentProvider)initWithDefaultSymbolActionConfigurationWithAction:(id)a3
{
  v4 = MEMORY[0x1E69DC740];
  v5 = a3;
  v6 = [v4 sbui_systemApertureSymbolButtonConfiguration];
  v7 = [(SBUISystemApertureButtonContentProvider *)self initWithButtonConfiguration:v6 action:v5];

  return v7;
}

- (SBUISystemApertureButtonContentProvider)initWithButtonConfiguration:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBUISystemApertureButtonContentProvider;
  v8 = [(SBUISystemApertureButtonContentProvider *)&v12 init];
  if (v8)
  {
    v9 = [SBUISystemApertureButton buttonWithConfiguration:v6 primaryAction:v7];
    providedView = v8->_providedView;
    v8->_providedView = v9;
  }

  return v8;
}

- (UIButtonConfiguration)buttonConfiguration
{
  v2 = [(SBUISystemApertureButtonContentProvider *)self _providedView];
  v3 = [v2 configuration];

  return v3;
}

- (void)setButtonConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureButtonContentProvider *)self _providedView];
  [v5 setConfiguration:v4];
}

- (UIColor)contentColor
{
  v2 = [(SBUISystemApertureButtonContentProvider *)self buttonConfiguration];
  v3 = [v2 baseForegroundColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 baseBackgroundColor];
  }

  v6 = v5;

  return v6;
}

- (void)setContentColor:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureButtonContentProvider *)self buttonConfiguration];
  [v5 setBaseForegroundColor:v4];
  [v5 setBaseBackgroundColor:v4];

  [(SBUISystemApertureButtonContentProvider *)self setButtonConfiguration:v5];
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

@end