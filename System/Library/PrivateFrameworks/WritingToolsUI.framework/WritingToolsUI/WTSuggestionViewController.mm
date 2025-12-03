@interface WTSuggestionViewController
- (WTSuggestionViewController)initWithSuggestion:(id)suggestion inContextWithUUID:(id)d inSession:(id)session;
- (void)_setupSceneHostingWithSessionUUID:(id)d contextUUID:(id)iD suggestionUUID:(id)uID;
- (void)invalidateConnection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation WTSuggestionViewController

- (WTSuggestionViewController)initWithSuggestion:(id)suggestion inContextWithUUID:(id)d inSession:(id)session
{
  suggestionCopy = suggestion;
  dCopy = d;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = WTSuggestionViewController;
  v12 = [(WTSuggestionViewController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_suggestion, suggestion);
    [(WTSuggestionViewController *)v13 setModalPresentationStyle:7];
    presentationController = [(WTSuggestionViewController *)v13 presentationController];
    [presentationController setDelegate:v13];

    uuid = [sessionCopy uuid];
    uuid2 = [suggestionCopy uuid];
    [(WTSuggestionViewController *)v13 _setupSceneHostingWithSessionUUID:uuid contextUUID:dCopy suggestionUUID:uuid2];
  }

  return v13;
}

- (void)invalidateConnection
{
  hostingController = [(WTSuggestionViewController *)self hostingController];
  [hostingController invalidate];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];

  [(WTSuggestionViewController *)self setPreferredContentSize:300.0];
}

- (void)_setupSceneHostingWithSessionUUID:(id)d contextUUID:(id)iD suggestionUUID:(id)uID
{
  v47[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  hostingController = [(WTSuggestionViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTSuggestionViewController *)self _beginDelayingPresentation:&__block_literal_global_6 cancellationHandler:3.0];
    v45 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v12 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v12 setSessionUUID:dCopy];
    [(WTStartupOptions *)v12 setSuggestionUUID:uIDCopy];
    [(WTStartupOptions *)v12 setContextUUID:iDCopy];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v44 = v12;
    -[WTStartupOptions setSourceUserInterfaceIdiom:](v12, "setSourceUserInterfaceIdiom:", [currentDevice userInterfaceIdiom]);

    v14 = objc_alloc(MEMORY[0x1E69DD688]);
    v46 = iDCopy;
    v15 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v16 = [v14 initWithProcessIdentity:v45 sceneSpecification:v15];
    [(WTSuggestionViewController *)self setHostingController:v16];

    hostingController2 = [(WTSuggestionViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v43 = [(WTStartupOptions *)v12 asBSActionAndReturnError:0];
    v19 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v43 invalidationHandler:0];
    hostingController3 = [(WTSuggestionViewController *)self hostingController];
    [hostingController3 setActivationController:v19];

    hostingController4 = [(WTSuggestionViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTSuggestionViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    v42 = sceneViewController;
    [(WTSuggestionViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTSuggestionViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v39;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v35;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v26;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29 = uIDCopy;
    v31 = v30 = dCopy;
    v47[3] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [v36 activateConstraints:v32];

    dCopy = v30;
    uIDCopy = v29;

    iDCopy = v46;
    [v42 didMoveToParentViewController:self];
  }
}

@end