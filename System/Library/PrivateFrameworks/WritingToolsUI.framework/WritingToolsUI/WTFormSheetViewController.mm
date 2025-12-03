@interface WTFormSheetViewController
- (WTFormSheetViewController)initWithWritingToolsController:(id)controller inSession:(id)session formSheetUIType:(int64_t)type shareSheetPayload:(id)payload;
- (void)_setupSceneHostingWithSessionUUID:(id)d formSheetUIType:(int64_t)type shareSheetPayload:(id)payload;
- (void)dismissShareSheet;
- (void)endWritingToolsWithError:(id)error;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)completion;
- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
- (void)triggerShareSheetWithText:(id)text;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing;
@end

@implementation WTFormSheetViewController

- (WTFormSheetViewController)initWithWritingToolsController:(id)controller inSession:(id)session formSheetUIType:(int64_t)type shareSheetPayload:(id)payload
{
  controllerCopy = controller;
  sessionCopy = session;
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = WTFormSheetViewController;
  v14 = [(WTFormSheetViewController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_writingToolsController, controller);
    presentationController = [(WTFormSheetViewController *)v15 presentationController];
    [presentationController setDelegate:v15];

    uuid = [sessionCopy uuid];
    [(WTFormSheetViewController *)v15 _setupSceneHostingWithSessionUUID:uuid formSheetUIType:type shareSheetPayload:payloadCopy];
  }

  return v15;
}

- (void)_setupSceneHostingWithSessionUUID:(id)d formSheetUIType:(int64_t)type shareSheetPayload:(id)payload
{
  v45[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  payloadCopy = payload;
  hostingController = [(WTFormSheetViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTFormSheetViewController *)self _beginDelayingPresentation:&__block_literal_global_8 cancellationHandler:3.0];
    v42 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v11 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v11 setSessionUUID:dCopy];
    [(WTStartupOptions *)v11 setWantsFormSheetPresentation:1];
    [(WTStartupOptions *)v11 setFormSheetUIType:type];
    [(WTStartupOptions *)v11 setShareSheetPayload:payloadCopy];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v41 = v11;
    -[WTStartupOptions setSourceUserInterfaceIdiom:](v11, "setSourceUserInterfaceIdiom:", [currentDevice userInterfaceIdiom]);

    v13 = objc_alloc(MEMORY[0x1E69DD688]);
    v14 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v15 = [v13 initWithProcessIdentity:v42 sceneSpecification:v14];
    [(WTFormSheetViewController *)self setHostingController:v15];

    hostingController2 = [(WTFormSheetViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v40 = [(WTStartupOptions *)v11 asBSActionAndReturnError:0];
    v18 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v40 invalidationHandler:0];
    hostingController3 = [(WTFormSheetViewController *)self hostingController];
    [hostingController3 setActivationController:v18];

    hostingController4 = [(WTFormSheetViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTFormSheetViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    v39 = sceneViewController;
    [(WTFormSheetViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTFormSheetViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v36;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[1] = v32;
    [view topAnchor];
    v25 = v44 = dCopy;
    [view2 topAnchor];
    v26 = v43 = payloadCopy;
    v27 = [v25 constraintEqualToAnchor:v26];
    v45[2] = v27;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    [v33 activateConstraints:v31];

    payloadCopy = v43;
    dCopy = v44;

    [v39 didMoveToParentViewController:self];
  }
}

- (void)enrollmentBegan
{
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController enrollmentDismissedWithCompletion:completionCopy];
}

- (void)triggerShareSheetWithText:(id)text
{
  textCopy = text;
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController triggerShareSheetWithText:textCopy];
}

- (void)dismissShareSheet
{
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController dismissShareSheet];
}

- (void)endWritingToolsWithError:(id)error
{
  errorCopy = error;
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController endWritingToolsWithError:errorCopy];
}

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  promptCopy = prompt;
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController handoffFromUCBFromTool:tool withPrompt:promptCopy];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing
{
  changingCopy = changing;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  writingToolsController = [(WTFormSheetViewController *)self writingToolsController];
  [writingToolsController writingToolsDidUpdateKeyboardPosition:changingCopy preferredContentSizeChanging:{x, y, width, height}];
}

@end