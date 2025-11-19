@interface UIEventHIDGetChildAccessibilityVendorDefinedEvent
@end

@implementation UIEventHIDGetChildAccessibilityVendorDefinedEvent

uint64_t ___UIEventHIDGetChildAccessibilityVendorDefinedEvent_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetIntegerValue();
  if (result == 65280)
  {
    result = IOHIDEventGetIntegerValue();
    if (result == 34)
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
      *a4 = 1;
    }
  }

  return result;
}

@end