@interface WFFocusConfigurationViewController
- (WFFocusConfigurationViewController)initWithContextualActionOptions:(id)a3;
- (WFFocusConfigurationViewController)initWithOptions:(id)a3;
- (WFFocusConfigurationViewController)initWithRequest:(id)a3;
- (WFFocusConfigurationViewControllerDelegate)delegate;
- (void)clearAllViews;
- (void)dealloc;
- (void)embedRemoteViewController:(id)a3 withExtension:(id)a4 extensionRequest:(id)a5;
- (void)installRemoteViewController:(id)a3;
- (void)loadFocusConfigurationRemoteViewController;
- (void)loadFocusConfigurationUI;
- (void)loadView;
- (void)notifyDelegateWithPressedButtonIdentifier:(id)a3 cellFrame:(CGRect)a4;
- (void)notifyDelegateWithUIState:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)showErrorMessage:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFFocusConfigurationViewController

- (WFFocusConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v16 = a3;
  v4 = [(WFFocusConfigurationViewController *)self remoteViewController];
  if (v4 == v16)
  {
    [(WFFocusConfigurationViewController *)self preferredContentSize];
    v6 = v5;
    v8 = v7;
    [v16 preferredContentSize];
    v10 = v9;
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      goto LABEL_9;
    }

    [v16 preferredContentSize];
    [(WFFocusConfigurationViewController *)self setPreferredContentSize:?];
    v14 = [(WFFocusConfigurationViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    v4 = [(WFFocusConfigurationViewController *)self delegate];
    [v16 preferredContentSize];
    [v4 focusConfigurationViewController:self preferredContentSizeDidChange:?];
  }

LABEL_9:
}

- (void)notifyDelegateWithPressedButtonIdentifier:(id)a3 cellFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v9 = [(WFFocusConfigurationViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFFocusConfigurationViewController *)self delegate];
    [v11 focusConfigurationViewController:self didPressButtonWithIdentifier:v12 cellFrame:{x, y, width, height}];
  }
}

- (void)notifyDelegateWithUIState:(id)a3
{
  v12 = a3;
  v4 = [(WFFocusConfigurationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(WFFocusConfigurationViewController *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 focusConfigurationViewController:self configurationUIStateDidChange:v12];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    v7 = [(WFFocusConfigurationViewController *)self delegate];
    if (v8)
    {
      v9 = [v12 action];
      v10 = [v12 displayRepresentation];
      [v7 focusConfigurationViewController:self didUpdateConfigurationWithAction:v9 displayRepresentation:v10];
    }

    else
    {
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }

      v7 = [(WFFocusConfigurationViewController *)self delegate];
      v9 = [v12 action];
      [v7 focusConfigurationViewController:self didUpdateConfigurationWithAction:v9];
    }
  }

LABEL_9:
}

- (void)installRemoteViewController:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(WFFocusConfigurationViewController *)self addChildViewController:v4];
    [(WFFocusConfigurationViewController *)self clearAllViews];
  }

  v5 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v44 = "[WFFocusConfigurationViewController installRemoteViewController:]";
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEBUG, "%s Installing Focus Filter Remote View Controller: %@", buf, 0x16u);
  }

  v6 = [(WFFocusConfigurationViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v4 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [v4 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(WFFocusConfigurationViewController *)self view];
  v18 = [v4 view];
  [v17 addSubview:v18];

  v32 = MEMORY[0x1E696ACD8];
  v41 = [v4 view];
  v39 = [v41 topAnchor];
  v40 = [(WFFocusConfigurationViewController *)self view];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v42[0] = v37;
  v36 = [v4 view];
  v34 = [v36 bottomAnchor];
  v35 = [(WFFocusConfigurationViewController *)self view];
  v33 = [v35 bottomAnchor];
  v31 = [v34 constraintEqualToAnchor:v33];
  v42[1] = v31;
  v30 = [v4 view];
  v28 = [v30 leadingAnchor];
  v19 = [(WFFocusConfigurationViewController *)self view];
  v20 = [v19 leadingAnchor];
  v21 = [v28 constraintEqualToAnchor:v20];
  v42[2] = v21;
  v22 = [v4 view];
  v23 = [v22 trailingAnchor];
  v24 = [(WFFocusConfigurationViewController *)self view];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v42[3] = v26;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  v27 = v29 = self;
  [v32 activateConstraints:v27];

  [v4 didMoveToParentViewController:v29];
}

- (void)embedRemoteViewController:(id)a3 withExtension:(id)a4 extensionRequest:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WFFocusConfigurationViewController *)self remoteViewController];

  if (v10 == v19)
  {
    goto LABEL_9;
  }

  v11 = [(WFFocusConfigurationViewController *)self remoteViewController];
  [v11 willMoveToParentViewController:0];
  v12 = [(WFFocusConfigurationViewController *)self extension];
  v13 = v12;
  if (v12 != v8)
  {

LABEL_5:
    v15 = [(WFFocusConfigurationViewController *)self extension];
    v16 = [(WFFocusConfigurationViewController *)self extensionRequest];
    [v15 cancelExtensionRequestWithIdentifier:v16];

    goto LABEL_6;
  }

  v14 = [(WFFocusConfigurationViewController *)self extensionRequest];

  if (v14 != v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v17 = [(WFFocusConfigurationViewController *)self remoteViewController];
  [v17 setDelegate:0];

  [(WFFocusConfigurationViewController *)self setExtension:v8];
  [(WFFocusConfigurationViewController *)self setExtensionRequest:v9];
  [(WFFocusConfigurationViewController *)self setRemoteViewController:v19];
  v18 = [(WFFocusConfigurationViewController *)self remoteViewController];
  [v18 setDelegate:self];

  if ([(WFFocusConfigurationViewController *)self isViewLoaded])
  {
    [(WFFocusConfigurationViewController *)self installRemoteViewController:v19];
  }

  [v11 removeFromParentViewController];

LABEL_9:
}

- (void)showErrorMessage:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v8 = "[WFFocusConfigurationViewController showErrorMessage:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_ERROR, "%s Failing with error %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WFFocusConfigurationViewController_showErrorMessage___block_invoke;
  block[3] = &unk_1E83086B0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__WFFocusConfigurationViewController_showErrorMessage___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v27 = WFLocalizedString(@"Could not load Focus Filter");
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] systemRedColor];
  v33[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v30 = [v2 configurationWithPaletteColors:v4];

  v29 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB978] weight:3 scale:60.0];
  v28 = [v30 configurationByApplyingConfiguration:v29];
  v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:v28];
  v25 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v25 setImage:v26];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v5 setText:v27];
  v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:15.0];
  [v5 setFont:v6];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v24 = v5;
  [v5 setTextColor:v7];

  [*(a1 + 32) clearAllViews];
  v8 = objc_alloc(MEMORY[0x1E69DCF90]);
  v32[0] = v25;
  v32[1] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v10 = [v8 initWithArrangedSubviews:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAxis:1];
  [v10 setSpacing:25.0];
  [v10 setDistribution:0];
  [v10 setAlignment:3];
  v11 = [*(a1 + 32) view];
  [v11 addSubview:v10];

  [*(a1 + 32) setErrorStackView:v10];
  v21 = MEMORY[0x1E696ACD8];
  v22 = [v10 centerYAnchor];
  v23 = [*(a1 + 32) view];
  v12 = [v23 layoutMarginsGuide];
  v13 = [v12 centerYAnchor];
  v14 = [v22 constraintEqualToAnchor:v13];
  v31[0] = v14;
  v15 = [v10 centerXAnchor];
  v16 = [*(a1 + 32) view];
  v17 = [v16 layoutMarginsGuide];
  v18 = [v17 centerXAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];
  v31[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v21 activateConstraints:v20];
}

- (void)clearAllViews
{
  v3 = [(WFFocusConfigurationViewController *)self activityIndicator];
  [v3 removeFromSuperview];

  [(WFFocusConfigurationViewController *)self setActivityIndicator:0];
}

- (void)loadFocusConfigurationRemoteViewController
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E0F20];
  v13 = 0;
  v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    objc_initWeak(location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke;
    v11[3] = &unk_1E83083A8;
    objc_copyWeak(&v12, location);
    [v4 setRequestCancellationBlock:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_3;
    v9[3] = &unk_1E83083F8;
    objc_copyWeak(&v10, location);
    [v4 setRequestInterruptionBlock:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_68;
    v7[3] = &unk_1E8307B78;
    objc_copyWeak(&v8, location);
    [v4 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = getWFFocusConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[WFFocusConfigurationViewController loadFocusConfigurationRemoteViewController]";
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_ERROR, "%s Failed to load a Focus Filter Extension: %{public}@", location, 0x16u);
    }

    [(WFFocusConfigurationViewController *)self showErrorMessage:v5];
  }
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_2;
  v6[3] = &unk_1E8307ED8;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_4;
  block[3] = &unk_1E83083D0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_68(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v6;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = getWFFocusConfigurationLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[WFFocusConfigurationViewController loadFocusConfigurationRemoteViewController]_block_invoke";
      _os_log_impl(&dword_1C830A000, v10, OS_LOG_TYPE_INFO, "%s Loading Focus Extension succeeded", buf, 0xCu);
    }

    v11 = [WeakRetained request];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_70;
    v14[3] = &unk_1E8307B50;
    v14[4] = WeakRetained;
    v15 = v9;
    v12 = v9;
    [v12 startConfigurationWithRequest:v11 completion:v14];
  }

  else
  {

    v13 = getWFFocusConfigurationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFFocusConfigurationViewController loadFocusConfigurationRemoteViewController]_block_invoke";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_ERROR, "%s Loading Focus Extension failed with error: %{public}@", buf, 0x16u);
    }

    [WeakRetained showErrorMessage:v7];
  }
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_70(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFFocusConfigurationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFFocusConfigurationViewController loadFocusConfigurationRemoteViewController]_block_invoke";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_ERROR, "%s Failed to start configuration with error: %{public}@", &v5, 0x16u);
    }

    [*(a1 + 32) showErrorMessage:v3];
  }

  else
  {
    [*(a1 + 32) embedRemoteViewController:*(a1 + 40) withExtension:0 extensionRequest:0];
  }
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFFocusConfigurationLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[WFFocusConfigurationViewController loadFocusConfigurationRemoteViewController]_block_invoke_4";
    _os_log_impl(&dword_1C830A000, v2, OS_LOG_TYPE_ERROR, "%s Extension connection was interrupted", &v3, 0xCu);
  }

  [WeakRetained showErrorMessage:0];
}

void __80__WFFocusConfigurationViewController_loadFocusConfigurationRemoteViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showErrorMessage:*(a1 + 32)];
}

- (void)loadFocusConfigurationUI
{
  v3 = [(WFFocusConfigurationViewController *)self request];
  v4 = [v3 action];
  v5 = v4 == 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke;
  aBlock[3] = &unk_1E83084B8;
  aBlock[4] = self;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(WFFocusConfigurationViewController *)self request];
  v8 = [v7 actionIdentifier];
  v9 = [v8 bundleIdentifier];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v9];
  if (![v10 isHidden])
  {
    if ([v10 isLocked])
    {
      v11 = [MEMORY[0x1E698B0D8] sharedGuard];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke_3;
      v12[3] = &unk_1E8307B28;
      v12[4] = self;
      v13 = v6;
      [v11 authenticateForSubject:v10 completion:v12];

      goto LABEL_6;
    }

LABEL_8:
    v6[2](v6);
    goto LABEL_9;
  }

  [(WFFocusConfigurationViewController *)self showErrorMessage:0];
LABEL_6:

LABEL_9:
}

void __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) request];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke_2;
  v3[3] = &unk_1E8307B00;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 loadFocusActionWithCompletion:v3];
}

uint64_t __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) showErrorMessage:?];
  }
}

void __62__WFFocusConfigurationViewController_loadFocusConfigurationUI__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 showErrorMessage:a2];
  }

  else
  {
    [v3 loadFocusConfigurationRemoteViewController];
    if (*(a1 + 40) == 1)
    {
      v4 = [WFFocusConfigurationUIState alloc];
      v5 = [*(a1 + 32) request];
      v6 = [v5 action];
      v7 = [(WFFocusConfigurationUIState *)v4 initWithEnabled:1 uiValidity:1 action:v6 displayRepresentation:0];

      [*(a1 + 32) notifyDelegateWithUIState:v7];
    }
  }
}

- (void)viewDidLoad
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = WFFocusConfigurationViewController;
  [(WFFocusConfigurationViewController *)&v20 viewDidLoad];
  v3 = [(WFFocusConfigurationViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(WFFocusConfigurationViewController *)self view];
  [v5 addSubview:v4];

  [v4 startAnimating];
  [(WFFocusConfigurationViewController *)self setActivityIndicator:v4];
  v15 = MEMORY[0x1E696ACD8];
  v19 = [(WFFocusConfigurationViewController *)self activityIndicator];
  v17 = [v19 centerXAnchor];
  v18 = [(WFFocusConfigurationViewController *)self view];
  v16 = [v18 layoutMarginsGuide];
  v6 = [v16 centerXAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v21[0] = v7;
  v8 = [(WFFocusConfigurationViewController *)self activityIndicator];
  v9 = [v8 centerYAnchor];
  v10 = [(WFFocusConfigurationViewController *)self view];
  v11 = [v10 layoutMarginsGuide];
  v12 = [v11 centerYAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];
  v21[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v15 activateConstraints:v14];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = WFFocusConfigurationViewController;
  [(WFFocusConfigurationViewController *)&v5 loadView];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v4 = [(WFFocusConfigurationViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)dealloc
{
  v3 = [(WFFocusConfigurationViewController *)self extension];
  v4 = [(WFFocusConfigurationViewController *)self extensionRequest];
  [v3 cancelExtensionRequestWithIdentifier:v4];

  v5.receiver = self;
  v5.super_class = WFFocusConfigurationViewController;
  [(WFFocusConfigurationViewController *)&v5 dealloc];
}

- (WFFocusConfigurationViewController)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFFocusConfigurationViewController;
  v6 = [(WFFocusConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    [(WFFocusConfigurationViewController *)v7 loadFocusConfigurationUI];
    v8 = v7;
  }

  return v7;
}

- (WFFocusConfigurationViewController)initWithContextualActionOptions:(id)a3
{
  v4 = a3;
  v5 = [[WFFocusConfigurationRequest alloc] initWithContextualActionOptions:v4];

  v6 = [(WFFocusConfigurationViewController *)self initWithRequest:v5];
  return v6;
}

- (WFFocusConfigurationViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [[WFFocusConfigurationRequest alloc] initWithOptions:v4];

  v6 = [(WFFocusConfigurationViewController *)self initWithRequest:v5];
  return v6;
}

@end