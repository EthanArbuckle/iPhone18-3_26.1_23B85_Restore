@interface _HKBehavior(SleepHealthUI)
- (id)hksp_systemImageNameForActivePairedDevice;
- (id)hksp_systemImageNameForCurrentDevice;
@end

@implementation _HKBehavior(SleepHealthUI)

- (id)hksp_systemImageNameForCurrentDevice
{
  currentDeviceProductType = [self currentDeviceProductType];
  v2 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:currentDeviceProductType];
  v3 = MEMORY[0x277D1B1D8];
  identifier = [v2 identifier];
  v5 = [v3 symbolForTypeIdentifier:identifier error:0];

  name = [v5 name];

  return name;
}

- (id)hksp_systemImageNameForActivePairedDevice
{
  hksp_activePairedDeviceProductType = [self hksp_activePairedDeviceProductType];
  if (hksp_activePairedDeviceProductType)
  {
    v2 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:hksp_activePairedDeviceProductType];
    v3 = MEMORY[0x277D1B1D8];
    identifier = [v2 identifier];
    v5 = [v3 symbolForTypeIdentifier:identifier error:0];

    name = [v5 name];
  }

  else
  {
    name = 0;
  }

  return name;
}

@end