@interface FBSScene(ViewServiceComponent)
- (uint64_t)_viewServiceComponent;
@end

@implementation FBSScene(ViewServiceComponent)

- (uint64_t)_viewServiceComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end