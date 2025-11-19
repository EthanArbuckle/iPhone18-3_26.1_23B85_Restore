@interface UIView(SBUISystemApertureStyling)
- (void)sbui_systemApertureApplyMinimumAndMaximumContentSizeCategoryForCustomLayoutMode:()SBUISystemApertureStyling;
@end

@implementation UIView(SBUISystemApertureStyling)

- (void)sbui_systemApertureApplyMinimumAndMaximumContentSizeCategoryForCustomLayoutMode:()SBUISystemApertureStyling
{
  [a1 setMinimumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v6 = [a1 traitCollection];
  v5 = [v6 sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:a3];
  [a1 setMaximumContentSizeCategory:v5];
}

@end