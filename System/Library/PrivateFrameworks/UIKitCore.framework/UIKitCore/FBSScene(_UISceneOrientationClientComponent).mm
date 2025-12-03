@interface FBSScene(_UISceneOrientationClientComponent)
- (uint64_t)ui_orientationClientSceneComponent;
@end

@implementation FBSScene(_UISceneOrientationClientComponent)

- (uint64_t)ui_orientationClientSceneComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end