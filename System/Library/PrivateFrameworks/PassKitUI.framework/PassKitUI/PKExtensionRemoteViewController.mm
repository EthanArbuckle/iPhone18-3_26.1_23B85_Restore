@interface PKExtensionRemoteViewController
- (PKExtensionRemoteViewControllerDelegate)delegate;
- (id)exportedInterface;
- (id)serviceViewControllerInterface;
@end

@implementation PKExtensionRemoteViewController

- (id)serviceViewControllerInterface
{
  v2 = objc_opt_class();

  return [v2 serviceViewControllerInterface];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 exportedInterface];
}

- (PKExtensionRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end