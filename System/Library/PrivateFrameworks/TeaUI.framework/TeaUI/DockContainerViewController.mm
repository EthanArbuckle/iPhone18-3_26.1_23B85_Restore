@interface DockContainerViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)shouldAutorotate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC5TeaUI27DockContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dockedViewLongPressed;
- (void)dockedViewTapped;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DockContainerViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = DockContainerViewController.childForStatusBarStyle.getter();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  DockContainerViewController.viewDidLoad()();
}

- (BOOL)shouldAutorotate
{
  v2 = self;
  v3 = DockContainerViewController.shouldAutorotate.getter();

  return v3 & 1;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DockContainerViewController.viewDidLayoutSubviews()();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  DockContainerViewController.present(_:animated:completion:)(v10, a4, v8, v9);
  sub_1D7E418F4(v8, v9);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  DockContainerViewController.dismiss(animated:completion:)(a3, v6, v7);
  sub_1D7E418F4(v6, v7);
}

- (void)dockedViewTapped
{
  v2 = self;
  sub_1D8108CB0();
}

- (void)dockedViewLongPressed
{
  v2 = self;
  sub_1D8108D04();
}

- (_TtC5TeaUI27DockContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  DockContainerViewController.init(nibName:bundle:)();
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DockContainerViewController.animationController(forDismissed:)(v4);

  return v6;
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  DockContainerViewController.accessibilityPerformMagicTap()();

  return 1;
}

@end