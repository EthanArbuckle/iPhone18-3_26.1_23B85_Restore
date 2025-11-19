@interface BTSystemConfiguration
+ (BOOL)isBuddyComplete;
+ (BOOL)isFirstUnlocked;
@end

@implementation BTSystemConfiguration

+ (BOOL)isBuddyComplete
{
  byte_1002FA1B0 = BYSetupAssistantNeedsToRun() ^ 1;
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F63E0(v2);
  }

  return byte_1002FA1B0;
}

+ (BOOL)isFirstUnlocked
{
  byte_1002FA1B1 = MKBDeviceUnlockedSinceBoot() != 0;
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F6464(v2);
  }

  return byte_1002FA1B1;
}

@end