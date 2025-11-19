@interface UITraitCollection(VideosUICore)
- (BOOL)isAXEnabled;
- (BOOL)isAXLargeEnabled;
- (BOOL)isAXSmallEnabled;
- (uint64_t)vuiUserInterfaceStyle;
- (unint64_t)vuiPreferredContentSizeCategory;
@end

@implementation UITraitCollection(VideosUICore)

- (uint64_t)vuiUserInterfaceStyle
{
  if ([a1 userInterfaceStyle] == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)vuiPreferredContentSizeCategory
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = [VUICoreUtilities vuiContentSizeCategoryFor:v1];

  return v2;
}

- (BOOL)isAXEnabled
{
  v1 = [a1 vuiPreferredContentSizeCategory];

  return [VUIAccessibility contentSizeCategoryIsAccessibility:v1];
}

- (BOOL)isAXSmallEnabled
{
  v1 = [a1 vuiPreferredContentSizeCategory];

  return [VUIAccessibility isAXSmallEnabled:v1];
}

- (BOOL)isAXLargeEnabled
{
  v1 = [a1 vuiPreferredContentSizeCategory];

  return [VUIAccessibility isAXLargeEnabled:v1];
}

@end