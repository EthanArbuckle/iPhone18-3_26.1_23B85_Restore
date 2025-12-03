@interface _UIOKeyShortcutHUDDismissalAction
- (_UIKeyShortcutHUDDismissalResponse)response;
- (_UIOKeyShortcutHUDDismissalAction)initWithResponse:(id)response;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIOKeyShortcutHUDDismissalAction

- (_UIOKeyShortcutHUDDismissalAction)initWithResponse:(id)response
{
  v4 = MEMORY[0x1E698E700];
  responseCopy = response;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:responseCopy requiringSecureCoding:1 error:0];

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
  info = [(_UIOKeyShortcutHUDDismissalAction *)self info];
  v6 = [info objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (void)handleClientActionToOverlayService:(id)service
{
  serviceCopy = service;
  v6 = +[UIKeyShortcutHUDService sharedHUDService];
  response = [(_UIOKeyShortcutHUDDismissalAction *)self response];
  [v6 keyShortcutHUDDidDismissWithResponse:response toOverlayService:serviceCopy];
}

@end