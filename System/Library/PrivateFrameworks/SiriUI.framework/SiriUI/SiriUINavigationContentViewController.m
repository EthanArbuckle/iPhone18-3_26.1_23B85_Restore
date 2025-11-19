@interface SiriUINavigationContentViewController
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (BOOL)isContentLayoutEnabled;
- (SiriSharedUIContentPlatterViewController)contentPlatterViewController;
- (id)_navigationContentView;
- (id)title;
- (void)contentViewDidUpdateSize;
- (void)loadView;
- (void)prepareForDrillInAnimation;
- (void)prepareForPopAnimationOfType:(int64_t)a3;
- (void)setContentLayoutEnabled:(BOOL)a3;
- (void)setContentViewController:(id)a3;
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
  v3 = [(SiriUINavigationContentViewController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];
}

- (id)title
{
  v2 = [(SiriUINavigationContentViewController *)self contentViewController];
  v3 = [v2 title];

  return v3;
}

- (void)prepareForDrillInAnimation
{
  v2 = [(SiriUINavigationContentViewController *)self _navigationContentView];
  v3 = [v2 contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 prepareForDrillInAnimation];
  }
}

- (void)prepareForPopAnimationOfType:(int64_t)a3
{
  v4 = [(SiriUINavigationContentViewController *)self _navigationContentView];
  v5 = [v4 contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 prepareForPopAnimationOfType:a3];
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v10 = v5;
    v6 = [(SiriUINavigationContentViewController *)self contentViewController];
    [v6 removeFromParentViewController];
    v7 = [(SiriUINavigationContentViewController *)self _navigationContentView];
    [v7 setContentView:0];

    [v6 didMoveToParentViewController:0];
    objc_storeStrong(&self->_contentViewController, a3);
    [(SiriUINavigationContentViewController *)self addChildViewController:v10];
    v8 = [(SiriUINavigationContentViewController *)self _navigationContentView];
    v9 = [(UIViewController *)v10 view];
    [v8 setContentView:v9];

    [(UIViewController *)v10 didMoveToParentViewController:self];
    v5 = v10;
  }
}

- (BOOL)isContentLayoutEnabled
{
  v2 = [(SiriUINavigationContentViewController *)self _navigationContentView];
  v3 = [v2 isContentLayoutEnabled];

  return v3;
}

- (void)setContentLayoutEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUINavigationContentViewController *)self _navigationContentView];
  [v4 setContentLayoutEnabled:v3];
}

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SiriUINavigationContentViewController *)self contentPlatterViewController];

  result = 0;
  if (v6)
  {
    v7 = [(SiriUINavigationContentViewController *)self view];
    v8 = [(SiriUINavigationContentViewController *)self contentPlatterViewController];
    v9 = [v8 view];
    [v7 convertPoint:v9 toView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(SiriUINavigationContentViewController *)self contentPlatterViewController];
    v15 = [v14 view];
    [v15 bounds];
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
      v28 = [(SiriUINavigationContentViewController *)self _navigationContentView];
      [v28 safeAreaInsets];
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
  v3 = [(SiriUINavigationContentViewController *)self view];
  [v3 setNeedsLayout];

  v5 = [(SiriUINavigationContentViewController *)self contentViewController];
  v4 = [v5 view];
  [v4 setNeedsLayout];
}

- (id)_navigationContentView
{
  v2 = [(SiriUINavigationContentViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [(SiriUINavigationContentViewController *)self contentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end