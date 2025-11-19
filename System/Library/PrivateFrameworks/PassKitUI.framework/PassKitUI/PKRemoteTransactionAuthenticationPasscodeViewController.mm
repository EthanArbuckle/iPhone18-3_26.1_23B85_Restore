@interface PKRemoteTransactionAuthenticationPasscodeViewController
- (PKRemoteTransactionAuthenticationPasscodeViewControllerDelegate)delegate;
- (void)passcodeViewControllerDidCancel;
- (void)passcodeViewControllerDidEndSessionExchange;
- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)a3;
- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteTransactionAuthenticationPasscodeViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKRemoteTransactionAuthenticationPasscodeViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidCancel];
}

- (void)passcodeViewControllerRequestSessionExchangeTokenWithHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerRequestSessionExchangeTokenWithHandler:v4];
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

- (void)passcodeViewControllerDidGenerateEncryptedPasscode:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewControllerDidGenerateEncryptedPasscode:v4];
}

- (PKRemoteTransactionAuthenticationPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end