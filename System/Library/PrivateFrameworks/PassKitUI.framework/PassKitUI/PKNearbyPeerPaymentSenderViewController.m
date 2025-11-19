@interface PKNearbyPeerPaymentSenderViewController
- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5;
- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5;
- (void)applicationDidBecomeActive;
- (void)debugViewTapped;
- (void)invalidate;
- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentSenderViewController

- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5
{
  v6 = _Block_copy(a4);
  v7 = _Block_copy(a5);
  v8 = sub_1BE052244();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = sub_1BD9BD508(v8, sub_1BD166E88, v9, sub_1BD267094, v10);

  return v11;
}

- (void)applicationDidBecomeActive
{
  v2 = self;
  sub_1BD9B9A64();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD9BA254();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD9BA890(a3, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD9BA890(a3, &selRef_viewDidDisappear_);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BD9BAA40();
}

- (void)debugViewTapped
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(self + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 88))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

- (void)peerPaymentIdentityManager:(id)a3 didUpdateProfileAppearanceData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD38EACC(v7);
  v9 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v8 + v9, v12);
  v10 = v13;
  v11 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v11 + 96))(v7, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v12);
}

- (void)invalidate
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(self + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 80))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)a3 screenEdgeSwipeAction:(id)a4 dismissAction:(id)a5
{
  _Block_copy(a4);
  _Block_copy(a5);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end