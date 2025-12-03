@interface _UIORequestEditMenuPresentationAction
- (_UIOEditMenuPresentationConfiguration)configuration;
- (_UIORequestEditMenuPresentationAction)initWithConfiguration:(id)configuration view:(id)view;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIORequestEditMenuPresentationAction

- (_UIORequestEditMenuPresentationAction)initWithConfiguration:(id)configuration view:(id)view
{
  v6 = MEMORY[0x1E696ACC8];
  viewCopy = view;
  configurationCopy = configuration;
  v9 = [v6 archivedDataWithRootObject:configurationCopy requiringSecureCoding:1 error:0];
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:v9 forSetting:0];
  [configurationCopy sourceRect];
  v12 = v11;
  v14 = v13;

  v15 = [_UIOServerActionOriginContext originContextForView:viewCopy referencePoint:v12, v14];

  v18.receiver = self;
  v18.super_class = _UIORequestEditMenuPresentationAction;
  v16 = [(_UIOServerAction *)&v18 initWithOriginContext:v15 info:v10 responder:0];

  return v16;
}

- (_UIOEditMenuPresentationConfiguration)configuration
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  info = [(_UIORequestEditMenuPresentationAction *)self info];
  v6 = [info objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (void)performActionFromConnection:(id)connection
{
  connectionCopy = connection;
  server = [connectionCopy server];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___UIORequestEditMenuPresentationAction_performActionFromConnection___block_invoke;
  v7[3] = &unk_1E71233A8;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  [server awaitDisplayDelegateForAction:self sceneType:1 timeout:v7 completion:1.0];
}

@end