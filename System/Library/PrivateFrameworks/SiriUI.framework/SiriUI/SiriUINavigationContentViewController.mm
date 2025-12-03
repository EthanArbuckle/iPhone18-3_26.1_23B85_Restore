@interface SiriUINavigationContentViewController
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (BOOL)isContentLayoutEnabled;
- (SiriSharedUIContentPlatterViewController)contentPlatterViewController;
- (id)_navigationContentView;
- (id)title;
- (void)contentViewDidUpdateSize;
- (void)loadView;
- (void)prepareForDrillInAnimation;
- (void)prepareForPopAnimationOfType:(int64_t)type;
- (void)setContentLayoutEnabled:(BOOL)enabled;
- (void)setContentViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation SiriUINavigationContentViewController

- (void)loadView
{
  v3 = objc_alloc_init(_SiriUINavigationContentView);
  [(SiriUINavigationContentViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SiriUINavigationContentViewController;
  [(SiriUINavigationContentViewController *)&v5 viewDidLoad];
  view = [(SiriUINavigationContentViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];
}

- (id)title
{
  contentViewController = [(SiriUINavigationContentViewController *)self contentViewController];
  title = [contentViewController title];

  return title;
}

- (void)prepareForDrillInAnimation
{
  _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
  contentView = [_navigationContentView contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contentView prepareForDrillInAnimation];
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)type
{
  _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
  contentView = [_navigationContentView contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contentView prepareForPopAnimationOfType:type];
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v10 = controllerCopy;
    contentViewController = [(SiriUINavigationContentViewController *)self contentViewController];
    [contentViewController removeFromParentViewController];
    _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
    [_navigationContentView setContentView:0];

    [contentViewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_contentViewController, controller);
    [(SiriUINavigationContentViewController *)self addChildViewController:v10];
    _navigationContentView2 = [(SiriUINavigationContentViewController *)self _navigationContentView];
    view = [(UIViewController *)v10 view];
    [_navigationContentView2 setContentView:view];

    [(UIViewController *)v10 didMoveToParentViewController:self];
    controllerCopy = v10;
  }
}

- (BOOL)isContentLayoutEnabled
{
  _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
  isContentLayoutEnabled = [_navigationContentView isContentLayoutEnabled];

  return isContentLayoutEnabled;
}

- (void)setContentLayoutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
  [_navigationContentView setContentLayoutEnabled:enabledCopy];
}

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  contentPlatterViewController = [(SiriUINavigationContentViewController *)self contentPlatterViewController];

  result = 0;
  if (contentPlatterViewController)
  {
    view = [(SiriUINavigationContentViewController *)self view];
    contentPlatterViewController2 = [(SiriUINavigationContentViewController *)self contentPlatterViewController];
    view2 = [contentPlatterViewController2 view];
    [view convertPoint:view2 toView:{x, y}];
    v11 = v10;
    v13 = v12;

    contentPlatterViewController3 = [(SiriUINavigationContentViewController *)self contentPlatterViewController];
    view3 = [contentPlatterViewController3 view];
    [view3 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (SiriUIDeviceIsPad())
    {
      v24 = v17;
      v25 = v19;
      v26 = v21;
      v27 = v23;
    }

    else
    {
      _navigationContentView = [(SiriUINavigationContentViewController *)self _navigationContentView];
      [_navigationContentView safeAreaInsets];
      v30 = v29;
      v32 = v31;

      v24 = v17 - v30;
      v25 = v19 - v30;
      v33 = -v32 - v30;
      v26 = v21 - v33;
      v27 = v23 - v33;
    }

    v35.x = v11;
    v35.y = v13;
    if (CGRectContainsPoint(*&v24, v35))
    {
      return 1;
    }
  }

  return result;
}

- (void)contentViewDidUpdateSize
{
  view = [(SiriUINavigationContentViewController *)self view];
  [view setNeedsLayout];

  contentViewController = [(SiriUINavigationContentViewController *)self contentViewController];
  view2 = [contentViewController view];
  [view2 setNeedsLayout];
}

- (id)_navigationContentView
{
  view = [(SiriUINavigationContentViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = view;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (SiriSharedUIContentPlatterViewController)contentPlatterViewController
{
  contentViewController = [(SiriUINavigationContentViewController *)self contentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = contentViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end