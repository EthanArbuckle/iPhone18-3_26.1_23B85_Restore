@interface OnboardingViewController
- (_TtC5TeaUI24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  OnboardingViewController.viewWillAppear(_:)(a3);
}

- (_TtC5TeaUI24OnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  OnboardingViewController.init(nibName:bundle:)();
}

@end