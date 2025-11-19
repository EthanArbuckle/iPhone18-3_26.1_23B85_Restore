@interface UIScreenAccessibilityInvertColorsDidChangeCallback
@end

@implementation UIScreenAccessibilityInvertColorsDidChangeCallback

void ___UIScreenAccessibilityInvertColorsDidChangeCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _softwareDimmingWindow];
  [v3 updateOverlayColor];

  objc_autoreleasePoolPop(v2);
}

@end