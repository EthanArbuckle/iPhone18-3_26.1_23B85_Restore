@interface UIActiveTimer
@end

@implementation UIActiveTimer

uint64_t __49___UIActiveTimer_initWithDuration_updateHandler___block_invoke(uint64_t a1)
{
  v2 = (CACurrentMediaTime() - *(a1 + 48)) / *(a1 + 56);
  result = (*(*(a1 + 40) + 16))(v2);
  if (v2 >= 1.0)
  {
    v4 = *(a1 + 32);

    return [v4 invalidate];
  }

  return result;
}

@end