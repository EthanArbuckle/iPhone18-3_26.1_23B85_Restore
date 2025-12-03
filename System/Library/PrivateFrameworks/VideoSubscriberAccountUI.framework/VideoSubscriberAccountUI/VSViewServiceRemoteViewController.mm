@interface VSViewServiceRemoteViewController
- (VSViewServiceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VSViewServiceRemoteViewControllerDelegate)delegate;
- (void)_didCancelRequest:(id)request;
- (void)_didChooseAdditionalProvidersForRequest:(id)request;
- (void)_didChooseProviderWithIdentifier:(id)identifier vetoHandler:(id)handler;
- (void)_dismissViewController;
- (void)_presentViewController;
- (void)_request:(id)_request didFailWithError:(id)error;
- (void)_request:(id)_request didFinishWithResponse:(id)response;
- (void)dealloc;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation VSViewServiceRemoteViewController

- (VSViewServiceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  VSRequireMainThread();
  v10.receiver = self;
  v10.super_class = VSViewServiceRemoteViewController;
  v8 = [(VSViewServiceRemoteViewController *)&v10 initWithNibName:nameCopy bundle:bundleCopy];

  return v8;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSViewServiceRemoteViewController;
  [(VSViewServiceRemoteViewController *)&v3 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = VSViewServiceRemoteViewController;
  errorCopy = error;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:errorCopy];
  v5 = [(VSViewServiceRemoteViewController *)self delegate:v6.receiver];
  [v5 viewServiceRemoteViewController:self didTerminateWithError:errorCopy];
}

- (void)_presentViewController
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VSViewServiceRemoteViewController _presentViewController]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v6, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate presentViewServiceRemoteViewController:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dismissViewController
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VSViewServiceRemoteViewController _dismissViewController]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v6, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate dismissViewServiceRemoteViewController:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_request:(id)_request didFinishWithResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  _requestCopy = _request;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _request:didFinishWithResponse:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate viewServiceRemoteViewController:self request:_requestCopy didFinishWithResponse:responseCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_request:(id)_request didFailWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  _requestCopy = _request;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _request:didFailWithError:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate viewServiceRemoteViewController:self request:_requestCopy didFailWithError:errorCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didChooseAdditionalProvidersForRequest:(id)request
{
  v10 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSViewServiceRemoteViewController _didChooseAdditionalProvidersForRequest:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate viewServiceRemoteViewController:self didChooseAdditionalProvidersForRequest:requestCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didCancelRequest:(id)request
{
  v10 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSViewServiceRemoteViewController _didCancelRequest:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate viewServiceRemoteViewController:self didCancelRequest:requestCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didChooseProviderWithIdentifier:(id)identifier vetoHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _didChooseProviderWithIdentifier:vetoHandler:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  delegate = [(VSViewServiceRemoteViewController *)self delegate];
  [delegate viewServiceRemoteViewController:self didSelectProviderWithIdentifier:identifierCopy vetoHandler:handlerCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (VSViewServiceRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end