@interface _UIScreenRoutePickerRemoteViewController
- (_UIScreenRoutePickerViewController)publicController;
- (void)_dismissViewController;
- (void)invalidate;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _UIScreenRoutePickerRemoteViewController

- (void)invalidate
{
  [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:self->_extensionRequestIdentifier];
  [(_UIScreenRoutePickerRemoteViewController *)self setExtension:0];
  [(_UIScreenRoutePickerRemoteViewController *)self setExtensionRequestIdentifier:0];

  [(_UIScreenRoutePickerRemoteViewController *)self setPublicController:0];
}

- (void)_dismissViewController
{
  publicController = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  presentingViewController = [publicController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _invalidate];

  [(_UIScreenRoutePickerRemoteViewController *)self setPublicController:0];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = _UIScreenRoutePickerRemoteViewController;
  [(_UIRemoteViewController *)&v4 viewServiceDidTerminateWithError:error];
  [(_UIScreenRoutePickerRemoteViewController *)self _dismissViewController];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  publicController = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  modalPresentationStyle = [publicController modalPresentationStyle];

  if (modalPresentationStyle != 7)
  {
    width = 0.0;
  }

  publicController2 = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  [publicController2 setPreferredContentSize:{width, height}];

  v9.receiver = self;
  v9.super_class = _UIScreenRoutePickerRemoteViewController;
  [(UIViewController *)&v9 setPreferredContentSize:width, height];
}

- (_UIScreenRoutePickerViewController)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

@end