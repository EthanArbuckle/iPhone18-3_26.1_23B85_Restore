@interface UIDevice(OFUIDeviceExtensions)
+ (id)platform;
@end

@implementation UIDevice(OFUIDeviceExtensions)

+ (id)platform
{
  v0 = OFUIDevicePlatform;
  if (!OFUIDevicePlatform)
  {
    size = 0;
    sysctlbyname("hw.machine", 0, &size, 0, 0);
    v1 = malloc_type_malloc(size, 0x5DF514CDuLL);
    sysctlbyname("hw.machine", v1, &size, 0, 0);
    v0 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:1];
    OFUIDevicePlatform = v0;
    free(v1);
  }

  return v0;
}

@end