@interface SBFWallpaperConfiguration
- (SBFWallpaperImage)wallpaperImage;
- (SBFWallpaperOptions)wallpaperOptions;
@end

@implementation SBFWallpaperConfiguration

- (SBFWallpaperOptions)wallpaperOptions
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfiguration;
  v2 = [(PBUIWallpaperConfiguration *)&v4 wallpaperOptions];

  return v2;
}

- (SBFWallpaperImage)wallpaperImage
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfiguration;
  v2 = [(PBUIWallpaperConfiguration *)&v4 wallpaperImage];

  return v2;
}

@end