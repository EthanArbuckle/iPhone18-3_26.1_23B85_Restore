@interface _UIMainMenuBaseMenuRequestAction
- (_UIMainMenuBaseMenuRequestAction)initWithBaseMenuRequest:(id)a3 handler:(id)a4;
- (id)baseMenuRequest;
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuBaseMenuRequestAction

- (_UIMainMenuBaseMenuRequestAction)initWithBaseMenuRequest:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E700];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:0];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68___UIMainMenuBaseMenuRequestAction_initWithBaseMenuRequest_handler___block_invoke;
  v17[3] = &unk_1E7108B40;
  v18 = v6;
  v12 = v6;
  v13 = [v11 responderWithHandler:v17];
  [v13 setTimeout:{dispatch_time(0, 2000000000)}];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  v16.receiver = self;
  v16.super_class = _UIMainMenuBaseMenuRequestAction;
  v14 = [(_UIMainMenuBaseMenuRequestAction *)&v16 initWithInfo:v9 responder:v13];

  return v14;
}

- (id)baseMenuRequest
{
  v2 = [(_UIMainMenuBaseMenuRequestAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)handleMainMenuAction
{
  v3 = +[_UIMainMenuManager sharedManager];
  v4 = [(_UIMainMenuBaseMenuRequestAction *)self baseMenuRequest];
  v6 = [v3 performBaseMenuRequest:v4];

  if ([(_UIMainMenuBaseMenuRequestAction *)self canSendResponse])
  {
    v5 = [_UIMainMenuBaseMenuRequestActionResponse _responseWithBaseMenuResponse:v6];
    [(_UIMainMenuBaseMenuRequestAction *)self sendResponse:v5];
  }
}

@end