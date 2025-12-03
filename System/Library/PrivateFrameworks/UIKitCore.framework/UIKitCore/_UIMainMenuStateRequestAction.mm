@interface _UIMainMenuStateRequestAction
- (_UIMainMenuStateRequestAction)initWithMenuStateRequest:(id)request handler:(id)handler;
- (id)menuStateRequest;
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuStateRequestAction

- (_UIMainMenuStateRequestAction)initWithMenuStateRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E698E700];
  requestCopy = request;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:requestCopy requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:7];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66___UIMainMenuStateRequestAction_initWithMenuStateRequest_handler___block_invoke;
  v17[3] = &unk_1E7108B40;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v11 responderWithHandler:v17];
  [v13 setTimeout:{dispatch_time(0, 2000000000)}];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  v16.receiver = self;
  v16.super_class = _UIMainMenuStateRequestAction;
  v14 = [(_UIMainMenuStateRequestAction *)&v16 initWithInfo:v9 responder:v13];

  return v14;
}

- (id)menuStateRequest
{
  info = [(_UIMainMenuStateRequestAction *)self info];
  v3 = [info objectForSetting:7];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)handleMainMenuAction
{
  v3 = +[_UIMainMenuManager sharedManager];
  menuStateRequest = [(_UIMainMenuStateRequestAction *)self menuStateRequest];
  v6 = [v3 performMainMenuStateRequest:menuStateRequest];

  if ([(_UIMainMenuStateRequestAction *)self canSendResponse])
  {
    v5 = [_UIMainMenuStateRequestActionResponse _responseWithMenuStateResponse:v6];
    [(_UIMainMenuStateRequestAction *)self sendResponse:v5];
  }
}

@end