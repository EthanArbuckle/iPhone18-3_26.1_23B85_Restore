@interface _UIDefaultsInterfaceStyleObserver
- (_UIDefaultsInterfaceStyleObserver)initWithNotificationName:(id)name darwinNotification:(const char *)notification;
- (void)_didChange;
- (void)dealloc;
@end

@implementation _UIDefaultsInterfaceStyleObserver

- (_UIDefaultsInterfaceStyleObserver)initWithNotificationName:(id)name darwinNotification:(const char *)notification
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _UIDefaultsInterfaceStyleObserver;
  v8 = [(_UIDefaultsInterfaceStyleObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationName, name);
    v9->_notifyToken = -1;
    if (notification)
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __81___UIDefaultsInterfaceStyleObserver_initWithNotificationName_darwinNotification___block_invoke;
      handler[3] = &unk_1E70FFAF8;
      v12 = v9;
      notify_register_dispatch(notification, &v9->_notifyToken, MEMORY[0x1E69E96A0], handler);
    }
  }

  return v9;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = _UIDefaultsInterfaceStyleObserver;
  [(_UIDefaultsInterfaceStyleObserver *)&v4 dealloc];
}

- (void)_didChange
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:self->_notificationName object:0];
}

@end