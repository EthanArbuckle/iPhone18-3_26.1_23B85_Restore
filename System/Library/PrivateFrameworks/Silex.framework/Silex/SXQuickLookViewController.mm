@interface SXQuickLookViewController
- (SXQuickLookViewController)initWithEventHandler:(id)handler renderer:(id)renderer;
- (id)createErrorState;
- (id)createLoadingState;
- (id)createPresentingState;
- (void)configureStateMachine;
- (void)handleTap;
- (void)showThumbnailErrorWithMessage:(id)message;
- (void)showThumbnailImage:(id)image;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SXQuickLookViewController

- (SXQuickLookViewController)initWithEventHandler:(id)handler renderer:(id)renderer
{
  handlerCopy = handler;
  rendererCopy = renderer;
  v16.receiver = self;
  v16.super_class = SXQuickLookViewController;
  v9 = [(SXQuickLookViewController *)&v16 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventHandler, handler);
    objc_storeStrong(&v10->_renderer, renderer);
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
  view = [(SXQuickLookViewController *)self view];
  thumbnailControl = [(SXQuickLookViewController *)self thumbnailControl];
  [view addSubview:thumbnailControl];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SXQuickLookViewController;
  [(SXQuickLookViewController *)&v6 viewDidAppear:appear];
  stateMachine = [(SXQuickLookViewController *)self stateMachine];
  v5 = [stateMachine fireEventWithName:@"reload" withContext:0];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SXQuickLookViewController;
  [(SXQuickLookViewController *)&v22 viewDidLayoutSubviews];
  stateMachine = [(SXQuickLookViewController *)self stateMachine];
  v4 = [stateMachine fireEventWithName:@"reload" withContext:0];

  v5 = [SXQuickLookLayoutAttributes alloc];
  view = [(SXQuickLookViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [(SXQuickLookViewController *)self view];
  [view2 bounds];
  v20 = [(SXQuickLookLayoutAttributes *)v5 initWithThumbnailFrame:v8 errorLabelFrame:v10, v12, v14, v16, v17, v18, v19];

  renderer = [(SXQuickLookViewController *)self renderer];
  [renderer render:self attributes:v20];
}

- (void)configureStateMachine
{
  v40 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
  createLoadingState = [(SXQuickLookViewController *)self createLoadingState];
  loadingState = self->_loadingState;
  self->_loadingState = createLoadingState;

  createPresentingState = [(SXQuickLookViewController *)self createPresentingState];
  presentingState = self->_presentingState;
  self->_presentingState = createPresentingState;

  createErrorState = [(SXQuickLookViewController *)self createErrorState];
  errorState = self->_errorState;
  self->_errorState = createErrorState;

  v9 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v40 withOwner:self];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v9;

  stateMachine = [(SXQuickLookViewController *)self stateMachine];
  loadingState = [(SXQuickLookViewController *)self loadingState];
  [stateMachine addState:loadingState];

  stateMachine2 = [(SXQuickLookViewController *)self stateMachine];
  presentingState = [(SXQuickLookViewController *)self presentingState];
  [stateMachine2 addState:presentingState];

  stateMachine3 = [(SXQuickLookViewController *)self stateMachine];
  errorState = [(SXQuickLookViewController *)self errorState];
  [stateMachine3 addState:errorState];

  v17 = objc_alloc(MEMORY[0x1E69B6910]);
  v18 = MEMORY[0x1E695DFD8];
  presentingState2 = [(SXQuickLookViewController *)self presentingState];
  errorState2 = [(SXQuickLookViewController *)self errorState];
  v21 = [v18 setWithObjects:{v40, presentingState2, errorState2, 0}];
  loadingState2 = [(SXQuickLookViewController *)self loadingState];
  v23 = [v17 initWithName:@"reload" transitionFromStates:v21 toState:loadingState2];

  v24 = objc_alloc(MEMORY[0x1E69B6910]);
  v25 = MEMORY[0x1E695DFD8];
  loadingState3 = [(SXQuickLookViewController *)self loadingState];
  v27 = [v25 setWithObjects:{loadingState3, 0}];
  presentingState3 = [(SXQuickLookViewController *)self presentingState];
  v29 = [v24 initWithName:@"present" transitionFromStates:v27 toState:presentingState3];

  v30 = objc_alloc(MEMORY[0x1E69B6910]);
  v31 = MEMORY[0x1E695DFD8];
  loadingState4 = [(SXQuickLookViewController *)self loadingState];
  v33 = [v31 setWithObjects:{loadingState4, 0}];
  errorState3 = [(SXQuickLookViewController *)self errorState];
  v35 = [v30 initWithName:@"error" transitionFromStates:v33 toState:errorState3];

  stateMachine4 = [(SXQuickLookViewController *)self stateMachine];
  [stateMachine4 addEvent:v23];

  stateMachine5 = [(SXQuickLookViewController *)self stateMachine];
  [stateMachine5 addEvent:v29];

  stateMachine6 = [(SXQuickLookViewController *)self stateMachine];
  [stateMachine6 addEvent:v35];

  stateMachine7 = [(SXQuickLookViewController *)self stateMachine];
  [stateMachine7 activate];
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
  eventHandler = [(SXQuickLookViewController *)self eventHandler];
  thumbnailImageView = [(SXQuickLookViewController *)self thumbnailImageView];
  [eventHandler didTapThumbnailView:thumbnailImageView];
}

- (void)showThumbnailImage:(id)image
{
  imageCopy = image;
  renderer = [(SXQuickLookViewController *)self renderer];
  thumbnailControl = [(SXQuickLookViewController *)self thumbnailControl];
  [renderer renderThumbnailImage:imageCopy view:thumbnailControl];

  stateMachine = [(SXQuickLookViewController *)self stateMachine];
  v7 = [stateMachine fireEventWithName:@"present" withContext:0];
}

- (void)showThumbnailErrorWithMessage:(id)message
{
  messageCopy = message;
  renderer = [(SXQuickLookViewController *)self renderer];
  errorLabel = [(SXQuickLookViewController *)self errorLabel];
  [renderer renderErrorMessage:messageCopy view:errorLabel];

  stateMachine = [(SXQuickLookViewController *)self stateMachine];
  v7 = [stateMachine fireEventWithName:@"error" withContext:0];
}

@end