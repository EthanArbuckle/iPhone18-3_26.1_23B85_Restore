@interface _SBSUICFUserNotificationContentRemoteContainerViewController
- (id)userNotificationContentExtensionContext;
- (void)_trackChildViewController:(id)a3;
- (void)_updatePreferredContentSizeAndLayoutChildViewController;
- (void)addChildViewController:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)configureWithCompletion:(id)a3;
- (void)invalidateWithCompletion:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _SBSUICFUserNotificationContentRemoteContainerViewController

- (void)configureWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  if (!v6)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)a2 configureWithCompletion:?];
  }

  v7 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = self;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Received configuration request.", buf, 0xCu);
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __88___SBSUICFUserNotificationContentRemoteContainerViewController_configureWithCompletion___block_invoke;
  v13 = &unk_1E789DB90;
  v14 = self;
  v8 = v5;
  v15 = v8;
  v9 = MEMORY[0x1AC58E960](&v10);
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setPreferredContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v10, v11, v12, v13, v14];
  if (objc_opt_respondsToSelector())
  {
    [v6 configureWithCompletion:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)invalidateWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBSUIUserNotificationContentProviding *)self->_extensionViewController _appearState]- 1;
  if (v5 <= 1)
  {
    [(SBSUIUserNotificationContentProviding *)self->_extensionViewController beginAppearanceTransition:0 animated:0];
  }

  v6 = [(SBSUIUserNotificationContentProviding *)self->_extensionViewController parentViewController];

  if (v6)
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
    v14 = self;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Received invalidate.", buf, 0xCu);
  }

  v8 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  if (objc_opt_respondsToSelector())
  {
    [v8 invalidate];
  }

  v9 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___SBSUICFUserNotificationContentRemoteContainerViewController_invalidateWithCompletion___block_invoke;
  v11[3] = &unk_1E789DBE0;
  v12 = v4;
  v10 = v4;
  [v9 completeRequestReturningItems:0 completionHandler:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v5 viewWillAppear:a3];
  v4 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "<%p> View will appear.", buf, 0xCu);
  }

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)viewDidLoad
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBSUICFUserNotificationContentRemoteContainerViewController.m" lineNumber:115 description:@"We require an extension view controller at viewDidLoad."];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "<%p> View did disappear.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v6 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v3 viewDidLayoutSubviews];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)addChildViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  v4 = a3;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v5 addChildViewController:v4];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _trackChildViewController:v4, v5.receiver, v5.super_class];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 preferredContentSize];
    v6 = NSStringFromCGSize(v13);
    *buf = 134218242;
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "<%p> Child content's preferred content size did change to %{public}@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:v4];
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _updatePreferredContentSizeAndLayoutChildViewController];
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _SBSUICFUserNotificationContentRemoteContainerViewController;
  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&v6 beginRequestWithExtensionContext:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_SBSUICFUserNotificationContentRemoteContainerViewController *)v4 beginRequestWithExtensionContext:v5];
    }
  }
}

- (id)userNotificationContentExtensionContext
{
  v3 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionContext];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_trackChildViewController:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_extensionViewController)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)&self->_extensionViewController _trackChildViewController:a2, self, v5];
  }

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setExtensionViewController:v5];
  v6 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self userNotificationContentExtensionContext];
  v7 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self _remoteViewControllerProxy];
  [v6 setHostService:v7];

  v8 = [v5 conformsToProtocol:&unk_1F1E070A8];
  v9 = [v5 conformsToProtocol:&unk_1F1E07018];
  if ((v8 & 1) == 0 && (v9 & 1) == 0)
  {
    [(_SBSUICFUserNotificationContentRemoteContainerViewController *)a2 _trackChildViewController:v5];
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

    v15 = self;
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
  v3 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  [v3 preferredContentSize];
  v5 = v4;
  v7 = v6;

  [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self setPreferredContentSize:v5, v7];
  v10 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self extensionViewController];
  v8 = [v10 view];
  v9 = [(_SBSUICFUserNotificationContentRemoteContainerViewController *)self view];
  [v9 bounds];
  [v8 setFrame:?];
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