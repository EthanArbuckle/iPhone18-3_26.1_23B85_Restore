@interface _UIOMenuPreparationAction
- (NSString)identifier;
- (_UIOMenuPreparationAction)initWithMenu:(id)menu responseHandler:(id)handler;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIOMenuPreparationAction

- (_UIOMenuPreparationAction)initWithMenu:(id)menu responseHandler:(id)handler
{
  menuCopy = menu;
  handlerCopy = handler;
  _internalIdentifier = [menuCopy _internalIdentifier];

  if (!_internalIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOMenuPreparationAction.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"menu._internalIdentifier"}];
  }

  _internalIdentifier2 = [menuCopy _internalIdentifier];
  v11 = objc_opt_new();
  [v11 setObject:_internalIdentifier2 forSetting:1];
  v12 = MEMORY[0x1E698E5F8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58___UIOMenuPreparationAction_initWithMenu_responseHandler___block_invoke;
  v20[3] = &unk_1E70FB2C0;
  v22 = handlerCopy;
  v23 = a2;
  selfCopy = self;
  v21 = selfCopy;
  v14 = handlerCopy;
  v15 = [v12 responderWithHandler:v20];
  v19.receiver = selfCopy;
  v19.super_class = _UIOMenuPreparationAction;
  v16 = [(_UIOMenuPreparationAction *)&v19 initWithInfo:v11 responder:v15];

  return v16;
}

- (NSString)identifier
{
  info = [(_UIOMenuPreparationAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (void)handleClientActionToOverlayService:(id)service
{
  serviceCopy = service;
  delegate = [serviceCopy delegate];
  identifier = [(_UIOMenuPreparationAction *)self identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64___UIOMenuPreparationAction_handleClientActionToOverlayService___block_invoke;
  v9[3] = &unk_1E70FB2E8;
  v10 = serviceCopy;
  v11 = a2;
  v9[4] = self;
  v8 = serviceCopy;
  [delegate preparedMenuWithIdentifier:identifier completionHandler:v9];
}

@end