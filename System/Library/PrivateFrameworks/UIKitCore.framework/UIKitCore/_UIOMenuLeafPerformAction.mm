@interface _UIOMenuLeafPerformAction
- (BKSHIDEventAuthenticationMessage)pasteAuthenticationMessage;
- (NSString)identifier;
- (_UIOMenuLeafPerformAction)initWithMenuElement:(id)element pasteAuthenticationMesage:(id)mesage responseHandler:(id)handler;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIOMenuLeafPerformAction

- (_UIOMenuLeafPerformAction)initWithMenuElement:(id)element pasteAuthenticationMesage:(id)mesage responseHandler:(id)handler
{
  mesageCopy = mesage;
  handlerCopy = handler;
  _internalIdentifier = [element _internalIdentifier];
  v11 = objc_opt_new();
  [v11 setObject:_internalIdentifier forSetting:0];
  if (mesageCopy)
  {
    [v11 setObject:mesageCopy forSetting:1];
  }

  v12 = MEMORY[0x1E698E5F8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91___UIOMenuLeafPerformAction_initWithMenuElement_pasteAuthenticationMesage_responseHandler___block_invoke;
  v18[3] = &unk_1E7108B40;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 responderWithHandler:v18];
  v17.receiver = self;
  v17.super_class = _UIOMenuLeafPerformAction;
  v15 = [(_UIOMenuLeafPerformAction *)&v17 initWithInfo:v11 responder:v14];

  return v15;
}

- (BKSHIDEventAuthenticationMessage)pasteAuthenticationMessage
{
  info = [(_UIOMenuLeafPerformAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (NSString)identifier
{
  info = [(_UIOMenuLeafPerformAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (void)handleClientActionToOverlayService:(id)service
{
  delegate = [service delegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___UIOMenuLeafPerformAction_handleClientActionToOverlayService___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [delegate performMenuLeafAction:self completionHandler:v5];
}

@end