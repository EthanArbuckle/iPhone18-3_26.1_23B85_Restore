@interface SBWallpaperEffectView
- (PBUIWallpaperController)wallpaperController;
- (SBWallpaperEffectView)initWithWallpaperVariant:(int64_t)a3 transformOptions:(unint64_t)a4;
@end

@implementation SBWallpaperEffectView

- (SBWallpaperEffectView)initWithWallpaperVariant:(int64_t)a3 transformOptions:(unint64_t)a4
{
  v7 = +[SBWallpaperController sharedInstance];
  v8 = [(PBUIWallpaperEffectViewBase *)self initWithWallpaperPresenter:v7 variant:a3 transformOptions:a4];

  return v8;
}

- (PBUIWallpaperController)wallpaperController
{
  v2 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end