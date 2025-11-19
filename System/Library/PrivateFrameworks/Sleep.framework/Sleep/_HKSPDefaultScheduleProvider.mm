@interface _HKSPDefaultScheduleProvider
- (void)hksp_suggestedSleepScheduleWithCompletion:(id)a3;
@end

@implementation _HKSPDefaultScheduleProvider

- (void)hksp_suggestedSleepScheduleWithCompletion:(id)a3
{
  v3 = a3;
  v9 = objc_alloc_init(HKSPMutableSleepSchedule);
  [(HKSPMutableSleepSchedule *)v9 setEnabled:1];
  [(HKSPMutableSleepSchedule *)v9 setSleepDurationGoal:28800.0];
  v4 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  [(HKSPMutableSleepScheduleOccurrence *)v4 setWeekdays:127];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setHour:22];
  [v5 setMinute:30];
  [(HKSPMutableSleepScheduleOccurrence *)v4 setBedtimeComponents:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setHour:7];
  [v6 setMinute:0];
  [(HKSPMutableSleepScheduleOccurrence *)v4 setWakeUpComponents:v6];
  v7 = objc_alloc_init(HKSPMutableAlarmConfiguration);
  [(HKSPMutableAlarmConfiguration *)v7 setEnabled:0];
  [(HKSPMutableSleepScheduleOccurrence *)v4 setAlarmConfiguration:v7];
  [(HKSPMutableSleepSchedule *)v9 saveOccurrence:v4];
  v8 = [(HKSPMutableSleepSchedule *)v9 copy];
  v3[2](v3, v8, 0);
}

@end