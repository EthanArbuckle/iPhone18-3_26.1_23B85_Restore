@interface VSViewServiceRemoteViewController
- (VSViewServiceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VSViewServiceRemoteViewControllerDelegate)delegate;
- (void)_didCancelRequest:(id)a3;
- (void)_didChooseAdditionalProvidersForRequest:(id)a3;
- (void)_didChooseProviderWithIdentifier:(id)a3 vetoHandler:(id)a4;
- (void)_dismissViewController;
- (void)_presentViewController;
- (void)_request:(id)a3 didFailWithError:(id)a4;
- (void)_request:(id)a3 didFinishWithResponse:(id)a4;
- (void)dealloc;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation VSViewServiceRemoteViewController

- (VSViewServiceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  VSRequireMainThread();
  v10.receiver = self;
  v10.super_class = VSViewServiceRemoteViewController;
  v8 = [(VSViewServiceRemoteViewController *)&v10 initWithNibName:v7 bundle:v6];

  return v8;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSViewServiceRemoteViewController;
  [(VSViewServiceRemoteViewController *)&v3 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSViewServiceRemoteViewController;
  v4 = a3;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:v4];
  v5 = [(VSViewServiceRemoteViewController *)self delegate:v6.receiver];
  [v5 viewServiceRemoteViewController:self didTerminateWithError:v4];
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

  v4 = [(VSViewServiceRemoteViewController *)self delegate];
  [v4 presentViewServiceRemoteViewController:self];

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

  v4 = [(VSViewServiceRemoteViewController *)self delegate];
  [v4 dismissViewServiceRemoteViewController:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_request:(id)a3 didFinishWithResponse:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _request:didFinishWithResponse:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  v9 = [(VSViewServiceRemoteViewController *)self delegate];
  [v9 viewServiceRemoteViewController:self request:v7 didFinishWithResponse:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_request:(id)a3 didFailWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _request:didFailWithError:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  v9 = [(VSViewServiceRemoteViewController *)self delegate];
  [v9 viewServiceRemoteViewController:self request:v7 didFailWithError:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didChooseAdditionalProvidersForRequest:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSViewServiceRemoteViewController _didChooseAdditionalProvidersForRequest:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  v6 = [(VSViewServiceRemoteViewController *)self delegate];
  [v6 viewServiceRemoteViewController:self didChooseAdditionalProvidersForRequest:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didCancelRequest:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSViewServiceRemoteViewController _didCancelRequest:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  v6 = [(VSViewServiceRemoteViewController *)self delegate];
  [v6 viewServiceRemoteViewController:self didCancelRequest:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didChooseProviderWithIdentifier:(id)a3 vetoHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSViewServiceRemoteViewController _didChooseProviderWithIdentifier:vetoHandler:]";
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  v9 = [(VSViewServiceRemoteViewController *)self delegate];
  [v9 viewServiceRemoteViewController:self didSelectProviderWithIdentifier:v7 vetoHandler:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (VSViewServiceRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end