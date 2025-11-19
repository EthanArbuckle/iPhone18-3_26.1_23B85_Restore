@interface PKNearbyPeerPaymentViewController
- (PKNearbyPeerPaymentViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5;
- (PKNearbyPeerPaymentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)prefersStatusBarHidden;
- (void)handlePan:(id)a3;
- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setHideStatusBar:(BOOL)a3;
- (void)showAppearanceDetail;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentViewController

- (uint64_t)prefersStatusBarHidden
{
  v2 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  return *(a1 + v2);
}

- (void)setHideStatusBar:(BOOL)a3
{
  v4 = self;
  sub_1BD38CA60(a3);
}

- (PKNearbyPeerPaymentViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  return NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(a3, sub_1BD166E88, v9, sub_1BD267094, v10);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD38D928();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BD38DD48();
}

- (void)showAppearanceDetail
{
  v2 = self;
  sub_1BD38CD04();
}

- (void)handlePan:(id)a3
{
  v6 = a3;
  v4 = self;
  if ([(PKNearbyPeerPaymentViewController *)v6 state]== 3)
  {
    (*(&v4->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction))();
    v5 = v4;
  }

  else
  {
    v5 = v6;
    v6 = v4;
  }
}

- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD38EACC(v7);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);
  v8 = a3;
  v5 = self;
  [v8 contentOffset];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    v6 = 1.0;
  }

  [v4 setAlpha_];
}

- (PKNearbyPeerPaymentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end