@interface WLKNotificationCenter(VideosUI)
+ (id)wlkNotificationCenter;
@end

@implementation WLKNotificationCenter(VideosUI)

+ (id)wlkNotificationCenter
{
  if (+[VUITVExtension isRunningInTVExtension])
  {
    v0 = 0;
  }

  else
  {
    v0 = objc_alloc_init(MEMORY[0x1E69E1558]);
  }

  return v0;
}

@end