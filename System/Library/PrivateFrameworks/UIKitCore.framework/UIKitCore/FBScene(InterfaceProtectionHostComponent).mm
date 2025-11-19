@interface FBScene(InterfaceProtectionHostComponent)
- (uint64_t)_interfaceProtectionHostComponent;
@end

@implementation FBScene(InterfaceProtectionHostComponent)

- (uint64_t)_interfaceProtectionHostComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end