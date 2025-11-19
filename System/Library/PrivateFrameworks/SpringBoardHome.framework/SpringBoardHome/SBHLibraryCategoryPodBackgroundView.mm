@interface SBHLibraryCategoryPodBackgroundView
+ (id)visualStyleSetNameForUserInterfaceStyle:(int64_t)a3;
@end

@implementation SBHLibraryCategoryPodBackgroundView

+ (id)visualStyleSetNameForUserInterfaceStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    return @"podBackgroundViewDark";
  }

  else
  {
    return @"podBackgroundViewLight";
  }
}

@end