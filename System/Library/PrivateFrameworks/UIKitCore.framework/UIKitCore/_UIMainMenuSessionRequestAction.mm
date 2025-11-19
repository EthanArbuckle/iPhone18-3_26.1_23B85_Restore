@interface _UIMainMenuSessionRequestAction
- (_UIMainMenuSessionRequestAction)initWithSessionRequest:(id)a3 handler:(id)a4;
- (id)sessionRequest;
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuSessionRequestAction

- (_UIMainMenuSessionRequestAction)initWithSessionRequest:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E700];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:3];
  if (v6)
  {
    v11 = MEMORY[0x1E698E5F8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66___UIMainMenuSessionRequestAction_initWithSessionRequest_handler___block_invoke;
    v16[3] = &unk_1E7108B40;
    v17 = v6;
    v12 = [v11 responderWithHandler:v16];
  }

  else
  {
    v12 = 0;
  }

  [v12 setTimeout:{dispatch_time(0, 2000000000)}];
  [v12 setQueue:MEMORY[0x1E69E96A0]];
  v15.receiver = self;
  v15.super_class = _UIMainMenuSessionRequestAction;
  v13 = [(_UIMainMenuSessionRequestAction *)&v15 initWithInfo:v9 responder:v12];

  return v13;
}

- (id)sessionRequest
{
  v2 = [(_UIMainMenuSessionRequestAction *)self info];
  v3 = [v2 objectForSetting:3];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)handleMainMenuAction
{
  v3 = +[_UIMainMenuManager sharedManager];
  v4 = [(_UIMainMenuSessionRequestAction *)self sessionRequest];
  v10 = [v3 performSessionRequest:v4];

  if ([(_UIMainMenuSessionRequestAction *)self canSendResponse])
  {
    v5 = [_UIMainMenuSessionRequestActionResponse _responseWithSessionResponse:v10];
    [(_UIMainMenuSessionRequestAction *)self sendResponse:v5];
  }

  else
  {
    v6 = [v10 session];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = objc_opt_new();
    v7 = [v10 session];
    [v5 setSessionToEnd:v7];

    v8 = +[_UIMainMenuManager sharedManager];
    v9 = [v8 performSessionRequest:v5];
  }

LABEL_6:
}

@end