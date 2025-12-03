@interface FBScene(InterfaceProtection)
- (uint64_t)ui_interfaceProtectionHostComponent;
@end

@implementation FBScene(InterfaceProtection)

- (uint64_t)ui_interfaceProtectionHostComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end