@interface PeerPaymentUpdateUserInfoViewController
- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (void)cancel;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)nextButtonTapped;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PeerPaymentUpdateUserInfoViewController

- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
  v4 = v9.receiver;
  [(PeerPaymentUpdateUserInfoViewController *)&v9 viewDidDisappear:v3];
  if (([v4 isBeingDismissed] & 1) == 0 && !objc_msgSend(v4, sel_isMovingFromParentViewController))
  {
    goto LABEL_5;
  }

  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_coordinator];
  v6 = *(v5 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    *(v5 + OBJC_IVAR___PKPeerPaymentUpdateUserInfoCoordinator_viewControllerIndex) = v8;
LABEL_5:

    return;
  }

  __break(1u);
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
  v2 = v3.receiver;
  [(PKPaymentSetupFieldsViewController *)&v3 loadView];
  sub_1BD6E10D0();
}

- (void)cancel
{
  v4 = self;
  v2 = [(PeerPaymentUpdateUserInfoViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)nextButtonTapped
{
  v2 = self;
  sub_1BD6E15FC();
}

- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleNextButtonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1BD6E15FC();

  sub_1BD14EC0C(v6);
}

@end