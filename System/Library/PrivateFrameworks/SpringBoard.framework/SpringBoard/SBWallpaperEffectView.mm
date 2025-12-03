@interface SBWallpaperEffectView
- (PBUIWallpaperController)wallpaperController;
- (SBWallpaperEffectView)initWithWallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options;
@end

@implementation SBWallpaperEffectView

- (SBWallpaperEffectView)initWithWallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options
{
  v7 = +[SBWallpaperController sharedInstance];
  v8 = [(PBUIWallpaperEffectViewBase *)self initWithWallpaperPresenter:v7 variant:variant transformOptions:options];

  return v8;
}

- (PBUIWallpaperController)wallpaperController
{
  wallpaperPresenter = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = wallpaperPresenter;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end