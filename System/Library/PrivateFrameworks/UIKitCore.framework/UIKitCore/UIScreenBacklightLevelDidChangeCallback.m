@interface UIScreenBacklightLevelDidChangeCallback
@end

@implementation UIScreenBacklightLevelDidChangeCallback

void ___UIScreenBacklightLevelDidChangeCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _postBrightnessDidChangeNotificationIfAppropriate];

  objc_autoreleasePoolPop(v2);
}

@end