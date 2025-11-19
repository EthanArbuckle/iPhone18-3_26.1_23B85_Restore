@interface EAAccessory(CarPlaySupport)
- (uint64_t)_vg_supportsCarPlay;
@end

@implementation EAAccessory(CarPlaySupport)

- (uint64_t)_vg_supportsCarPlay
{
  if ([a1 supportsCarPlay] & 1) != 0 || (objc_msgSend(a1, "supportsWirelessCarPlay"))
  {
    return 1;
  }

  return [a1 supportsUSBCarPlay];
}

@end