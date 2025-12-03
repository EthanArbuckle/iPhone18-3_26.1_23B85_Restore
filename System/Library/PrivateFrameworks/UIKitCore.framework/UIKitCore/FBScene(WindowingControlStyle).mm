@interface FBScene(WindowingControlStyle)
- (uint64_t)ui_windowingControl;
@end

@implementation FBScene(WindowingControlStyle)

- (uint64_t)ui_windowingControl
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end