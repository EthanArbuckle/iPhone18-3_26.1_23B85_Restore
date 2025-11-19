@interface SXQuickLookViewController
- (SXQuickLookViewController)initWithEventHandler:(id)a3 renderer:(id)a4;
- (id)createErrorState;
- (id)createLoadingState;
- (id)createPresentingState;
- (void)configureStateMachine;
- (void)handleTap;
- (void)showThumbnailErrorWithMessage:(id)a3;
- (void)showThumbnailImage:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SXQuickLookViewController

- (SXQuickLookViewController)initWithEventHandler:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SXQuickLookViewController;
  v9 = [(SXQuickLookViewController *)&v16 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventHandler, a3);
    objc_storeStrong(&v10->_renderer, a4);
    v11 = objc_alloc_init(MEMORY[0x1E69DC738]);
    thumbnailControl = v10->_thumbnailControl;
    v10->_thumbnailControl = v11;

    [(UIButton *)v10->_thumbnailControl addTarget:v10 action:sel_handleTap forControlEvents:64];
    [(UIButton *)v10->_thumbnailControl setHidden:1];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    errorLabel = v10->_errorLabel;
    v10->_errorLabel = v13;

    [(SXQuickLookViewController *)v10 configureStateMachine];
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SXQuickLookViewController;
  [(SXQuickLookViewController *)&v5 viewDidLoad];
  v3 = [(SXQuickLookViewController *)self view];
  v4 = [(SXQuickLookViewController *)self thumbnailControl];
  [v3 addSubview:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SXQuickLookViewController;
  [(SXQuickLookViewController *)&v6 viewDidAppear:a3];
  v4 = [(SXQuickLookViewController *)self stateMachine];
  v5 = [v4 fireEventWithName:@"reload" withContext:0];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SXQuickLookViewController;
  [(SXQuickLookViewController *)&v22 viewDidLayoutSubviews];
  v3 = [(SXQuickLookViewController *)self stateMachine];
  v4 = [v3 fireEventWithName:@"reload" withContext:0];

  v5 = [SXQuickLookLayoutAttributes alloc];
  v6 = [(SXQuickLookViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SXQuickLookViewController *)self view];
  [v15 bounds];
  v20 = [(SXQuickLookLayoutAttributes *)v5 initWithThumbnailFrame:v8 errorLabelFrame:v10, v12, v14, v16, v17, v18, v19];

  v21 = [(SXQuickLookViewController *)self renderer];
  [v21 render:self attributes:v20];
}

- (void)configureStateMachine
{
  v40 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
  v3 = [(SXQuickLookViewController *)self createLoadingState];
  loadingState = self->_loadingState;
  self->_loadingState = v3;

  v5 = [(SXQuickLookViewController *)self createPresentingState];
  presentingState = self->_presentingState;
  self->_presentingState = v5;

  v7 = [(SXQuickLookViewController *)self createErrorState];
  errorState = self->_errorState;
  self->_errorState = v7;

  v9 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v40 withOwner:self];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v9;

  v11 = [(SXQuickLookViewController *)self stateMachine];
  v12 = [(SXQuickLookViewController *)self loadingState];
  [v11 addState:v12];

  v13 = [(SXQuickLookViewController *)self stateMachine];
  v14 = [(SXQuickLookViewController *)self presentingState];
  [v13 addState:v14];

  v15 = [(SXQuickLookViewController *)self stateMachine];
  v16 = [(SXQuickLookViewController *)self errorState];
  [v15 addState:v16];

  v17 = objc_alloc(MEMORY[0x1E69B6910]);
  v18 = MEMORY[0x1E695DFD8];
  v19 = [(SXQuickLookViewController *)self presentingState];
  v20 = [(SXQuickLookViewController *)self errorState];
  v21 = [v18 setWithObjects:{v40, v19, v20, 0}];
  v22 = [(SXQuickLookViewController *)self loadingState];
  v23 = [v17 initWithName:@"reload" transitionFromStates:v21 toState:v22];

  v24 = objc_alloc(MEMORY[0x1E69B6910]);
  v25 = MEMORY[0x1E695DFD8];
  v26 = [(SXQuickLookViewController *)self loadingState];
  v27 = [v25 setWithObjects:{v26, 0}];
  v28 = [(SXQuickLookViewController *)self presentingState];
  v29 = [v24 initWithName:@"present" transitionFromStates:v27 toState:v28];

  v30 = objc_alloc(MEMORY[0x1E69B6910]);
  v31 = MEMORY[0x1E695DFD8];
  v32 = [(SXQuickLookViewController *)self loadingState];
  v33 = [v31 setWithObjects:{v32, 0}];
  v34 = [(SXQuickLookViewController *)self errorState];
  v35 = [v30 initWithName:@"error" transitionFromStates:v33 toState:v34];

  v36 = [(SXQuickLookViewController *)self stateMachine];
  [v36 addEvent:v23];

  v37 = [(SXQuickLookViewController *)self stateMachine];
  [v37 addEvent:v29];

  v38 = [(SXQuickLookViewController *)self stateMachine];
  [v38 addEvent:v35];

  v39 = [(SXQuickLookViewController *)self stateMachine];
  [v39 activate];
}

- (id)createLoadingState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loading"];
  v3 = [v2 onCanTry:&__block_literal_global_102];
  v4 = [v2 onWillEnter:&__block_literal_global_30];

  return v2;
}

BOOL __47__SXQuickLookViewController_createLoadingState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v3 thumbnailControl];

  [v9 frame];
  v12 = v8 != v11 || v6 != v10;

  return v12;
}

void __47__SXQuickLookViewController_createLoadingState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v7 = [v3 eventHandler];
  v4 = [v3 view];

  [v4 bounds];
  [v7 requestThumbnailWithSize:{v5, v6}];
}

- (id)createPresentingState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"presenting"];
  v3 = [v2 onWillEnter:&__block_literal_global_35];
  v4 = [v2 onWillExit:&__block_literal_global_39];

  return v2;
}

void __50__SXQuickLookViewController_createPresentingState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SXQuickLookViewController_createPresentingState__block_invoke_2;
  v6[3] = &unk_1E84FED18;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.2];
}

void __50__SXQuickLookViewController_createPresentingState__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) thumbnailControl];
  [v1 setHidden:0];
}

void __50__SXQuickLookViewController_createPresentingState__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SXQuickLookViewController_createPresentingState__block_invoke_4;
  v6[3] = &unk_1E84FED18;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.2];
}

void __50__SXQuickLookViewController_createPresentingState__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) thumbnailControl];
  [v1 setHidden:1];
}

- (id)createErrorState
{
  v2 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"error"];
  v3 = [v2 onWillEnter:&__block_literal_global_41];
  v4 = [v2 onWillExit:&__block_literal_global_43];

  return v2;
}

void __45__SXQuickLookViewController_createErrorState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 view];
  v5 = [v3 errorLabel];
  [v4 addSubview:v5];

  v6 = [v3 view];

  [v6 setNeedsLayout];
}

void __45__SXQuickLookViewController_createErrorState__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 errorLabel];
  [v3 removeFromSuperview];
}

- (void)handleTap
{
  v4 = [(SXQuickLookViewController *)self eventHandler];
  v3 = [(SXQuickLookViewController *)self thumbnailImageView];
  [v4 didTapThumbnailView:v3];
}

- (void)showThumbnailImage:(id)a3
{
  v4 = a3;
  v5 = [(SXQuickLookViewController *)self renderer];
  v6 = [(SXQuickLookViewController *)self thumbnailControl];
  [v5 renderThumbnailImage:v4 view:v6];

  v8 = [(SXQuickLookViewController *)self stateMachine];
  v7 = [v8 fireEventWithName:@"present" withContext:0];
}

- (void)showThumbnailErrorWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(SXQuickLookViewController *)self renderer];
  v6 = [(SXQuickLookViewController *)self errorLabel];
  [v5 renderErrorMessage:v4 view:v6];

  v8 = [(SXQuickLookViewController *)self stateMachine];
  v7 = [v8 fireEventWithName:@"error" withContext:0];
}

@end