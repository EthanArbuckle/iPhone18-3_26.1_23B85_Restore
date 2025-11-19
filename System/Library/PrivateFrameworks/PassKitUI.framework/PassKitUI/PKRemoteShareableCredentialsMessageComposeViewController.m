@interface PKRemoteShareableCredentialsMessageComposeViewController
- (PKShareableCredentialsMessageComposeViewControllerDelegate)delegate;
- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteShareableCredentialsMessageComposeViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  if (!self->_finished)
  {
    self->_finished = 1;
    v4 = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];
    [v4 messageComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];

  if (v5)
  {
    v6 = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];
    [v6 messageComposeViewControllerDidFinishWithResult:v3];
  }

  else
  {

    [(PKRemoteShareableCredentialsMessageComposeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (PKShareableCredentialsMessageComposeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end