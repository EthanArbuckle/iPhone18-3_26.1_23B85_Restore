@interface UISceneOrientationClientComponent
@end

@implementation UISceneOrientationClientComponent

void __64___UISceneOrientationClientComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _NSStringFromUIOrientationLockState([*(a1 + 40) interfaceOrientationLockState]);
  v4 = [v2 appendObject:v3 withName:@"lockState"];

  v5 = *(a1 + 32);
  v7 = _NSStringFromUIOrientationLockPreference([*(a1 + 40) interfaceOrientationLockPreference]);
  v6 = [v5 appendObject:v7 withName:@"lockPreference"];
}

@end