@interface SBFWallpaperConfiguration
- (SBFWallpaperImage)wallpaperImage;
- (SBFWallpaperOptions)wallpaperOptions;
@end

@implementation SBFWallpaperConfiguration

- (SBFWallpaperOptions)wallpaperOptions
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfiguration;
  wallpaperOptions = [(PBUIWallpaperConfiguration *)&v4 wallpaperOptions];

  return wallpaperOptions;
}

- (SBFWallpaperImage)wallpaperImage
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfiguration;
  wallpaperImage = [(PBUIWallpaperConfiguration *)&v4 wallpaperImage];

  return wallpaperImage;
}

@end