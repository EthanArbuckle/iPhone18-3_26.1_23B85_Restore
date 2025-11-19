@interface NearbyPeerPaymentVFXViewController
- (_TtC9PassKitUI34NearbyPeerPaymentVFXViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NearbyPeerPaymentVFXViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v2 = v5.receiver;
  [(NearbyPeerPaymentVFXViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BD636D40();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD637210(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v4 = v5.receiver;
  [(NearbyPeerPaymentVFXViewController *)&v5 viewDidDisappear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager] stopDeviceMotionUpdates];
  v4[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 0;
}

- (_TtC9PassKitUI34NearbyPeerPaymentVFXViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end