@interface CALayer(_UIHDRAnimations)
- (id)_ui_animationForHDRHeadroomUsageEnabled:()_UIHDRAnimations;
- (void)_ui_configureForHDRHeadroomUsageEnabled:()_UIHDRAnimations;
@end

@implementation CALayer(_UIHDRAnimations)

- (void)_ui_configureForHDRHeadroomUsageEnabled:()_UIHDRAnimations
{
  v6 = +[_UIHDRUsageCoordinator sharedInstance];
  if (v6)
  {
    v5 = 0.0;
    if (a3)
    {
      v5 = 1.0;
    }

    [a1 setContentsEDRStrength:v5];
  }
}

- (id)_ui_animationForHDRHeadroomUsageEnabled:()_UIHDRAnimations
{
  v5 = +[_UIHDRUsageCoordinator sharedInstance];
  v6 = [(_UIHDRUsageCoordinator *)v5 animationForHDRHeadroomUsage:a3 layer:a1];

  return v6;
}

@end