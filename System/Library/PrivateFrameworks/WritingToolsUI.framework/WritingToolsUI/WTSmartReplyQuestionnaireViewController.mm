@interface WTSmartReplyQuestionnaireViewController
- (WTSmartReplyQuestionnaireViewController)initWithSessionUUID:(id)d;
- (void)_setupSceneHostingWithSessionUUID:(id)d;
- (void)invalidateConnection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation WTSmartReplyQuestionnaireViewController

- (WTSmartReplyQuestionnaireViewController)initWithSessionUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = WTSmartReplyQuestionnaireViewController;
  v5 = [(WTSmartReplyQuestionnaireViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WTSmartReplyQuestionnaireViewController *)v5 _setupSceneHostingWithSessionUUID:dCopy];
  }

  return v6;
}

- (void)invalidateConnection
{
  hostingController = [(WTSmartReplyQuestionnaireViewController *)self hostingController];
  [hostingController invalidate];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];

  [(WTSmartReplyQuestionnaireViewController *)self setPreferredContentSize:300.0];
}

- (void)_setupSceneHostingWithSessionUUID:(id)d
{
  v39[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  hostingController = [(WTSmartReplyQuestionnaireViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTSmartReplyQuestionnaireViewController *)self _beginDelayingPresentation:&__block_literal_global_7 cancellationHandler:3.0];
    v37 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v6 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v6 setSessionUUID:dCopy];
    [(WTStartupOptions *)v6 setIsQuestionnairePopover:1];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v36 = v6;
    -[WTStartupOptions setSourceUserInterfaceIdiom:](v6, "setSourceUserInterfaceIdiom:", [currentDevice userInterfaceIdiom]);

    v8 = objc_alloc(MEMORY[0x1E69DD688]);
    v38 = dCopy;
    v9 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v10 = [v8 initWithProcessIdentity:v37 sceneSpecification:v9];
    [(WTSmartReplyQuestionnaireViewController *)self setHostingController:v10];

    hostingController2 = [(WTSmartReplyQuestionnaireViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v35 = [(WTStartupOptions *)v6 asBSActionAndReturnError:0];
    v13 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v35 invalidationHandler:0];
    hostingController3 = [(WTSmartReplyQuestionnaireViewController *)self hostingController];
    [hostingController3 setActivationController:v13];

    hostingController4 = [(WTSmartReplyQuestionnaireViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTSmartReplyQuestionnaireViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    v34 = sceneViewController;
    [(WTSmartReplyQuestionnaireViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTSmartReplyQuestionnaireViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v31;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v27;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v22;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [v28 activateConstraints:v26];

    dCopy = v38;
    [v34 didMoveToParentViewController:self];
  }
}

@end