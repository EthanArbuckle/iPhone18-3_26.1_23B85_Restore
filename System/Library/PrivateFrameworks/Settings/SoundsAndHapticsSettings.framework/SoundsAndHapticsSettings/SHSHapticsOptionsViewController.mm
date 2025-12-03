@interface SHSHapticsOptionsViewController
- (_TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SHSHapticsOptionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  SHSHapticsOptionsViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  SHSHapticsOptionsViewController.viewDidAppear(_:)(appear);
}

- (_TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2658B6E38();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SHSHapticsOptionsViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end