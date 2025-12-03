@interface SSDittoHostViewController
- (BOOL)becomeFirstResponder;
- (SSDittoHostViewControllerDelegate)delegate;
- (void)dismiss;
- (void)dismissScreenshotExperience;
- (void)screenshotExperienceHasDismissed;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SSDittoHostViewController

- (BOOL)becomeFirstResponder
{
  v7.receiver = self;
  v7.super_class = SSDittoHostViewController;
  becomeFirstResponder = [(SSDittoHostViewController *)&v7 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    view = [(SSDittoHostViewController *)self view];
    window = [view window];
    [window makeKeyWindow];
  }

  return becomeFirstResponder;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SSDittoHostViewController *)errorCopy viewServiceDidTerminateWithError:v5];
  }

  v7.receiver = self;
  v7.super_class = SSDittoHostViewController;
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:errorCopy];
  delegate = [(SSDittoHostViewController *)self delegate];
  [delegate remoteViewControllerDisconnectedFromHostViewController:self withError:errorCopy];
}

- (void)screenshotExperienceHasDismissed
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Received dismiss notification from service", v5, 2u);
  }

  delegate = [(SSDittoHostViewController *)self delegate];
  [delegate remoteViewControllerOfHostViewControllerHasDismissedScreenshots:self];
}

- (void)dismissScreenshotExperience
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Notifying service to tear down screenshot experience", v5, 2u);
  }

  _serviceProxy = [(SSDittoHostViewController *)self _serviceProxy];
  [_serviceProxy tearDownScreenshotExperience];
}

- (void)dismiss
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Received dismiss request from service", v5, 2u);
  }

  presentingViewController = [(SSDittoHostViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];
}

- (SSDittoHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D9E04000, a2, OS_LOG_TYPE_ERROR, "Service Terminated with error %@", &v4, 0xCu);
}

@end