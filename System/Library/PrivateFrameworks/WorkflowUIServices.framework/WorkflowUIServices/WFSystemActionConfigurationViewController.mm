@interface WFSystemActionConfigurationViewController
- (WFSystemActionConfigurationViewController)initWithCoder:(id)a3;
- (WFSystemActionConfigurationViewController)initWithConfigurationContext:(id)a3;
- (WFSystemActionConfigurationViewControllerDelegate)delegate;
- (_UIRemoteViewController)remoteViewController;
- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)installRemoteViewController:(id)a3 extension:(id)a4 extensionRequest:(id)a5;
- (void)loadRemoteViewController;
- (void)setSelectedAction:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSystemActionConfigurationViewController *)self configurationContext];
  [v4 encodeObject:v5 forKey:@"configurationContext"];
}

- (WFSystemActionConfigurationViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationContext"];

  if (v5)
  {
    self = [(WFSystemActionConfigurationViewController *)self initWithConfigurationContext:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[WFSystemActionConfigurationViewController configurationController:didFinishWithAction:error:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "%s Providing selected action to the client: %@", &v13, 0x16u);
  }

  selectedAction = self->_selectedAction;
  self->_selectedAction = v7;
  v11 = v7;

  v12 = [(WFSystemActionConfigurationViewController *)self delegate];
  [v12 configurationController:self didFinishWithAction:v11 error:v8];
}

- (void)setSelectedAction:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = getWFSystemActionConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[WFSystemActionConfigurationViewController setSelectedAction:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "%s Client provided selected action: %@", &v10, 0x16u);
  }

  objc_storeStrong(&self->_selectedAction, a3);
  v7 = [(WFSystemActionConfigurationViewController *)self remoteViewController];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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

  [v9 setSelectedAction:v5];
}

- (void)installRemoteViewController:(id)a3 extension:(id)a4 extensionRequest:(id)a5
{
  v52[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  extension = self->_extension;
  if (extension != v9 || self->_extensionRequest != v10)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    extension = self->_extension;
  }

  self->_extension = v9;
  v51 = v9;

  extensionRequest = self->_extensionRequest;
  self->_extensionRequest = v11;
  v50 = v11;

  [(WFSystemActionConfigurationViewController *)self setRemoteViewController:v8];
  [(WFSystemActionConfigurationViewController *)self addChildViewController:v8];
  v15 = [(WFSystemActionConfigurationViewController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v8 view];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [v8 view];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(WFSystemActionConfigurationViewController *)self view];
  v27 = [v8 view];
  [v26 addSubview:v27];

  v39 = MEMORY[0x1E696ACD8];
  v49 = [v8 view];
  v47 = [v49 topAnchor];
  v48 = [(WFSystemActionConfigurationViewController *)self view];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v52[0] = v45;
  v44 = [v8 view];
  v42 = [v44 bottomAnchor];
  v43 = [(WFSystemActionConfigurationViewController *)self view];
  v41 = [v43 bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v52[1] = v40;
  v38 = [v8 view];
  v36 = [v38 leadingAnchor];
  v37 = [(WFSystemActionConfigurationViewController *)self view];
  v28 = [v37 leadingAnchor];
  v29 = [v36 constraintEqualToAnchor:v28];
  v52[2] = v29;
  v30 = [v8 view];
  v31 = [v30 trailingAnchor];
  v32 = [(WFSystemActionConfigurationViewController *)self view];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v52[3] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  [v39 activateConstraints:v35];

  [v8 didMoveToParentViewController:self];
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
    v8 = [(WFSystemActionConfigurationViewController *)self configurationContext];
    v23 = v8;
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

    v12 = [(WFSystemActionConfigurationViewController *)self delegate];
    [v12 configurationController:self didFinishWithAction:0 error:v6];
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

  v4 = [(WFSystemActionConfigurationViewController *)self extension];
  v5 = [(WFSystemActionConfigurationViewController *)self extensionRequest];
  [v4 cancelExtensionRequestWithIdentifier:v5];

  v6.receiver = self;
  v6.super_class = WFSystemActionConfigurationViewController;
  [(WFSystemActionConfigurationViewController *)&v6 dealloc];
}

- (WFSystemActionConfigurationViewController)initWithConfigurationContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFSystemActionConfigurationViewController;
  v5 = [(WFSystemActionConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    configurationContext = v5->_configurationContext;
    v5->_configurationContext = v6;

    [(WFSystemActionConfigurationViewController *)v5 loadRemoteViewController];
    v8 = v5;
  }

  return v5;
}

@end