@interface STUIStatusBarDataOverridesViewController
- (_TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation STUIStatusBarDataOverridesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_26C5014F8();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain);
  v3 = self;
  [v2 invalidate];
  [*(&v3->super.super.super.isa + OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher) invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  [(STUIStatusBarDataOverridesViewController *)&v4 dealloc];
}

- (_TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_26C5745FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return STUIStatusBarDataOverridesViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end