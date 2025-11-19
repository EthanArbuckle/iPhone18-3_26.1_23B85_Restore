@interface SXQuickLookComponentView
- (SXQuickLookComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 fileProvider:(id)a7 quickLookModule:(id)a8;
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
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
@end

@implementation SXQuickLookComponentView

- (SXQuickLookComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 fileProvider:(id)a7 quickLookModule:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = SXQuickLookComponentView;
  v17 = [(SXComponentView *)&v20 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fileProvider, a7);
    objc_storeStrong(&v18->_quickLookModule, a8);
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

  v7 = [(SXComponentView *)self contentView];
  v8 = [(SXQuickLookComponentView *)self loadingIndicator];
  [v7 addSubview:v8];

  v9 = [(SXQuickLookComponentView *)self createIdleState];
  idleState = self->_idleState;
  self->_idleState = v9;

  v11 = [(SXQuickLookComponentView *)self createLoadingState];
  loadingState = self->_loadingState;
  self->_loadingState = v11;

  v13 = [(SXQuickLookComponentView *)self createPresentingState];
  presentingState = self->_presentingState;
  self->_presentingState = v13;

  v15 = [(SXQuickLookComponentView *)self createErrorState];
  errorState = self->_errorState;
  self->_errorState = v15;

  v17 = objc_alloc(MEMORY[0x1E69B6908]);
  v18 = [(SXQuickLookComponentView *)self idleState];
  v19 = [v17 initWithState:v18 withOwner:self];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v19;

  v21 = [(SXQuickLookComponentView *)self stateMachine];
  v22 = [(SXQuickLookComponentView *)self loadingState];
  [v21 addState:v22];

  v23 = [(SXQuickLookComponentView *)self stateMachine];
  v24 = [(SXQuickLookComponentView *)self presentingState];
  [v23 addState:v24];

  v25 = [(SXQuickLookComponentView *)self stateMachine];
  v26 = [(SXQuickLookComponentView *)self errorState];
  [v25 addState:v26];

  v27 = objc_alloc(MEMORY[0x1E69B6910]);
  v28 = MEMORY[0x1E695DFD8];
  v29 = [(SXQuickLookComponentView *)self idleState];
  v30 = [(SXQuickLookComponentView *)self errorState];
  v31 = [v28 setWithObjects:{v29, v30, 0}];
  v32 = [(SXQuickLookComponentView *)self loadingState];
  v33 = [v27 initWithName:@"load" transitionFromStates:v31 toState:v32];

  v34 = objc_alloc(MEMORY[0x1E69B6910]);
  v35 = MEMORY[0x1E695DFD8];
  v36 = [(SXQuickLookComponentView *)self loadingState];
  v37 = [v35 setWithObjects:{v36, 0}];
  v38 = [(SXQuickLookComponentView *)self presentingState];
  v39 = [v34 initWithName:@"present" transitionFromStates:v37 toState:v38];

  v40 = objc_alloc(MEMORY[0x1E69B6910]);
  v41 = MEMORY[0x1E695DFD8];
  v42 = [(SXQuickLookComponentView *)self loadingState];
  v43 = [v41 setWithObjects:{v42, 0}];
  v44 = [(SXQuickLookComponentView *)self errorState];
  v45 = [v40 initWithName:@"error" transitionFromStates:v43 toState:v44];

  v46 = objc_alloc(MEMORY[0x1E69B6910]);
  v47 = MEMORY[0x1E695DFD8];
  v48 = [(SXQuickLookComponentView *)self loadingState];
  v49 = [(SXQuickLookComponentView *)self presentingState];
  v50 = [v47 setWithObjects:{v48, v49, 0}];
  v51 = [(SXQuickLookComponentView *)self idleState];
  v52 = [v46 initWithName:@"unload" transitionFromStates:v50 toState:v51];

  v53 = [(SXQuickLookComponentView *)self stateMachine];
  [v53 addEvent:v33];

  v54 = [(SXQuickLookComponentView *)self stateMachine];
  [v54 addEvent:v39];

  v55 = [(SXQuickLookComponentView *)self stateMachine];
  [v55 addEvent:v45];

  v56 = [(SXQuickLookComponentView *)self stateMachine];
  [v56 addEvent:v52];

  v57 = [(SXQuickLookComponentView *)self stateMachine];
  [v57 activate];
}

- (void)presentComponentWithChanges:(id)a3
{
  var0 = a3.var0;
  v5.receiver = self;
  v5.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
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
  v3 = [(SXQuickLookComponentView *)self stateMachine];
  v4 = [v3 fireEventWithName:@"load" withContext:0];

  [(SXQuickLookComponentView *)self layout];
}

- (void)discardContents
{
  v5.receiver = self;
  v5.super_class = SXQuickLookComponentView;
  [(SXComponentView *)&v5 discardContents];
  v3 = [(SXQuickLookComponentView *)self stateMachine];
  v4 = [v3 fireEventWithName:@"unload" withContext:0];
}

- (void)handleTap
{
  v3 = [(SXQuickLookComponentView *)self stateMachine];
  v2 = [v3 fireEventWithName:@"load" withContext:0];
}

- (void)layout
{
  [(SXQuickLookComponentView *)self layoutLoadingIndicator];
  [(SXQuickLookComponentView *)self layoutErrorView];

  [(SXQuickLookComponentView *)self layoutWebView];
}

- (void)layoutLoadingIndicator
{
  v6 = [(SXQuickLookComponentView *)self loadingIndicator];
  v3 = [(SXComponentView *)self contentView];
  [v3 bounds];
  MidX = CGRectGetMidX(v8);
  v5 = [(SXComponentView *)self contentView];
  [v5 bounds];
  [v6 setCenter:{MidX, CGRectGetMidY(v9)}];
}

- (void)layoutWebView
{
  v5 = [(SXQuickLookComponentView *)self quickLookViewController];
  v3 = [v5 view];
  v4 = [(SXComponentView *)self contentView];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)layoutErrorView
{
  v6 = [(SXQuickLookComponentView *)self errorLabel];
  v3 = [(SXComponentView *)self contentView];
  [v3 bounds];
  MidX = CGRectGetMidX(v8);
  v5 = [(SXComponentView *)self contentView];
  [v5 bounds];
  [v6 setCenter:{MidX, CGRectGetMidY(v9)}];
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