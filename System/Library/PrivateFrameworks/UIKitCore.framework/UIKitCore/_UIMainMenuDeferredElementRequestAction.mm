@interface _UIMainMenuDeferredElementRequestAction
- (_UIMainMenuDeferredElementRequestAction)initWithDeferredElementRequest:(id)request handler:(id)handler;
- (id)deferredElementRequest;
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuDeferredElementRequestAction

- (_UIMainMenuDeferredElementRequestAction)initWithDeferredElementRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E698E700];
  requestCopy = request;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:requestCopy requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:9];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82___UIMainMenuDeferredElementRequestAction_initWithDeferredElementRequest_handler___block_invoke;
  v17[3] = &unk_1E7108B40;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v11 responderWithHandler:v17];
  [v13 setTimeout:{dispatch_time(0, 5000000000)}];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  v16.receiver = self;
  v16.super_class = _UIMainMenuDeferredElementRequestAction;
  v14 = [(_UIMainMenuDeferredElementRequestAction *)&v16 initWithInfo:v9 responder:v13];

  return v14;
}

- (id)deferredElementRequest
{
  info = [(_UIMainMenuDeferredElementRequestAction *)self info];
  v3 = [info objectForSetting:9];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)handleMainMenuAction
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIMainMenuDeferredElementRequestAction_handleMainMenuAction__block_invoke;
  aBlock[3] = &unk_1E7116140;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = +[_UIMainMenuManager sharedManager];
  deferredElementRequest = [(_UIMainMenuDeferredElementRequestAction *)self deferredElementRequest];
  [v4 performDeferredElementRequest:deferredElementRequest responseHandler:v3];
}

@end