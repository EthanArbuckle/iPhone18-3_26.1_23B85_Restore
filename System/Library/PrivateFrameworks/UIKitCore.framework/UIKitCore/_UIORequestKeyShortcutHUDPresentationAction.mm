@interface _UIORequestKeyShortcutHUDPresentationAction
- (_UIKeyShortcutHUDConfiguration)configuration;
- (_UIORequestKeyShortcutHUDPresentationAction)initWithConfiguration:(id)a3 responseHandler:(id)a4;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIORequestKeyShortcutHUDPresentationAction

- (_UIORequestKeyShortcutHUDPresentationAction)initWithConfiguration:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E700];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  [v9 setObject:v10 forSetting:0];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85___UIORequestKeyShortcutHUDPresentationAction_initWithConfiguration_responseHandler___block_invoke;
  v17[3] = &unk_1E7108B40;
  v18 = v6;
  v12 = v6;
  v13 = [v11 responderWithHandler:v17];
  [v13 setTimeout:{dispatch_time(0, 2000000000)}];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  v16.receiver = self;
  v16.super_class = _UIORequestKeyShortcutHUDPresentationAction;
  v14 = [(_UIOServerAction *)&v16 initWithOriginContext:0 info:v9 responder:v13];

  return v14;
}

- (_UIKeyShortcutHUDConfiguration)configuration
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  v5 = [(_UIORequestKeyShortcutHUDPresentationAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (void)performActionFromConnection:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75___UIORequestKeyShortcutHUDPresentationAction_performActionFromConnection___block_invoke;
  aBlock[3] = &unk_1E7123FA8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [v4 server];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75___UIORequestKeyShortcutHUDPresentationAction_performActionFromConnection___block_invoke_2;
  v9[3] = &unk_1E7123FF8;
  v10 = v4;
  v11 = v5;
  v9[4] = self;
  v7 = v4;
  v8 = v5;
  [v6 awaitDisplayDelegateForAction:self sceneType:1 timeout:v9 completion:1.0];
}

@end