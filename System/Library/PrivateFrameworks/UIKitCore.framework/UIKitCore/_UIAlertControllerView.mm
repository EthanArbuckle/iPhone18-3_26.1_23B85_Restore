@interface _UIAlertControllerView
- (UIAlertController)alertController;
@end

@implementation _UIAlertControllerView

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end