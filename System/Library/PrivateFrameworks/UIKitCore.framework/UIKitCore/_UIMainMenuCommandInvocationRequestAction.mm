@interface _UIMainMenuCommandInvocationRequestAction
- (_UIMainMenuCommandInvocationRequestAction)initWithInvocationRequest:(id)a3 responseHandler:(id)a4;
- (id)invocationRequest;
- (void)handleMainMenuAction;
@end

@implementation _UIMainMenuCommandInvocationRequestAction

- (_UIMainMenuCommandInvocationRequestAction)initWithInvocationRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E700];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:11];
  if (v6)
  {
    v11 = MEMORY[0x1E698E5F8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87___UIMainMenuCommandInvocationRequestAction_initWithInvocationRequest_responseHandler___block_invoke;
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
  v15.super_class = _UIMainMenuCommandInvocationRequestAction;
  v13 = [(_UIMainMenuCommandInvocationRequestAction *)&v15 initWithInfo:v9 responder:v12];

  return v13;
}

- (id)invocationRequest
{
  v2 = [(_UIMainMenuCommandInvocationRequestAction *)self info];
  v3 = [v2 objectForSetting:11];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

- (void)handleMainMenuAction
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIMainMenuCommandInvocationRequestAction_handleMainMenuAction__block_invoke;
  aBlock[3] = &unk_1E7116168;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = +[_UIMainMenuManager sharedManager];
  v5 = [(_UIMainMenuCommandInvocationRequestAction *)self invocationRequest];
  [v4 performMainMenuCommandInvocationRequest:v5 responseHandler:v3];
}

@end