@interface NSString
@end

@implementation NSString

void __54__NSString_PLPowerUIChargingLimitedReason__priorities__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"TLC";
  v3[1] = @"optimizedBatteryCharging";
  v4[0] = &unk_282C0C990;
  v4[1] = &unk_282C0C9A8;
  v3[2] = @"cleanEnergyCharging";
  v3[3] = @"manualChargeLimit";
  v4[2] = &unk_282C0C9C0;
  v4[3] = &unk_282C0C9D8;
  v3[4] = @"optimizedChargeLimit";
  v3[5] = @"mobileChargeMode";
  v4[4] = &unk_282C0C9F0;
  v4[5] = &unk_282C0CA08;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = qword_2811F7078;
  qword_2811F7078 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __65__NSString_PLPowerUIChargingLimitedReason__chargingIntervalTypes__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"TLC";
  v3[1] = @"optimizedBatteryCharging";
  v4[0] = &unk_282C0CA20;
  v4[1] = &unk_282C0CA38;
  v3[2] = @"cleanEnergyCharging";
  v3[3] = @"manualChargeLimit";
  v4[2] = &unk_282C0CA50;
  v4[3] = &unk_282C0CA68;
  v3[4] = @"optimizedChargeLimit";
  v3[5] = @"PowerD-BatteryGaugingMitigation";
  v4[4] = &unk_282C0CA80;
  v4[5] = &unk_282C0CA98;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = qword_2811F7088;
  qword_2811F7088 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end