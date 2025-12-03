@interface UIView(SBUISystemApertureStyling)
- (void)sbui_systemApertureApplyMinimumAndMaximumContentSizeCategoryForCustomLayoutMode:()SBUISystemApertureStyling;
@end

@implementation UIView(SBUISystemApertureStyling)

- (void)sbui_systemApertureApplyMinimumAndMaximumContentSizeCategoryForCustomLayoutMode:()SBUISystemApertureStyling
{
  [self setMinimumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  traitCollection = [self traitCollection];
  v5 = [traitCollection sbui_preferredContentSizeCategoryAllowingTraitsForCustomLayoutMode:a3];
  [self setMaximumContentSizeCategory:v5];
}

@end