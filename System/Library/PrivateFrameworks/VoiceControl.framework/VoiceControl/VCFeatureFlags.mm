@interface VCFeatureFlags
+ (BOOL)isVirtualMachine;
- (VCFeatureFlags)init;
@end

@implementation VCFeatureFlags

+ (BOOL)isVirtualMachine
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    isVirtualDevice = MobileGestalt_get_isVirtualDevice();

    LOBYTE(v2) = isVirtualDevice;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (VCFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = VCFeatureFlags;
  return [(VCFeatureFlags *)&v3 init];
}

@end