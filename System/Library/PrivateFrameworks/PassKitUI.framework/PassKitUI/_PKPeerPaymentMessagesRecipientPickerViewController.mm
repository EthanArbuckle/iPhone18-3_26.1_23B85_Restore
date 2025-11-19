@interface _PKPeerPaymentMessagesRecipientPickerViewController
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithCoder:(id)a3;
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)a3 invalidRecipients:(id)a4 amount:(id)a5 peerPaymentController:(id)a6 contentDelegate:(id)a7;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation _PKPeerPaymentMessagesRecipientPickerViewController

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)a3 invalidRecipients:(id)a4 amount:(id)a5 peerPaymentController:(id)a6 contentDelegate:(id)a7
{
  sub_1BD8510E8();
  v10 = sub_1BE052744();
  v11 = sub_1BE052744();
  v12 = a5;
  v13 = a6;
  swift_unknownObjectRetain();
  v14 = sub_1BD850AF4(v10, v11, v12, v13, a7);

  swift_unknownObjectRelease();
  return v14;
}

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD84FC9C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD84FDB8();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  v2 = v5.receiver;
  [(_PKPeerPaymentMessagesRecipientPickerViewController *)&v5 viewDidLayoutSubviews];
  v3 = [v2 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:1 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD84FF70(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD8503E0(a3);
}

- (_PKPeerPaymentMessagesRecipientPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end