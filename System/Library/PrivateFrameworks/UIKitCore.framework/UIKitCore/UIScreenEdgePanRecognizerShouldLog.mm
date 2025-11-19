@interface UIScreenEdgePanRecognizerShouldLog
@end

@implementation UIScreenEdgePanRecognizerShouldLog

void ___UIScreenEdgePanRecognizerShouldLog_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _UIScreenEdgePanRecognizerShouldLogClear, @"com.apple.UIKit.UIScreenEdgePanRecognizerShouldLog", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end