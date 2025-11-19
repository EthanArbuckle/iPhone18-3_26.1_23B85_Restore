@interface _UIScreenRoutePickerRemoteViewController
- (_UIScreenRoutePickerViewController)publicController;
- (void)_dismissViewController;
- (void)invalidate;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
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
  v3 = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  v4 = [v3 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 _invalidate];

  [(_UIScreenRoutePickerRemoteViewController *)self setPublicController:0];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIScreenRoutePickerRemoteViewController;
  [(_UIRemoteViewController *)&v4 viewServiceDidTerminateWithError:a3];
  [(_UIScreenRoutePickerRemoteViewController *)self _dismissViewController];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  v7 = [v6 modalPresentationStyle];

  if (v7 != 7)
  {
    width = 0.0;
  }

  v8 = [(_UIScreenRoutePickerRemoteViewController *)self publicController];
  [v8 setPreferredContentSize:{width, height}];

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