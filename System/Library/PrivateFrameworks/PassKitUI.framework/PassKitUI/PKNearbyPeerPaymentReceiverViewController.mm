@interface PKNearbyPeerPaymentReceiverViewController
- (PKNearbyPeerPaymentReceiverViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (PKNearbyPeerPaymentReceiverViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (void)invalidate;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentReceiverViewController

- (PKNearbyPeerPaymentReceiverViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  v6 = _Block_copy(action);
  v7 = _Block_copy(dismissAction);
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD2608DC(appear, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD2608DC(disappear, &selRef_viewDidDisappear_);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  selfCopy = self;
  sub_1BD38EACC(dataCopy);
  v9 = selfCopy + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 72);
  v13 = dataCopy;
  v12(dataCopy, v10, v11);
  swift_endAccess();
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController)
  {
    [(PKNearbyPeerPaymentReceiverViewController *)self presentViewController:viewController animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD26691C(controller);
}

- (PKNearbyPeerPaymentReceiverViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  _Block_copy(action);
  _Block_copy(dismissAction);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end