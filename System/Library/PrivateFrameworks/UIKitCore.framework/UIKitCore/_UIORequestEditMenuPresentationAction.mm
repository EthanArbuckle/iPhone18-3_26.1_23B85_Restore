@interface _UIORequestEditMenuPresentationAction
- (_UIOEditMenuPresentationConfiguration)configuration;
- (_UIORequestEditMenuPresentationAction)initWithConfiguration:(id)a3 view:(id)a4;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIORequestEditMenuPresentationAction

- (_UIORequestEditMenuPresentationAction)initWithConfiguration:(id)a3 view:(id)a4
{
  v6 = MEMORY[0x1E696ACC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:v9 forSetting:0];
  [v8 sourceRect];
  v12 = v11;
  v14 = v13;

  v15 = [_UIOServerActionOriginContext originContextForView:v7 referencePoint:v12, v14];

  v18.receiver = self;
  v18.super_class = _UIORequestEditMenuPresentationAction;
  v16 = [(_UIOServerAction *)&v18 initWithOriginContext:v15 info:v10 responder:0];

  return v16;
}

- (_UIOEditMenuPresentationConfiguration)configuration
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  v5 = [(_UIORequestEditMenuPresentationAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (void)performActionFromConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 server];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___UIORequestEditMenuPresentationAction_performActionFromConnection___block_invoke;
  v7[3] = &unk_1E71233A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 awaitDisplayDelegateForAction:self sceneType:1 timeout:v7 completion:1.0];
}

@end