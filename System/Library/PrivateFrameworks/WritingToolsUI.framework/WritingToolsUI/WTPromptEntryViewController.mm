@interface WTPromptEntryViewController
- (WTPromptEntryViewController)initWithWritingToolsController:(id)controller session:(id)session;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_setupSceneHostingWithSessionUUID:(id)d;
- (void)invalidateConnection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation WTPromptEntryViewController

- (WTPromptEntryViewController)initWithWritingToolsController:(id)controller session:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = WTPromptEntryViewController;
  v9 = [(WTPromptEntryViewController *)&v12 init];
  if (v9)
  {
    uuid = [sessionCopy uuid];
    [(WTPromptEntryViewController *)v9 _setupSceneHostingWithSessionUUID:uuid];

    objc_storeStrong(&v9->_writingToolsController, controller);
  }

  return v9;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  [containerCopy preferredContentSize];
  v6 = v5;
  [containerCopy preferredContentSize];
  v8 = v7;

  [(WTPromptEntryViewController *)self setPreferredContentSize:v6, v8];
}

- (void)_setupSceneHostingWithSessionUUID:(id)d
{
  v38[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  hostingController = [(WTPromptEntryViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTPromptEntryViewController *)self _beginDelayingPresentation:&__block_literal_global_1 cancellationHandler:3.0];
    v36 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v6 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v6 setSessionUUID:dCopy];
    v35 = v6;
    [(WTStartupOptions *)v6 setRequestPromptEntry:1];
    v7 = objc_alloc(MEMORY[0x1E69DD688]);
    v37 = dCopy;
    v8 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v9 = [v7 initWithProcessIdentity:v36 sceneSpecification:v8];
    [(WTPromptEntryViewController *)self setHostingController:v9];

    hostingController2 = [(WTPromptEntryViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v34 = [(WTStartupOptions *)v6 asBSActionAndReturnError:0];
    v12 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v34 invalidationHandler:0];
    hostingController3 = [(WTPromptEntryViewController *)self hostingController];
    [hostingController3 setActivationController:v12];

    hostingController4 = [(WTPromptEntryViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTPromptEntryViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    v33 = sceneViewController;
    [(WTPromptEntryViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTPromptEntryViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[0] = v30;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[1] = v26;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[2] = v21;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v27 activateConstraints:v25];

    dCopy = v37;
    [v33 didMoveToParentViewController:self];
  }
}

- (void)invalidateConnection
{
  hostingController = [(WTPromptEntryViewController *)self hostingController];
  [hostingController invalidate];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  writingToolsController = [(WTPromptEntryViewController *)self writingToolsController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    writingToolsController2 = [(WTPromptEntryViewController *)self writingToolsController];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WTPromptEntryViewController;
    writingToolsController2 = [(WTPromptEntryViewController *)&v9 forwardingTargetForSelector:selector];
  }

  return writingToolsController2;
}

@end