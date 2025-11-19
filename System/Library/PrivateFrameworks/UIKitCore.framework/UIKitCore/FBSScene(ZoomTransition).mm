@interface FBSScene(ZoomTransition)
- (uint64_t)ui_zoomTransitionComponent;
@end

@implementation FBSScene(ZoomTransition)

- (uint64_t)ui_zoomTransitionComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end