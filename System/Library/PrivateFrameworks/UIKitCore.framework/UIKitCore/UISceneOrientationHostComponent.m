@interface UISceneOrientationHostComponent
@end

@implementation UISceneOrientationHostComponent

id __62___UISceneOrientationHostComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) interfaceOrientationLockState];
  if (v3 > 2)
  {
    v4 = &stru_1EFB14550;
  }

  else
  {
    v4 = off_1E711B350[v3];
  }

  v5 = [v2 appendObject:v4 withName:@"lockState"];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) clientInterfaceOrientationLockPreference];
  if (v7 > 2)
  {
    v8 = &stru_1EFB14550;
  }

  else
  {
    v8 = off_1E711B368[v7];
  }

  return [v6 appendObject:v8 withName:@"clientLockPreference"];
}

@end