@interface LTUIRemoteViewController
- (LTUIViewServiceExtensionHostProtocol)delegate;
- (void)confirmUserConsent;
- (void)dismiss;
- (void)expandSheet;
- (void)finishWithTranslation:(id)a3;
- (void)remoteIsReady;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation LTUIRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v3 = a3;
  v4 = _LTOSLogSystemTranslation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(LTUIRemoteViewController *)v3 viewServiceDidTerminateWithError:v4];
  }
}

- (void)dismiss
{
  v2 = [(LTUIRemoteViewController *)self delegate];
  [v2 dismiss];
}

- (void)confirmUserConsent
{
  v2 = [(LTUIRemoteViewController *)self delegate];
  [v2 confirmUserConsent];
}

- (void)expandSheet
{
  v2 = [(LTUIRemoteViewController *)self delegate];
  [v2 expandSheet];
}

- (void)remoteIsReady
{
  v2 = [(LTUIRemoteViewController *)self delegate];
  [v2 remoteIsReady];
}

- (void)finishWithTranslation:(id)a3
{
  v4 = a3;
  v5 = [(LTUIRemoteViewController *)self delegate];
  [v5 finishWithTranslation:v4];
}

- (LTUIViewServiceExtensionHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26F4D2000, a2, OS_LOG_TYPE_ERROR, "View service terminated during system translation with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end