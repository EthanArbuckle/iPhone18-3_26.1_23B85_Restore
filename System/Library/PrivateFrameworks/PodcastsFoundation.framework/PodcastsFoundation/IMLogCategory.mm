@interface IMLogCategory
+ (OS_os_log)accessibility;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)imageCache;
+ (OS_os_log)player;
@end

@implementation IMLogCategory

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[IMLogCategory defaultCategory];
  }

  v3 = defaultCategory_IMLogCategoryDefault;

  return v3;
}

uint64_t __32__IMLogCategory_defaultCategory__block_invoke()
{
  defaultCategory_IMLogCategoryDefault = os_log_create("com.apple.podcasts.imframeworks", "Podcasts");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)accessibility
{
  if (accessibility_onceToken != -1)
  {
    +[IMLogCategory accessibility];
  }

  v3 = accessibility_IMLogCategoryAccessibility;

  return v3;
}

uint64_t __30__IMLogCategory_accessibility__block_invoke()
{
  accessibility_IMLogCategoryAccessibility = os_log_create("com.apple.podcasts.imframeworks", "Accessibility");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[IMLogCategory imageCache];
  }

  v3 = imageCache_IMLogCategoryImageCache;

  return v3;
}

uint64_t __27__IMLogCategory_imageCache__block_invoke()
{
  imageCache_IMLogCategoryImageCache = os_log_create("com.apple.podcasts.imframeworks", "ImageCache");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)player
{
  if (player_onceToken != -1)
  {
    +[IMLogCategory player];
  }

  v3 = player_IMLogCategoryPlayer;

  return v3;
}

uint64_t __23__IMLogCategory_player__block_invoke()
{
  player_IMLogCategoryPlayer = os_log_create("com.apple.podcasts.imframeworks", "Player");

  return MEMORY[0x1EEE66BB8]();
}

@end