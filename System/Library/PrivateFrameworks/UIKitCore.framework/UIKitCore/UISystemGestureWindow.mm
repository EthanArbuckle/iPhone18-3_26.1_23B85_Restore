@interface UISystemGestureWindow
@end

@implementation UISystemGestureWindow

uint64_t __44___UISystemGestureWindow_hitTest_withEvent___block_invoke()
{
  _MergedGlobals_1129 = 0;
  result = [MEMORY[0x1E699FAB8] isEmulatedDevice];
  _MergedGlobals_1129 |= result;
  return result;
}

@end