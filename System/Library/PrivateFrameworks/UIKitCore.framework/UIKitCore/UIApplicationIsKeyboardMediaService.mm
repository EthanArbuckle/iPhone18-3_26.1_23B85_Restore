@interface UIApplicationIsKeyboardMediaService
@end

@implementation UIApplicationIsKeyboardMediaService

void ___UIApplicationIsKeyboardMediaService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [v0 isEqualToString:UIKeyboardMediaServiceBundleIdentifier];

  if (v1)
  {
    byte_1EA992DAE = 1;
  }
}

@end