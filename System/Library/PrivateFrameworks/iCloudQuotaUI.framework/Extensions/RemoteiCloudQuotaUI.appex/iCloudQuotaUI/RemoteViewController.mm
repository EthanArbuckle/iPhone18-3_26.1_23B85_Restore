@interface RemoteViewController
- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithCoder:(id)coder;
- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RemoteViewController

- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithCoder:(id)coder
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  RemoteViewController.viewDidAppear(_:)(appear);
}

- (_TtC19RemoteiCloudQuotaUI20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  specialized RemoteViewController.upgradeFlowManagerDidComplete(_:)();
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  specialized RemoteViewController.upgradeFlowManagerDidCancel(_:)();
}

@end