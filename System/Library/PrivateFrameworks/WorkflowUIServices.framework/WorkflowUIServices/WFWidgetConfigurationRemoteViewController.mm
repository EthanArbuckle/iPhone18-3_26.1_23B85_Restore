@interface WFWidgetConfigurationRemoteViewController
- (WFWidgetConfigurationRemoteViewControllerDelegate)delegate;
- (void)intentConfigurationWasCancelled;
- (void)intentWasConfigured:(id)a3;
- (void)preferredCardSizeDidUpdate:(CGSize)a3;
- (void)requestViewControllerCancel;
- (void)requestViewControllerDismissal;
- (void)setConfigurationCardViewFrame:(CGRect)a3;
- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4;
@end

@implementation WFWidgetConfigurationRemoteViewController

- (WFWidgetConfigurationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)intentConfigurationWasCancelled
{
  v3 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
    [v5 widgetConfigurationRemoteViewControllerCancelled:self];
  }
}

- (void)preferredCardSizeDidUpdate:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
    [v8 widgetConfigurationRemoteViewController:self preferredContentSizeDidChange:{width, height}];
  }
}

- (void)intentWasConfigured:(id)a3
{
  v7 = a3;
  v4 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWidgetConfigurationRemoteViewController *)self delegate];
    [v6 widgetConfigurationRemoteViewController:self didReceiveConfiguredIntent:v7];
  }
}

- (void)requestViewControllerCancel
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 requestViewControllerCancel];
}

- (void)requestViewControllerDismissal
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 requestViewControllerDismissal];
}

- (void)setConfigurationCardViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v7 setConfigurationCardViewFrame:{x, y, width, height}];
}

- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_5179];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WFWidgetConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke_50;
  v11[3] = &unk_1E8308720;
  v12 = v6;
  v10 = v6;
  [v9 startConfigurationWithRequest:v7 completion:v11];
}

void __86__WFWidgetConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFWidgetConfigurationLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[WFWidgetConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
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
    v13 = "[WFWidgetConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
    v6 = "%s Start Configuration Finished";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v10, v11);
}

void __86__WFWidgetConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[WFWidgetConfigurationRemoteViewController startConfigurationWithRequest:completion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1C830A000, v3, OS_LOG_TYPE_ERROR, "%s Failed to start configuration request with %@", &v4, 0x16u);
  }
}

@end