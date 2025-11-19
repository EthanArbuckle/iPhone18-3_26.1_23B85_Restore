@interface UNMutableNotificationContent(HDSPSleep)
+ (id)hdsp_notificationContentWithEnvironment:()HDSPSleep;
@end

@implementation UNMutableNotificationContent(HDSPSleep)

+ (id)hdsp_notificationContentWithEnvironment:()HDSPSleep
{
  v0 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v0 setThreadIdentifier:*MEMORY[0x277D620B8]];

  return v0;
}

@end