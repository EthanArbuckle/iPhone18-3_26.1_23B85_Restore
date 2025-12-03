@interface _UIMainMenuCommandInvocationNotificationAction
- (_UIMainMenuCommandInvocationNotification)commandInvocationNotification;
- (_UIMainMenuCommandInvocationNotificationAction)initWithCommandInvocationNotification:(id)notification;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIMainMenuCommandInvocationNotificationAction

- (_UIMainMenuCommandInvocationNotificationAction)initWithCommandInvocationNotification:(id)notification
{
  v4 = MEMORY[0x1E698E700];
  notificationCopy = notification;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:notificationCopy requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:13];
  v8 = [(_UIOServerAction *)self initWithOriginContext:0 info:v6 responder:0];

  return v8;
}

- (_UIMainMenuCommandInvocationNotification)commandInvocationNotification
{
  info = [(_UIMainMenuCommandInvocationNotificationAction *)self info];
  v3 = [info objectForSetting:13];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)performActionFromConnection:(id)connection
{
  connectionCopy = connection;
  v4 = _menuBarWindow;
  v5 = v4;
  if (v4)
  {
    rootViewController = [v4 rootViewController];
    commandInvocationNotification = [(_UIMainMenuCommandInvocationNotificationAction *)self commandInvocationNotification];
    [rootViewController receiveCommandInvocationNotification:commandInvocationNotification forServiceConnection:connectionCopy];
  }
}

@end