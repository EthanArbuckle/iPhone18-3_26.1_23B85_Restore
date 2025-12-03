@interface _PKPeerPaymentMessagesRecipientPickerViewController
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithCoder:(id)coder;
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)recipients invalidRecipients:(id)invalidRecipients amount:(id)amount peerPaymentController:(id)controller contentDelegate:(id)delegate;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation _PKPeerPaymentMessagesRecipientPickerViewController

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)recipients invalidRecipients:(id)invalidRecipients amount:(id)amount peerPaymentController:(id)controller contentDelegate:(id)delegate
{
  sub_1BD8510E8();
  v10 = sub_1BE052744();
  v11 = sub_1BE052744();
  amountCopy = amount;
  controllerCopy = controller;
  swift_unknownObjectRetain();
  v14 = sub_1BD850AF4(v10, v11, amountCopy, controllerCopy, delegate);

  swift_unknownObjectRelease();
  return v14;
}

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD84FC9C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD84FDB8();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  v2 = v5.receiver;
  [(_PKPeerPaymentMessagesRecipientPickerViewController *)&v5 viewDidLayoutSubviews];
  navigationController = [v2 navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    [navigationController setNavigationBarHidden:1 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD84FF70(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD8503E0(disappear);
}

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end