@interface PeerPaymentUpdateUserInfoViewController
- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (void)cancel;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)nextButtonTapped;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PeerPaymentUpdateUserInfoViewController

- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
  v4 = v9.receiver;
  [(PeerPaymentUpdateUserInfoViewController *)&v9 viewDidDisappear:disappearCopy];
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
  selfCopy = self;
  presentingViewController = [(PeerPaymentUpdateUserInfoViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)nextButtonTapped
{
  selfCopy = self;
  sub_1BD6E15FC();
}

- (_TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleNextButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BD6E15FC();

  sub_1BD14EC0C(v6);
}

@end