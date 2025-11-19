@interface UIEventHIDAnyChildIsTouching
@end

@implementation UIEventHIDAnyChildIsTouching

uint64_t ___UIEventHIDAnyChildIsTouching_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t ___UIEventHIDAnyChildIsTouching_block_invoke_0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end