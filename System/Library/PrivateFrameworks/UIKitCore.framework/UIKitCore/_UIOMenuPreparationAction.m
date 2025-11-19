@interface _UIOMenuPreparationAction
- (NSString)identifier;
- (_UIOMenuPreparationAction)initWithMenu:(id)a3 responseHandler:(id)a4;
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIOMenuPreparationAction

- (_UIOMenuPreparationAction)initWithMenu:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 _internalIdentifier];

  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIOMenuPreparationAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"menu._internalIdentifier"}];
  }

  v10 = [v7 _internalIdentifier];
  v11 = objc_opt_new();
  [v11 setObject:v10 forSetting:1];
  v12 = MEMORY[0x1E698E5F8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58___UIOMenuPreparationAction_initWithMenu_responseHandler___block_invoke;
  v20[3] = &unk_1E70FB2C0;
  v22 = v8;
  v23 = a2;
  v13 = self;
  v21 = v13;
  v14 = v8;
  v15 = [v12 responderWithHandler:v20];
  v19.receiver = v13;
  v19.super_class = _UIOMenuPreparationAction;
  v16 = [(_UIOMenuPreparationAction *)&v19 initWithInfo:v11 responder:v15];

  return v16;
}

- (NSString)identifier
{
  v2 = [(_UIOMenuPreparationAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (void)handleClientActionToOverlayService:(id)a3
{
  v5 = a3;
  v6 = [v5 delegate];
  v7 = [(_UIOMenuPreparationAction *)self identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64___UIOMenuPreparationAction_handleClientActionToOverlayService___block_invoke;
  v9[3] = &unk_1E70FB2E8;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v8 = v5;
  [v6 preparedMenuWithIdentifier:v7 completionHandler:v9];
}

@end