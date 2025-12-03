@interface SBHFileWidgetExtensionProvider
- (BOOL)_extensionHasTransparencyEntitlement:(id)entitlement;
- (SBHFileWidgetExtensionProvider)init;
- (id)filesWidgetViewControllerWithConfiguration:(id)configuration;
- (void)_setupHostViewController:(id)controller;
- (void)setWidgetConfiguration:(id)configuration;
@end

@implementation SBHFileWidgetExtensionProvider

- (SBHFileWidgetExtensionProvider)init
{
  v6.receiver = self;
  v6.super_class = SBHFileWidgetExtensionProvider;
  v2 = [(SBHRecentsDocumentExtensionProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    extension = [(SBHRecentsDocumentExtensionProvider *)v2 extension];
    if (extension)
    {
      v3->_widgetHasTransparentBackground = [(SBHFileWidgetExtensionProvider *)v3 _extensionHasTransparencyEntitlement:extension];
    }
  }

  return v3;
}

- (id)filesWidgetViewControllerWithConfiguration:(id)configuration
{
  v35 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  wrappingViewController = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  hostViewController = [(SBHRecentsDocumentExtensionProvider *)self hostViewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__SBHFileWidgetExtensionProvider_filesWidgetViewControllerWithConfiguration___block_invoke;
  aBlock[3] = &unk_1E808B820;
  v7 = configurationCopy;
  v32 = v7;
  v8 = _Block_copy(aBlock);
  if (hostViewController)
  {
    remoteService = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
    v8[2](v8, remoteService);

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v33[0] = wrappingViewController;
    v33[1] = hostViewController;
    extension = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:{2, 0}];
    v11 = [extension countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(extension);
          }

          view = [*(*(&v25 + 1) + 8 * i) view];
          [view frame];
          v17 = v16;
          v19 = v18;
          [(SBHRecentsDocumentExtensionProvider *)self compactPreferredContentSize];
          [view setFrame:{v17, v19, v20, v21}];
          [view setNeedsLayout];
          [view setNeedsUpdateConstraints];
          [view layoutIfNeeded];
        }

        v12 = [extension countByEnumeratingWithState:&v25 objects:v34 count:16];
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
      v22 = SBLogRecentsDocumentExtension();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SBHRecentsDocumentExtensionProvider recentsDocumentViewControllerForBundleIdentifier:];
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __77__SBHFileWidgetExtensionProvider_filesWidgetViewControllerWithConfiguration___block_invoke_129;
      v29[3] = &unk_1E808B3C0;
      v29[4] = self;
      v30 = v8;
      [(SBHRecentsDocumentExtensionProvider *)self _loadExtensionWithCompletion:v29];
    }
  }

  v23 = wrappingViewController;
  return wrappingViewController;
}

- (void)setWidgetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  remoteService = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
  [remoteService _updateForWidgetConfiguration:configurationCopy];
}

- (void)_setupHostViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SBHFileWidgetExtensionProvider;
  controllerCopy = controller;
  [(SBHRecentsDocumentExtensionProvider *)&v4 _setupHostViewController:controllerCopy];
  [controllerCopy setServiceViewShouldShareTouchesWithHost:{1, v4.receiver, v4.super_class}];
}

- (BOOL)_extensionHasTransparencyEntitlement:(id)entitlement
{
  v3 = MEMORY[0x1E69635D0];
  entitlementCopy = entitlement;
  v5 = [v3 alloc];
  identifier = [entitlementCopy identifier];

  v7 = [v5 initWithBundleIdentifier:identifier error:0];
  entitlements = [v7 entitlements];
  v9 = [entitlements objectForKey:@"com.apple.springboard.temporary.files-widget-transparency" ofClass:objc_opt_class()];
  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

@end