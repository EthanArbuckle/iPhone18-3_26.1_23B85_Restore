@interface UIHDRUsageCoordinatorSceneComponent
@end

@implementation UIHDRUsageCoordinatorSceneComponent

uint64_t __61___UIHDRUsageCoordinatorSceneComponent__powerStateDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = +[_UIHDRUsageCoordinator sharedInstance];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [(_UIHDRUsageCoordinator *)v3 prepareSceneForLowPowerModeChange:?];

    v2 = *(a1 + 32);
  }

  return [v2 _invalidateTraitOverrides];
}

@end