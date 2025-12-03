@interface _SBSUICFUserNotificationContentRemoteContainerViewController
- (id)userNotificationContentExtensionContext;
- (void)_trackChildViewController:(id)controller;
- (void)_updatePreferredContentSizeAndLayoutChildViewController;
- (void)addChildViewController:(id)controller;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)configureWithCompletion:(id)completion;
- (void)invalidateWithCompletion:(id)completion;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _SBSUICFUserNotificationContentRemoteContainerViewController

- (void)configureWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  extensionViewController = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  if (!extensionViewController)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)a2 configureWithCompletion:?];
  }

  v7 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Received configuration request.", buf, 0xCu);
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __88___SBSUICFUserNotificationContentRemoteContainerViewController_configureWithCompletion___block_invoke;
  v13 = &unk_1E789DB90;
  selfCopy2 = self;
  v8 = completionCopy;
  v15 = v8;
  v9 = MEMORY[0x1AC58E960](&v10);
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setPreferredContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v10, v11, v12, v13, selfCopy2];
  if (objc_opt_respondsToSelector())
  {
    [extensionViewController configureWithCompletion:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)invalidateWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [(SBSUIUserNotificationContentProviding *)self->_extensionViewController _appearState]- 1;
  if (v5 <= 1)
  {
    [(SBSUIUserNotificationContentProviding *)self->_extensionViewController beginAppearanceTransition:0 animated:0];
  }

  parentViewController = [(SBSUIUserNotificationContentProviding *)self->_extensionViewController parentViewController];

  if (parentViewController)
  {
    [(SBSUIUserNotificationContentProviding *)self->_extensionViewController removeFromParentViewController];
  }

  if (v5 <= 1)
  {
    [(SBSUIUserNotificationContentProviding *)self->_extensionViewController endAppearanceTransition];
  }

  v7 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Received invalidate.", buf, 0xCu);
  }

  extensionViewController = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  if (objc_opt_respondsToSelector())
  {
    [extensionViewController invalidate];
  }

  extensionContext = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___SBSUICFUserNotificationContentRemoteContainerViewController_invalidateWithCompletion___block_invoke;
  v11[3] = &unk_1E789DBE0;
  v12 = completionCopy;
  v10 = completionCopy;
  [extensionContext completeRequestReturningItems:0 completionHandler:v11];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v5 viewWillAppear:appear];
  v4 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "<%p> View will appear.", buf, 0xCu);
  }

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)viewDidLoad
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBSUICFUserNotificationContentRemoteContainerViewController.m" lineNumber:115 description:@"We require an extension view controller at viewDidLoad."];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9 = *MEMORY[0x1E69E9840];
  v5 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "<%p> View did disappear.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v3 viewDidLayoutSubviews];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)addChildViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  controllerCopy = controller;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v5 addChildViewController:controllerCopy];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _trackChildViewController:controllerCopy, v5.receiver, v5.super_class];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v12 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v5 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [containerCopy preferredContentSize];
    v6 = NSStringFromCGSize(v13);
    *buf = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Child content's preferred content size did change to %{public}@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v6 beginRequestWithExtensionContext:contextCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_SBSUICFUserNotificationContentRemoteContainerViewController *)contextCopy beginRequestWithExtensionContext:v5];
    }
  }
}

- (id)userNotificationContentExtensionContext
{
  extensionContext = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    extensionContext2 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  }

  else
  {
    extensionContext2 = 0;
  }

  return extensionContext2;
}

- (void)_trackChildViewController:(id)controller
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_extensionViewController)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&self->_extensionViewController _trackChildViewController:a2, self, controllerCopy];
  }

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setExtensionViewController:controllerCopy];
  userNotificationContentExtensionContext = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self userNotificationContentExtensionContext];
  _remoteViewControllerProxy = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _remoteViewControllerProxy];
  [userNotificationContentExtensionContext setHostService:_remoteViewControllerProxy];

  v8 = [controllerCopy conformsToProtocol:&unk_1F1E070A8];
  v9 = [controllerCopy conformsToProtocol:&unk_1F1E07018];
  if ((v8 & 1) == 0 && (v9 & 1) == 0)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)a2 _trackChildViewController:controllerCopy];
  }

  self->_isLegacyContentViewController = v8;
  v10 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isLegacyContentViewController = self->_isLegacyContentViewController;
    extensionViewController = self->_extensionViewController;
    v14 = 134218754;
    if (isLegacyContentViewController)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    selfCopy = self;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = extensionViewController;
    v20 = 2112;
    v21 = extensionViewController;
    _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Extension view controller initialized (legacy=%{public}@): %p - %@", &v14, 0x2Au);
  }
}

- (void)_updatePreferredContentSizeAndLayoutChildViewController
{
  extensionViewController = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  [extensionViewController preferredContentSize];
  v5 = v4;
  v7 = v6;

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setPreferredContentSize:v5, v7];
  extensionViewController2 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  view = [extensionViewController2 view];
  view2 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)configureWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBSUICFUserNotificationContentRemoteContainerViewController.m" lineNumber:53 description:@"Extension view controller must exist to continue."];
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "Unexpected extension context class %@", &v5, 0xCu);
}

- (void)_trackChildViewController:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"_SBSUICFUserNotificationContentRemoteContainerViewController.m" lineNumber:170 description:{@"Cannot have an existing extension view controller for this extension.  Existing = %@, New: %@", *a1, a4}];
}

- (void)_trackChildViewController:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_SBSUICFUserNotificationContentRemoteContainerViewController.m" lineNumber:177 description:{@"CFUserNotification content extension view controller (%@) must extend and support the current interface protocol: <SBSUIUserNotificationContentProviding>.", a3}];
}

@end