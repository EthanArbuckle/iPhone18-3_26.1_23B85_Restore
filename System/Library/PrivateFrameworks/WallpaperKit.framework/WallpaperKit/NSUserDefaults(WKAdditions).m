@interface NSUserDefaults(WKAdditions)
- (uint64_t)wk_ignoreLogicalScreenClassForWallpaperBundle;
- (uint64_t)wk_ignoreProductTypesForWallpaperBundle;
- (void)wk_setIgnoreLogicalScreenClassForWallpaperBundle:()WKAdditions;
- (void)wk_setIgnoreProductTypesForWallpaperBundle:()WKAdditions;
@end

@implementation NSUserDefaults(WKAdditions)

- (void)wk_setIgnoreProductTypesForWallpaperBundle:()WKAdditions
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 sf_isInternalInstall];

  if (v6)
  {

    [a1 setBool:a3 forKey:@"ignoreProductTypesForWallpaperBundle"];
  }
}

- (uint64_t)wk_ignoreProductTypesForWallpaperBundle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 sf_isInternalInstall];

  if (!v3)
  {
    return 0;
  }

  return [a1 BOOLForKey:@"ignoreProductTypesForWallpaperBundle"];
}

- (void)wk_setIgnoreLogicalScreenClassForWallpaperBundle:()WKAdditions
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 sf_isInternalInstall];

  if (v6)
  {

    [a1 setBool:a3 forKey:@"ignoreLogicalScreenClassForWallpaperBundle"];
  }
}

- (uint64_t)wk_ignoreLogicalScreenClassForWallpaperBundle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 sf_isInternalInstall];

  if (!v3)
  {
    return 0;
  }

  return [a1 BOOLForKey:@"ignoreLogicalScreenClassForWallpaperBundle"];
}

@end