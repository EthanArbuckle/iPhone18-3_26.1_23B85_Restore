@interface PKRemoteAddPaymentPassViewController
- (PKAddPaymentPassViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didFinishWithPass:(id)pass error:(id)error;
- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteAddPaymentPassViewController

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKRemoteAddPaymentPassViewController;
  [(PKRemoteAddPaymentPassViewController *)&v2 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = errorCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:v6];
  [(PKRemoteAddPaymentPassViewController *)self didFinishWithPass:0 error:v7];
}

- (void)didFinishWithPass:(id)pass error:(id)error
{
  if (!self->_finished)
  {
    self->_finished = 1;
    errorCopy = error;
    passCopy = pass;
    delegate = [(PKRemoteAddPaymentPassViewController *)self delegate];
    _addPaymentPassVC = [(PKRemoteAddPaymentPassViewController *)self _addPaymentPassVC];
    [delegate addPaymentPassViewController:_addPaymentPassVC didFinishAddingPaymentPass:passCopy error:errorCopy];
  }
}

- (void)generateRequestWithCertificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler
{
  chainCopy = chain;
  nonceCopy = nonce;
  signatureCopy = signature;
  handlerCopy = handler;
  delegate = [(PKRemoteAddPaymentPassViewController *)self delegate];
  if (delegate)
  {
    _addPaymentPassVC = [(PKRemoteAddPaymentPassViewController *)self _addPaymentPassVC];
    [delegate addPaymentPassViewController:_addPaymentPassVC generateRequestWithCertificateChain:chainCopy nonce:nonceCopy nonceSignature:signatureCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (PKAddPaymentPassViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end