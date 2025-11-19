@interface TKTonePickerViewController(SleepHealthUI)
+ (id)hksh_alarmPickerWithToneIdentifier:()SleepHealthUI vibrationIdentifier:styleProvider:;
@end

@implementation TKTonePickerViewController(SleepHealthUI)

+ (id)hksh_alarmPickerWithToneIdentifier:()SleepHealthUI vibrationIdentifier:styleProvider:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] _initWithAlertType:13 tableViewStyle:2];
  [v11 setTopic:*MEMORY[0x277D71FA8]];
  [v11 setShowsNone:0];
  [v11 setShowsVibrations:1];
  v12 = HKSHUILocalizedString(@"SCHEDULE_OCCURRENCE_ALARM_SOUND_TITLE");
  [v11 setTitle:v12];

  if (v8)
  {
    [v11 setSelectedToneIdentifier:v8];
  }

  if (v9)
  {
    [v11 setSelectedVibrationIdentifier:v9];
  }

  [v11 setStyleProvider:v10];

  return v11;
}

@end