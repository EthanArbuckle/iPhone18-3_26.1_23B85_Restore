@interface PKNearbyPeerPaymentReceiverViewController
- (PKNearbyPeerPaymentReceiverViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5;
- (PKNearbyPeerPaymentReceiverViewController)initWithUserInfo:(id)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5;
- (void)invalidate;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentReceiverViewController

- (PKNearbyPeerPaymentReceiverViewController)initWithUserInfo:(id)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5
{
  v6 = _Block_copy(a4);
  v7 = _Block_copy(a5);
  v8 = sub_1BE052244();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = sub_1BD265B54(v8, sub_1BD166E88, v9, sub_1BD267094, v10);

  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbyPeerPaymentReceiverViewController();
  v2 = v5.receiver;
  [(PKNearbyPeerPaymentViewController *)&v5 viewDidLoad];
  type metadata accessor for NearbyPeerPaymentReceiverVFXViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC9PassKitUI42NearbyPeerPaymentReceiverVFXViewController_animationDelegate;
    swift_beginAccess();
    *(v4 + 8) = &protocol witness table for NearbyPeerPaymentReceiverViewController;
    swift_unknownObjectWeakAssign();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD2608DC(a3, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD2608DC(a3, &selRef_viewDidDisappear_);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BD260AB4();
}

- (void)invalidate
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  sub_1BD0EE8CC(self + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 96))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD38EACC(v7);
  v9 = v8 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 72);
  v13 = v7;
  v12(v7, v10, v11);
  swift_endAccess();
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5
{
  if (a4)
  {
    [(PKNearbyPeerPaymentReceiverViewController *)self presentViewController:a4 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1BD26691C(a3);
}

- (PKNearbyPeerPaymentReceiverViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5
{
  _Block_copy(a4);
  _Block_copy(a5);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end