@interface SSDittoHostViewController
- (BOOL)becomeFirstResponder;
- (SSDittoHostViewControllerDelegate)delegate;
- (void)dismiss;
- (void)dismissScreenshotExperience;
- (void)screenshotExperienceHasDismissed;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SSDittoHostViewController

- (BOOL)becomeFirstResponder
{
  v7.receiver = self;
  v7.super_class = SSDittoHostViewController;
  v3 = [(SSDittoHostViewController *)&v7 becomeFirstResponder];
  if (v3)
  {
    v4 = [(SSDittoHostViewController *)self view];
    v5 = [v4 window];
    [v5 makeKeyWindow];
  }

  return v3;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SSDittoHostViewController *)v4 viewServiceDidTerminateWithError:v5];
  }

  v7.receiver = self;
  v7.super_class = SSDittoHostViewController;
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:v4];
  v6 = [(SSDittoHostViewController *)self delegate];
  [v6 remoteViewControllerDisconnectedFromHostViewController:self withError:v4];
}

- (void)screenshotExperienceHasDismissed
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Received dismiss notification from service", v5, 2u);
  }

  v4 = [(SSDittoHostViewController *)self delegate];
  [v4 remoteViewControllerOfHostViewControllerHasDismissedScreenshots:self];
}

- (void)dismissScreenshotExperience
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Notifying service to tear down screenshot experience", v5, 2u);
  }

  v4 = [(SSDittoHostViewController *)self _serviceProxy];
  [v4 tearDownScreenshotExperience];
}

- (void)dismiss
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Received dismiss request from service", v5, 2u);
  }

  v4 = [(SSDittoHostViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:0 completion:0];
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