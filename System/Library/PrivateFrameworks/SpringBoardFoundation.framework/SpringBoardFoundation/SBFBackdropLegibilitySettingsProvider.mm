@interface SBFBackdropLegibilitySettingsProvider
- (SBFBackdropLegibilitySettingsProvider)initWithBackdropView:(id)view;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (void)backdropViewDidChange:(id)change;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation SBFBackdropLegibilitySettingsProvider

- (SBFBackdropLegibilitySettingsProvider)initWithBackdropView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = SBFBackdropLegibilitySettingsProvider;
  v6 = [(SBFBackdropLegibilitySettingsProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backdropView, view);
    legibilitySettings = v7->_legibilitySettings;
    v7->_legibilitySettings = 0;

    objc_storeWeak(&v7->_delegate, 0);
  }

  return v7;
}

- (void)dealloc
{
  [(SBFBackdropLegibilitySettingsProvider *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = SBFBackdropLegibilitySettingsProvider;
  [(SBFBackdropLegibilitySettingsProvider *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    backdropView = self->_backdropView;
    if (obj)
    {
      [(_UIBackdropView *)backdropView addObserver:self];
      [(SBFBackdropLegibilitySettingsProvider *)self backdropViewDidChange:self->_backdropView];
    }

    else
    {
      [(_UIBackdropView *)backdropView removeObserver:self];
    }

    v5 = obj;
  }
}

- (void)backdropViewDidChange:(id)change
{
  inputSettings = [change inputSettings];
  colorSettings = [inputSettings colorSettings];

  if (colorSettings)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD5B8]);
    color = [colorSettings color];
    v7 = [v5 initWithContentColor:color];
    legibilitySettings = self->_legibilitySettings;
    self->_legibilitySettings = v7;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained providerLegibilitySettingsChanged:self];
  }
}

- (SBFLegibilitySettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end