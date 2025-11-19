@interface PKPeerPaymentMessageComposeController
- (PKPeerPaymentMessageComposeController)initWithMessage:(id)a3 recipientAddress:(id)a4;
- (UIViewController)currentHostController;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)presentMessageOverController:(id)a3 presentationHandler:(id)a4;
@end

@implementation PKPeerPaymentMessageComposeController

- (PKPeerPaymentMessageComposeController)initWithMessage:(id)a3 recipientAddress:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentMessageComposeController;
  v9 = [(PKPeerPaymentMessageComposeController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    objc_storeStrong(&v10->_recipientAddress, a4);
  }

  return v10;
}

- (void)presentMessageOverController:(id)a3 presentationHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_storeWeak(&self->_currentHostController, a3);
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Presenting PKPeerPaymentMessageComposeController.", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E6973F10]);
  [v8 setMessageComposeDelegate:self];
  [v8 setModalInPresentation:1];
  [v8 _setCanEditRecipients:0];
  v15[0] = self->_recipientAddress;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v8 setRecipients:v9];

  [v8 setMessage:self->_message];
  WeakRetained = objc_loadWeakRetained(&self->_currentHostController);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PKPeerPaymentMessageComposeController_presentMessageOverController_presentationHandler___block_invoke;
  v12[3] = &unk_1E8010B50;
  v13 = v6;
  v11 = v6;
  [WeakRetained presentViewController:v8 animated:1 completion:v12];
}

uint64_t __90__PKPeerPaymentMessageComposeController_presentMessageOverController_presentationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 2)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      v8 = v6;
      completionHandler[2](completionHandler, a4, 0);
      v6 = v8;
    }
  }
}

- (UIViewController)currentHostController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHostController);

  return WeakRetained;
}

@end