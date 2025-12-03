@interface VUIBaseViewController
- (BOOL)isViewInTopMostVisibleViewController;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation VUIBaseViewController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v3 loadView];
  [(VUIBaseViewController *)self vui_loadView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v3 viewDidLoad];
  [(VUIBaseViewController *)self vui_viewDidLoad];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v3 updateViewConstraints];
  [(VUIBaseViewController *)self vui_updateViewConstraints];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewWillAppear:?];
  [(VUIBaseViewController *)self vui_viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewDidAppear:?];
  [(VUIBaseViewController *)self vui_viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewWillDisappear:?];
  [(VUIBaseViewController *)self vui_viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewDidDisappear:?];
  [(VUIBaseViewController *)self vui_viewDidDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v3 viewWillLayoutSubviews];
  [(VUIBaseViewController *)self vui_viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v3 viewDidLayoutSubviews];
  [(VUIBaseViewController *)self vui_viewDidLayoutSubviews];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  controllerCopy = controller;
  [(VUIBaseViewController *)&v5 willMoveToParentViewController:controllerCopy];
  [(VUIBaseViewController *)self vui_willMoveToParentViewController:controllerCopy, v5.receiver, v5.super_class];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  controllerCopy = controller;
  [(VUIBaseViewController *)&v5 didMoveToParentViewController:controllerCopy];
  [(VUIBaseViewController *)self vui_didMoveToParentViewController:controllerCopy, v5.receiver, v5.super_class];
}

- (BOOL)isViewInTopMostVisibleViewController
{
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  vuiView = [v3 vuiView];

  if (vuiView)
  {
    vuiView2 = [(VUIBaseViewController *)self vuiView];
    v6 = [vuiView2 vui_isDescendantOfView:vuiView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end