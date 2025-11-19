@interface PKRemoteSubcredentialMessageComposeViewController
- (PKSubcredentialMessageComposeViewControllerDelegate)delegate;
- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteSubcredentialMessageComposeViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  if (!self->_finished)
  {
    self->_finished = 1;
    v4 = [(PKRemoteSubcredentialMessageComposeViewController *)self delegate];
    [v4 messageComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)a3
{
  if (!self->_finished)
  {
    v4 = a3;
    self->_finished = 1;
    v5 = [(PKRemoteSubcredentialMessageComposeViewController *)self delegate];
    [v5 messageComposeViewControllerDidFinishWithResult:v4];
  }
}

- (PKSubcredentialMessageComposeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end