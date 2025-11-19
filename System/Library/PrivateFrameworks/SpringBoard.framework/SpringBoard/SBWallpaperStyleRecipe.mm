@interface SBWallpaperStyleRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBWallpaperStyleRecipe

- (void)handleVolumeIncrease
{
  v4 = +[SBWallpaperController sharedInstance];
  v2 = [v4 activeVariant];
  v3 = [MEMORY[0x277CF0D38] factoryWithDuration:0.3];
  [v4 setWallpaperStyle:23 forPriority:4 forVariant:v2 withAnimationFactory:v3];
}

- (void)handleVolumeDecrease
{
  v4 = +[SBWallpaperController sharedInstance];
  v2 = [v4 activeVariant];
  v3 = [MEMORY[0x277CF0D38] factoryWithDuration:0.3];
  [v4 removeWallpaperStyleForPriority:4 forVariant:v2 withAnimationFactory:v3];
}

@end