@interface UIViewController(PXImageModulationManager_ForwardHook)
- (double)px_effectiveImageModulationIntensityWithProposedValue:()PXImageModulationManager_ForwardHook;
@end

@implementation UIViewController(PXImageModulationManager_ForwardHook)

- (double)px_effectiveImageModulationIntensityWithProposedValue:()PXImageModulationManager_ForwardHook
{
  v3 = [a1 pu_modalTransition];
  v4 = v3;
  if (v3)
  {
    [v3 imageModulationIntensity];
    a2 = v5;
  }

  return a2;
}

@end