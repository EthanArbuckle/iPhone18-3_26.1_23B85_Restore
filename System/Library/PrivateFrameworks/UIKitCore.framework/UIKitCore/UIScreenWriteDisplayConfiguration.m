@interface UIScreenWriteDisplayConfiguration
@end

@implementation UIScreenWriteDisplayConfiguration

void ___UIScreenWriteDisplayConfiguration_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(UIScreen *)WeakRetained _evaluateCapturedStateForReason:?];
}

@end