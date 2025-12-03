@interface PKPeerPaymentMessagesRecipientPickerViewController
- (PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)recipients invalidRecipients:(id)invalidRecipients amount:(id)amount peerPaymentController:(id)controller contentDelegate:(id)delegate;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentMessagesRecipientPickerViewController

- (PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)recipients invalidRecipients:(id)invalidRecipients amount:(id)amount peerPaymentController:(id)controller contentDelegate:(id)delegate
{
  recipientsCopy = recipients;
  invalidRecipientsCopy = invalidRecipients;
  amountCopy = amount;
  controllerCopy = controller;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentMessagesRecipientPickerViewController;
  v17 = [(PKPeerPaymentMessagesRecipientPickerViewController *)&v21 initWithNibName:0 bundle:0];
  if (v17)
  {
    v18 = [[_PKPeerPaymentMessagesRecipientPickerViewController alloc] initWithValidRecipients:recipientsCopy invalidRecipients:invalidRecipientsCopy amount:amountCopy peerPaymentController:controllerCopy contentDelegate:delegateCopy];
    internalController = v17->_internalController;
    v17->_internalController = v18;

    [(PKPeerPaymentMessagesRecipientPickerViewController *)v17 addChildViewController:v17->_internalController];
  }

  return v17;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesRecipientPickerViewController;
  [(PKPeerPaymentMessagesRecipientPickerViewController *)&v5 loadView];
  [(_PKPeerPaymentMessagesRecipientPickerViewController *)self->_internalController didMoveToParentViewController:self];
  view = [(_PKPeerPaymentMessagesRecipientPickerViewController *)self->_internalController view];
  view2 = [(PKPeerPaymentMessagesRecipientPickerViewController *)self view];
  [view2 addSubview:view];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentMessagesRecipientPickerViewController;
  [(PKPeerPaymentMessagesRecipientPickerViewController *)&v13 viewWillLayoutSubviews];
  view = [(PKPeerPaymentMessagesRecipientPickerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(_PKPeerPaymentMessagesRecipientPickerViewController *)self->_internalController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

@end