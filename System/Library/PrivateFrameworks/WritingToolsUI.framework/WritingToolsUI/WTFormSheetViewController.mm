@interface WTFormSheetViewController
- (WTFormSheetViewController)initWithWritingToolsController:(id)a3 inSession:(id)a4 formSheetUIType:(int64_t)a5 shareSheetPayload:(id)a6;
- (void)_setupSceneHostingWithSessionUUID:(id)a3 formSheetUIType:(int64_t)a4 shareSheetPayload:(id)a5;
- (void)dismissShareSheet;
- (void)endWritingToolsWithError:(id)a3;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)a3;
- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
- (void)triggerShareSheetWithText:(id)a3;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4;
@end

@implementation WTFormSheetViewController

- (WTFormSheetViewController)initWithWritingToolsController:(id)a3 inSession:(id)a4 formSheetUIType:(int64_t)a5 shareSheetPayload:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = WTFormSheetViewController;
  v14 = [(WTFormSheetViewController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_writingToolsController, a3);
    v16 = [(WTFormSheetViewController *)v15 presentationController];
    [v16 setDelegate:v15];

    v17 = [v12 uuid];
    [(WTFormSheetViewController *)v15 _setupSceneHostingWithSessionUUID:v17 formSheetUIType:a5 shareSheetPayload:v13];
  }

  return v15;
}

- (void)_setupSceneHostingWithSessionUUID:(id)a3 formSheetUIType:(int64_t)a4 shareSheetPayload:(id)a5
{
  v45[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(WTFormSheetViewController *)self hostingController];

  if (!v10)
  {
    [(WTFormSheetViewController *)self _beginDelayingPresentation:&__block_literal_global_8 cancellationHandler:3.0];
    v42 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v11 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v11 setSessionUUID:v8];
    [(WTStartupOptions *)v11 setWantsFormSheetPresentation:1];
    [(WTStartupOptions *)v11 setFormSheetUIType:a4];
    [(WTStartupOptions *)v11 setShareSheetPayload:v9];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v41 = v11;
    -[WTStartupOptions setSourceUserInterfaceIdiom:](v11, "setSourceUserInterfaceIdiom:", [v12 userInterfaceIdiom]);

    v13 = objc_alloc(MEMORY[0x1E69DD688]);
    v14 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v15 = [v13 initWithProcessIdentity:v42 sceneSpecification:v14];
    [(WTFormSheetViewController *)self setHostingController:v15];

    v16 = [(WTFormSheetViewController *)self hostingController];
    v17 = [v16 _eventDeferringComponent];
    [v17 setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v40 = [(WTStartupOptions *)v11 asBSActionAndReturnError:0];
    v18 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v40 invalidationHandler:0];
    v19 = [(WTFormSheetViewController *)self hostingController];
    [v19 setActivationController:v18];

    v20 = [(WTFormSheetViewController *)self hostingController];
    [v20 setDelegate:self];

    v21 = [(WTFormSheetViewController *)self hostingController];
    v22 = [v21 sceneViewController];

    v39 = v22;
    [(WTFormSheetViewController *)self addChildViewController:v22];
    v23 = [v22 view];
    v24 = [(WTFormSheetViewController *)self view];
    [v24 addSubview:v23];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = MEMORY[0x1E696ACD8];
    v38 = [v23 leadingAnchor];
    v37 = [v24 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v45[0] = v36;
    v35 = [v23 trailingAnchor];
    v34 = [v24 trailingAnchor];
    v32 = [v35 constraintEqualToAnchor:v34];
    v45[1] = v32;
    [v23 topAnchor];
    v25 = v44 = v8;
    [v24 topAnchor];
    v26 = v43 = v9;
    v27 = [v25 constraintEqualToAnchor:v26];
    v45[2] = v27;
    v28 = [v23 bottomAnchor];
    v29 = [v24 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v45[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [v33 activateConstraints:v31];

    v9 = v43;
    v8 = v44;

    [v39 didMoveToParentViewController:self];
  }
}

- (void)enrollmentBegan
{
  v2 = [(WTFormSheetViewController *)self writingToolsController];
  [v2 enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WTFormSheetViewController *)self writingToolsController];
  [v5 enrollmentDismissedWithCompletion:v4];
}

- (void)triggerShareSheetWithText:(id)a3
{
  v4 = a3;
  v5 = [(WTFormSheetViewController *)self writingToolsController];
  [v5 triggerShareSheetWithText:v4];
}

- (void)dismissShareSheet
{
  v2 = [(WTFormSheetViewController *)self writingToolsController];
  [v2 dismissShareSheet];
}

- (void)endWritingToolsWithError:(id)a3
{
  v4 = a3;
  v5 = [(WTFormSheetViewController *)self writingToolsController];
  [v5 endWritingToolsWithError:v4];
}

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v6 = a4;
  v7 = [(WTFormSheetViewController *)self writingToolsController];
  [v7 handoffFromUCBFromTool:a3 withPrompt:v6];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(WTFormSheetViewController *)self writingToolsController];
  [v9 writingToolsDidUpdateKeyboardPosition:v4 preferredContentSizeChanging:{x, y, width, height}];
}

@end