@interface UINavigationController(PUNavigationTransition_Internal)
- (double)px_imageModulationIntensityWithProposedValue:()PUNavigationTransition_Internal;
@end

@implementation UINavigationController(PUNavigationTransition_Internal)

- (double)px_imageModulationIntensityWithProposedValue:()PUNavigationTransition_Internal
{
  v3 = [a1 pu_currentNavigationTransition];
  if ([v3 isInteractive])
  {
    [v3 imageModulationIntensity];
    a2 = v4;
  }

  return a2;
}

@end