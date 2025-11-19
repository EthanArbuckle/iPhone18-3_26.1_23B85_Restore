@interface FBScene(_UIApplicationSceneDisplayHostComponent)
- (uint64_t)_displayHostComponent;
@end

@implementation FBScene(_UIApplicationSceneDisplayHostComponent)

- (uint64_t)_displayHostComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end