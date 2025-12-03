@interface PKNearbyPeerPaymentSenderViewController
- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (void)applicationDidBecomeActive;
- (void)debugViewTapped;
- (void)invalidate;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentSenderViewController

- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  v6 = _Block_copy(action);
  v7 = _Block_copy(dismissAction);
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
  selfCopy = self;
  sub_1BD9B9A64();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD9BA254();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD9BA890(appear, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD9BA890(disappear, &selRef_viewDidDisappear_);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  selfCopy = self;
  sub_1BD38EACC(dataCopy);
  v9 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(selfCopy + v9, v12);
  v10 = v13;
  v11 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v11 + 96))(dataCopy, v10, v11);

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

- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  _Block_copy(action);
  _Block_copy(dismissAction);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end