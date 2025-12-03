@interface VUIViewController
- (BOOL)shouldAutomaticallyForwardAppearanceMethods;
- (_TtC8VideosUI17VUIViewController)initWithNibName:(id)name bundle:(id)bundle;
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

@implementation VUIViewController

- (void)loadView
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewDidLoad()();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.updateViewConstraints()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewWillAppear(_:)(v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewDidAppear(_:)(v4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewWillDisappear(_:)(v4);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  VUIViewController.viewDidDisappear(_:)(v4);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  VUIViewController.viewDidLayoutSubviews()();
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  VUIViewController.willMove(toParent:)(v6);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  VUIViewController.didMove(toParent:)(v6);
}

- (BOOL)shouldAutomaticallyForwardAppearanceMethods
{
  selfCopy = self;
  v3 = VUIViewController.shouldAutomaticallyForwardAppearanceMethods.getter();

  return v3 & 1;
}

- (_TtC8VideosUI17VUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return VUIViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end