@interface FBSScene(SBSUICameraOverlaySceneClientMonitor)
- (uint64_t)cameraOverlaySceneClientMonitor;
@end

@implementation FBSScene(SBSUICameraOverlaySceneClientMonitor)

- (uint64_t)cameraOverlaySceneClientMonitor
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end