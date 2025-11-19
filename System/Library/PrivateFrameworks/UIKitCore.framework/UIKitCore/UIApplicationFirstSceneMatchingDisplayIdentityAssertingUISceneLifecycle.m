@interface UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle
@end

@implementation UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle

void ____UIApplicationFirstSceneMatchingDisplayIdentityAssertingUISceneLifecycle_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 settings];
  v8 = [v7 displayIdentity];

  v9 = *(a1 + 32);
  if (v9 && [v9 isEqual:v8])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end