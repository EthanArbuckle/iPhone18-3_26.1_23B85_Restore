@interface PKRemoteShareableCredentialsMessageComposeViewController
- (PKShareableCredentialsMessageComposeViewControllerDelegate)delegate;
- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteShareableCredentialsMessageComposeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  if (!self->_finished)
  {
    self->_finished = 1;
    delegate = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];
    [delegate messageComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  delegate = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(PKRemoteShareableCredentialsMessageComposeViewController *)self delegate];
    [delegate2 messageComposeViewControllerDidFinishWithResult:resultCopy];
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