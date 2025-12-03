@interface SBHLibraryCategoryPodBackgroundView
+ (id)visualStyleSetNameForUserInterfaceStyle:(int64_t)style;
@end

@implementation SBHLibraryCategoryPodBackgroundView

+ (id)visualStyleSetNameForUserInterfaceStyle:(int64_t)style
{
  if (style == 2)
  {
    return @"podBackgroundViewDark";
  }

  else
  {
    return @"podBackgroundViewLight";
  }
}

@end