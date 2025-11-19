@interface _HKBehavior(SleepHealthUI)
- (id)hksp_systemImageNameForActivePairedDevice;
- (id)hksp_systemImageNameForCurrentDevice;
@end

@implementation _HKBehavior(SleepHealthUI)

- (id)hksp_systemImageNameForCurrentDevice
{
  v1 = [a1 currentDeviceProductType];
  v2 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:v1];
  v3 = MEMORY[0x277D1B1D8];
  v4 = [v2 identifier];
  v5 = [v3 symbolForTypeIdentifier:v4 error:0];

  v6 = [v5 name];

  return v6;
}

- (id)hksp_systemImageNameForActivePairedDevice
{
  v1 = [a1 hksp_activePairedDeviceProductType];
  if (v1)
  {
    v2 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:v1];
    v3 = MEMORY[0x277D1B1D8];
    v4 = [v2 identifier];
    v5 = [v3 symbolForTypeIdentifier:v4 error:0];

    v6 = [v5 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end