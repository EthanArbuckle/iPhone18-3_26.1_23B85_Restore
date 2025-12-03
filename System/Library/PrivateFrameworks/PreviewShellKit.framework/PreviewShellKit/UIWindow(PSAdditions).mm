@interface UIWindow(PSAdditions)
- (uint64_t)uv_createSnapshotImageFromIOSurface;
@end

@implementation UIWindow(PSAdditions)

- (uint64_t)uv_createSnapshotImageFromIOSurface
{
  result = [self createIOSurface];
  if (result)
  {

    return MEMORY[0x2821DE470]();
  }

  return result;
}

@end