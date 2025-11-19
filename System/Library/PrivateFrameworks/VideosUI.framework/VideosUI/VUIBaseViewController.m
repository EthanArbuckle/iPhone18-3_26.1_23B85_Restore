@interface VUIBaseViewController
- (BOOL)isViewInTopMostVisibleViewController;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewWillAppear:?];
  [(VUIBaseViewController *)self vui_viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewDidAppear:?];
  [(VUIBaseViewController *)self vui_viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewWillDisappear:?];
  [(VUIBaseViewController *)self vui_viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  [(VUIBaseViewController *)&v5 viewDidDisappear:?];
  [(VUIBaseViewController *)self vui_viewDidDisappear:v3];
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

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  v4 = a3;
  [(VUIBaseViewController *)&v5 willMoveToParentViewController:v4];
  [(VUIBaseViewController *)self vui_willMoveToParentViewController:v4, v5.receiver, v5.super_class];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIBaseViewController;
  v4 = a3;
  [(VUIBaseViewController *)&v5 didMoveToParentViewController:v4];
  [(VUIBaseViewController *)self vui_didMoveToParentViewController:v4, v5.receiver, v5.super_class];
}

- (BOOL)isViewInTopMostVisibleViewController
{
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  v4 = [v3 vuiView];

  if (v4)
  {
    v5 = [(VUIBaseViewController *)self vuiView];
    v6 = [v5 vui_isDescendantOfView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end