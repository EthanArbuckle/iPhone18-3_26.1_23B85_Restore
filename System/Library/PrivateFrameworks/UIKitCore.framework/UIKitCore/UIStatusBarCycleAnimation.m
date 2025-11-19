@interface UIStatusBarCycleAnimation
@end

@implementation UIStatusBarCycleAnimation

double __56___UIStatusBarCycleAnimation_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = ceil(*(*(*(a1 + 56) + 8) + 24));
  v2 = *(a1 + 72);
  if ([*(a1 + 32) autoreverses])
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) * 0.5;
    v2 = v2 + v2;
    if (*(*(a1 + 40) + 8) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = ceil(*(*(*(a1 + 48) + 8) + 24));
    }
  }

  result = *(a1 + 80) + v2 * *(*(*(a1 + 48) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

@end