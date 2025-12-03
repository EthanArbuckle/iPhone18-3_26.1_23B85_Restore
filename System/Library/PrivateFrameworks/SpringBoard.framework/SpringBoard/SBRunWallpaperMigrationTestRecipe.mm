@interface SBRunWallpaperMigrationTestRecipe
- (void)handleVolumeIncrease;
@end

@implementation SBRunWallpaperMigrationTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBWallpaperController sharedInstance];
  wallpaperConfigurationManager = [v2 wallpaperConfigurationManager];
  [wallpaperConfigurationManager performMigrationWithFailureHandler:&__block_literal_global_202];

  v4 = +[SBWallpaperController sharedInstance];
  [v4 _updateWallpaperForLocations:3 options:0 withCompletion:0];
}

@end