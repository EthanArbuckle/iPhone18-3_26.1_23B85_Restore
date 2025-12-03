@interface PKRemoteSubcredentialMessageComposeViewController
- (PKSubcredentialMessageComposeViewControllerDelegate)delegate;
- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteSubcredentialMessageComposeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  if (!self->_finished)
  {
    self->_finished = 1;
    delegate = [(PKRemoteSubcredentialMessageComposeViewController *)self delegate];
    [delegate messageComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result
{
  if (!self->_finished)
  {
    resultCopy = result;
    self->_finished = 1;
    delegate = [(PKRemoteSubcredentialMessageComposeViewController *)self delegate];
    [delegate messageComposeViewControllerDidFinishWithResult:resultCopy];
  }
}

- (PKSubcredentialMessageComposeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end