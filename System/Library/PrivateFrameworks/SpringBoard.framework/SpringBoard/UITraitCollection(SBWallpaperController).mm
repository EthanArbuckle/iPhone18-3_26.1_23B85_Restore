@interface UITraitCollection(SBWallpaperController)
- (uint64_t)prs_accessibilityContrast;
- (uint64_t)prs_interfaceStyle;
@end

@implementation UITraitCollection(SBWallpaperController)

- (uint64_t)prs_interfaceStyle
{
  result = [self userInterfaceStyle];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (uint64_t)prs_accessibilityContrast
{
  accessibilityContrast = [self accessibilityContrast];
  if (accessibilityContrast == 1)
  {
    return 2;
  }

  else
  {
    return accessibilityContrast == 0;
  }
}

@end