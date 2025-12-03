@interface PKRemoteFlightShareComposeViewController
- (PKFlightShareComposeViewControllerDelegate)delegate;
- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)result;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteFlightShareComposeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 flightShareComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 flightShareComposeViewControllerDidFinishWithResult:resultCopy];
  }
}

- (PKFlightShareComposeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end