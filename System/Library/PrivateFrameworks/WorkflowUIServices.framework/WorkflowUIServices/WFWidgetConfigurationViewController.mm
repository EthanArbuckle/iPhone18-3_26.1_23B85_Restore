@interface WFWidgetConfigurationViewController
- (WFWidgetConfigurationView)configurationView;
- (WFWidgetConfigurationViewController)initWithCoder:(id)coder;
- (WFWidgetConfigurationViewController)initWithOptions:(id)options;
- (WFWidgetConfigurationViewController)initWithRequest:(id)request;
- (WFWidgetConfigurationViewControllerDelegate)delegate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)finishWithCurrentConfiguration;
- (void)installRemoteViewController:(id)controller;
- (void)loadView;
- (void)loadWidgetConfigurationRemoteViewController;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setRemoteViewController:(id)controller extension:(id)extension extensionRequest:(id)request;
- (void)showErrorMessage;
- (void)viewDidLoad;
- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)cancel;
- (void)widgetConfigurationRemoteViewController:(id)controller didReceiveConfiguredIntent:(id)intent;
- (void)widgetConfigurationRemoteViewController:(id)controller preferredContentSizeDidChange:(CGSize)change;
- (void)widgetConfigurationRemoteViewControllerCancelled:(id)cancelled;
@end

@implementation WFWidgetConfigurationViewController

- (WFWidgetConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  remoteViewController = [(WFWidgetConfigurationViewController *)self remoteViewController];
  if (remoteViewController == containerCopy)
  {
    [(WFWidgetConfigurationViewController *)self preferredContentSize];
    v6 = v5;
    v8 = v7;
    [containerCopy preferredContentSize];
    v10 = v9;
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      goto LABEL_9;
    }

    [containerCopy preferredContentSize];
    [(WFWidgetConfigurationViewController *)self setPreferredContentSize:?];
    delegate = [(WFWidgetConfigurationViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    remoteViewController = [(WFWidgetConfigurationViewController *)self delegate];
    [containerCopy preferredContentSize];
    [remoteViewController widgetConfigurationViewController:self preferredContentSizeDidChange:?];
  }

LABEL_9:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  request = [(WFWidgetConfigurationViewController *)self request];
  [coderCopy encodeObject:request forKey:@"request"];
}

- (WFWidgetConfigurationViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];

  if (v5)
  {
    self = [(WFWidgetConfigurationViewController *)self initWithRequest:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)widgetConfigurationRemoteViewControllerCancelled:(id)cancelled
{
  delegate = [(WFWidgetConfigurationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    [(WFWidgetConfigurationViewController *)self setCancelled:1];
    delegate2 = [(WFWidgetConfigurationViewController *)self delegate];
    [delegate2 widgetConfigurationViewControllerDidCancel:self];
  }
}

- (void)widgetConfigurationRemoteViewController:(id)controller preferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  delegate = [(WFWidgetConfigurationViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFWidgetConfigurationViewController *)self delegate];
    [delegate2 widgetConfigurationViewController:self preferredContentSizeDidChange:{width, height}];
  }
}

- (void)widgetConfigurationRemoteViewController:(id)controller didReceiveConfiguredIntent:(id)intent
{
  intentCopy = intent;
  delegate = [(WFWidgetConfigurationViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFWidgetConfigurationViewController *)self delegate];
    [delegate2 widgetConfigurationViewController:self didFinishWithIntent:intentCopy];
  }
}

- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)cancel
{
  remoteViewController = [(WFWidgetConfigurationViewController *)self remoteViewController];
  if (remoteViewController)
  {
    [remoteViewController requestViewControllerCancel];
  }

  delegate = [(WFWidgetConfigurationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFWidgetConfigurationViewController *)self delegate];
    [delegate2 widgetConfigurationViewControllerDidCancel:self];
  }
}

- (void)finishWithCurrentConfiguration
{
  remoteViewController = [(WFWidgetConfigurationViewController *)self remoteViewController];
  v7 = remoteViewController;
  if (remoteViewController)
  {
    [remoteViewController requestViewControllerDismissal];
  }

  else
  {
    delegate = [(WFWidgetConfigurationViewController *)self delegate];
    request = [(WFWidgetConfigurationViewController *)self request];
    intent = [request intent];
    [delegate widgetConfigurationViewController:self didFinishWithIntent:intent];
  }
}

- (void)installRemoteViewController:(id)controller
{
  v16 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(WFWidgetConfigurationViewController *)self addChildViewController:controllerCopy];
  }

  v5 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[WFWidgetConfigurationViewController installRemoteViewController:]";
    v14 = 2112;
    v15 = controllerCopy;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEBUG, "%s Installing Widget Configuration Remote View Controller: %@", &v12, 0x16u);
  }

  view = [controllerCopy view];
  view2 = [(WFWidgetConfigurationViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  configurationView = [(WFWidgetConfigurationViewController *)self configurationView];
  [configurationView overridingCardViewFrame];
  [controllerCopy setConfigurationCardViewFrame:?];

  view3 = [(WFWidgetConfigurationViewController *)self view];
  [view3 insertSubview:view atIndex:0];

  containerViewController = [(WFWidgetConfigurationViewController *)self containerViewController];
  view4 = [containerViewController view];
  [view4 setHidden:1];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)setRemoteViewController:(id)controller extension:(id)extension extensionRequest:(id)request
{
  controllerCopy = controller;
  extensionCopy = extension;
  requestCopy = request;
  if (self->_remoteViewController != controllerCopy)
  {
    remoteViewController = [(WFWidgetConfigurationViewController *)self remoteViewController];
    [remoteViewController willMoveToParentViewController:0];
    extension = self->_extension;
    if (extension != extensionCopy || self->_extensionRequest != requestCopy)
    {
      [(NSExtension *)extension cancelExtensionRequestWithIdentifier:?];
    }

    [(WFWidgetConfigurationRemoteViewController *)self->_remoteViewController setDelegate:0];
    objc_storeStrong(&self->_extension, extension);
    objc_storeStrong(&self->_extensionRequest, request);
    objc_storeStrong(&self->_remoteViewController, controller);
    [(WFWidgetConfigurationRemoteViewController *)self->_remoteViewController setDelegate:self];
    if (!controllerCopy)
    {
      request = [(WFWidgetConfigurationViewController *)self request];
      [request defaultCardSize];
      [(WFWidgetConfigurationViewController *)self setPreferredContentSize:?];
    }

    if ([(WFWidgetConfigurationViewController *)self isViewLoaded])
    {
      view = [remoteViewController view];
      [view removeFromSuperview];

      [(WFWidgetConfigurationViewController *)self installRemoteViewController:controllerCopy];
    }

    [remoteViewController removeFromParentViewController];
  }
}

- (void)loadWidgetConfigurationRemoteViewController
{
  v9 = *MEMORY[0x1E69E9840];
  request = [(WFWidgetConfigurationViewController *)self request];

  if (request)
  {
    request2 = [(WFWidgetConfigurationViewController *)self request];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke;
    v6[3] = &unk_1E8308470;
    v6[4] = self;
    [request2 loadWidgetExtensionInformationWithCompletion:v6];
  }

  else
  {
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v8 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]";
    }
  }
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_2;
  v6[3] = &unk_1E83086D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v34 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]_block_invoke_2";
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&dword_1C830A000, v2, OS_LOG_TYPE_ERROR, "%s Loading Widget Extension Information error: %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) showErrorMessage];
  }

  else
  {
    if ([*(a1 + 40) isViewLoaded])
    {
      v4 = [*(a1 + 40) request];
      v5 = [v4 widgetPrimaryColor];
      v6 = v5;
      if (!v5)
      {
        v6 = [MEMORY[0x1E69DC888] wf_defaultWidgetConfigurationCardBackgroundColor];
      }

      v7 = [*(a1 + 40) containerViewController];
      [v7 setContainerBackgroundColor:v6];

      if (!v5)
      {
      }

      v8 = [*(a1 + 40) request];
      v9 = [v8 widgetTintColor];
      v10 = [*(a1 + 40) view];
      [v10 setTintColor:v9];

      v11 = [*(a1 + 40) containerViewController];
      v12 = [v11 containerBackgroundColor];
      v13 = [*(a1 + 40) traitCollection];
      v14 = [v12 resolvedColorWithTraitCollection:v13];

      if (WFCGColorPerceivedLightness([v14 CGColor]) > 0.7)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      v16 = [*(a1 + 40) containerViewController];
      v17 = [v16 view];
      v18 = [v17 traitCollection];
      v19 = [v18 userInterfaceStyle];

      if (v19 != v15)
      {
        v20 = [*(a1 + 40) containerViewController];
        v21 = [v20 view];
        [v21 setOverrideUserInterfaceStyle:v15];
      }
    }

    v22 = *MEMORY[0x1E69E0F58];
    v32 = 0;
    v23 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v22 error:&v32];
    v24 = v32;
    if (v23)
    {
      objc_initWeak(buf, *(a1 + 40));
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_72;
      v30[3] = &unk_1E83083A8;
      objc_copyWeak(&v31, buf);
      [v23 setRequestCancellationBlock:v30];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_3;
      v28[3] = &unk_1E83083F8;
      objc_copyWeak(&v29, buf);
      [v23 setRequestInterruptionBlock:v28];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_77;
      v25[3] = &unk_1E8308448;
      objc_copyWeak(&v27, buf);
      v26 = v23;
      [v26 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    else
    {
      [*(a1 + 40) showErrorMessage];
    }
  }
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isCancelled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_2_73;
    block[3] = &unk_1E83086B0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_4;
  block[3] = &unk_1E83083D0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_77(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = v8;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]_block_invoke";
      _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_INFO, "%s Loading Widget Extension succeed", buf, 0xCu);
    }

    v13 = [WeakRetained request];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_79;
    v16[3] = &unk_1E8308420;
    v17 = v11;
    v18 = WeakRetained;
    v19 = *(a1 + 32);
    v20 = v7;
    v14 = v11;
    [v14 startConfigurationWithRequest:v13 completion:v16];
  }

  else
  {

    v15 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]_block_invoke";
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1C830A000, v15, OS_LOG_TYPE_ERROR, "%s Loading Widget Extension failed with error: %{public}@", buf, 0x16u);
    }

    [WeakRetained showErrorMessage];
  }
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_79(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) disconnect];
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]_block_invoke";
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_ERROR, "%s Loading Widget Extension failed with error: %{public}@", &v6, 0x16u);
    }

    [*(a1 + 40) showErrorMessage];
  }

  else
  {
    [*(a1 + 40) setRemoteViewController:*(a1 + 32) extension:*(a1 + 48) extensionRequest:*(a1 + 56)];
  }
}

void __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[WFWidgetConfigurationViewController loadWidgetConfigurationRemoteViewController]_block_invoke_4";
    _os_log_impl(&dword_1C830A000, v2, OS_LOG_TYPE_ERROR, "%s Extenstion extension connection was interrupted", &v3, 0xCu);
  }

  [WeakRetained showErrorMessage];
}

uint64_t __82__WFWidgetConfigurationViewController_loadWidgetConfigurationRemoteViewController__block_invoke_2_73(uint64_t a1)
{
  [*(a1 + 32) setCancelled:1];
  v2 = *(a1 + 32);

  return [v2 showErrorMessage];
}

- (void)showErrorMessage
{
  [(WFWidgetConfigurationViewController *)self setRemoteViewController:0 extension:0 extensionRequest:0];
  containerViewController = [(WFWidgetConfigurationViewController *)self containerViewController];
  view = [containerViewController view];
  [view setHidden:0];

  loadingContentViewController = [(WFWidgetConfigurationViewController *)self loadingContentViewController];
  v5 = WFLocalizedStringFromTable(@"Unable to Load", @"WidgetConfiguration");
  [loadingContentViewController showMessage:v5];
}

- (void)dealloc
{
  extension = [(WFWidgetConfigurationViewController *)self extension];
  extensionRequest = [(WFWidgetConfigurationViewController *)self extensionRequest];
  [extension cancelExtensionRequestWithIdentifier:extensionRequest];

  v5.receiver = self;
  v5.super_class = WFWidgetConfigurationViewController;
  [(WFWidgetConfigurationViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFWidgetConfigurationViewController;
  [(WFWidgetConfigurationViewController *)&v4 viewDidLoad];
  request = [(WFWidgetConfigurationViewController *)self request];

  if (!request)
  {
    [(WFWidgetConfigurationViewController *)self showErrorMessage];
  }
}

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = WFWidgetConfigurationViewController;
  [(WFWidgetConfigurationViewController *)&v23 loadView];
  v3 = objc_alloc_init(WFWidgetConfigurationLoadingContentViewController);
  loadingContentViewController = self->_loadingContentViewController;
  self->_loadingContentViewController = v3;

  v5 = [WFWidgetConfigurationCardContainerViewController alloc];
  request = [(WFWidgetConfigurationViewController *)self request];
  loadingContentViewController = [(WFWidgetConfigurationViewController *)self loadingContentViewController];
  v8 = [(WFWidgetConfigurationCardContainerViewController *)v5 initWithRequest:request contentViewController:loadingContentViewController];
  containerViewController = self->_containerViewController;
  self->_containerViewController = v8;

  containerViewController = [(WFWidgetConfigurationViewController *)self containerViewController];
  [(WFWidgetConfigurationViewController *)self addChildViewController:containerViewController];

  containerViewController2 = [(WFWidgetConfigurationViewController *)self containerViewController];
  view = [containerViewController2 view];

  view2 = [(WFWidgetConfigurationViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(WFWidgetConfigurationViewController *)self view];
  [view3 addSubview:view];

  containerViewController3 = [(WFWidgetConfigurationViewController *)self containerViewController];
  [containerViewController3 didMoveToParentViewController:self];

  containerViewController4 = [(WFWidgetConfigurationViewController *)self containerViewController];
  [containerViewController4 setContainerDelegate:self];

  containerViewController5 = [(WFWidgetConfigurationViewController *)self containerViewController];
  [containerViewController5 preferredContentSize];
  [(WFWidgetConfigurationViewController *)self setPreferredContentSize:?];

  request2 = [(WFWidgetConfigurationViewController *)self request];
  widgetTintColor = [request2 widgetTintColor];
  view4 = [(WFWidgetConfigurationViewController *)self view];
  [view4 setTintColor:widgetTintColor];

  remoteViewController = [(WFWidgetConfigurationViewController *)self remoteViewController];

  if (remoteViewController)
  {
    remoteViewController2 = [(WFWidgetConfigurationViewController *)self remoteViewController];
    [(WFWidgetConfigurationViewController *)self installRemoteViewController:remoteViewController2];
  }
}

- (WFWidgetConfigurationView)configurationView
{
  containerViewController = [(WFWidgetConfigurationViewController *)self containerViewController];
  view = [containerViewController view];

  if (view)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = view;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (WFWidgetConfigurationViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = WFWidgetConfigurationViewController;
  v6 = [(WFWidgetConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    if (([requestCopy resolvedWidgetConfigurationStyle] & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [(WFWidgetConfigurationViewController *)v7 setModalPresentationStyle:6];
    }

    [(WFWidgetConfigurationViewController *)v7 loadWidgetConfigurationRemoteViewController];
    v8 = v7;
  }

  return v7;
}

- (WFWidgetConfigurationViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [[WFWidgetConfigurationRequest alloc] initWithOptions:optionsCopy];

  v6 = [(WFWidgetConfigurationViewController *)self initWithRequest:v5];
  return v6;
}

@end