@interface SBHFileWidgetExtensionProvider
- (BOOL)_extensionHasTransparencyEntitlement:(id)a3;
- (SBHFileWidgetExtensionProvider)init;
- (id)filesWidgetViewControllerWithConfiguration:(id)a3;
- (void)_setupHostViewController:(id)a3;
- (void)setWidgetConfiguration:(id)a3;
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
    v4 = [(SBHRecentsDocumentExtensionProvider *)v2 extension];
    if (v4)
    {
      v3->_widgetHasTransparentBackground = [(SBHFileWidgetExtensionProvider *)v3 _extensionHasTransparencyEntitlement:v4];
    }
  }

  return v3;
}

- (id)filesWidgetViewControllerWithConfiguration:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHRecentsDocumentExtensionProvider *)self wrappingViewController];
  v6 = [(SBHRecentsDocumentExtensionProvider *)self hostViewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__SBHFileWidgetExtensionProvider_filesWidgetViewControllerWithConfiguration___block_invoke;
  aBlock[3] = &unk_1E808B820;
  v7 = v4;
  v32 = v7;
  v8 = _Block_copy(aBlock);
  if (v6)
  {
    v9 = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
    v8[2](v8, v9);

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v33[0] = v5;
    v33[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:{2, 0}];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v25 + 1) + 8 * i) view];
          [v15 frame];
          v17 = v16;
          v19 = v18;
          [(SBHRecentsDocumentExtensionProvider *)self compactPreferredContentSize];
          [v15 setFrame:{v17, v19, v20, v21}];
          [v15 setNeedsLayout];
          [v15 setNeedsUpdateConstraints];
          [v15 layoutIfNeeded];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = [(SBHRecentsDocumentExtensionProvider *)self extension];
    if (v10)
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

  v23 = v5;
  return v5;
}

- (void)setWidgetConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBHRecentsDocumentExtensionProvider *)self remoteService];
  [v5 _updateForWidgetConfiguration:v4];
}

- (void)_setupHostViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHFileWidgetExtensionProvider;
  v3 = a3;
  [(SBHRecentsDocumentExtensionProvider *)&v4 _setupHostViewController:v3];
  [v3 setServiceViewShouldShareTouchesWithHost:{1, v4.receiver, v4.super_class}];
}

- (BOOL)_extensionHasTransparencyEntitlement:(id)a3
{
  v3 = MEMORY[0x1E69635D0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 identifier];

  v7 = [v5 initWithBundleIdentifier:v6 error:0];
  v8 = [v7 entitlements];
  v9 = [v8 objectForKey:@"com.apple.springboard.temporary.files-widget-transparency" ofClass:objc_opt_class()];
  v10 = [v9 BOOLValue];

  return v10;
}

@end