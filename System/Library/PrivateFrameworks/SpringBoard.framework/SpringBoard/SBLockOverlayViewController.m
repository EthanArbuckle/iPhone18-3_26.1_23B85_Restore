@interface SBLockOverlayViewController
- (SBLockOverlayViewControllerDelegate)delegate;
@end

@implementation SBLockOverlayViewController

- (SBLockOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end