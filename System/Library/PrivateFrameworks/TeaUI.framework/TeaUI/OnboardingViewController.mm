@interface OnboardingViewController
- (_TtC5TeaUI24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OnboardingViewController.viewWillAppear(_:)(appear);
}

- (_TtC5TeaUI24OnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  OnboardingViewController.init(nibName:bundle:)();
}

@end