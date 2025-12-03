@interface PKNearbyPeerPaymentViewController
- (PKNearbyPeerPaymentViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (PKNearbyPeerPaymentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)prefersStatusBarHidden;
- (void)handlePan:(id)pan;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setHideStatusBar:(BOOL)bar;
- (void)showAppearanceDetail;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentViewController

- (uint64_t)prefersStatusBarHidden
{
  v2 = OBJC_IVAR___PKNearbyPeerPaymentViewController_hideStatusBar;
  swift_beginAccess();
  return *(self + v2);
}

- (void)setHideStatusBar:(BOOL)bar
{
  selfCopy = self;
  sub_1BD38CA60(bar);
}

- (PKNearbyPeerPaymentViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  v7 = _Block_copy(action);
  v8 = _Block_copy(dismissAction);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  return NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(context, sub_1BD166E88, v9, sub_1BD267094, v10);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD38D928();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BD38DD48();
}

- (void)showAppearanceDetail
{
  selfCopy = self;
  sub_1BD38CD04();
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  if ([(PKNearbyPeerPaymentViewController *)panCopy state]== 3)
  {
    (*(&selfCopy->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentViewController_screenEdgeSwipeAction))();
    v5 = selfCopy;
  }

  else
  {
    v5 = panCopy;
    panCopy = selfCopy;
  }
}

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  selfCopy = self;
  sub_1BD38EACC(dataCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);
  scrollCopy = scroll;
  selfCopy = self;
  [scrollCopy contentOffset];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    v6 = 1.0;
  }

  [v4 setAlpha_];
}

- (PKNearbyPeerPaymentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end