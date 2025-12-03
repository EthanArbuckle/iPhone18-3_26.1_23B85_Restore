@interface UNUserNotificationCenter(VideosUI)
+ (id)vuiNotificationCenter;
@end

@implementation UNUserNotificationCenter(VideosUI)

+ (id)vuiNotificationCenter
{
  if (+[VUITVExtension isRunningInTVExtension])
  {
    currentNotificationCenter = 0;
  }

  else
  {
    currentNotificationCenter = [self currentNotificationCenter];
  }

  return currentNotificationCenter;
}

@end