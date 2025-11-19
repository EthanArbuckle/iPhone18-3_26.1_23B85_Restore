@interface _UIOKeyShortcutHUDDismissalAction
- (_UIKeyShortcutHUDDismissalResponse)response;
- (_UIOKeyShortcutHUDDismissalAction)initWithResponse:(id)a3;
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIOKeyShortcutHUDDismissalAction

- (_UIOKeyShortcutHUDDismissalAction)initWithResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:0];
  v10.receiver = self;
  v10.super_class = _UIOKeyShortcutHUDDismissalAction;
  v8 = [(_UIOKeyShortcutHUDDismissalAction *)&v10 initWithInfo:v6 responder:0];

  return v8;
}

- (_UIKeyShortcutHUDDismissalResponse)response
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  v5 = [(_UIOKeyShortcutHUDDismissalAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (void)handleClientActionToOverlayService:(id)a3
{
  v4 = a3;
  v6 = +[UIKeyShortcutHUDService sharedHUDService];
  v5 = [(_UIOKeyShortcutHUDDismissalAction *)self response];
  [v6 keyShortcutHUDDidDismissWithResponse:v5 toOverlayService:v4];
}

@end