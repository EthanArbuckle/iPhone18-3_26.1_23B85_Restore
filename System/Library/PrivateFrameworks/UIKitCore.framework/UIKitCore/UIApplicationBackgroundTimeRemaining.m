@interface UIApplicationBackgroundTimeRemaining
@end

@implementation UIApplicationBackgroundTimeRemaining

uint64_t ___UIApplicationBackgroundTimeRemaining_block_invoke(uint64_t a1)
{
  result = BKSProcessAssertionBackgroundTimeRemaining();
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

@end