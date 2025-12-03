@interface _UIONavigationBarTitleRenamerViewMetricsUpdateAction
- (CGRect)frame;
- (_UIONavigationBarTitleRenamerViewMetricsUpdateAction)initWithFrame:(CGRect)frame textAlignment:(int64_t)alignment session:(id)session responseHandler:(id)handler;
- (int64_t)textAlignment;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIONavigationBarTitleRenamerViewMetricsUpdateAction

- (_UIONavigationBarTitleRenamerViewMetricsUpdateAction)initWithFrame:(CGRect)frame textAlignment:(int64_t)alignment session:(id)session responseHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  v14 = MEMORY[0x1E698E700];
  sessionCopy = session;
  v16 = objc_alloc_init(v14);
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v16 setObject:sessionIdentifier forSetting:0];
  v18 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v16 setObject:v18 forSetting:1];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  [v16 setObject:v19 forSetting:2];

  v20 = MEMORY[0x1E698E5F8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __108___UIONavigationBarTitleRenamerViewMetricsUpdateAction_initWithFrame_textAlignment_session_responseHandler___block_invoke;
  v26[3] = &unk_1E7108B40;
  v27 = handlerCopy;
  v21 = handlerCopy;
  v22 = [v20 responderWithHandler:v26];
  v25.receiver = self;
  v25.super_class = _UIONavigationBarTitleRenamerViewMetricsUpdateAction;
  v23 = [(_UIOServerAction *)&v25 initWithOriginContext:0 info:v16 responder:v22];

  return v23;
}

- (CGRect)frame
{
  info = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
  v3 = [info objectForSetting:1];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (int64_t)textAlignment
{
  info = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)performActionFromConnection:(id)connection
{
  if ([(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self canSendResponse])
  {
    info = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
    v31 = [info objectForSetting:0];

    v5 = +[_UINavigationBarTitleRenamer renameServer];
    v6 = [v5 sessionWithIdentifier:v31];
    v7 = v6;
    if (v6)
    {
      existingRenamerContentView = [v6 existingRenamerContentView];
      [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self frame];
      [existingRenamerContentView setFrame:{0.0, 0.0}];
      [existingRenamerContentView setTextAlignment:{-[_UIONavigationBarTitleRenamerViewMetricsUpdateAction textAlignment](self, "textAlignment")}];
      layer = [existingRenamerContentView layer];
      RenderId = CALayerGetRenderId();

      layer2 = [existingRenamerContentView layer];
      context = [layer2 context];
      contextId = [context contextId];

      v14 = [_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse alloc];
      [existingRenamerContentView intrinsicContentSize];
      v16 = v15;
      v18 = v17;
      [existingRenamerContentView bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [existingRenamerContentView horizontalTextInset];
      v28 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)v14 initWithRenderID:RenderId contextID:contextId intrinsicContentSize:v16 bounds:v18 horizontalTextInset:v20, v22, v24, v26, v27];
    }

    else
    {
      v29 = [_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse alloc];
      existingRenamerContentView = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB5E8B0 code:1 userInfo:0];
      v28 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)v29 initWithInfo:0 error:existingRenamerContentView];
    }

    v30 = v28;
    [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self sendResponse:v28];
  }
}

@end