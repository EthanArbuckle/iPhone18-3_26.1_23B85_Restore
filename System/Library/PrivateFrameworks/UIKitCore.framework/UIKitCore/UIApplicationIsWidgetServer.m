@interface UIApplicationIsWidgetServer
@end

@implementation UIApplicationIsWidgetServer

void ___UIApplicationIsWidgetServer_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [v0 isEqualToString:UIKeyboardWidgetServerBundleIdentifier];

  if (v1)
  {
    byte_1EA992DAF = 1;
  }
}

@end