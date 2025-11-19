@interface VoiceBankingBatteryMonitor
- (void)batteryStateChanged;
@end

@implementation VoiceBankingBatteryMonitor

- (void)batteryStateChanged
{
  v3 = objc_opt_self();

  v4 = [v3 currentDevice];
  v5 = [v4 batteryState];

  (*(self->super.isa + 12))(v5 != 1);
}

@end