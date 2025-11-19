@interface UISolariumIsLowPerformanceDevice
@end

@implementation UISolariumIsLowPerformanceDevice

uint64_t ___UISolariumIsLowPerformanceDevice_block_invoke()
{
  result = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  if (result == 2)
  {
    result = MGGetSInt64Answer();
    v1 = result == 28672 || result == 32785;
  }

  else if (result == 1)
  {
    result = MGGetSInt64Answer();
    v1 = 1;
    if ((result - 32800) > 0x10 || ((1 << (result - 32)) & 0x10081) == 0)
    {
      v1 = result == 33025;
    }
  }

  else
  {
    v1 = 0;
  }

  byte_1ED49E111 = v1;
  return result;
}

@end