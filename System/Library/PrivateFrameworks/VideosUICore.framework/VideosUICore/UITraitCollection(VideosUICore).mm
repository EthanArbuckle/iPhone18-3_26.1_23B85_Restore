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
  if ([self userInterfaceStyle] == 1)
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
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  v2 = [VUICoreUtilities vuiContentSizeCategoryFor:preferredContentSizeCategory];

  return v2;
}

- (BOOL)isAXEnabled
{
  vuiPreferredContentSizeCategory = [self vuiPreferredContentSizeCategory];

  return [VUIAccessibility contentSizeCategoryIsAccessibility:vuiPreferredContentSizeCategory];
}

- (BOOL)isAXSmallEnabled
{
  vuiPreferredContentSizeCategory = [self vuiPreferredContentSizeCategory];

  return [VUIAccessibility isAXSmallEnabled:vuiPreferredContentSizeCategory];
}

- (BOOL)isAXLargeEnabled
{
  vuiPreferredContentSizeCategory = [self vuiPreferredContentSizeCategory];

  return [VUIAccessibility isAXLargeEnabled:vuiPreferredContentSizeCategory];
}

@end