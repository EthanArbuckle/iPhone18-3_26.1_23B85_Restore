@interface _UIORequestKeyShortcutHUDDismissalAction
+ (id)dismissalAction;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIORequestKeyShortcutHUDDismissalAction

+ (id)dismissalAction
{
  v2 = [objc_alloc(objc_opt_class()) initWithInfo:0 responder:0];

  return v2;
}

- (void)performActionFromConnection:(id)a3
{
  v3 = a3;
  v4 = +[_UIKeyShortcutHUDServer sharedHUDServer];
  [v4 dismissHUDForConnection:v3];
}

@end