@interface UIBackgroundTaskInfo
@end

@implementation UIBackgroundTaskInfo

void __53___UIBackgroundTaskInfo_backgroundTaskAssertionQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.uikit.backgroundTaskAssertionQueue", 0);
  v1 = qword_1ED49E238;
  qword_1ED49E238 = v0;
}

@end