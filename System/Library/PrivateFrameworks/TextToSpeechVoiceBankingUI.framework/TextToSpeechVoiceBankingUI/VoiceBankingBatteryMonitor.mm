@interface VoiceBankingBatteryMonitor
- (void)batteryStateChanged;
@end

@implementation VoiceBankingBatteryMonitor

- (void)batteryStateChanged
{
  v3 = objc_opt_self();

  currentDevice = [v3 currentDevice];
  batteryState = [currentDevice batteryState];

  (*(self->super.isa + 12))(batteryState != 1);
}

@end