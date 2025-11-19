@interface UIEventHIDButtonMaskFromPointerEventAndChildren
@end

@implementation UIEventHIDButtonMaskFromPointerEventAndChildren

uint64_t ___UIEventHIDButtonMaskFromPointerEventAndChildren_block_invoke(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 2)
  {
    result = IOHIDEventGetIntegerValue();
    if (result >= 1)
    {
      v3 = 1 << (result - 1);
      if (result >= 0x3F)
      {
        v3 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) |= v3;
    }
  }

  return result;
}

@end