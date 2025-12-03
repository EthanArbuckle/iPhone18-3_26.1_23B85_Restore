@interface SXQuickLookComponentView
- (SXQuickLookComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory fileProvider:(id)fileProvider quickLookModule:(id)module;
- (id)createErrorState;
- (id)createIdleState;
- (id)createLoadingState;
- (id)createPresentingState;
- (void)configure;
- (void)discardContents;
- (void)handleTap;
- (void)layout;
- (void)layoutErrorView;
- (void)layoutLoadingIndicator;
- (void)layoutWebView;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
@end

@implementation SXQuickLookComponentView

- (SXQuickLookComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory fileProvider:(id)fileProvider quickLookModule:(id)module
{
  fileProviderCopy = fileProvider;
  moduleCopy = module;
  v20.receiver = self;
  v20.super_class = SXQuickLookComponentView;
  v17 = [(SXComponentView *)&v20 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fileProvider, fileProvider);
    objc_storeStrong(&v18->_quickLookModule, module);
  }

  return v18;
}

- (void)configure
{
  v58.receiver = self;
  v58.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v58 configure];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  contentView = [(SXComponentView *)self contentView];
  loadingIndicator = [(SXQuickLookComponentView *)self loadingIndicator];
  [contentView addSubview:loadingIndicator];

  createIdleState = [(SXQuickLookComponentView *)self createIdleState];
  idleState = self->_idleState;
  self->_idleState = createIdleState;

  createLoadingState = [(SXQuickLookComponentView *)self createLoadingState];
  loadingState = self->_loadingState;
  self->_loadingState = createLoadingState;

  createPresentingState = [(SXQuickLookComponentView *)self createPresentingState];
  presentingState = self->_presentingState;
  self->_presentingState = createPresentingState;

  createErrorState = [(SXQuickLookComponentView *)self createErrorState];
  errorState = self->_errorState;
  self->_errorState = createErrorState;

  v17 = objc_alloc(MEMORY[0x1E69B6908]);
  idleState = [(SXQuickLookComponentView *)self idleState];
  v19 = [v17 initWithState:idleState withOwner:self];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v19;

  stateMachine = [(SXQuickLookComponentView *)self stateMachine];
  loadingState = [(SXQuickLookComponentView *)self loadingState];
  [stateMachine addState:loadingState];

  stateMachine2 = [(SXQuickLookComponentView *)self stateMachine];
  presentingState = [(SXQuickLookComponentView *)self presentingState];
  [stateMachine2 addState:presentingState];

  stateMachine3 = [(SXQuickLookComponentView *)self stateMachine];
  errorState = [(SXQuickLookComponentView *)self errorState];
  [stateMachine3 addState:errorState];

  v27 = objc_alloc(MEMORY[0x1E69B6910]);
  v28 = MEMORY[0x1E695DFD8];
  idleState2 = [(SXQuickLookComponentView *)self idleState];
  errorState2 = [(SXQuickLookComponentView *)self errorState];
  v31 = [v28 setWithObjects:{idleState2, errorState2, 0}];
  loadingState2 = [(SXQuickLookComponentView *)self loadingState];
  v33 = [v27 initWithName:@"load" transitionFromStates:v31 toState:loadingState2];

  v34 = objc_alloc(MEMORY[0x1E69B6910]);
  v35 = MEMORY[0x1E695DFD8];
  loadingState3 = [(SXQuickLookComponentView *)self loadingState];
  v37 = [v35 setWithObjects:{loadingState3, 0}];
  presentingState2 = [(SXQuickLookComponentView *)self presentingState];
  v39 = [v34 initWithName:@"present" transitionFromStates:v37 toState:presentingState2];

  v40 = objc_alloc(MEMORY[0x1E69B6910]);
  v41 = MEMORY[0x1E695DFD8];
  loadingState4 = [(SXQuickLookComponentView *)self loadingState];
  v43 = [v41 setWithObjects:{loadingState4, 0}];
  errorState3 = [(SXQuickLookComponentView *)self errorState];
  v45 = [v40 initWithName:@"error" transitionFromStates:v43 toState:errorState3];

  v46 = objc_alloc(MEMORY[0x1E69B6910]);
  v47 = MEMORY[0x1E695DFD8];
  loadingState5 = [(SXQuickLookComponentView *)self loadingState];
  presentingState3 = [(SXQuickLookComponentView *)self presentingState];
  v50 = [v47 setWithObjects:{loadingState5, presentingState3, 0}];
  idleState3 = [(SXQuickLookComponentView *)self idleState];
  v52 = [v46 initWithName:@"unload" transitionFromStates:v50 toState:idleState3];

  stateMachine4 = [(SXQuickLookComponentView *)self stateMachine];
  [stateMachine4 addEvent:v33];

  stateMachine5 = [(SXQuickLookComponentView *)self stateMachine];
  [stateMachine5 addEvent:v39];

  stateMachine6 = [(SXQuickLookComponentView *)self stateMachine];
  [stateMachine6 addEvent:v45];

  stateMachine7 = [(SXQuickLookComponentView *)self stateMachine];
  [stateMachine7 addEvent:v52];

  stateMachine8 = [(SXQuickLookComponentView *)self stateMachine];
  [stateMachine8 activate];
}

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  v5.receiver = self;
  v5.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if (var0)
  {
    [(SXQuickLookComponentView *)self layout];
  }
}

- (void)renderContents
{
  v5.receiver = self;
  v5.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v5 renderContents];
  stateMachine = [(SXQuickLookComponentView *)self stateMachine];
  v4 = [stateMachine fireEventWithName:@"load" withContext:0];

  [(SXQuickLookComponentView *)self layout];
}

- (void)discardContents
{
  v5.receiver = self;
  v5.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v5 discardContents];
  stateMachine = [(SXQuickLookComponentView *)self stateMachine];
  v4 = [stateMachine fireEventWithName:@"unload" withContext:0];
}

- (void)handleTap
{
  stateMachine = [(SXQuickLookComponentView *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"load" withContext:0];
}

- (void)layout
{
  [(SXQuickLookComponentView *)self layoutLoadingIndicator];
  [(SXQuickLookComponentView *)self layoutErrorView];

  [(SXQuickLookComponentView *)self layoutWebView];
}

- (void)layoutLoadingIndicator
{
  loadingIndicator = [(SXQuickLookComponentView *)self loadingIndicator];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  MidX = CGRectGetMidX(v8);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [loadingIndicator setCenter:{MidX, CGRectGetMidY(v9)}];
}

- (void)layoutWebView
{
  quickLookViewController = [(SXQuickLookComponentView *)self quickLookViewController];
  view = [quickLookViewController view];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  [view setFrame:?];
}

- (void)layoutErrorView
{
  errorLabel = [(SXQuickLookComponentView *)self errorLabel];
  contentView = [(SXComponentView *)self contentView];
  [contentView bounds];
  MidX = CGRectGetMidX(v8);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 bounds];
  [errorLabel setCenter:{MidX, CGRectGetMidY(v9)}];
}

- (id)createIdleState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
  v3 = [v2 onWillEnter:&__block_literal_global_78];

  return v2;
}

void __43__SXQuickLookComponentView_createIdleState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v3 = [v8 loadingIndicator];
  [v3 stopAnimating];

  v4 = [v8 quickLookViewController];
  [v4 willMoveToParentViewController:0];

  v5 = [v8 quickLookViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  v7 = [v8 quickLookViewController];
  [v7 didMoveToParentViewController:0];

  [v8 setQuickLookViewController:0];
}

- (id)createLoadingState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loading"];
  v3 = [v2 onWillEnter:&__block_literal_global_33];
  v4 = [v2 onWillExit:&__block_literal_global_40];

  return v2;
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 loadingIndicator];
  [v4 startAnimating];

  v5 = [v3 fileProvider];
  v6 = [v3 component];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__SXQuickLookComponentView_createLoadingState__block_invoke_2;
  v10[3] = &unk_1E8501868;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SXQuickLookComponentView_createLoadingState__block_invoke_4;
  v8[3] = &unk_1E8501890;
  v9 = v11;
  v7 = v11;
  [v5 fileForComponent:v6 onCompletion:v10 onError:v8];
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SXQuickLookComponentPresentationTransitionContext alloc] initWithFile:v3];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SXQuickLookComponentView_createLoadingState__block_invoke_3;
  v6[3] = &unk_1E84FEC78;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [v3 fireEventWithName:@"present" withContext:*(a1 + 40)];
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SXQuickLookComponentErrorTransitionContext alloc] initWithError:v3];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SXQuickLookComponentView_createLoadingState__block_invoke_5;
  v6[3] = &unk_1E84FEC78;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [v3 fireEventWithName:@"error" withContext:*(a1 + 40)];
}

void __46__SXQuickLookComponentView_createLoadingState__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 loadingIndicator];
  [v3 stopAnimating];
}

- (id)createPresentingState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"presenting"];
  v3 = [v2 onWillEnter:&__block_literal_global_45];
  v4 = [v2 onWillExit:&__block_literal_global_48];

  return v2;
}

void __49__SXQuickLookComponentView_createPresentingState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 context];
  v6 = [v4 quickLookModule];
  v7 = [v5 file];
  v8 = [v6 createViewControllerWithFile:v7];
  [v4 setQuickLookViewController:v8];

  v9 = [v4 contentView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v4 quickLookViewController];
  v19 = [v18 view];
  [v19 setFrame:{v11, v13, v15, v17}];

  v20 = [v4 quickLookViewController];
  v21 = [v20 view];
  [v21 setHidden:1];

  v22 = [v4 presentationDelegate];
  v23 = [v22 presentingContentViewController];
  v24 = [v4 quickLookViewController];
  [v23 addChildViewController:v24];

  v25 = [v4 contentView];
  v26 = [v4 quickLookViewController];
  v27 = [v26 view];
  [v25 addSubview:v27];

  v28 = [v4 quickLookViewController];
  v29 = [v4 presentationDelegate];
  v30 = [v29 presentingContentViewController];
  [v28 didMoveToParentViewController:v30];

  v31 = MEMORY[0x1E69DD250];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49__SXQuickLookComponentView_createPresentingState__block_invoke_2;
  v33[3] = &unk_1E84FED18;
  v34 = v4;
  v32 = v4;
  [v31 animateWithDuration:v33 animations:0.15];
}

void __49__SXQuickLookComponentView_createPresentingState__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) quickLookViewController];
  v1 = [v2 view];
  [v1 setHidden:0];
}

void __49__SXQuickLookComponentView_createPresentingState__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SXQuickLookComponentView_createPresentingState__block_invoke_4;
  v6[3] = &unk_1E84FED18;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.15];
}

void __49__SXQuickLookComponentView_createPresentingState__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) quickLookViewController];
  v1 = [v2 view];
  [v1 setHidden:1];
}

- (id)createErrorState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"error"];
  v3 = [v2 onWillEnter:&__block_literal_global_50_0];
  v4 = [v2 onWillExit:&__block_literal_global_59_14];

  return v2;
}

void __44__SXQuickLookComponentView_createErrorState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v3 = [v15 errorLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v15 setErrorLabel:v4];

    v5 = [v15 errorLabel];
    v6 = SXBundle();
    v7 = [v6 localizedStringForKey:@"SXTapToRetry" value:&stru_1F532F6C0 table:0];
    [v5 setText:v7];

    v8 = [v15 errorLabel];
    [v8 setNumberOfLines:2];

    v9 = [v15 errorLabel];
    [v9 setTextAlignment:1];

    v10 = [v15 errorLabel];
    [v10 sizeToFit];

    v11 = [v15 contentView];
    v12 = [v15 errorLabel];
    [v11 addSubview:v12];
  }

  v13 = [v15 contentView];
  v14 = [v15 tapGestureRecognizer];
  [v13 addGestureRecognizer:v14];

  [v15 layoutErrorView];
}

void __44__SXQuickLookComponentView_createErrorState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 errorLabel];
  [v4 removeFromSuperview];

  [v3 setErrorLabel:0];
  v6 = [v3 contentView];
  v5 = [v3 tapGestureRecognizer];

  [v6 removeGestureRecognizer:v5];
}

@end