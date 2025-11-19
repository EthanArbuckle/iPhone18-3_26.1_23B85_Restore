@interface UITraitCollection(SBWallpaperController)
- (uint64_t)prs_accessibilityContrast;
- (uint64_t)prs_interfaceStyle;
@end

@implementation UITraitCollection(SBWallpaperController)

- (uint64_t)prs_interfaceStyle
{
  result = [a1 userInterfaceStyle];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (uint64_t)prs_accessibilityContrast
{
  v1 = [a1 accessibilityContrast];
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 0;
  }
}

@end