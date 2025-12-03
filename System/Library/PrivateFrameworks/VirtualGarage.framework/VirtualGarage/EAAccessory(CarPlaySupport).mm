@interface EAAccessory(CarPlaySupport)
- (uint64_t)_vg_supportsCarPlay;
@end

@implementation EAAccessory(CarPlaySupport)

- (uint64_t)_vg_supportsCarPlay
{
  if ([self supportsCarPlay] & 1) != 0 || (objc_msgSend(self, "supportsWirelessCarPlay"))
  {
    return 1;
  }

  return [self supportsUSBCarPlay];
}

@end