@interface UNUserNotificationCenter(VideosUI)
+ (id)vuiNotificationCenter;
@end

@implementation UNUserNotificationCenter(VideosUI)

+ (id)vuiNotificationCenter
{
  if (+[VUITVExtension isRunningInTVExtension])
  {
    v2 = 0;
  }

  else
  {
    v2 = [a1 currentNotificationCenter];
  }

  return v2;
}

@end