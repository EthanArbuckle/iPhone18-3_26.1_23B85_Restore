@interface RTNanoRegistry
- (BOOL)isTinkerPaired;
- (BOOL)isWatchPaired;
@end

@implementation RTNanoRegistry

- (BOOL)isWatchPaired
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getPairedDevices = [mEMORY[0x277D2BCF8] getPairedDevices];
  firstObject = [getPairedDevices firstObject];

  return firstObject != 0;
}

- (BOOL)isTinkerPaired
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  v6 = [firstObject valueForProperty:*MEMORY[0x277D2BB28]];
  LOBYTE(activePairedDeviceSelectorBlock) = [v6 BOOLValue];

  return activePairedDeviceSelectorBlock;
}

@end