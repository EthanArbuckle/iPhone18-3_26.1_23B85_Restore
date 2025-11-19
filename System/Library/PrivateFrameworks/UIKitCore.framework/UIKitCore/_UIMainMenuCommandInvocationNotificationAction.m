@interface _UIMainMenuCommandInvocationNotificationAction
- (_UIMainMenuCommandInvocationNotification)commandInvocationNotification;
- (_UIMainMenuCommandInvocationNotificationAction)initWithCommandInvocationNotification:(id)a3;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIMainMenuCommandInvocationNotificationAction

- (_UIMainMenuCommandInvocationNotificationAction)initWithCommandInvocationNotification:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:13];
  v8 = [(_UIOServerAction *)self initWithOriginContext:0 info:v6 responder:0];

  return v8;
}

- (_UIMainMenuCommandInvocationNotification)commandInvocationNotification
{
  v2 = [(_UIMainMenuCommandInvocationNotificationAction *)self info];
  v3 = [v2 objectForSetting:13];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)performActionFromConnection:(id)a3
{
  v8 = a3;
  v4 = _menuBarWindow;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rootViewController];
    v7 = [(_UIMainMenuCommandInvocationNotificationAction *)self commandInvocationNotification];
    [v6 receiveCommandInvocationNotification:v7 forServiceConnection:v8];
  }
}

@end