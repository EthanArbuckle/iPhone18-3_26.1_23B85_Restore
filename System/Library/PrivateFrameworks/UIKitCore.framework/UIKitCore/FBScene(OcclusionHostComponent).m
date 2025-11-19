@interface FBScene(OcclusionHostComponent)
- (uint64_t)_occlusionHostComponent;
@end

@implementation FBScene(OcclusionHostComponent)

- (uint64_t)_occlusionHostComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end