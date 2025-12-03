@interface SBSpotlightLegibilityProvider
- (CGRect)_rectForSpotlightHeader;
- (SBFLegibilitySettingsProviderDelegate)delegate;
- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)variant;
- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)variant wallpaperController:(id)controller;
- (_UILegibilitySettings)legibilitySettings;
- (void)_calculateLegibilitySettings;
- (void)dealloc;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
- (void)wallpaperGeometryDidChangeForVariant:(int64_t)variant;
- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant;
@end

@implementation SBSpotlightLegibilityProvider

- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)variant
{
  v5 = +[SBWallpaperController sharedInstance];
  v6 = [(SBSpotlightLegibilityProvider *)self initWithVariant:variant wallpaperController:v5];

  return v6;
}

- (SBSpotlightLegibilityProvider)initWithVariant:(int64_t)variant wallpaperController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBSpotlightLegibilityProvider;
  v8 = [(SBSpotlightLegibilityProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, 0);
    v9->_variant = variant;
    objc_storeStrong(&v9->_wallpaperController, controller);
    [(SBWallpaperController *)v9->_wallpaperController addObserver:v9 forVariant:variant];
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

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == variant && WeakRetained != 0)
  {
    v7 = WeakRetained;
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    [v7 providerLegibilitySettingsChanged:self];
    WeakRetained = v7;
  }
}

- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == variant && WeakRetained != 0)
  {
    v8 = WeakRetained;
    [(SBSpotlightLegibilityProvider *)self _calculateLegibilitySettings];
    [v8 providerLegibilitySettingsChanged:self];
    WeakRetained = v8;
  }
}

- (void)wallpaperGeometryDidChangeForVariant:(int64_t)variant
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_variant == variant && WeakRetained != 0)
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
  view = [v3 view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  windowScene = [(SBWallpaperController *)self->_wallpaperController windowScene];
  screen = [windowScene screen];
  coordinateSpace = [screen coordinateSpace];
  [view convertRect:coordinateSpace toCoordinateSpace:{v6, v8, v10, v12}];
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