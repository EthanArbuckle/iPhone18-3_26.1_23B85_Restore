@interface SBUIPopoverExtensionHostViewController
- (_SBUIPopoverExtensionHostDelegate)delegate;
- (void)_extensionRequestsDismiss;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SBUIPopoverExtensionHostViewController

- (void)_extensionRequestsDismiss
{
  v3 = [(SBUIPopoverExtensionHostViewController *)self delegate];
  [v3 popoverHostExtensionRequestsDismiss:self];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SBUIPopoverExtensionHostViewController *)v4 viewServiceDidTerminateWithError:v5];
  }

  v6 = [(SBUIPopoverExtensionHostViewController *)self delegate];
  [v6 popoverHostExtensionDidExit:self];
}

- (_SBUIPopoverExtensionHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "Popover Extension did terminate with error: %@", &v2, 0xCu);
}

@end