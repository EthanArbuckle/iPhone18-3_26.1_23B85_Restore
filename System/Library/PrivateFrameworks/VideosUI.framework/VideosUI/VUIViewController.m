@interface VUIViewController
- (BOOL)shouldAutomaticallyForwardAppearanceMethods;
- (_TtC8VideosUI17VUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

@implementation VUIViewController

- (void)loadView
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewDidLoad()();
}

- (void)updateViewConstraints
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.updateViewConstraints()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewWillAppear(_:)(v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewDidAppear(_:)(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewWillDisappear(_:)(v4);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewDidDisappear(_:)(v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewDidLayoutSubviews()();
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  VUIViewController.willMove(toParent:)(v6);
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  VUIViewController.didMove(toParent:)(v6);
}

- (BOOL)shouldAutomaticallyForwardAppearanceMethods
{
  v2 = self;
  v3 = VUIViewController.shouldAutomaticallyForwardAppearanceMethods.getter();

  return v3 & 1;
}

- (_TtC8VideosUI17VUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return VUIViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end