@interface SBHWidgetViewController
+ (id)sbh_sharedWidgetExtensionProvider;
- (CHSWidgetExtensionProvider)sbh_widgetExtensionProvider;
- (id)sbh_effectiveWidgetExtensionProvider;
- (id)sbh_widgetDescriptor;
- (id)sbh_widgetExtension;
- (void)invalidate;
- (void)sbh_addObserver:(id)a3;
- (void)sbh_setCustomDisplayConfiguration:(id)a3;
- (void)waitForContentReadyWithTimeout:(double)a3 completion:(id)a4;
@end

@implementation SBHWidgetViewController

- (CHSWidgetExtensionProvider)sbh_widgetExtensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetExtensionProvider);

  return WeakRetained;
}

- (void)waitForContentReadyWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_isInvalidated)
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__SBHWidgetViewController_waitForContentReadyWithTimeout_completion___block_invoke;
    v8[3] = &unk_1E8089670;
    v8[4] = self;
    v9 = v6;
    [(SBHWidgetViewController *)self ensureContentWithTimeout:v8 completion:a3];
  }
}

void __69__SBHWidgetViewController_waitForContentReadyWithTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogWidgets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__SBHWidgetViewController_waitForContentReadyWithTimeout_completion___block_invoke_cold_1(a1, v3, v4);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

- (void)sbh_addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)sbh_setCustomDisplayConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_customDisplayConfiguration != a3)
  {
    v4 = [a3 copy];
    customDisplayConfiguration = self->_customDisplayConfiguration;
    self->_customDisplayConfiguration = v4;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 widgetViewControllerDidChangeCustomDisplayConfiguration:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

+ (id)sbh_sharedWidgetExtensionProvider
{
  if (sbh_sharedWidgetExtensionProvider_onceToken != -1)
  {
    +[SBHWidgetViewController sbh_sharedWidgetExtensionProvider];
  }

  v3 = sbh_sharedWidgetExtensionProvider_sharedWidgetExtensionProvider;

  return v3;
}

uint64_t __60__SBHWidgetViewController_sbh_sharedWidgetExtensionProvider__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69943C0]);
  v1 = sbh_sharedWidgetExtensionProvider_sharedWidgetExtensionProvider;
  sbh_sharedWidgetExtensionProvider_sharedWidgetExtensionProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)sbh_effectiveWidgetExtensionProvider
{
  v2 = [(SBHWidgetViewController *)self sbh_widgetExtensionProvider];
  if (!v2)
  {
    v2 = [objc_opt_class() sbh_sharedWidgetExtensionProvider];
  }

  return v2;
}

- (id)sbh_widgetDescriptor
{
  v3 = [(SBHWidgetViewController *)self sbh_effectiveWidgetExtensionProvider];
  v4 = [(SBHWidgetViewController *)self widget];
  v5 = [v3 widgetDescriptorForWidget:v4];

  return v5;
}

- (id)sbh_widgetExtension
{
  v3 = [(SBHWidgetViewController *)self sbh_effectiveWidgetExtensionProvider];
  v4 = [(SBHWidgetViewController *)self widget];
  v5 = [v4 extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [v3 widgetExtensionContainerForExtensionBundleIdentifier:v6];

  v8 = [v7 extensionForExtensionIdentity:v5];

  return v8;
}

- (void)invalidate
{
  if (!self->_isInvalidated)
  {
    self->_isInvalidated = 1;
    v2.receiver = self;
    v2.super_class = SBHWidgetViewController;
    [(SBHWidgetViewController *)&v2 invalidate];
  }
}

void __69__SBHWidgetViewController_waitForContentReadyWithTimeout_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 localizedDescription];
  v6 = 134218242;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "<SBHWidgetViewController:%p> Error waiting for non-placeholder content to appear: %{public}@", &v6, 0x16u);
}

@end