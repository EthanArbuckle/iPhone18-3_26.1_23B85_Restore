@interface _UIONavigationBarTitleRenamerViewMetricsUpdateAction
- (CGRect)frame;
- (_UIONavigationBarTitleRenamerViewMetricsUpdateAction)initWithFrame:(CGRect)a3 textAlignment:(int64_t)a4 session:(id)a5 responseHandler:(id)a6;
- (int64_t)textAlignment;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIONavigationBarTitleRenamerViewMetricsUpdateAction

- (_UIONavigationBarTitleRenamerViewMetricsUpdateAction)initWithFrame:(CGRect)a3 textAlignment:(int64_t)a4 session:(id)a5 responseHandler:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v14 = MEMORY[0x1E698E700];
  v15 = a5;
  v16 = objc_alloc_init(v14);
  v17 = [v15 sessionIdentifier];

  [v16 setObject:v17 forSetting:0];
  v18 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v16 setObject:v18 forSetting:1];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v16 setObject:v19 forSetting:2];

  v20 = MEMORY[0x1E698E5F8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __108___UIONavigationBarTitleRenamerViewMetricsUpdateAction_initWithFrame_textAlignment_session_responseHandler___block_invoke;
  v26[3] = &unk_1E7108B40;
  v27 = v13;
  v21 = v13;
  v22 = [v20 responderWithHandler:v26];
  v25.receiver = self;
  v25.super_class = _UIONavigationBarTitleRenamerViewMetricsUpdateAction;
  v23 = [(_UIOServerAction *)&v25 initWithOriginContext:0 info:v16 responder:v22];

  return v23;
}

- (CGRect)frame
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
  v3 = [v2 objectForSetting:1];
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
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 integerValue];

  return v4;
}

- (void)performActionFromConnection:(id)a3
{
  if ([(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self canSendResponse])
  {
    v4 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self info];
    v31 = [v4 objectForSetting:0];

    v5 = +[_UINavigationBarTitleRenamer renameServer];
    v6 = [v5 sessionWithIdentifier:v31];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 existingRenamerContentView];
      [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self frame];
      [v8 setFrame:{0.0, 0.0}];
      [v8 setTextAlignment:{-[_UIONavigationBarTitleRenamerViewMetricsUpdateAction textAlignment](self, "textAlignment")}];
      v9 = [v8 layer];
      RenderId = CALayerGetRenderId();

      v11 = [v8 layer];
      v12 = [v11 context];
      v13 = [v12 contextId];

      v14 = [_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse alloc];
      [v8 intrinsicContentSize];
      v16 = v15;
      v18 = v17;
      [v8 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v8 horizontalTextInset];
      v28 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)v14 initWithRenderID:RenderId contextID:v13 intrinsicContentSize:v16 bounds:v18 horizontalTextInset:v20, v22, v24, v26, v27];
    }

    else
    {
      v29 = [_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse alloc];
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB5E8B0 code:1 userInfo:0];
      v28 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)v29 initWithInfo:0 error:v8];
    }

    v30 = v28;
    [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)self sendResponse:v28];
  }
}

@end