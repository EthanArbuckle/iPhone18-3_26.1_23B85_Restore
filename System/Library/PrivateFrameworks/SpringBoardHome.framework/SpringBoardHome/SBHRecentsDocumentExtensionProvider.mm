@interface SBHRecentsDocumentExtensionProvider
- (CGSize)compactPreferredContentSize;
- (SBHRecentsDocumentExtensionProvider)init;
- (SBHRecentsDocumentExtensionProviderDelegate)delegate;
- (id)_viewControllerConfiguration:(id)configuration;
- (id)recentsDocumentViewControllerForBundleIdentifier:(id)identifier;
- (void)_extensionWillExit:(id)exit;
- (void)_loadExtensionWithCompletion:(id)completion;
- (void)_loadRemoteViewControllerWithConfiguration:(id)configuration;
- (void)_setupHostViewController:(id)controller;
- (void)_teardownHostViewController;
- (void)dealloc;
- (void)popoverHostExtensionDidExit:(id)exit;
- (void)popoverHostExtensionRequestsDismiss:(id)dismiss;
@end

@implementation SBHRecentsDocumentExtensionProvider

- (SBHRecentsDocumentExtensionProvider)init
{
  v7.receiver = self;
  v7.super_class = SBHRecentsDocumentExtensionProvider;
  v2 = [(SBHRecentsDocumentExtensionProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SBHRecentsDocumentExtensionProvider *)v2 _loadExtensionWithCompletion:0];
    v4 = objc_opt_new();
    wrappingViewController = v3->_wrappingViewController;
    v3->_wrappingViewController = v4;

    [(SBHRecentsDocumentExtensionWrappingViewController *)v3->_wrappingViewController setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(SBHRecentsDocumentExtensionProvider *)self _teardownHostViewController];
  v3.receiver = self;
  v3.super_class = SBHRecentsDocumentExtensionProvider;
  [(SBHRecentsDocumentExtensionProvider *)&v3 dealloc];
}

- (id)recentsDocumentViewControllerForBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  hostViewController = [(SBHRecentsDocumentExtensionProvider *)self hostViewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__SBHRecentsDocumentExtensionProvider_recentsDocumentViewControllerForBundleIdentifier___block_invoke;
  aBlock[3] = &unk_1E808B820;
  v7 = identifierCopy;
  v26 = v7;
  v8 = _Block_copy(aBlock);
  if (hostViewController)
  {
    remoteService = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
    v8[2](v8, remoteService);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v27[0] = wrappingViewController;
    v27[1] = hostViewController;
    extension = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, 0}];
    v11 = [extension countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(extension);
          }

          view = [*(*(&v19 + 1) + 8 * i) view];
          [view frame];
          [view setFrame:?];
          [view setNeedsLayout];
          [view setNeedsUpdateConstraints];
          [view layoutIfNeeded];
        }

        v12 = [extension countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v12);
    }
  }

  else
  {
    extension = [(SBHRecentsDocumentExtensionProvider *)self extension];
    if (extension)
    {
      [(SBHRecentsDocumentExtensionProvider *)self _loadRemoteViewControllerWithConfiguration:v8];
    }

    else
    {
      v16 = SBLogRecentsDocumentExtension();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBHRecentsDocumentExtensionProvider recentsDocumentViewControllerForBundleIdentifier:];
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __88__SBHRecentsDocumentExtensionProvider_recentsDocumentViewControllerForBundleIdentifier___block_invoke_13;
      v23[3] = &unk_1E808B3C0;
      v23[4] = self;
      v24 = v8;
      [(SBHRecentsDocumentExtensionProvider *)self _loadExtensionWithCompletion:v23];
    }
  }

  v17 = wrappingViewController;
  return wrappingViewController;
}

- (void)popoverHostExtensionRequestsDismiss:(id)dismiss
{
  delegate = [(SBHRecentsDocumentExtensionProvider *)self delegate];
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  [delegate recentsDocumentExtensionViewControllerRequestsDismiss:wrappingViewController];
}

- (void)popoverHostExtensionDidExit:(id)exit
{
  [(SBHRecentsDocumentExtensionProvider *)self _extensionWillExit:exit];
  delegate = [(SBHRecentsDocumentExtensionProvider *)self delegate];
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  [delegate recentsDocumentExtensionViewControllerRequestsDismiss:wrappingViewController];
}

- (void)_extensionWillExit:(id)exit
{
  exitCopy = exit;
  delegate = [(SBHRecentsDocumentExtensionProvider *)self delegate];
  [delegate recentsDocumentExtensionViewControllerRequestsDismiss:exitCopy];

  [(SBHRecentsDocumentExtensionProvider *)self setExtension:0];

  [(SBHRecentsDocumentExtensionProvider *)self _teardownHostViewController];
}

- (void)_loadExtensionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  [v5 setObject:@"com.apple.internal.springboard.app-popover" forKeyedSubscript:*MEMORY[0x1E696A2F8]];
  _preferredExtensionIdentifier = [(SBHRecentsDocumentExtensionProvider *)self _preferredExtensionIdentifier];
  v7 = *MEMORY[0x1E696A2E0];
  [v5 setObject:_preferredExtensionIdentifier forKeyedSubscript:*MEMORY[0x1E696A2E0]];

  v21 = 0;
  v8 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v5 error:&v21];
  v9 = v21;
  if ([v8 count])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = SBLogRecentsDocumentExtension();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHRecentsDocumentExtensionProvider _loadExtensionWithCompletion:];
    }

    [v5 removeObjectForKey:v7];
    v20 = v9;
    v12 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v5 error:&v20];
    v13 = v20;

    v8 = v12;
  }

  firstObject = [v8 firstObject];
  [(SBHRecentsDocumentExtensionProvider *)self setExtension:firstObject];

  if (v13)
  {
    v15 = SBLogRecentsDocumentExtension();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHRecentsDocumentExtensionProvider _loadExtensionWithCompletion:];
    }
  }

  if (completionCopy)
  {
    extension = [(SBHRecentsDocumentExtensionProvider *)self extension];
    v17 = extension;
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = extension == 0;
    }

    v19 = !v18;
    completionCopy[2](completionCopy, v19);
  }
}

- (id)_viewControllerConfiguration:(id)configuration
{
  v24 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  hostViewController = [(SBHRecentsDocumentExtensionProvider *)self hostViewController];
  if (hostViewController)
  {
    remoteService = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
    configurationCopy[2](configurationCopy, remoteService);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v22[0] = wrappingViewController;
    v22[1] = hostViewController;
    extension = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:{2, 0}];
    v9 = [extension countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(extension);
          }

          view = [*(*(&v16 + 1) + 8 * i) view];
          [view frame];
          [view setFrame:?];
          [view setNeedsLayout];
          [view setNeedsUpdateConstraints];
          [view layoutIfNeeded];
        }

        v10 = [extension countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    extension = [(SBHRecentsDocumentExtensionProvider *)self extension];
    if (extension)
    {
      [(SBHRecentsDocumentExtensionProvider *)self _loadRemoteViewControllerWithConfiguration:configurationCopy];
    }

    else
    {
      v14 = SBLogRecentsDocumentExtension();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SBHRecentsDocumentExtensionProvider recentsDocumentViewControllerForBundleIdentifier:];
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__SBHRecentsDocumentExtensionProvider__viewControllerConfiguration___block_invoke;
      v20[3] = &unk_1E808B3C0;
      v20[4] = self;
      v21 = configurationCopy;
      [(SBHRecentsDocumentExtensionProvider *)self _loadExtensionWithCompletion:v20];
    }
  }

  return wrappingViewController;
}

- (void)_loadRemoteViewControllerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  extension = [(SBHRecentsDocumentExtensionProvider *)self extension];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke;
  v7[3] = &unk_1E808B868;
  objc_copyWeak(&v9, &location);
  v6 = configurationCopy;
  v8 = v6;
  [extension instantiateViewControllerWithInputItems:0 connectionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v10 = SBLogRecentsDocumentExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke_cold_1();
    }
  }

  else if (WeakRetained)
  {
    v11 = v6;
    v12 = [v11 serviceViewControllerProxyWithErrorHandler:&__block_literal_global_29];
    v13 = v9[5];
    v9[5] = v12;

    v14 = *(a1 + 32);
    v15 = [v9 remoteService];
    (*(v14 + 16))(v14, v15);

    [v9 _setupHostViewController:v11];
  }
}

void __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogRecentsDocumentExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke_18_cold_1();
  }
}

- (void)_setupHostViewController:(id)controller
{
  controllerCopy = controller;
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  if (!self->_hostViewController)
  {
    [wrappingViewController preferredContentSize];
    self->_compactPreferredContentSize.width = v5;
    self->_compactPreferredContentSize.height = v6;
  }

  [controllerCopy setDelegate:self];
  hostViewController = self->_hostViewController;
  self->_hostViewController = controllerCopy;
  v8 = controllerCopy;

  [wrappingViewController wrapRemoteViewController:v8];
}

- (void)_teardownHostViewController
{
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  [wrappingViewController wrapRemoteViewController:0];

  hostViewController = self->_hostViewController;
  self->_hostViewController = 0;

  remoteService = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
  [remoteService _invalidateSBUIPopoverExtension];
}

- (SBHRecentsDocumentExtensionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)compactPreferredContentSize
{
  width = self->_compactPreferredContentSize.width;
  height = self->_compactPreferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_loadExtensionWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadExtensionWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__SBHRecentsDocumentExtensionProvider__loadRemoteViewControllerWithConfiguration___block_invoke_18_cold_1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end