@interface DockContainerViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)shouldAutorotate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC5TeaUI27DockContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)animationControllerForDismissedController:(id)controller;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dockedViewLongPressed;
- (void)dockedViewTapped;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DockContainerViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = DockContainerViewController.childForStatusBarStyle.getter();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DockContainerViewController.viewDidLoad()();
}

- (BOOL)shouldAutorotate
{
  selfCopy = self;
  v3 = DockContainerViewController.shouldAutorotate.getter();

  return v3 & 1;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DockContainerViewController.viewDidLayoutSubviews()();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1D810A4BC;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  DockContainerViewController.present(_:animated:completion:)(controllerCopy, animated, v8, v9);
  sub_1D7E418F4(v8, v9);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D810A3DC;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  DockContainerViewController.dismiss(animated:completion:)(animated, v6, v7);
  sub_1D7E418F4(v6, v7);
}

- (void)dockedViewTapped
{
  selfCopy = self;
  sub_1D8108CB0();
}

- (void)dockedViewLongPressed
{
  selfCopy = self;
  sub_1D8108D04();
}

- (_TtC5TeaUI27DockContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  DockContainerViewController.init(nibName:bundle:)();
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = DockContainerViewController.animationController(forDismissed:)(controllerCopy);

  return v6;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  DockContainerViewController.accessibilityPerformMagicTap()();

  return 1;
}

@end