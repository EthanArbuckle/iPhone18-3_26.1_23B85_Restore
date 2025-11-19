@interface UIApplicationSceneRequestBuilder
@end

@implementation UIApplicationSceneRequestBuilder

void __93___UIApplicationSceneRequestBuilder_buildWorkspaceRequestOptionsForRequest_withContinuation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  [*(*(*(a1 + 48) + 8) + 40) setActions:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

@end