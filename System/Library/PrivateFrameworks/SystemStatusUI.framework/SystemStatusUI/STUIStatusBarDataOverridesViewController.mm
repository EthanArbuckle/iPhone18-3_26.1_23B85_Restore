@interface STUIStatusBarDataOverridesViewController
- (_TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation STUIStatusBarDataOverridesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_26C5014F8();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomain);
  selfCopy = self;
  [v2 invalidate];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController_statusBarOverridesStatusDomainPublisher) invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for STUIStatusBarDataOverridesViewController();
  [(STUIStatusBarDataOverridesViewController *)&v4 dealloc];
}

- (_TtC14SystemStatusUI40STUIStatusBarDataOverridesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_26C5745FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return STUIStatusBarDataOverridesViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end