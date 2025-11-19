@interface PKRemoteFlightShareComposeViewController
- (PKFlightShareComposeViewControllerDelegate)delegate;
- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteFlightShareComposeViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 flightShareComposeViewControllerDidFinishWithResult:0];
  }
}

- (void)flightShareComposeViewControllerDidFinishWithResult:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 flightShareComposeViewControllerDidFinishWithResult:v3];
  }
}

- (PKFlightShareComposeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end