@interface SBDashBoardLegibilityProvider
- (CSLegibilityProviderDelegate)legibilityProviderDelegate;
- (SBDashBoardLegibilityProvider)init;
- (SBDashBoardLegibilityProvider)initWithWallpaperController:(id)a3;
- (void)_notifyDelegate;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4;
@end

@implementation SBDashBoardLegibilityProvider

- (CSLegibilityProviderDelegate)legibilityProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_legibilityProviderDelegate);

  return WeakRetained;
}

- (void)_notifyDelegate
{
  v3 = [(SBDashBoardLegibilityProvider *)self legibilityProviderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 coverSheetLegibilityProviderDidUpdate:self];
  }
}

- (SBDashBoardLegibilityProvider)init
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [(SBDashBoardLegibilityProvider *)self initWithWallpaperController:v3];

  return v4;
}

- (SBDashBoardLegibilityProvider)initWithWallpaperController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDashBoardLegibilityProvider;
  v6 = [(SBDashBoardLegibilityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperController, a3);
    [(SBWallpaperController *)v7->_wallpaperController addObserver:v7 forVariant:0];
  }

  return v7;
}

- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4
{
  if (!a4)
  {
    [(SBDashBoardLegibilityProvider *)self _notifyDelegate];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  if (!a3)
  {
    [(SBDashBoardLegibilityProvider *)self _notifyDelegate];
  }
}

@end