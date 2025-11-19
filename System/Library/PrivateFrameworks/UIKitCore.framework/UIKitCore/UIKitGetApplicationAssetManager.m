@interface UIKitGetApplicationAssetManager
@end

@implementation UIKitGetApplicationAssetManager

void ___UIKitGetApplicationAssetManager_block_invoke()
{
  v0 = [_UIAssetManager alloc];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = +[UIDevice currentDevice];
  v2 = -[_UIAssetManager initWithName:inBundle:idiom:](v0, "initWithName:inBundle:idiom:", @"Assets", v4, [v1 userInterfaceIdiom]);
  v3 = qword_1ED498D08;
  qword_1ED498D08 = v2;
}

@end