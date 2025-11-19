@interface VUILocalNotificationServiceOptionsKey
+ (NSString)bannerOnly;
+ (NSString)interruptionLevel;
+ (NSString)sound;
@end

@implementation VUILocalNotificationServiceOptionsKey

+ (NSString)bannerOnly
{
  OUTLINED_FUNCTION_0_337();
  v2 = sub_1E4205ED4();

  return v2;
}

+ (NSString)interruptionLevel
{
  static LocalNotificationServiceOptionsKey.interruptionLevel.getter();
  v2 = sub_1E4205ED4();

  return v2;
}

+ (NSString)sound
{
  v2 = sub_1E4205ED4();

  return v2;
}

@end