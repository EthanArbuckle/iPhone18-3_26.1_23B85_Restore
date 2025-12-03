@interface SBDashBoardVibrantWallpaperChevronView
- (CSWallpaperColorProvider)wallpaperColorProvider;
- (SBDashBoardVibrantWallpaperChevronView)init;
- (SBDashBoardVibrantWallpaperChevronView)initWithColor:(id)color;
- (void)_updateVibrancy;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SBDashBoardVibrantWallpaperChevronView

- (SBDashBoardVibrantWallpaperChevronView)init
{
  if ([MEMORY[0x277D02CA8] supportsVibrancy])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;
  v4 = [(SBDashBoardVibrantWallpaperChevronView *)self initWithColor:v3];

  return v4;
}

- (SBDashBoardVibrantWallpaperChevronView)initWithColor:(id)color
{
  v7.receiver = self;
  v7.super_class = SBDashBoardVibrantWallpaperChevronView;
  v3 = [(SBUIChevronView *)&v7 initWithColor:color];
  if (v3)
  {
    v4 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:0];
    effectView = v3->_effectView;
    v3->_effectView = v4;

    [(PBUIWallpaperEffectViewBase *)v3->_effectView setStyle:10];
  }

  return v3;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBDashBoardVibrantWallpaperChevronView *)self _updateVibrancy];
  }
}

- (void)_updateVibrancy
{
  if ([MEMORY[0x277D02CA8] supportsVibrancy])
  {
    v3 = MEMORY[0x277D02CA8];
    effectView = self->_effectView;
    WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
    [v3 updateVibrantView:self backgroundView:effectView colorProvider:?];
  }

  else
  {
    WeakRetained = [(_UILegibilitySettings *)self->_legibilitySettings secondaryColor];
    [(SBUIChevronView *)self setVibrantSettings:0];
    [(SBUIChevronView *)self setBackgroundView:0];
    [(SBDashBoardVibrantWallpaperChevronView *)self setBackgroundColor:0];
    [(SBUIChevronView *)self setColor:WeakRetained];
  }
}

- (CSWallpaperColorProvider)wallpaperColorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  return WeakRetained;
}

@end