@interface SUNavigationContainerViewController
- (SUNavigationContainerViewController)initWithChildViewController:(id)controller;
- (UIViewController)embeddedViewController;
- (void)setEmbeddedViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SUNavigationContainerViewController

- (SUNavigationContainerViewController)initWithChildViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v15.receiver = self;
    v15.super_class = SUNavigationContainerViewController;
    v5 = [(SUViewController *)&v15 init];
    if (v5)
    {
      v6 = controllerCopy;
      parentViewController = [v6 parentViewController];

      if (parentViewController)
      {
        [v6 willMoveToParentViewController:0];
        view = [v6 view];
        [view removeFromSuperview];

        [v6 removeFromParentViewController];
      }

      v9 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      appearancePromise = v5->_appearancePromise;
      v5->_appearancePromise = v9;

      [(SUNavigationContainerViewController *)v5 addChildViewController:v6];
      view2 = [(SUNavigationContainerViewController *)v5 view];
      view3 = [v6 view];
      [view2 addSubview:view3];

      [v6 didMoveToParentViewController:v5];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SUNavigationContainerViewController;
  [(SUNavigationContainerViewController *)&v5 viewDidLoad];
  view = [(SUNavigationContainerViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SUNavigationContainerViewController;
  [(SUNavigationContainerViewController *)&v6 viewWillLayoutSubviews];
  embeddedViewController = [(SUNavigationContainerViewController *)self embeddedViewController];
  view = [embeddedViewController view];
  view2 = [(SUNavigationContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v7 viewDidAppear:appear];
  appearancePromise = [(SUNavigationContainerViewController *)self appearancePromise];
  [appearancePromise finishWithSuccess];

  if ([(SUNavigationContainerViewController *)self shouldRunPopHandler])
  {
    [(SUNavigationContainerViewController *)self setShouldRunPopHandler:0];
    popHandler = [(SUNavigationContainerViewController *)self popHandler];

    if (popHandler)
    {
      popHandler2 = [(SUNavigationContainerViewController *)self popHandler];
      (popHandler2)[2](popHandler2, self);
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  su_closestNavigationController = [(UIViewController *)self su_closestNavigationController];
  topViewController = [su_closestNavigationController topViewController];
  v7 = topViewController != self;

  [(SUNavigationContainerViewController *)self setShouldRunPopHandler:v7];
  v8.receiver = self;
  v8.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  [(SUNavigationContainerViewController *)self setAppearancePromise:v5];

  v6.receiver = self;
  v6.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)setEmbeddedViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  embeddedViewController = [(SUNavigationContainerViewController *)self embeddedViewController];
  v11 = controllerCopy;
  v12 = v11;
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DD258]);
    view = [v12 view];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];
  }

  view2 = [v12 view];
  view3 = [embeddedViewController view];
  [view3 frame];
  [view2 setFrame:?];

  [embeddedViewController willMoveToParentViewController:0];
  if (animated)
  {
    [(SUNavigationContainerViewController *)self addChildViewController:v12];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__SUNavigationContainerViewController_setEmbeddedViewController_animated_completion___block_invoke_2;
    v21[3] = &unk_1E8166168;
    v22 = embeddedViewController;
    v23 = v12;
    selfCopy = self;
    v25 = completionCopy;
    v20.receiver = self;
    v20.super_class = SUNavigationContainerViewController;
    [(SUNavigationContainerViewController *)&v20 transitionFromViewController:v22 toViewController:v23 duration:5242880 options:&__block_literal_global_9 animations:v21 completion:0.5];
  }

  else
  {
    view4 = [embeddedViewController view];
    [view4 removeFromSuperview];

    [embeddedViewController removeFromParentViewController];
    [(SUNavigationContainerViewController *)self addChildViewController:v12];
    view5 = [(SUNavigationContainerViewController *)self view];
    view6 = [v12 view];
    [view5 addSubview:view6];

    [v12 didMoveToParentViewController:self];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __85__SUNavigationContainerViewController_setEmbeddedViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  [*(a1 + 40) didMoveToParentViewController:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (UIViewController)embeddedViewController
{
  childViewControllers = [(SUNavigationContainerViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

@end