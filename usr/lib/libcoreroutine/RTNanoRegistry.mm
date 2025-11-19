@interface RTNanoRegistry
- (BOOL)isTinkerPaired;
- (BOOL)isWatchPaired;
@end

@implementation RTNanoRegistry

- (BOOL)isWatchPaired
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getPairedDevices];
  v4 = [v3 firstObject];

  return v4 != 0;
}

- (BOOL)isTinkerPaired
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:*MEMORY[0x277D2BB28]];
  LOBYTE(v3) = [v6 BOOLValue];

  return v3;
}

@end