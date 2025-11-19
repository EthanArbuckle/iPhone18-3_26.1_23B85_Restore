@interface NFPreferenceObserver
- (void)dealloc;
- (void)handlePreferencesOrProfileChanged;
- (void)start:(id)a3;
- (void)stop;
@end

@implementation NFPreferenceObserver

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NFPreferenceObserver;
  [(NFPreferenceObserver *)&v4 dealloc];
}

- (void)start:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  objc_msgSend_setCallback_(v4, v6, v5);

  objc_sync_exit(v4);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_22EEE12D8, @"com.apple.stockholm.preferenceschanged", 0, 1026);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v8, v4, sub_22EEE12D8, @"com.apple.ManagedConfiguration.profileListChanged", 0, 1026);
}

- (void)stop
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.stockholm.preferenceschanged", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.ManagedConfiguration.profileListChanged", 0);
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_setCallback_(obj, v5, 0);
  objc_sync_exit(obj);
}

- (void)handlePreferencesOrProfileChanged
{
  obj = self;
  objc_sync_enter(obj);
  callback = obj->_callback;
  if (callback)
  {
    callback[2]();
  }

  objc_sync_exit(obj);
}

@end