@interface RemoteViewController
- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithCoder:(id)a3;
- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RemoteViewController

- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19RemoteiCloudQuotaUI20RemoteViewController_flowPresented) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RemoteViewController();
  [(RemoteViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  RemoteViewController.viewDidAppear(_:)(a3);
}

- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized RemoteViewController.upgradeFlowManagerDidComplete(_:)();
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized RemoteViewController.upgradeFlowManagerDidCancel(_:)();
}

@end