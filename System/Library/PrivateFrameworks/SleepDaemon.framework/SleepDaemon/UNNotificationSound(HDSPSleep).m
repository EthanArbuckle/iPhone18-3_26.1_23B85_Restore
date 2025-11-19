@interface UNNotificationSound(HDSPSleep)
+ (id)hdsp_bedtimeReminderSound;
+ (id)hdsp_chargingReminderSound;
+ (id)hdsp_wakeDetectionSound;
+ (id)hdsp_wakeUpResultsSound;
@end

@implementation UNNotificationSound(HDSPSleep)

+ (id)hdsp_bedtimeReminderSound
{
  v0 = [MEMORY[0x277CE1F70] soundWithAlertType:13];
  [v0 setShouldRepeat:0];
  [v0 setAlertTopic:*MEMORY[0x277D71FA0]];

  return v0;
}

+ (id)hdsp_chargingReminderSound
{
  v0 = [MEMORY[0x277CE1F70] soundWithAlertType:17];
  [v0 setShouldRepeat:0];
  [v0 setAlertTopic:*MEMORY[0x277D71FB8]];

  return v0;
}

+ (id)hdsp_wakeUpResultsSound
{
  v0 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v0 setShouldRepeat:0];

  return v0;
}

+ (id)hdsp_wakeDetectionSound
{
  v0 = [MEMORY[0x277CE1F70] soundWithAlertType:26];
  [v0 setShouldRepeat:0];
  [v0 setAlertTopic:*MEMORY[0x277D71FE8]];

  return v0;
}

@end