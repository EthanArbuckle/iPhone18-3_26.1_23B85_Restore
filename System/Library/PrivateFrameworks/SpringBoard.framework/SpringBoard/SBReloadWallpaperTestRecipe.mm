@interface SBReloadWallpaperTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBReloadWallpaperTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 _reloadWallpaperAndFlushCaches:1 completionHandler:0];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 _reloadWallpaperAndFlushCaches:0 completionHandler:0];
}

@end