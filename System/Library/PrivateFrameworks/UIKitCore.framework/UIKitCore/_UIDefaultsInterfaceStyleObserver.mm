@interface _UIDefaultsInterfaceStyleObserver
- (_UIDefaultsInterfaceStyleObserver)initWithNotificationName:(id)a3 darwinNotification:(const char *)a4;
- (void)_didChange;
- (void)dealloc;
@end

@implementation _UIDefaultsInterfaceStyleObserver

- (_UIDefaultsInterfaceStyleObserver)initWithNotificationName:(id)a3 darwinNotification:(const char *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _UIDefaultsInterfaceStyleObserver;
  v8 = [(_UIDefaultsInterfaceStyleObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationName, a3);
    v9->_notifyToken = -1;
    if (a4)
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __81___UIDefaultsInterfaceStyleObserver_initWithNotificationName_darwinNotification___block_invoke;
      handler[3] = &unk_1E70FFAF8;
      v12 = v9;
      notify_register_dispatch(a4, &v9->_notifyToken, MEMORY[0x1E69E96A0], handler);
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:self->_notificationName object:0];
}

@end