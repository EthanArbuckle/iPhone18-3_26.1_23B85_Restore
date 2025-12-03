@interface UIViewController(PXImageModulationManager_ForwardHook)
- (double)px_effectiveImageModulationIntensityWithProposedValue:()PXImageModulationManager_ForwardHook;
@end

@implementation UIViewController(PXImageModulationManager_ForwardHook)

- (double)px_effectiveImageModulationIntensityWithProposedValue:()PXImageModulationManager_ForwardHook
{
  pu_modalTransition = [self pu_modalTransition];
  v4 = pu_modalTransition;
  if (pu_modalTransition)
  {
    [pu_modalTransition imageModulationIntensity];
    a2 = v5;
  }

  return a2;
}

@end