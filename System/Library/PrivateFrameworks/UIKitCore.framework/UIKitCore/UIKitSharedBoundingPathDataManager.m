@interface UIKitSharedBoundingPathDataManager
@end

@implementation UIKitSharedBoundingPathDataManager

void ____UIKitSharedBoundingPathDataManager_block_invoke()
{
  v0 = [_UIAssetManager alloc];
  v1 = MEMORY[0x1E696AAE8];
  v6 = _UIKitResourceBundlePath(@"BoundingPathData.bundle");
  v2 = [v1 bundleWithPath:v6];
  v3 = +[UIDevice currentDevice];
  v4 = -[_UIAssetManager _initWithName:inBundle:idiom:type:](v0, "_initWithName:inBundle:idiom:type:", @"UIKit_BoundingPathData", v2, [v3 userInterfaceIdiom], 1);
  v5 = qword_1ED4A2658;
  qword_1ED4A2658 = v4;
}

@end