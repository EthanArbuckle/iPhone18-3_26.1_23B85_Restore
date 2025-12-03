@interface WFSystemActionConfigurationViewController
- (WFSystemActionConfigurationViewController)initWithCoder:(id)coder;
- (WFSystemActionConfigurationViewController)initWithConfigurationContext:(id)context;
- (WFSystemActionConfigurationViewControllerDelegate)delegate;
- (_UIRemoteViewController)remoteViewController;
- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)installRemoteViewController:(id)controller extension:(id)extension extensionRequest:(id)request;
- (void)loadRemoteViewController;
- (void)setSelectedAction:(id)action;
@end

@implementation WFSystemActionConfigurationViewController

- (_UIRemoteViewController)remoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);

  return WeakRetained;
}

- (WFSystemActionConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configurationContext = [(WFSystemActionConfigurationViewController *)self configurationContext];
  [coderCopy encodeObject:configurationContext forKey:@"configurationContext"];
}

- (WFSystemActionConfigurationViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationContext"];

  if (v5)
  {
    self = [(WFSystemActionConfigurationViewController *)self initWithConfigurationContext:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  errorCopy = error;
  v9 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[WFSystemActionConfigurationViewController configurationController:didFinishWithAction:error:]";
    v15 = 2112;
    v16 = actionCopy;
    _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "%s Providing selected action to the client: %@", &v13, 0x16u);
  }

  selectedAction = self->_selectedAction;
  self->_selectedAction = actionCopy;
  v11 = actionCopy;

  delegate = [(WFSystemActionConfigurationViewController *)self delegate];
  [delegate configurationController:self didFinishWithAction:v11 error:errorCopy];
}

- (void)setSelectedAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v6 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[WFSystemActionConfigurationViewController setSelectedAction:]";
    v12 = 2112;
    v13 = actionCopy;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "%s Client provided selected action: %@", &v10, 0x16u);
  }

  objc_storeStrong(&self->_selectedAction, action);
  remoteViewController = [(WFSystemActionConfigurationViewController *)self remoteViewController];
  if (remoteViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = remoteViewController;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setSelectedAction:actionCopy];
}

- (void)installRemoteViewController:(id)controller extension:(id)extension extensionRequest:(id)request
{
  v52[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  extensionCopy = extension;
  requestCopy = request;
  v11 = requestCopy;
  extension = self->_extension;
  if (extension != extensionCopy || self->_extensionRequest != requestCopy)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    extension = self->_extension;
  }

  self->_extension = extensionCopy;
  v51 = extensionCopy;

  extensionRequest = self->_extensionRequest;
  self->_extensionRequest = v11;
  v50 = v11;

  [(WFSystemActionConfigurationViewController *)self setRemoteViewController:controllerCopy];
  [(WFSystemActionConfigurationViewController *)self addChildViewController:controllerCopy];
  view = [(WFSystemActionConfigurationViewController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view2 = [controllerCopy view];
  [view2 setFrame:{v17, v19, v21, v23}];

  view3 = [controllerCopy view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(WFSystemActionConfigurationViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  v39 = MEMORY[0x1E696ACD8];
  view6 = [controllerCopy view];
  topAnchor = [view6 topAnchor];
  view7 = [(WFSystemActionConfigurationViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[0] = v45;
  view8 = [controllerCopy view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(WFSystemActionConfigurationViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[1] = v40;
  view10 = [controllerCopy view];
  leadingAnchor = [view10 leadingAnchor];
  view11 = [(WFSystemActionConfigurationViewController *)self view];
  leadingAnchor2 = [view11 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[2] = v29;
  view12 = [controllerCopy view];
  trailingAnchor = [view12 trailingAnchor];
  view13 = [(WFSystemActionConfigurationViewController *)self view];
  trailingAnchor2 = [view13 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  [v39 activateConstraints:v35];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)loadRemoteViewController
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[WFSystemActionConfigurationViewController loadRemoteViewController]";
    _os_log_impl(&dword_1C830A000, v3, OS_LOG_TYPE_DEFAULT, "%s Loading remote extension", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69E0F40];
  v20 = 0;
  v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v4 error:&v20];
  v6 = v20;
  if (v5)
  {
    objc_initWeak(buf, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke;
    v18[3] = &unk_1E83083A8;
    objc_copyWeak(&v19, buf);
    [v5 setRequestCancellationBlock:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_3;
    v16[3] = &unk_1E83083F8;
    objc_copyWeak(&v17, buf);
    [v5 setRequestInterruptionBlock:v16];
    v7 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    v22 = @"WFSystemActionConfigurationContextUserInfoKey";
    configurationContext = [(WFSystemActionConfigurationViewController *)self configurationContext];
    v23 = configurationContext;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v7 setUserInfo:v9];

    v21 = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_61;
    v13[3] = &unk_1E8308448;
    objc_copyWeak(&v15, buf);
    v14 = v5;
    [v14 instantiateViewControllerWithInputItems:v10 connectionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = getWFSystemActionConfigurationLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[WFSystemActionConfigurationViewController loadRemoteViewController]";
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1C830A000, v11, OS_LOG_TYPE_ERROR, "%s Failed to load a System Action Configuration Extension: %{public}@", buf, 0x16u);
    }

    delegate = [(WFSystemActionConfigurationViewController *)self delegate];
    [delegate configurationController:self didFinishWithAction:0 error:v6];
  }
}

void __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_2;
  block[3] = &unk_1E83083D0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_4;
  block[3] = &unk_1E83083D0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_61(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = v8;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = getWFSystemActionConfigurationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[WFSystemActionConfigurationViewController loadRemoteViewController]_block_invoke";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "%s System Action Configuration Extension provided view controller: %@", &v15, 0x16u);
    }

    [v11 setDelegate:WeakRetained];
    v13 = [WeakRetained selectedAction];
    [v11 setSelectedAction:v13];

    [WeakRetained installRemoteViewController:v11 extension:*(a1 + 32) extensionRequest:v7];
    v14 = v11;
  }

  else
  {

    v14 = getWFSystemActionConfigurationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[WFSystemActionConfigurationViewController loadRemoteViewController]_block_invoke";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_ERROR, "%s System Action Configuration Extension failed to  provide view controller due to: %@", &v15, 0x16u);
    }
  }
}

void __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFSystemActionConfigurationViewController loadRemoteViewController]_block_invoke_4";
    _os_log_impl(&dword_1C830A000, v2, OS_LOG_TYPE_DEFAULT, "%s Extension connection was interrupted", &v5, 0xCu);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFSystemActionConfigurationErrorDomain" code:1000 userInfo:0];
  v4 = [WeakRetained delegate];
  [v4 configurationController:WeakRetained didFinishWithAction:0 error:v3];
}

void __69__WFSystemActionConfigurationViewController_loadRemoteViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[WFSystemActionConfigurationViewController dealloc]";
    _os_log_impl(&dword_1C830A000, v3, OS_LOG_TYPE_DEFAULT, "%s Destroying WFSystemActionConfigurationViewController", buf, 0xCu);
  }

  extension = [(WFSystemActionConfigurationViewController *)self extension];
  extensionRequest = [(WFSystemActionConfigurationViewController *)self extensionRequest];
  [extension cancelExtensionRequestWithIdentifier:extensionRequest];

  v6.receiver = self;
  v6.super_class = WFSystemActionConfigurationViewController;
  [(WFSystemActionConfigurationViewController *)&v6 dealloc];
}

- (WFSystemActionConfigurationViewController)initWithConfigurationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = WFSystemActionConfigurationViewController;
  v5 = [(WFSystemActionConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [contextCopy copy];
    configurationContext = v5->_configurationContext;
    v5->_configurationContext = v6;

    [(WFSystemActionConfigurationViewController *)v5 loadRemoteViewController];
    v8 = v5;
  }

  return v5;
}

@end