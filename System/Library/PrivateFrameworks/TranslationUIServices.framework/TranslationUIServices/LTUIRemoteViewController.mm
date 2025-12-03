@interface LTUIRemoteViewController
- (LTUIViewServiceExtensionHostProtocol)delegate;
- (void)confirmUserConsent;
- (void)dismiss;
- (void)expandSheet;
- (void)finishWithTranslation:(id)translation;
- (void)remoteIsReady;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation LTUIRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v4 = _LTOSLogSystemTranslation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(LTUIRemoteViewController *)errorCopy viewServiceDidTerminateWithError:v4];
  }
}

- (void)dismiss
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate dismiss];
}

- (void)confirmUserConsent
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate confirmUserConsent];
}

- (void)expandSheet
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate expandSheet];
}

- (void)remoteIsReady
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate remoteIsReady];
}

- (void)finishWithTranslation:(id)translation
{
  translationCopy = translation;
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate finishWithTranslation:translationCopy];
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