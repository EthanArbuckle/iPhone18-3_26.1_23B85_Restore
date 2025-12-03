@interface MetalDeviceInfo
+ (id)sharedInfo;
@end

@implementation MetalDeviceInfo

+ (id)sharedInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedDeviceInfo)
  {
    v7.receiver = selfCopy;
    v7.super_class = &OBJC_METACLASS___MetalDeviceInfo;
    v3 = [objc_msgSendSuper2(&v7 alloc)];
    v4 = sharedDeviceInfo;
    sharedDeviceInfo = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedDeviceInfo;

  return v5;
}

@end