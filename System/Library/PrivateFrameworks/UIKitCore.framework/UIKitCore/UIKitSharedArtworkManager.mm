@interface UIKitSharedArtworkManager
@end

@implementation UIKitSharedArtworkManager

void ____UIKitSharedArtworkManager_block_invoke()
{
  v0 = [_UIAssetManager alloc];
  v1 = MEMORY[0x1E696AAE8];
  v2 = _UIKitResourceBundlePath(@"Artwork.bundle");
  v3 = [v1 bundleWithPath:v2];
  v4 = +[UIDevice currentDevice];
  v5 = -[_UIAssetManager _initWithName:inBundle:idiom:type:](v0, "_initWithName:inBundle:idiom:type:", @"UIKit_Artwork", v3, [v4 userInterfaceIdiom], 1);
  v6 = qword_1ED4A2648;
  qword_1ED4A2648 = v5;

  if (!qword_1ED4A2648)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIAssetManager *__UIKitSharedArtworkManager(void)_block_invoke"];
    [v8 handleFailureInFunction:v7 file:@"_UIAssetManager.m" lineNumber:616 description:@"The UIKit artwork manager should never be nil. This likely means that the UIKit_Artwork.bundle inside UIKitCore.framework is missing."];
  }
}

@end