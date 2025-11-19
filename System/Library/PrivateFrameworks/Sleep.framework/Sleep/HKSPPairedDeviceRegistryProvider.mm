@interface HKSPPairedDeviceRegistryProvider
- (id)getActivePairedDevice;
@end

@implementation HKSPPairedDeviceRegistryProvider

- (id)getActivePairedDevice
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

@end