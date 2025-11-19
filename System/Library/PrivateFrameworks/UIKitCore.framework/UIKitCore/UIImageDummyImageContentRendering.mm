@interface UIImageDummyImageContentRendering
@end

@implementation UIImageDummyImageContentRendering

void ___UIImageDummyImageContentRendering_block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIDummyImageContentRendering"];
  _MergedGlobals_67_0 = [v0 BOOLValue];
}

@end