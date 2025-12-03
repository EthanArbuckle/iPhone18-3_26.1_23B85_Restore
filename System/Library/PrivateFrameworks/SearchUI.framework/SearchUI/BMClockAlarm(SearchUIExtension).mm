@interface BMClockAlarm(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMClockAlarm(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v4 = a3;
  alarmID = [self alarmID];
  [SearchUIMobileTimerUtilities getEnablementStatusForAlarmWithIdentifier:alarmID completion:v4];
}

@end