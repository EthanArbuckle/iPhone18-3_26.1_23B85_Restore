@interface UIApplicationIgnoresDefaultSceneForLegacyInterfaceOrientation
@end

@implementation UIApplicationIgnoresDefaultSceneForLegacyInterfaceOrientation

void ___UIApplicationIgnoresDefaultSceneForLegacyInterfaceOrientation_block_invoke()
{
  if (_UIApplicationStartsAppViewServiceListener())
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DE1 = [&unk_1EFE2D3A8 containsObject:v0] ^ 1;
  }
}

@end