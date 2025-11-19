@interface UIEventHIDGetChildVendorDefinedForceStageEvent
@end

@implementation UIEventHIDGetChildVendorDefinedForceStageEvent

unint64_t ___UIEventHIDGetChildVendorDefinedForceStageEvent_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetType();
  if (result == 1)
  {
    result = IOHIDEventGetIntegerValue();
    if (result == 65280)
    {
      result = IOHIDEventGetIntegerValue();
      if (result == 17)
      {
        result = IOHIDEventGetIntegerValue();
        if (result >= 0x30)
        {
          *(*(*(a1 + 32) + 8) + 24) = a2;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

@end