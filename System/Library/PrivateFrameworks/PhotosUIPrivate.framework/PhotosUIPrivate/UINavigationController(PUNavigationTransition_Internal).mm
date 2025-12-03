@interface UINavigationController(PUNavigationTransition_Internal)
- (double)px_imageModulationIntensityWithProposedValue:()PUNavigationTransition_Internal;
@end

@implementation UINavigationController(PUNavigationTransition_Internal)

- (double)px_imageModulationIntensityWithProposedValue:()PUNavigationTransition_Internal
{
  pu_currentNavigationTransition = [self pu_currentNavigationTransition];
  if ([pu_currentNavigationTransition isInteractive])
  {
    [pu_currentNavigationTransition imageModulationIntensity];
    a2 = v4;
  }

  return a2;
}

@end