@interface SBSpotlightLegibilityProvider
- (CGRect)_rectForSpotlightHeader;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)a3;
- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)a3 wallpaperController:(id)a4;
- (_UILegibilitySettings)legibilitySettings;
- (void)_calculateLegibilitySettings;
- (void)dealloc;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
- (void)wallpaperGeometryDidChangeForVariant:(int64_t)a3;
- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4;
@end

@implementation SBSpotlightLegibilityProvider

- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)a3
{
  v5 = +[SBWallpaperController sharedInstance];
  v6 = [(SBSpotlightLegibilityProvider *)self initWithVariant:a3 wallpaperController:v5];

  return v6;
}

- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)a3 wallpaperController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSpotlightLegibilityProvider;
  v8 = [(SBSpotlightLegibilityProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, 0);
    v9->_variant = a3;
    objc_storeStrong(&v9->_wallpaperController, a4);
    [(SBWallpaperController *)v9->_wallpaperController addObserver:v9 forVariant:a3];
  }

  return v9;
}

- (void)dealloc
{
  [(SBWallpaperController *)self->_wallpaperController removeObserver:self forVariant:self->_variant];
  v3.receiver = self;
  v3.super_class = SBSpotlightLegibilityProvider;
  [(SBSpotlightLegibilityProvider *)&v3 dealloc];
}

- (_UILegibilitySettings)legibilitySettings
{
  currentLegibilitySettings = self->_currentLegibilitySettings;
  if (!currentLegibilitySettings)
  {
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    currentLegibilitySettings = self->_currentLegibilitySettings;
  }

  return currentLegibilitySettings;
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == a3 && WeakRetained != 0)
  {
    v7 = WeakRetained;
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    [v7 providerLegibilitySettingsChanged:self];
    WeakRetained = v7;
  }
}

- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == a4 && WeakRetained != 0)
  {
    v8 = WeakRetained;
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    [v8 providerLegibilitySettingsChanged:self];
    WeakRetained = v8;
  }
}

- (void)wallpaperGeometryDidChangeForVariant:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == a3 && WeakRetained != 0)
  {
    v7 = WeakRetained;
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    [v7 providerLegibilitySettingsChanged:self];
    WeakRetained = v7;
  }
}

- (void)_calculateLegibilitySettings
{
  wallpaperController = self->_wallpaperController;
  [(SBSpotlightLegibilityProvider *)self _rectForSpotlightHeader];
  v6 = [(SBWallpaperController *)wallpaperController averageColorInRect:self->_variant forVariant:?];
  v4 = [objc_alloc(MEMORY[0x277D760A8]) initWithContentColor:v6];
  currentLegibilitySettings = self->_currentLegibilitySettings;
  self->_currentLegibilitySettings = v4;
}

- (CGRect)_rectForSpotlightHeader
{
  if (self->_variant == 1)
  {
    [MEMORY[0x277D65D38] todayViewSearchBar];
  }

  else
  {
    [MEMORY[0x277D65D38] notificationCenterSearchBar];
  }
  v3 = ;
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBWallpaperController *)self->_wallpaperController windowScene];
  v14 = [v13 screen];
  v15 = [v14 coordinateSpace];
  [v4 convertRect:v15 toCoordinateSpace:{v6, v8, v10, v12}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (SBFLegibilitySettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end