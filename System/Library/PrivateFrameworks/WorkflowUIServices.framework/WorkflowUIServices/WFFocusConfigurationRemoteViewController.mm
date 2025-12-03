@interface WFFocusConfigurationRemoteViewController
- (WFFocusConfigurationRemoteViewControllerDelegate)delegate;
- (void)notifyDelegateWithConfigurationUIState:(id)state;
- (void)notifyDelegateWithPressedButtonIdentifier:(id)identifier cellFrame:(CGRect)frame;
- (void)setServiceContext:(id)context;
- (void)startConfigurationWithRequest:(id)request completion:(id)completion;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation WFFocusConfigurationRemoteViewController

- (WFFocusConfigurationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyDelegateWithPressedButtonIdentifier:(id)identifier cellFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  delegate = [(WFFocusConfigurationRemoteViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(WFFocusConfigurationRemoteViewController *)self delegate];
    [delegate2 focusConfigurationRemoteViewController:self didPressButtonWithIdentifier:identifierCopy cellFrame:{x, y, width, height}];
  }
}

- (void)notifyDelegateWithConfigurationUIState:(id)state
{
  stateCopy = state;
  delegate = [(WFFocusConfigurationRemoteViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFFocusConfigurationRemoteViewController *)self delegate];
    [delegate2 focusConfigurationRemoteViewController:self configurationUIStateDidChange:stateCopy];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v8 = "[WFFocusConfigurationRemoteViewController viewServiceDidTerminateWithError:]";
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_ERROR, "%s viewServiceDidTerminateWithError, error = %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = WFFocusConfigurationRemoteViewController;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:errorCopy];
}

- (void)startConfigurationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E8308720;
  v7 = completionCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__WFFocusConfigurationRemoteViewController_startConfigurationWithRequest_completion___block_invoke_50;
  v11[3] = &unk_1E8308720;
  v12 = v7;
  v10 = v7;
  [v9 startConfigurationWithRequest:requestCopy completion:v11];
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

- (void)setServiceContext:(id)context
{
  contextCopy = context;
  [(WFFocusConfigurationHostContext *)self->_serviceContext setFocusConfigurationDelegate:0];
  serviceContext = self->_serviceContext;
  self->_serviceContext = contextCopy;
  v6 = contextCopy;

  [(WFFocusConfigurationHostContext *)self->_serviceContext setFocusConfigurationDelegate:self];
}

@end