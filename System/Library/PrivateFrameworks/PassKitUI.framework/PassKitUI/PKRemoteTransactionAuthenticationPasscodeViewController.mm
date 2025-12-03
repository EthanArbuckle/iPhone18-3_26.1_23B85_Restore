@interface PKRemoteTransactionAuthenticationPasscodeViewController
- (PKRemoteTransactionAuthenticationPasscodeViewControllerDelegate)delegate;
- (void)passcodeViewControllerDidCancel;
- (void)passcodeViewControllerDidEndSessionExchange;
- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)passcode;
- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)handler;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteTransactionAuthenticationPasscodeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = PKRemoteTransactionAuthenticationPasscodeViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:error];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidCancel];
}

- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerRequestSessionExchangeTokenWithHandler:handlerCopy];
}

- (void)passcodeViewControllerDidEndSessionExchange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidEndSessionExchange];
}

- (void)passcodeViewControllerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidCancel];
}

- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)passcode
{
  passcodeCopy = passcode;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidGenerateEncryptedPasscode:passcodeCopy];
}

- (PKRemoteTransactionAuthenticationPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end