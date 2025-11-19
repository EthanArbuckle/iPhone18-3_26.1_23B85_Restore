@interface WTSuggestionViewController
- (WTSuggestionViewController)initWithSuggestion:(id)a3 inContextWithUUID:(id)a4 inSession:(id)a5;
- (void)_setupSceneHostingWithSessionUUID:(id)a3 contextUUID:(id)a4 suggestionUUID:(id)a5;
- (void)invalidateConnection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation WTSuggestionViewController

- (WTSuggestionViewController)initWithSuggestion:(id)a3 inContextWithUUID:(id)a4 inSession:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WTSuggestionViewController;
  v12 = [(WTSuggestionViewController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_suggestion, a3);
    [(WTSuggestionViewController *)v13 setModalPresentationStyle:7];
    v14 = [(WTSuggestionViewController *)v13 presentationController];
    [v14 setDelegate:v13];

    v15 = [v11 uuid];
    v16 = [v9 uuid];
    [(WTSuggestionViewController *)v13 _setupSceneHostingWithSessionUUID:v15 contextUUID:v10 suggestionUUID:v16];
  }

  return v13;
}

- (void)invalidateConnection
{
  v2 = [(WTSuggestionViewController *)self hostingController];
  [v2 invalidate];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  [a3 preferredContentSize];

  [(WTSuggestionViewController *)self setPreferredContentSize:300.0];
}

- (void)_setupSceneHostingWithSessionUUID:(id)a3 contextUUID:(id)a4 suggestionUUID:(id)a5
{
  v47[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WTSuggestionViewController *)self hostingController];

  if (!v11)
  {
    [(WTSuggestionViewController *)self _beginDelayingPresentation:&__block_literal_global_6 cancellationHandler:3.0];
    v45 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v12 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
    [(WTStartupOptions *)v12 setSessionUUID:v8];
    [(WTStartupOptions *)v12 setSuggestionUUID:v10];
    [(WTStartupOptions *)v12 setContextUUID:v9];
    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v44 = v12;
    -[WTStartupOptions setSourceUserInterfaceIdiom:](v12, "setSourceUserInterfaceIdiom:", [v13 userInterfaceIdiom]);

    v14 = objc_alloc(MEMORY[0x1E69DD688]);
    v46 = v9;
    v15 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v16 = [v14 initWithProcessIdentity:v45 sceneSpecification:v15];
    [(WTSuggestionViewController *)self setHostingController:v16];

    v17 = [(WTSuggestionViewController *)self hostingController];
    v18 = [v17 _eventDeferringComponent];
    [v18 setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v43 = [(WTStartupOptions *)v12 asBSActionAndReturnError:0];
    v19 = [[WTUISceneHostingActivationController alloc] initWithStartupAction:v43 invalidationHandler:0];
    v20 = [(WTSuggestionViewController *)self hostingController];
    [v20 setActivationController:v19];

    v21 = [(WTSuggestionViewController *)self hostingController];
    [v21 setDelegate:self];

    v22 = [(WTSuggestionViewController *)self hostingController];
    v23 = [v22 sceneViewController];

    v42 = v23;
    [(WTSuggestionViewController *)self addChildViewController:v23];
    v24 = [v23 view];
    v25 = [(WTSuggestionViewController *)self view];
    [v25 addSubview:v24];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = MEMORY[0x1E696ACD8];
    v41 = [v24 leadingAnchor];
    v40 = [v25 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v47[0] = v39;
    v38 = [v24 trailingAnchor];
    v37 = [v25 trailingAnchor];
    v35 = [v38 constraintEqualToAnchor:v37];
    v47[1] = v35;
    v34 = [v24 topAnchor];
    v33 = [v25 topAnchor];
    v26 = [v34 constraintEqualToAnchor:v33];
    v47[2] = v26;
    v27 = [v24 bottomAnchor];
    v28 = [v25 bottomAnchor];
    [v27 constraintEqualToAnchor:v28];
    v29 = v10;
    v31 = v30 = v8;
    v47[3] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [v36 activateConstraints:v32];

    v8 = v30;
    v10 = v29;

    v9 = v46;
    [v42 didMoveToParentViewController:self];
  }
}

@end