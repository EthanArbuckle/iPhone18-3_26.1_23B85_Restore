@interface UIKeyboardCameraRemoteViewController
- (UIKeyboardCameraRemoteViewControllerHost)delegate;
- (void)keyboardCameraDidAccept;
- (void)keyboardCameraDidCancel;
- (void)keyboardCameraDidUpdateString:(id)string;
@end

@implementation UIKeyboardCameraRemoteViewController

- (void)keyboardCameraDidUpdateString:(id)string
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardCameraDidUpdateString:stringCopy];
}

- (void)keyboardCameraDidAccept
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardCameraDidAccept];
}

- (void)keyboardCameraDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardCameraDidCancel];
}

- (UIKeyboardCameraRemoteViewControllerHost)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end