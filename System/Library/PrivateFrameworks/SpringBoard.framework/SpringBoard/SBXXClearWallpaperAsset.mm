@interface SBXXClearWallpaperAsset
@end

@implementation SBXXClearWallpaperAsset

void ___SBXXClearWallpaperAsset_block_invoke()
{
  v1 = +[SBWallpaperController sharedInstance];
  v0 = [v1 wallpaperConfigurationManager];
  [v0 removeVideoForVariants:3];
}

@end