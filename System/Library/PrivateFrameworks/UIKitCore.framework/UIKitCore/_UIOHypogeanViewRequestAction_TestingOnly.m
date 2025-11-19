@interface _UIOHypogeanViewRequestAction_TestingOnly
+ (id)_overlay_viewRegistry;
- (_UIOHypogeanViewRequestAction_TestingOnly)initWithConfiguration:(id)a3 responseHandler:(id)a4;
- (_UIOHypogeanViewRequestConfiguration)configuration;
- (void)_performActionWithDisplayDelegate:(id)a3;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIOHypogeanViewRequestAction_TestingOnly

+ (id)_overlay_viewRegistry
{
  if (_MergedGlobals_1235 != -1)
  {
    dispatch_once(&_MergedGlobals_1235, &__block_literal_global_448);
  }

  v3 = qword_1ED49FC40;

  return v3;
}

- (_UIOHypogeanViewRequestAction_TestingOnly)initWithConfiguration:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v18 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v18];
  v8 = v18;
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:v7 forSetting:0];
  v10 = MEMORY[0x1E698E5F8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83___UIOHypogeanViewRequestAction_TestingOnly_initWithConfiguration_responseHandler___block_invoke;
  v16[3] = &unk_1E7108B40;
  v17 = v6;
  v11 = v6;
  v12 = [v10 responderWithHandler:v16];
  v15.receiver = self;
  v15.super_class = _UIOHypogeanViewRequestAction_TestingOnly;
  v13 = [(_UIOServerAction *)&v15 initWithOriginContext:0 info:v9 responder:v12];

  return v13;
}

- (_UIOHypogeanViewRequestConfiguration)configuration
{
  v2 = [(_UIOHypogeanViewRequestAction_TestingOnly *)self info];
  v3 = [v2 objectForSetting:0];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)performActionFromConnection:(id)a3
{
  v4 = [a3 server];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73___UIOHypogeanViewRequestAction_TestingOnly_performActionFromConnection___block_invoke;
  v5[3] = &unk_1E711AD28;
  v5[4] = self;
  [v4 awaitDisplayDelegateForAction:self sceneType:2 timeout:v5 completion:2.0];
}

- (void)_performActionWithDisplayDelegate:(id)a3
{
  v5 = a3;
  v23 = v5;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIOHypogeanViewActions_TestingOnly.m" lineNumber:140 description:@"No display delegate."];

    v5 = 0;
  }

  v6 = [v5 window];

  if (!v6)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIOHypogeanViewActions_TestingOnly.m" lineNumber:141 description:@"No display delegate window"];
  }

  v7 = [v23 rootViewController];
  v8 = +[UIButtonConfiguration borderedTintedButtonConfiguration];
  [v8 setTitle:@"Test Button"];
  v9 = [UIAction actionWithHandler:&__block_literal_global_89_0];
  v10 = [UIButton buttonWithConfiguration:v8 primaryAction:v9];

  v11 = [v7 view];
  [v11 addSubview:v10];

  [v10 sizeToFit];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = [objc_opt_class() _overlay_viewRegistry];
  [v14 setObject:v10 forKey:v13];

  v15 = objc_alloc_init(_UIOHypogeanViewHandle);
  [(_UIOHypogeanViewHandle *)v15 setUniqueIdentifier:v13];
  v16 = [v23 window];
  -[_UIOHypogeanViewHandle setContextId:](v15, "setContextId:", [v16 _contextId]);

  v17 = [v10 layer];
  [(_UIOHypogeanViewHandle *)v15 setRenderId:CALayerGetRenderId()];

  [v10 bounds];
  [(_UIOHypogeanViewHandle *)v15 setBounds:?];
  v18 = objc_alloc_init(MEMORY[0x1E698E700]);
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  [v18 setObject:v19 forSetting:1];

  v20 = [MEMORY[0x1E698E600] responseWithInfo:v18];
  [(_UIOHypogeanViewRequestAction_TestingOnly *)self sendResponse:v20];
}

@end