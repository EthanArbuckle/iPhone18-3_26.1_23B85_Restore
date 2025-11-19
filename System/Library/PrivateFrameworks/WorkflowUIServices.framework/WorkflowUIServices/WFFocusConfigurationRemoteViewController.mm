@interface WFFocusConfigurationRemoteViewController
- (WFFocusConfigurationRemoteViewControllerDelegate)delegate;
- (void)notifyDelegateWithConfigurationUIState:(id)a3;
- (void)notifyDelegateWithPressedButtonIdentifier:(id)a3 cellFrame:(CGRect)a4;
- (void)setServiceContext:(id)a3;
- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation WFFocusConfigurationRemoteViewController

- (WFFocusConfigurationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyDelegateWithPressedButtonIdentifier:(id)a3 cellFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v9 = [(WFFocusConfigurationRemoteViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFFocusConfigurationRemoteViewController *)self delegate];
    [v11 focusConfigurationRemoteViewController:self didPressButtonWithIdentifier:v12 cellFrame:{x, y, width, height}];
  }
}

- (void)notifyDelegateWithConfigurationUIState:(id)a3
{
  v7 = a3;
  v4 = [(WFFocusConfigurationRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFFocusConfigurationRemoteViewController *)self delegate];
    [v6 focusConfigurationRemoteViewController:self configurationUIStateDidChange:v7];
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v8 = "[WFFocusConfigurationRemoteViewController viewServiceDidTerminateWithError:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_ERROR, "%s viewServiceDidTerminateWithError, error = %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = WFFocusConfigurationRemoteViewController;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:v4];
}

- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E8308720;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke_50;
  v11[3] = &unk_1E8308720;
  v12 = v7;
  v10 = v7;
  [v9 startConfigurationWithRequest:v8 completion:v11];
}

void __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFFocusConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_ERROR, "%s Failed to start configuration request with %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFFocusConfigurationLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[WFFocusConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      v6 = "%s Failed to start configuration request with %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_6:
      _os_log_impl(&dword_1C830A000, v7, v8, v6, &v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[WFFocusConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
    v6 = "%s Start Configuration Finished";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v10, v11);
}

- (void)setServiceContext:(id)a3
{
  v4 = a3;
  [(WFFocusConfigurationHostContext *)self->_serviceContext setFocusConfigurationDelegate:0];
  serviceContext = self->_serviceContext;
  self->_serviceContext = v4;
  v6 = v4;

  [(WFFocusConfigurationHostContext *)self->_serviceContext setFocusConfigurationDelegate:self];
}

@end