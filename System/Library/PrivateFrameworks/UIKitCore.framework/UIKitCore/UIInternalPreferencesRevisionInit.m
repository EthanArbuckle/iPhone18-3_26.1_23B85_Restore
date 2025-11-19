@interface UIInternalPreferencesRevisionInit
@end

@implementation UIInternalPreferencesRevisionInit

void _UIInternalPreferencesRevisionInit_block_invoke()
{
  if (allowInternalPreferences())
  {
    obj = _UIKitPreferencesOnce();
    v0 = [obj objectForKey:@"InternalPreferencesEnabled"];
    v1 = v0;
    if (v0 && ![v0 BOOLValue])
    {
      _UIInternalPreferencesRevisionVar = -1;
    }

    else
    {
      objc_storeStrong(&_revisionDefaults, obj);
      _UIInternalPreferencesRevisionVar = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, notificationHandler, @"com.apple.UIKit.InternalPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }
}

@end