@interface PLBatteryUIResponseTypeLastChargeLevel
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeLastChargeLevel

- (void)configure:(id)configure
{
  v4 = [MEMORY[0x277D3F180] objectForKey:@"lastChargingValue" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [(PLBatteryUIResponseTypeLastChargeLevel *)self setLastChargeValue:v4];

  v5 = [MEMORY[0x277D3F180] objectForKey:@"lastChargingTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [(PLBatteryUIResponseTypeLastChargeLevel *)self setLastChargeTimestamp:v5];
}

- (void)run
{
  v11 = *MEMORY[0x277D85DE8];
  lastChargeTimestamp = [self lastChargeTimestamp];
  lastChargeValue = [self lastChargeValue];
  v7 = 138412546;
  v8 = lastChargeTimestamp;
  v9 = 2112;
  v10 = lastChargeValue;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Missing last charge info: %@ - %@%%", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end