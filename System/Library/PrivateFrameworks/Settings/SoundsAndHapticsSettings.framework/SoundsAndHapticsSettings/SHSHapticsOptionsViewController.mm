@interface SHSHapticsOptionsViewController
- (_TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SHSHapticsOptionsViewController

- (void)viewDidLoad
{
  v2 = self;
  SHSHapticsOptionsViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  SHSHapticsOptionsViewController.viewDidAppear(_:)(a3);
}

- (_TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2658B6E38();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SHSHapticsOptionsViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end