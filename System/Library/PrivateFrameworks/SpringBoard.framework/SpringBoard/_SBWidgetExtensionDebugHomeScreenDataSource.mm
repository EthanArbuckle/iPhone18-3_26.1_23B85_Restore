@interface _SBWidgetExtensionDebugHomeScreenDataSource
- (_SBWidgetExtensionDebugHomeScreenDataSource)initWithIconManager:(id)a3;
- (id)hasExistingWidgetFromExtension:(id)a3;
- (void)_reallyLaunchWidgetOnHomeScreen:(id)a3 widgetFamily:(int64_t)a4;
- (void)launchWidget:(id)a3 widgetFamily:(int64_t)a4 completion:(id)a5;
@end

@implementation _SBWidgetExtensionDebugHomeScreenDataSource

- (_SBWidgetExtensionDebugHomeScreenDataSource)initWithIconManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _SBWidgetExtensionDebugHomeScreenDataSource;
  v6 = [(_SBWidgetExtensionDebugHomeScreenDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconManager, a3);
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    inFlightAnimationTransactions = v7->_inFlightAnimationTransactions;
    v7->_inFlightAnimationTransactions = v8;
  }

  return v7;
}

- (id)hasExistingWidgetFromExtension:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHIconManager *)self->_iconManager iconModel];
  v6 = [v5 widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:v4 kind:0 sizeClass:0];

  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 widgets];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 extensionBundleIdentifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v15 = [v12 kind];
            v16 = [v7 gridSizeClass];
            v17 = CHSWidgetFamilyForSBHIconGridSizeClass();

            v9 = [[SBWidgetExtensionDebugSearchResult alloc] initWithKind:v15 family:v17];
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)launchWidget:(id)a3 widgetFamily:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke;
  v23[3] = &unk_2783C4BF0;
  v10 = v9;
  v25 = v10;
  v23[4] = self;
  v11 = v8;
  v24 = v11;
  v26 = a4;
  v12 = MEMORY[0x223D6F7F0](v23);
  v13 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:0 options:-1];
  objc_initWeak(&location, v13);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke_3;
  v18 = &unk_2783B1460;
  v14 = v12;
  v19 = self;
  v20 = v14;
  objc_copyWeak(&v21, &location);
  [(SBDismissOverlaysAnimationController *)v13 setCompletionBlock:&v15];
  [(NSHashTable *)self->_inFlightAnimationTransactions addObject:v13, v15, v16, v17, v18, v19];
  [(SBDismissOverlaysAnimationController *)v13 begin];
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

- (void)_reallyLaunchWidgetOnHomeScreen:(id)a3 widgetFamily:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 debugDescription];
    v9 = MEMORY[0x223D6C060](a4);
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBAvocadoDebuggingController ensuring widget is visible for descriptor: %@ family: %@", buf, 0x16u);
  }

  [(SBHIconManager *)self->_iconManager _ensureWidgetIsVisibleForDebuggingWithDescriptor:v6 sizeClass:a4];
  v10 = [v6 extensionIdentity];
  v11 = [v10 containerBundleIdentifier];

  v12 = SBLogWidgets();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(_SBWidgetExtensionDebugHomeScreenDataSource *)v11 _reallyLaunchWidgetOnHomeScreen:v6 widgetFamily:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x277CFA340]);
  v14 = [v6 kind];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92___SBWidgetExtensionDebugHomeScreenDataSource__reallyLaunchWidgetOnHomeScreen_widgetFamily___block_invoke;
  v16[3] = &unk_2783B0F28;
  v17 = v11;
  v15 = v11;
  [v13 reloadTimelinesOfKind:v14 containedIn:v15 reason:@"Tools" completion:v16];
}

- (void)_reallyLaunchWidgetOnHomeScreen:(NSObject *)a3 widgetFamily:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 kind];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Going to reload the timeline for container: %{public}@ kind: %{public}@", &v6, 0x16u);
}

@end