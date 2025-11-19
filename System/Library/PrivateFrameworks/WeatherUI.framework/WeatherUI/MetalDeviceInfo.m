@interface MetalDeviceInfo
+ (id)sharedInfo;
@end

@implementation MetalDeviceInfo

+ (id)sharedInfo
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedDeviceInfo)
  {
    v7.receiver = v2;
    v7.super_class = &OBJC_METACLASS___MetalDeviceInfo;
    v3 = [objc_msgSendSuper2(&v7 alloc)];
    v4 = sharedDeviceInfo;
    sharedDeviceInfo = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedDeviceInfo;

  return v5;
}

@end