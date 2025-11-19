@interface UIApplicationSupportsGlobalEdgeSwipeTouches
@end

@implementation UIApplicationSupportsGlobalEdgeSwipeTouches

void ___UIApplicationSupportsGlobalEdgeSwipeTouches_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    LOBYTE(v0) = [&unk_1EFE2D360 containsObject:v0];
    v1 = v2;
  }

  byte_1EA992DA8 = v0;
}

@end