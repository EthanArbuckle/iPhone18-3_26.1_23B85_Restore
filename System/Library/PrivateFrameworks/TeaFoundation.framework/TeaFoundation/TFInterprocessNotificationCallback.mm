@interface TFInterprocessNotificationCallback
- (TFInterprocessNotificationCallback)initWithNotificationName:(id)name callback:(id)callback;
- (void)dealloc;
@end

@implementation TFInterprocessNotificationCallback

- (TFInterprocessNotificationCallback)initWithNotificationName:(id)name callback:(id)callback
{
  nameCopy = name;
  callbackCopy = callback;
  v14.receiver = self;
  v14.super_class = TFInterprocessNotificationCallback;
  v9 = [(TFInterprocessNotificationCallback *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(callbackCopy);
    callback = v9->_callback;
    v9->_callback = v10;

    objc_storeStrong(&v9->_notificationName, name);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, interprocessNotificationHandler, nameCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v9;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notificationName = [(TFInterprocessNotificationCallback *)self notificationName];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, notificationName, 0);
  v5.receiver = self;
  v5.super_class = TFInterprocessNotificationCallback;
  [(TFInterprocessNotificationCallback *)&v5 dealloc];
}

@end