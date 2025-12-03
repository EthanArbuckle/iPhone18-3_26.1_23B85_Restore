@interface SBDashBoardLegibilityProvider
- (CSLegibilityProviderDelegate)legibilityProviderDelegate;
- (SBDashBoardLegibilityProvider)init;
- (SBDashBoardLegibilityProvider)initWithWallpaperController:(id)controller;
- (void)_notifyDelegate;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant;
@end

@implementation SBDashBoardLegibilityProvider

- (CSLegibilityProviderDelegate)legibilityProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_legibilityProviderDelegate);

  return WeakRetained;
}

- (void)_notifyDelegate
{
  legibilityProviderDelegate = [(SBDashBoardLegibilityProvider *)self legibilityProviderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [legibilityProviderDelegate coverSheetLegibilityProviderDidUpdate:self];
  }
}

- (SBDashBoardLegibilityProvider)init
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [(SBDashBoardLegibilityProvider *)self initWithWallpaperController:v3];

  return v4;
}

- (SBDashBoardLegibilityProvider)initWithWallpaperController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBDashBoardLegibilityProvider;
  v6 = [(SBDashBoardLegibilityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperController, controller);
    [(SBWallpaperController *)v7->_wallpaperController addObserver:v7 forVariant:0];
  }

  return v7;
}

- (void)wallpaperLegibilitySettingsDidChange:(id)change forVariant:(int64_t)variant
{
  if (!variant)
  {
    [(SBDashBoardLegibilityProvider *)self _notifyDelegate];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  if (!variant)
  {
    [(SBDashBoardLegibilityProvider *)self _notifyDelegate];
  }
}

@end