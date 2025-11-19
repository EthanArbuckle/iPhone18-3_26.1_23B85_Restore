@interface UISceneAccessClassComponentArray
@end

@implementation UISceneAccessClassComponentArray

void ____UISceneAccessClassComponentArray_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = qword_1ED49C380;
  qword_1ED49C380 = v0;

  v2 = dispatch_queue_create("com.apple.UIKit.UISceneClassBasedComponentAccess", MEMORY[0x1E69E96A8]);
  v3 = qword_1ED49C388;
  qword_1ED49C388 = v2;
}

@end