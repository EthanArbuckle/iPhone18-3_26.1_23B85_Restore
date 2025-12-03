@interface FBScene(_UISceneOrientationHostComponent)
- (uint64_t)ui_orientationHostSceneComponent;
@end

@implementation FBScene(_UISceneOrientationHostComponent)

- (uint64_t)ui_orientationHostSceneComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end