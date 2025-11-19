@interface FBScene(UIOpaqueHitTesting)
- (uint64_t)ui_hitTestsAsOpaque;
- (uint64_t)ui_setHitTestsAsOpaque:()UIOpaqueHitTesting;
@end

@implementation FBScene(UIOpaqueHitTesting)

- (uint64_t)ui_hitTestsAsOpaque
{
  v2 = objc_opt_class();

  return [a1 conformsToExtension:v2];
}

- (uint64_t)ui_setHitTestsAsOpaque:()UIOpaqueHitTesting
{
  result = [a1 ui_hitTestsAsOpaque];
  if (result != a3)
  {
    v6 = objc_opt_class();
    if (a3)
    {

      return [a1 addExtension:v6];
    }

    else
    {

      return [a1 removeExtension:v6];
    }
  }

  return result;
}

@end