@interface UIKeyboardCameraRemoteViewController
- (UIKeyboardCameraRemoteViewControllerHost)delegate;
- (void)keyboardCameraDidAccept;
- (void)keyboardCameraDidCancel;
- (void)keyboardCameraDidUpdateString:(id)a3;
@end

@implementation UIKeyboardCameraRemoteViewController

- (void)keyboardCameraDidUpdateString:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardCameraDidUpdateString:v4];
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