@interface HKSPPairedDeviceRegistryProvider
- (id)getActivePairedDevice;
@end

@implementation HKSPPairedDeviceRegistryProvider

- (id)getActivePairedDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  return getActivePairedDevice;
}

@end