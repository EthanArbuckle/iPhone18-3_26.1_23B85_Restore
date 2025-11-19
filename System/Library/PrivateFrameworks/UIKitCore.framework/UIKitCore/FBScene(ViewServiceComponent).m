@interface FBScene(ViewServiceComponent)
- (uint64_t)ui_viewServiceComponent;
@end

@implementation FBScene(ViewServiceComponent)

- (uint64_t)ui_viewServiceComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end