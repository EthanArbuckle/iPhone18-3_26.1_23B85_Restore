@interface TFInterprocessNotificationCallback
- (TFInterprocessNotificationCallback)initWithNotificationName:(id)a3 callback:(id)a4;
- (void)dealloc;
@end

@implementation TFInterprocessNotificationCallback

- (TFInterprocessNotificationCallback)initWithNotificationName:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TFInterprocessNotificationCallback;
  v9 = [(TFInterprocessNotificationCallback *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    callback = v9->_callback;
    v9->_callback = v10;

    objc_storeStrong(&v9->_notificationName, a3);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, interprocessNotificationHandler, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v9;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(TFInterprocessNotificationCallback *)self notificationName];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
  v5.receiver = self;
  v5.super_class = TFInterprocessNotificationCallback;
  [(TFInterprocessNotificationCallback *)&v5 dealloc];
}

@end