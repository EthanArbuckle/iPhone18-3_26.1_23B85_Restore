@interface PKRemoteAddPaymentPassViewController
- (PKAddPaymentPassViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didFinishWithPass:(id)a3 error:(id)a4;
- (void)generateRequestWithCertificateChain:(id)a3 nonce:(id)a4 nonceSignature:(id)a5 completionHandler:(id)a6;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteAddPaymentPassViewController

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKRemoteAddPaymentPassViewController;
  [(PKRemoteAddPaymentPassViewController *)&v2 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:v6];
  [(PKRemoteAddPaymentPassViewController *)self didFinishWithPass:0 error:v7];
}

- (void)didFinishWithPass:(id)a3 error:(id)a4
{
  if (!self->_finished)
  {
    self->_finished = 1;
    v7 = a4;
    v8 = a3;
    v10 = [(PKRemoteAddPaymentPassViewController *)self delegate];
    v9 = [(PKRemoteAddPaymentPassViewController *)self _addPaymentPassVC];
    [v10 addPaymentPassViewController:v9 didFinishAddingPaymentPass:v8 error:v7];
  }
}

- (void)generateRequestWithCertificateChain:(id)a3 nonce:(id)a4 nonceSignature:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PKRemoteAddPaymentPassViewController *)self delegate];
  if (v13)
  {
    v14 = [(PKRemoteAddPaymentPassViewController *)self _addPaymentPassVC];
    [v13 addPaymentPassViewController:v14 generateRequestWithCertificateChain:v15 nonce:v10 nonceSignature:v11 completionHandler:v12];
  }

  else if (v12)
  {
    v12[2](v12, 0);
  }
}

- (PKAddPaymentPassViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end