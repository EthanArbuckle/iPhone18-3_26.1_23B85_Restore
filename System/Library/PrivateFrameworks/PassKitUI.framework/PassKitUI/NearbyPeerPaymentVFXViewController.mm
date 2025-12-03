@interface NearbyPeerPaymentVFXViewController
- (_TtC9PassKitUI34NearbyPeerPaymentVFXViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NearbyPeerPaymentVFXViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v2 = v5.receiver;
  [(NearbyPeerPaymentVFXViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BD636D40();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD637210(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v4 = v5.receiver;
  [(NearbyPeerPaymentVFXViewController *)&v5 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager] stopDeviceMotionUpdates];
  v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 0;
}

- (_TtC9PassKitUI34NearbyPeerPaymentVFXViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end