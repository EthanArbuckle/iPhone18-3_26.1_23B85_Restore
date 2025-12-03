@interface _SBWidgetExtensionDebugHomeScreenDataSource
- (_SBWidgetExtensionDebugHomeScreenDataSource)initWithIconManager:(id)manager;
- (id)hasExistingWidgetFromExtension:(id)extension;
- (void)_reallyLaunchWidgetOnHomeScreen:(id)screen widgetFamily:(int64_t)family;
- (void)launchWidget:(id)widget widgetFamily:(int64_t)family completion:(id)completion;
@end

@implementation _SBWidgetExtensionDebugHomeScreenDataSource

- (_SBWidgetExtensionDebugHomeScreenDataSource)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = _SBWidgetExtensionDebugHomeScreenDataSource;
  v6 = [(_SBWidgetExtensionDebugHomeScreenDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconManager, manager);
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    inFlightAnimationTransactions = v7->_inFlightAnimationTransactions;
    v7->_inFlightAnimationTransactions = v8;
  }

  return v7;
}

- (id)hasExistingWidgetFromExtension:(id)extension
{
  v24 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  iconModel = [(SBHIconManager *)self->_iconManager iconModel];
  v6 = [iconModel widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:extensionCopy kind:0 sizeClass:0];

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    widgets = [firstObject widgets];
    v9 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(widgets);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          extensionBundleIdentifier = [v12 extensionBundleIdentifier];
          v14 = [extensionBundleIdentifier isEqualToString:extensionCopy];

          if (v14)
          {
            kind = [v12 kind];
            gridSizeClass = [firstObject gridSizeClass];
            v17 = CHSWidgetFamilyForSBHIconGridSizeClass();

            v9 = [[SBWidgetExtensionDebugSearchResult alloc] initWithKind:kind family:v17];
            goto LABEL_12;
          }
        }

        v9 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)launchWidget:(id)widget widgetFamily:(int64_t)family completion:(id)completion
{
  widgetCopy = widget;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke;
  v23[3] = &unk_2783C4BF0;
  v10 = completionCopy;
  v25 = v10;
  v23[4] = self;
  v11 = widgetCopy;
  v24 = v11;
  familyCopy = family;
  v12 = MEMORY[0x223D6F7F0](v23);
  v13 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:0 options:-1];
  objc_initWeak(&location, v13);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke_3;
  v18 = &unk_2783B1460;
  v14 = v12;
  selfCopy = self;
  v20 = v14;
  objc_copyWeak(&v21, &location);
  [(SBDismissOverlaysAnimationController *)v13 setCompletionBlock:&v15];
  [(NSHashTable *)self->_inFlightAnimationTransactions addObject:v13, v15, v16, v17, v18, selfCopy];
  [(SBDismissOverlaysAnimationController *)v13 begin];
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

- (void)_reallyLaunchWidgetOnHomeScreen:(id)screen widgetFamily:(int64_t)family
{
  v22 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [screenCopy debugDescription];
    v9 = MEMORY[0x223D6C060](family);
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBAvocadoDebuggingController ensuring widget is visible for descriptor: %@ family: %@", buf, 0x16u);
  }

  [(SBHIconManager *)self->_iconManager _ensureWidgetIsVisibleForDebuggingWithDescriptor:screenCopy sizeClass:family];
  extensionIdentity = [screenCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  v12 = SBLogWidgets();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(_SBWidgetExtensionDebugHomeScreenDataSource *)containerBundleIdentifier _reallyLaunchWidgetOnHomeScreen:screenCopy widgetFamily:v12];
  }

  v13 = objc_alloc_init(MEMORY[0x277CFA340]);
  kind = [screenCopy kind];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92___SBWidgetExtensionDebugHomeScreenDataSource__reallyLaunchWidgetOnHomeScreen_widgetFamily___block_invoke;
  v16[3] = &unk_2783B0F28;
  v17 = containerBundleIdentifier;
  v15 = containerBundleIdentifier;
  [v13 reloadTimelinesOfKind:kind containedIn:v15 reason:@"Tools" completion:v16];
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