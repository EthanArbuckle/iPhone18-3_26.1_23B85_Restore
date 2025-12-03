@interface URTUserNotificationPresentation
+ (void)invokeHandlerForUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags;
+ (void)registerUserNotification:(__CFUserNotification *)notification handler:(id)handler;
+ (void)unregisterHandlerForUserNotification:(__CFUserNotification *)notification;
- (URTUserNotificationPresentation)initWithContents:(id)contents flags:(unint64_t)flags;
- (__CFRunLoopSource)createRunLoopSourceOrdered:(int64_t)ordered handler:(id)handler;
- (void)dismiss;
- (void)invalidate;
- (void)present;
@end

@implementation URTUserNotificationPresentation

+ (void)registerUserNotification:(__CFUserNotification *)notification handler:(id)handler
{
  handlerCopy = handler;
  if (registerUserNotification_handler__onceToken != -1)
  {
    +[URTUserNotificationPresentation registerUserNotification:handler:];
  }

  v5 = handlersForUserNotifications;
  objc_sync_enter(v5);
  v6 = handlersForUserNotifications;
  v7 = MEMORY[0x2743AB1A0](handlerCopy);
  [v6 setObject:v7 forKey:notification];

  objc_sync_exit(v5);
}

uint64_t __68__URTUserNotificationPresentation_registerUserNotification_handler___block_invoke()
{
  handlersForUserNotifications = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:1];

  return MEMORY[0x2821F96F8]();
}

+ (void)invokeHandlerForUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags
{
  v6 = handlersForUserNotifications;
  objc_sync_enter(v6);
  v8 = [handlersForUserNotifications objectForKey:notification];
  [handlersForUserNotifications removeObjectForKey:notification];
  objc_sync_exit(v6);

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, notification, flags);
    v7 = v8;
  }
}

+ (void)unregisterHandlerForUserNotification:(__CFUserNotification *)notification
{
  obj = handlersForUserNotifications;
  objc_sync_enter(obj);
  [handlersForUserNotifications removeObjectForKey:notification];
  objc_sync_exit(obj);
}

- (URTUserNotificationPresentation)initWithContents:(id)contents flags:(unint64_t)flags
{
  contentsCopy = contents;
  v11.receiver = self;
  v11.super_class = URTUserNotificationPresentation;
  v8 = [(URTUserNotificationPresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_error = 0;
    objc_storeStrong(&v8->_contents, contents);
    v9->_creationFlags = flags;
  }

  return v9;
}

- (__CFRunLoopSource)createRunLoopSourceOrdered:(int64_t)ordered handler:(id)handler
{
  handlerCopy = handler;
  [objc_opt_class() registerUserNotification:self->_userNotification handler:handlerCopy];

  v7 = *MEMORY[0x277CBECE8];
  userNotification = self->_userNotification;

  return CFUserNotificationCreateRunLoopSource(v7, userNotification, _URTUserNotificationRunLoopCallback, ordered);
}

- (void)present
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_270835000, a2, OS_LOG_TYPE_ERROR, "failed to create CFUserNotification, error %i", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)dismiss
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }
}

- (void)invalidate
{
  if (self->_userNotification)
  {
    [objc_opt_class() unregisterHandlerForUserNotification:self->_userNotification];
    CFRelease(self->_userNotification);
    self->_userNotification = 0;
  }
}

@end