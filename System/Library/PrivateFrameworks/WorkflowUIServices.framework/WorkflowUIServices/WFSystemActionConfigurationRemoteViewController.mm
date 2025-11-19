@interface WFSystemActionConfigurationRemoteViewController
- (WFSystemActionConfigurationRemoteViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didCancelSystemActionConfiguration:(id)a3;
- (void)didSelectSystemAction:(id)a3;
- (void)setSelectedAction:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation WFSystemActionConfigurationRemoteViewController

- (WFSystemActionConfigurationRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSelectSystemAction:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFSystemActionConfigurationRemoteViewController didSelectSystemAction:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "%s System Action configuration finished, action = %@", &v9, 0x16u);
  }

  selectedAction = self->_selectedAction;
  self->_selectedAction = v4;
  v7 = v4;

  v8 = [(WFSystemActionConfigurationRemoteViewController *)self delegate];
  [v8 configurationController:self didFinishWithAction:v7 error:0];
}

- (void)didCancelSystemActionConfiguration:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WFSystemActionConfigurationRemoteViewController didCancelSystemActionConfiguration:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "%s System Action configuration finished, error = %@", &v8, 0x16u);
  }

  selectedAction = self->_selectedAction;
  self->_selectedAction = 0;

  v7 = [(WFSystemActionConfigurationRemoteViewController *)self delegate];
  [v7 configurationController:self didFinishWithAction:0 error:v4];
}

- (void)setSelectedAction:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFSystemActionConfigurationRemoteViewController setSelectedAction:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending selected action to remote view controller: %@", &v9, 0x16u);
  }

  selectedAction = self->_selectedAction;
  self->_selectedAction = v4;
  v7 = v4;

  v8 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v8 setSelectedSystemAction:v7];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v8 = "[WFSystemActionConfigurationRemoteViewController viewServiceDidTerminateWithError:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_ERROR, "%s viewServiceDidTerminateWithError, error = %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = WFSystemActionConfigurationRemoteViewController;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:v4];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v6 = "[WFSystemActionConfigurationRemoteViewController dealloc]";
    _os_log_impl(&dword_1C830A000, v3, OS_LOG_TYPE_ERROR, "%s Destroying WFSystemActionConfigurationRemoteViewController", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = WFSystemActionConfigurationRemoteViewController;
  [(WFSystemActionConfigurationRemoteViewController *)&v4 dealloc];
}

@end