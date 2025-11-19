@interface BMClockAlarm(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMClockAlarm(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v4 = a3;
  v5 = [a1 alarmID];
  [SearchUIMobileTimerUtilities getEnablementStatusForAlarmWithIdentifier:v5 completion:v4];
}

@end