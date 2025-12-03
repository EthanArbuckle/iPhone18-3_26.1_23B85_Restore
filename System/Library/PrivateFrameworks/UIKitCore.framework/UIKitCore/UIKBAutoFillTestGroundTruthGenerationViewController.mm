@interface UIKBAutoFillTestGroundTruthGenerationViewController
- (UIKBAutoFillTestGroundTruthGenerationViewController)initWithAutoFillTestViewController:(id)controller;
- (UIKBAutoFillTestGroundTruthGenerationViewControllerDelegate)delegate;
- (int64_t)taggerView:(id)view selectedTypeForTextFieldRequest:(id)request;
- (void)_cancelBarButtonItemAction:(id)action;
- (void)_enumerateSubviewsOfRootView:(id)view usingBlock:(id)block;
- (void)_moveTaggerHighlightViewOverView:(id)view;
- (void)_removeTaggerHighlightView;
- (void)taggerView:(id)view didTagTextFieldRequest:(id)request withSelectedType:(int64_t)type;
- (void)taggerView:(id)view willTagRequest:(id)request;
- (void)taggerViewDidFinish:(id)finish;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation UIKBAutoFillTestGroundTruthGenerationViewController

- (UIKBAutoFillTestGroundTruthGenerationViewController)initWithAutoFillTestViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = UIKBAutoFillTestGroundTruthGenerationViewController;
  v6 = [(UIViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testViewController, controller);
    v8 = objc_alloc_init(UIKBAutoFillTestExpectedResult);
    expectedResult = v7->_expectedResult;
    v7->_expectedResult = v8;

    v10 = v7;
  }

  return v7;
}

- (void)_enumerateSubviewsOfRootView:(id)view usingBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [array addObject:viewCopy];
  if ([array count])
  {
    while (1)
    {
      firstObject = [array firstObject];
      [array removeObjectAtIndex:0];
      v11 = 0;
      blockCopy[2](blockCopy, firstObject, &v11 + 1, &v11);
      if (v11 == 1)
      {
        break;
      }

      if ((v11 & 0x100) == 0)
      {
        subviews = [firstObject subviews];
        [array addObjectsFromArray:subviews];
      }

      if (![array count])
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
}

- (void)viewDidLoad
{
  v49[8] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = UIKBAutoFillTestGroundTruthGenerationViewController;
  [(UIViewController *)&v47 viewDidLoad];
  [(UIViewController *)self setTitle:@"AutoFill Test Case"];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonItemAction_];
  navigationItem = [(UIViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  view = [(UIViewController *)self view];
  v6 = +[UIColor whiteColor];
  [view setBackgroundColor:v6];

  v7 = [UIScrollView alloc];
  [view bounds];
  v8 = [(UIScrollView *)v7 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  [(UIView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_scrollView];
  [(UIViewController *)self addChildViewController:self->_testViewController];
  view2 = [(UIViewController *)self->_testViewController view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  [view2 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [(UIView *)self->_scrollView addSubview:view2];
  [(UIScrollView *)self->_scrollView setContentSize:v11, v13];
  [(UIViewController *)self->_testViewController didMoveToParentViewController:self];
  v14 = [[UIKBAutoFillTestTaggerView alloc] initWithFrame:0.0, 0.0, 320.0, 280.0];
  taggerView = self->_taggerView;
  self->_taggerView = v14;

  [(UIKBAutoFillTestTaggerView *)self->_taggerView setDelegate:self];
  [(UIView *)self->_taggerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_taggerView];
  v34 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)self->_scrollView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[0] = v42;
  leadingAnchor = [(UIView *)self->_scrollView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[1] = v39;
  trailingAnchor = [(UIView *)self->_scrollView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[2] = v35;
  bottomAnchor = [(UIView *)self->_scrollView bottomAnchor];
  topAnchor3 = [(UIView *)self->_taggerView topAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v49[3] = v31;
  leadingAnchor3 = [(UIView *)self->_taggerView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[4] = v28;
  trailingAnchor3 = [(UIView *)self->_taggerView trailingAnchor];
  v16 = view;
  v38 = view;
  trailingAnchor4 = [view trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v49[5] = v18;
  bottomAnchor2 = [(UIView *)self->_taggerView bottomAnchor];
  bottomAnchor3 = [v16 bottomAnchor];
  v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v49[6] = v21;
  heightAnchor = [(UIView *)self->_taggerView heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:280.0];
  v49[7] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:8];
  [v34 activateConstraints:v24];

  v25 = [[UIKBAutoFillTestTagRequest alloc] initWithRequestType:0 view:0];
  v48 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  [(UIKBAutoFillTestTaggerView *)self->_taggerView setTagRequests:v26];
}

- (void)_cancelBarButtonItemAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autoFillTestGroundTruthGenerationViewController:self didFinishWithResult:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = UIKBAutoFillTestGroundTruthGenerationViewController;
  [(UIViewController *)&v11 viewDidAppear:appear];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [[UIKBAutoFillTestTagRequest alloc] initWithRequestType:0 view:0];
  [array addObject:v5];

  view = [(UIViewController *)self->_testViewController view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__UIKBAutoFillTestGroundTruthGenerationViewController_viewDidAppear___block_invoke;
  v9[3] = &unk_1E710D920;
  v10 = array;
  v7 = array;
  [(UIKBAutoFillTestGroundTruthGenerationViewController *)self _enumerateSubviewsOfRootView:view usingBlock:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__UIKBAutoFillTestGroundTruthGenerationViewController_viewDidAppear___block_invoke_2;
  v8[3] = &unk_1E710D948;
  v8[4] = self;
  [v7 sortUsingComparator:v8];
  [(UIKBAutoFillTestTaggerView *)self->_taggerView setTagRequests:v7];
}

void __69__UIKBAutoFillTestGroundTruthGenerationViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 setScrollEnabled:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v13 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      if (([v13 isHidden] & 1) == 0)
      {
        v15.origin.x = v4;
        v15.origin.y = v6;
        v15.size.width = v8;
        v15.size.height = v10;
        if (CGRectGetWidth(v15) >= 15.0)
        {
          v16.origin.x = v4;
          v16.origin.y = v6;
          v16.size.width = v8;
          v16.size.height = v10;
          if (CGRectGetHeight(v16) >= 15.0)
          {
            v11 = *(a1 + 32);
            v12 = [[UIKBAutoFillTestTagRequest alloc] initWithRequestType:1 view:v13];
            [v11 addObject:v12];
          }
        }
      }
    }
  }
}

uint64_t __69__UIKBAutoFillTestGroundTruthGenerationViewController_viewDidAppear___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 requestType];
  v8 = [v6 requestType];
  if (v7 == v8)
  {
    v9 = [v5 view];
    v10 = [v6 view];
    v11 = [*(a1 + 32) view];
    [v9 frame];
    v13 = v12;
    v15 = v14;
    v16 = [v9 superview];
    [v11 convertPoint:v16 fromView:{v13, v15}];
    v18 = v17;

    v19 = [*(a1 + 32) view];
    [v10 frame];
    v21 = v20;
    v23 = v22;
    v24 = [v10 superview];
    [v19 convertPoint:v24 fromView:{v21, v23}];
    v26 = v25;

    v27 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
    v29 = [v27 compare:v28];
  }

  else
  {
    v30 = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
    v29 = [v9 compare:v10];
  }

  return v29;
}

- (void)_moveTaggerHighlightViewOverView:(id)view
{
  viewCopy = view;
  if (!self->_highlightView)
  {
    v5 = objc_alloc_init(UIView);
    highlightView = self->_highlightView;
    self->_highlightView = v5;

    v7 = [UIColor colorWithWhite:0.2 alpha:0.8];
    [(UIView *)self->_highlightView setBackgroundColor:v7];

    layer = [(UIView *)self->_highlightView layer];
    [layer setAllowsGroupBlending:1];

    v9 = objc_alloc_init(UIView);
    highlightBox = self->_highlightBox;
    self->_highlightBox = v9;

    v11 = +[UIColor blackColor];
    [(UIView *)self->_highlightBox setBackgroundColor:v11];

    v12 = *MEMORY[0x1E69798E8];
    layer2 = [(UIView *)self->_highlightBox layer];
    [layer2 setCompositingFilter:v12];

    layer3 = [(UIView *)self->_highlightBox layer];
    [layer3 setCornerRadius:8.0];

    layer4 = [(UIView *)self->_highlightBox layer];
    [layer4 setMasksToBounds:1];

    v16 = *MEMORY[0x1E69796E8];
    layer5 = [(UIView *)self->_highlightBox layer];
    [layer5 setCornerCurve:v16];

    [(UIView *)self->_highlightView addSubview:self->_highlightBox];
  }

  [(UIScrollView *)self->_scrollView contentSize];
  v19 = v18;
  [(UIScrollView *)self->_scrollView contentSize];
  [(UIView *)self->_highlightView setFrame:0.0, 0.0, v19, v20];
  scrollView = self->_scrollView;
  [viewCopy frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  superview = [viewCopy superview];
  [(UIView *)scrollView convertRect:superview fromView:v23, v25, v27, v29];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  superview2 = [(UIView *)self->_highlightView superview];

  if (!superview2)
  {
    [(UIView *)self->_scrollView addSubview:self->_highlightView];
    [(UIView *)self->_highlightBox setFrame:v32, v34, v36, v38];
    [(UIView *)self->_highlightView setAlpha:0.0];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __88__UIKBAutoFillTestGroundTruthGenerationViewController__moveTaggerHighlightViewOverView___block_invoke;
    v41[3] = &unk_1E70F3590;
    v41[4] = self;
    [UIView animateWithDuration:65540 delay:v41 options:0 animations:0.25 completion:0.0];
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __88__UIKBAutoFillTestGroundTruthGenerationViewController__moveTaggerHighlightViewOverView___block_invoke_2;
  v40[3] = &unk_1E70F3B20;
  v40[4] = self;
  *&v40[5] = v32;
  *&v40[6] = v34;
  *&v40[7] = v36;
  *&v40[8] = v38;
  [UIView animateWithDuration:131076 delay:v40 options:0 animations:0.25 completion:0.0];
  [(UIScrollView *)self->_scrollView scrollRectToVisible:1 animated:v32, v34, v36, v38];
}

- (void)_removeTaggerHighlightView
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__UIKBAutoFillTestGroundTruthGenerationViewController__removeTaggerHighlightView__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__UIKBAutoFillTestGroundTruthGenerationViewController__removeTaggerHighlightView__block_invoke_2;
  v2[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:131076 delay:v3 options:v2 animations:0.25 completion:0.0];
}

- (void)taggerViewDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autoFillTestGroundTruthGenerationViewController:self didFinishWithResult:self->_expectedResult];
  }
}

- (void)taggerView:(id)view willTagRequest:(id)request
{
  view = [request view];
  v6 = view;
  if (view)
  {
    [(UIKBAutoFillTestGroundTruthGenerationViewController *)self _moveTaggerHighlightViewOverView:view];
  }

  else
  {
    [(UIKBAutoFillTestGroundTruthGenerationViewController *)self _removeTaggerHighlightView];
  }
}

- (int64_t)taggerView:(id)view selectedTypeForTextFieldRequest:(id)request
{
  expectedResult = self->_expectedResult;
  view = [request view];
  v6 = -[UIKBAutoFillTestExpectedResult typeForTextFieldWithTag:](expectedResult, "typeForTextFieldWithTag:", [view tag]);

  return v6;
}

- (void)taggerView:(id)view didTagTextFieldRequest:(id)request withSelectedType:(int64_t)type
{
  expectedResult = self->_expectedResult;
  view = [request view];
  -[UIKBAutoFillTestExpectedResult setType:forTextFieldWithTag:](expectedResult, "setType:forTextFieldWithTag:", type, [view tag]);
}

- (UIKBAutoFillTestGroundTruthGenerationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end