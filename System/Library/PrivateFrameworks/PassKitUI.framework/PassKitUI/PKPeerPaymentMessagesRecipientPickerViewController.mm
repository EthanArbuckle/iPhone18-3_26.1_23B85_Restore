@interface PKPeerPaymentMessagesRecipientPickerViewController
- (PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)a3 invalidRecipients:(id)a4 amount:(id)a5 peerPaymentController:(id)a6 contentDelegate:(id)a7;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentMessagesRecipientPickerViewController

- (PKPeerPaymentMessagesRecipientPickerViewController)initWithValidRecipients:(id)a3 invalidRecipients:(id)a4 amount:(id)a5 peerPaymentController:(id)a6 contentDelegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentMessagesRecipientPickerViewController;
  v17 = [(PKPeerPaymentMessagesRecipientPickerViewController *)&v21 initWithNibName:0 bundle:0];
  if (v17)
  {
    v18 = [[_PKPeerPaymentMessagesRecipientPickerViewController alloc] initWithValidRecipients:v12 invalidRecipients:v13 amount:v14 peerPaymentController:v15 contentDelegate:v16];
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
  v3 = [(_PKPeerPaymentMessagesRecipientPickerViewController *)self->_internalController view];
  v4 = [(PKPeerPaymentMessagesRecipientPickerViewController *)self view];
  [v4 addSubview:v3];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentMessagesRecipientPickerViewController;
  [(PKPeerPaymentMessagesRecipientPickerViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(PKPeerPaymentMessagesRecipientPickerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_PKPeerPaymentMessagesRecipientPickerViewController *)self->_internalController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

@end