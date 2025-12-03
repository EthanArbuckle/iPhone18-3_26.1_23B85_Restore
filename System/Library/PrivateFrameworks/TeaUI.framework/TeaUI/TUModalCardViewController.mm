@interface TUModalCardViewController
- (TUModalCardViewController)initWithRootViewController:(id)controller useMaterialBackground:(BOOL)background;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TUModalCardViewController

- (TUModalCardViewController)initWithRootViewController:(id)controller useMaterialBackground:(BOOL)background
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = TUModalCardViewController;
  v8 = [(TUModalCardViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootViewController, controller);
    v9->_usesMaterialBackground = background;
    v9->_showsCloseButton = 1;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      [(TUModalCardViewController *)v9 setModalPresentationStyle:2];
    }

    else
    {
      [(TUModalCardViewController *)v9 setModalPresentationStyle:7];
      popoverPresentationController = [(TUModalCardViewController *)v9 popoverPresentationController];
      [popoverPresentationController setDelegate:v9];
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

    view = [(TUModalCardViewController *)self view];
    [view addSubview:self->_backgroundView];
  }

  rootViewController = [(TUModalCardViewController *)self rootViewController];
  [rootViewController willMoveToParentViewController:self];

  view2 = [(TUModalCardViewController *)self view];
  rootViewController2 = [(TUModalCardViewController *)self rootViewController];
  view3 = [rootViewController2 view];
  [view2 addSubview:view3];

  rootViewController3 = [(TUModalCardViewController *)self rootViewController];
  [(TUModalCardViewController *)self addChildViewController:rootViewController3];

  rootViewController4 = [(TUModalCardViewController *)self rootViewController];
  view4 = [rootViewController4 view];
  v29[0] = view4;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  view5 = [(TUModalCardViewController *)self view];
  [view5 setAccessibilityElements:v14];

  if (self->_showsCloseButton)
  {
    v16 = [MEMORY[0x1E69DC738] buttonWithType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v16;

    view6 = [(TUModalCardViewController *)self view];
    closeButton = [(TUModalCardViewController *)self closeButton];
    [view6 addSubview:closeButton];

    closeButton2 = [(TUModalCardViewController *)self closeButton];
    v28[0] = closeButton2;
    rootViewController5 = [(TUModalCardViewController *)self rootViewController];
    view7 = [rootViewController5 view];
    v28[1] = view7;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    view8 = [(TUModalCardViewController *)self view];
    [view8 setAccessibilityElements:v23];
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view9 = [(TUModalCardViewController *)self view];
  [view9 setBackgroundColor:clearColor];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = TUModalCardViewController;
  [(TUModalCardViewController *)&v6 viewDidDisappear:disappear];
  onDisappear = [(TUModalCardViewController *)self onDisappear];

  if (onDisappear)
  {
    onDisappear2 = [(TUModalCardViewController *)self onDisappear];
    onDisappear2[2]();
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
    view = [(TUModalCardViewController *)self view];
    [view bounds];
    [(UIVisualEffectView *)backgroundView setFrame:?];
  }

  rootViewController = [(TUModalCardViewController *)self rootViewController];
  view2 = [rootViewController view];
  view3 = [(TUModalCardViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  closeButton = [(TUModalCardViewController *)self closeButton];
  [closeButton sizeToFit];

  v9 = MEMORY[0x1E69DD250];
  view4 = [(TUModalCardViewController *)self view];
  v11 = [v9 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(view4, "semanticContentAttribute")}];

  v12 = 16.0;
  if (v11 != 1)
  {
    view5 = [(TUModalCardViewController *)self view];
    [view5 bounds];
    MaxX = CGRectGetMaxX(v22);
    closeButton2 = [(TUModalCardViewController *)self closeButton];
    [closeButton2 bounds];
    v12 = MaxX - CGRectGetWidth(v23) + -16.0;
  }

  if (self->_showsCloseButton)
  {
    closeButton3 = [(TUModalCardViewController *)self closeButton];
    closeButton4 = [(TUModalCardViewController *)self closeButton];
    [closeButton4 bounds];
    Width = CGRectGetWidth(v24);
    closeButton5 = [(TUModalCardViewController *)self closeButton];
    [closeButton5 bounds];
    [closeButton3 setFrame:{v12, 16.0, Width, CGRectGetHeight(v25)}];

    closeButton6 = [(TUModalCardViewController *)self closeButton];
    [closeButton6 addTarget:self action:sel_handleClose forControlEvents:64];
  }
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD6F8];
  presentationControllerCopy = presentationController;
  _mediumDetent = [v4 _mediumDetent];
  v9[0] = _mediumDetent;
  _largeDetent = [MEMORY[0x1E69DD6F8] _largeDetent];
  v9[1] = _largeDetent;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [presentationControllerCopy _setDetents:v8];

  [presentationControllerCopy _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
  [presentationControllerCopy _setWantsBottomAttachedInCompactHeight:1];
}

@end