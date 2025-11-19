@interface SBFBackdropLegibilitySettingsProvider
- (SBFBackdropLegibilitySettingsProvider)initWithBackdropView:(id)a3;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (void)backdropViewDidChange:(id)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation SBFBackdropLegibilitySettingsProvider

- (SBFBackdropLegibilitySettingsProvider)initWithBackdropView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBFBackdropLegibilitySettingsProvider;
  v6 = [(SBFBackdropLegibilitySettingsProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backdropView, a3);
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)backdropViewDidChange:(id)a3
{
  v4 = [a3 inputSettings];
  v10 = [v4 colorSettings];

  if (v10)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD5B8]);
    v6 = [v10 color];
    v7 = [v5 initWithContentColor:v6];
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