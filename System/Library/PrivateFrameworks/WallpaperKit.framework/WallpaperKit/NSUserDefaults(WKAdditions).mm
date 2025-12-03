@interface NSUserDefaults(WKAdditions)
- (uint64_t)wk_ignoreLogicalScreenClassForWallpaperBundle;
- (uint64_t)wk_ignoreProductTypesForWallpaperBundle;
- (void)wk_setIgnoreLogicalScreenClassForWallpaperBundle:()WKAdditions;
- (void)wk_setIgnoreProductTypesForWallpaperBundle:()WKAdditions;
@end

@implementation NSUserDefaults(WKAdditions)

- (void)wk_setIgnoreProductTypesForWallpaperBundle:()WKAdditions
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {

    [self setBool:a3 forKey:@"ignoreProductTypesForWallpaperBundle"];
  }
}

- (uint64_t)wk_ignoreProductTypesForWallpaperBundle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (!sf_isInternalInstall)
  {
    return 0;
  }

  return [self BOOLForKey:@"ignoreProductTypesForWallpaperBundle"];
}

- (void)wk_setIgnoreLogicalScreenClassForWallpaperBundle:()WKAdditions
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {

    [self setBool:a3 forKey:@"ignoreLogicalScreenClassForWallpaperBundle"];
  }
}

- (uint64_t)wk_ignoreLogicalScreenClassForWallpaperBundle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (!sf_isInternalInstall)
  {
    return 0;
  }

  return [self BOOLForKey:@"ignoreLogicalScreenClassForWallpaperBundle"];
}

@end