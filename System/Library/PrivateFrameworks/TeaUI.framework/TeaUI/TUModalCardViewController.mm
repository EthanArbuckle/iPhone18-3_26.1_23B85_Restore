@interface TUModalCardViewController
- (TUModalCardViewController)initWithRootViewController:(id)a3 useMaterialBackground:(BOOL)a4;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TUModalCardViewController

- (TUModalCardViewController)initWithRootViewController:(id)a3 useMaterialBackground:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = TUModalCardViewController;
  v8 = [(TUModalCardViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootViewController, a3);
    v9->_usesMaterialBackground = a4;
    v9->_showsCloseButton = 1;
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11)
    {
      [(TUModalCardViewController *)v9 setModalPresentationStyle:2];
    }

    else
    {
      [(TUModalCardViewController *)v9 setModalPresentationStyle:7];
      v12 = [(TUModalCardViewController *)v9 popoverPresentationController];
      [v12 setDelegate:v9];
    }
  }

  return v9;
}

- (void)viewDidLoad
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = TUModalCardViewController;
  [(TUModalCardViewController *)&v27 viewDidLoad];
  if (self->_usesMaterialBackground)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    v6 = [(TUModalCardViewController *)self view];
    [v6 addSubview:self->_backgroundView];
  }

  v7 = [(TUModalCardViewController *)self rootViewController];
  [v7 willMoveToParentViewController:self];

  v8 = [(TUModalCardViewController *)self view];
  v9 = [(TUModalCardViewController *)self rootViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [(TUModalCardViewController *)self rootViewController];
  [(TUModalCardViewController *)self addChildViewController:v11];

  v12 = [(TUModalCardViewController *)self rootViewController];
  v13 = [v12 view];
  v29[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v15 = [(TUModalCardViewController *)self view];
  [v15 setAccessibilityElements:v14];

  if (self->_showsCloseButton)
  {
    v16 = [MEMORY[0x1E69DC738] buttonWithType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v16;

    v18 = [(TUModalCardViewController *)self view];
    v19 = [(TUModalCardViewController *)self closeButton];
    [v18 addSubview:v19];

    v20 = [(TUModalCardViewController *)self closeButton];
    v28[0] = v20;
    v21 = [(TUModalCardViewController *)self rootViewController];
    v22 = [v21 view];
    v28[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v24 = [(TUModalCardViewController *)self view];
    [v24 setAccessibilityElements:v23];
  }

  v25 = [MEMORY[0x1E69DC888] clearColor];
  v26 = [(TUModalCardViewController *)self view];
  [v26 setBackgroundColor:v25];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TUModalCardViewController;
  [(TUModalCardViewController *)&v6 viewDidDisappear:a3];
  v4 = [(TUModalCardViewController *)self onDisappear];

  if (v4)
  {
    v5 = [(TUModalCardViewController *)self onDisappear];
    v5[2]();
  }
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = TUModalCardViewController;
  [(TUModalCardViewController *)&v21 viewDidLayoutSubviews];
  if (self->_usesMaterialBackground)
  {
    backgroundView = self->_backgroundView;
    v4 = [(TUModalCardViewController *)self view];
    [v4 bounds];
    [(UIVisualEffectView *)backgroundView setFrame:?];
  }

  v5 = [(TUModalCardViewController *)self rootViewController];
  v6 = [v5 view];
  v7 = [(TUModalCardViewController *)self view];
  [v7 bounds];
  [v6 setFrame:?];

  v8 = [(TUModalCardViewController *)self closeButton];
  [v8 sizeToFit];

  v9 = MEMORY[0x1E69DD250];
  v10 = [(TUModalCardViewController *)self view];
  v11 = [v9 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v10, "semanticContentAttribute")}];

  v12 = 16.0;
  if (v11 != 1)
  {
    v13 = [(TUModalCardViewController *)self view];
    [v13 bounds];
    MaxX = CGRectGetMaxX(v22);
    v15 = [(TUModalCardViewController *)self closeButton];
    [v15 bounds];
    v12 = MaxX - CGRectGetWidth(v23) + -16.0;
  }

  if (self->_showsCloseButton)
  {
    v16 = [(TUModalCardViewController *)self closeButton];
    v17 = [(TUModalCardViewController *)self closeButton];
    [v17 bounds];
    Width = CGRectGetWidth(v24);
    v19 = [(TUModalCardViewController *)self closeButton];
    [v19 bounds];
    [v16 setFrame:{v12, 16.0, Width, CGRectGetHeight(v25)}];

    v20 = [(TUModalCardViewController *)self closeButton];
    [v20 addTarget:self action:sel_handleClose forControlEvents:64];
  }
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD6F8];
  v5 = a4;
  v6 = [v4 _mediumDetent];
  v9[0] = v6;
  v7 = [MEMORY[0x1E69DD6F8] _largeDetent];
  v9[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v5 _setDetents:v8];

  [v5 _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
  [v5 _setWantsBottomAttachedInCompactHeight:1];
}

@end