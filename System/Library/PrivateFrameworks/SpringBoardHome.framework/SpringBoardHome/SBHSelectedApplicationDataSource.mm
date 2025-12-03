@interface SBHSelectedApplicationDataSource
+ (id)homeScreenService;
- (SBHSelectedApplicationDataSource)init;
- (id)applicationPlaceholderWithBundleIdentifier:(id)identifier;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_lock_beginObservingInstallProgress:(id)progress forBundleIdentifier:(id)identifier;
- (void)_lock_endObservingInstallProgress:(id)progress;
- (void)addApplicationInfoProviderObserver:(id)observer;
- (void)addApplicationsForBundleIdentifiers:(id)identifiers forcePlaceholders:(BOOL)placeholders;
- (void)addIconModelApplicationDataSourceObserver:(id)observer;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)beginTrackingApplicationsWithBundleIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)endTrackingAllApplications;
- (void)endTrackingApplicationsWithBundleIdentifiers:(id)identifiers;
- (void)homeScreenService:(id)service applicationIconInfoChangedForBundleIdentifiers:(id)identifiers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeApplicationsForBundleIdentifiers:(id)identifiers;
- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)uninstallApplicationWithBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)updateStateOfPlaceholder:(id)placeholder fromProgress:(id)progress;
- (void)updateStateOfPlaceholder:(id)placeholder withInstallState:(unint64_t)state installPhase:(unint64_t)phase installProgress:(double)progress;
@end

@implementation SBHSelectedApplicationDataSource

- (SBHSelectedApplicationDataSource)init
{
  v14.receiver = self;
  v14.super_class = SBHSelectedApplicationDataSource;
  v2 = [(SBHSelectedApplicationDataSource *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackedApplicationBundleIdentifiers = v2->_trackedApplicationBundleIdentifiers;
    v2->_trackedApplicationBundleIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applications = v2->_applications;
    v2->_applications = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applicationPlaceholders = v2->_applicationPlaceholders;
    v2->_applicationPlaceholders = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    installProgressBundleIdentifiers = v2->_installProgressBundleIdentifiers;
    v2->_installProgressBundleIdentifiers = strongToStrongObjectsMapTable;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIdentifierToInstallProgresses = v2->_bundleIdentifierToInstallProgresses;
    v2->_bundleIdentifierToInstallProgresses = v11;

    v2->_installProgressBundleIdentifiersLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

uint64_t __53__SBHSelectedApplicationDataSource_homeScreenService__block_invoke(uint64_t a1)
{
  result = SBHIsRunningInSpringBoard(a1);
  if ((result & 1) == 0)
  {
    homeScreenService__homeScreenService_0 = objc_alloc_init(MEMORY[0x1E69D4240]);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)homeScreenService
{
  if (homeScreenService_onceToken_0 != -1)
  {
    +[SBHSelectedApplicationDataSource homeScreenService];
  }

  v3 = homeScreenService__homeScreenService_0;

  return v3;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_installProgressBundleIdentifiersLock);
  v3 = self->_installProgressBundleIdentifiers;
  installProgressBundleIdentifiers = self->_installProgressBundleIdentifiers;
  self->_installProgressBundleIdentifiers = 0;

  bundleIdentifierToInstallProgresses = self->_bundleIdentifierToInstallProgresses;
  self->_bundleIdentifierToInstallProgresses = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SBHSelectedApplicationDataSource *)self _lock_endObservingInstallProgress:*(*(&v13 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_installProgressBundleIdentifiersLock);
  [(BSInvalidatable *)self->_appInfoObserverAssertion invalidate];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v12.receiver = self;
  v12.super_class = SBHSelectedApplicationDataSource;
  [(SBHSelectedApplicationDataSource *)&v12 dealloc];
}

- (void)beginTrackingApplicationsWithBundleIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = identifiersCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Begin tracking %@", buf, 0xCu);
  }

  BSDispatchQueueAssertMain();
  v6 = [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers count];
  v7 = [identifiersCopy mutableCopy];
  allObjects = [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers allObjects];
  [v7 removeObjectsInArray:allObjects];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers addObject:*(*(&v18 + 1) + 8 * v13++), v18];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(SBHSelectedApplicationDataSource *)self addApplicationsForBundleIdentifiers:v9 forcePlaceholders:0];
  if (!v6)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace addObserver:self];

    appInfoObserverAssertion = [(SBHSelectedApplicationDataSource *)self appInfoObserverAssertion];

    if (!appInfoObserverAssertion)
    {
      homeScreenService = [objc_opt_class() homeScreenService];
      v17 = [homeScreenService addIconBadgeValueObserver:self];

      [(SBHSelectedApplicationDataSource *)self setAppInfoObserverAssertion:v17];
    }
  }
}

- (void)endTrackingApplicationsWithBundleIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = identifiersCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "End tracking %@", buf, 0xCu);
  }

  BSDispatchQueueAssertMain();
  v6 = [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers count];
  [(SBHSelectedApplicationDataSource *)self removeApplicationsForBundleIdentifiers:identifiersCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers removeObject:*(*(&v14 + 1) + 8 * v11++), v14];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (v6 && ![(NSMutableSet *)self->_trackedApplicationBundleIdentifiers count])
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace removeObserver:self];

    appInfoObserverAssertion = [(SBHSelectedApplicationDataSource *)self appInfoObserverAssertion];
    [appInfoObserverAssertion invalidate];

    [(SBHSelectedApplicationDataSource *)self setAppInfoObserverAssertion:0];
  }
}

- (void)endTrackingAllApplications
{
  BSDispatchQueueAssertMain();
  allObjects = [(NSMutableSet *)self->_trackedApplicationBundleIdentifiers allObjects];
  [(SBHSelectedApplicationDataSource *)self endTrackingApplicationsWithBundleIdentifiers:allObjects];
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_applications objectForKey:identifierCopy];

  return v5;
}

- (id)applicationPlaceholderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_applicationPlaceholders objectForKey:identifierCopy];

  return v5;
}

- (void)uninstallApplicationWithBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (([(NSMutableSet *)self->_trackedApplicationBundleIdentifiers containsObject:identifierCopy]& 1) != 0)
  {
    v10 = SBLogSelectedApplicationDataSource();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Requesting uninstallation of %@", &buf, 0xCu);
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v11 = getIXUninstallOptionsClass_softClass;
    v22 = getIXUninstallOptionsClass_softClass;
    if (!getIXUninstallOptionsClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __getIXUninstallOptionsClass_block_invoke;
      v25 = &unk_1E8089848;
      v26 = &v19;
      __getIXUninstallOptionsClass_block_invoke(&buf);
      v11 = v20[3];
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v13 = objc_alloc_init(v11);
    [v13 setRequestUserConfirmation:options & 1];
    [v13 setShowArchiveOption:(options >> 1) & 1];
    [v13 setShowDemotionOption:(options >> 2) & 1];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v14 = getIXAppInstallCoordinatorClass_softClass_0;
    v22 = getIXAppInstallCoordinatorClass_softClass_0;
    if (!getIXAppInstallCoordinatorClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __getIXAppInstallCoordinatorClass_block_invoke_0;
      v25 = &unk_1E8089848;
      v26 = &v19;
      __getIXAppInstallCoordinatorClass_block_invoke_0(&buf);
      v14 = v20[3];
    }

    v15 = v14;
    _Block_object_dispose(&v19, 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__SBHSelectedApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke;
    v16[3] = &unk_1E808E6A0;
    v17 = identifierCopy;
    v18 = completionCopy;
    [v14 uninstallAppWithBundleID:v17 options:v13 completion:v16];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 3, 0);
  }
}

void __96__SBHSelectedApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v4;
  BSDispatchMain();
}

uint64_t __96__SBHSelectedApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = SBLogSelectedApplicationDataSource();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) localizedDescription];
      v11 = 138412546;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported an error for uninstallation of %@: %{public}@", &v11, 0x16u);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 40);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported success for uninstallation of %@", &v11, 0xCu);
  }

  if (*(a1 + 32) || (v8 = *(a1 + 56), v8 > 4))
  {
    v9 = 3;
  }

  else
  {
    v9 = qword_1BEE87C90[v8];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v9);
  }

  return result;
}

- (void)addApplicationsForBundleIdentifiers:(id)identifiers forcePlaceholders:(BOOL)placeholders
{
  obj = placeholders;
  v64 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v6 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v60 = identifiersCopy;
    v61 = 1024;
    LODWORD(v62) = obj;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Will add applications for %@, force placeholders: %{BOOL}u", buf, 0x12u);
  }

  BSDispatchQueueAssertMain();
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = identifiersCopy;
  v8 = [(SBHSimpleApplication *)v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v43 = 0;
    v44 = 0;
    v10 = 0;
    v39 = 0;
    v11 = *v54;
    v12 = obj;
    v13 = *v54;
    do
    {
      v14 = 0;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v53 + 1) + 8 * v14);
        if ([(NSMutableSet *)self->_trackedApplicationBundleIdentifiers containsObject:v15])
        {
          v16 = [SBHSimpleApplication alloc];
          if (v12)
          {
            v17 = [(SBHSimpleApplication *)v16 initWithBundleIdentifier:v15 forcePlaceholder:1];
          }

          else
          {
            v17 = [(SBHSimpleApplication *)v16 initWithBundleIdentifier:v15 allowPlaceholder:1];
          }

          v18 = v17;
          [(SBHSimpleApplication *)v17 setIconModelApplicationDataSource:self];
          v19 = SBLogSelectedApplicationDataSource();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v60 = v18;
            v61 = 2112;
            v62 = v15;
            _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "Got app %@ for %@", buf, 0x16u);
          }

          if (v18)
          {
            if (v12 || [(SBHSimpleApplication *)v18 isPlaceholder])
            {
              v20 = [(NSMutableDictionary *)self->_applicationPlaceholders objectForKey:v15];

              if (!v20)
              {
                v21 = SBLogSelectedApplicationDataSource();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Setting app as placeholder", buf, 2u);
                }

                [(NSMutableDictionary *)self->_applicationPlaceholders setObject:v18 forKey:v15];
                if (!v10)
                {
                  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v10 addObject:v18];
              }

              v22 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v15];
              installProgress = [v22 installProgress];
              if (installProgress)
              {
                os_unfair_lock_lock(&self->_installProgressBundleIdentifiersLock);
                [(SBHSelectedApplicationDataSource *)self _lock_beginObservingInstallProgress:installProgress forBundleIdentifier:v15];
                os_unfair_lock_unlock(&self->_installProgressBundleIdentifiersLock);
              }

              v12 = obj;
            }

            else
            {
              v24 = [(NSMutableDictionary *)self->_applications objectForKey:v15];

              [(NSMutableDictionary *)self->_applications setObject:v18 forKey:v15];
              if (v24)
              {
                v25 = v43;
                if (!v43)
                {
                  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v43 = v25;
                }
              }

              else
              {
                v25 = v39;
                if (!v39)
                {
                  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v39 = v25;
                }
              }

              [v25 addObject:v18];
              v22 = [(NSMutableDictionary *)self->_applicationPlaceholders objectForKey:v15];
              if (v22)
              {
                [(NSMutableDictionary *)self->_applicationPlaceholders removeObjectForKey:v15];
                v26 = v44;
                if (!v44)
                {
                  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v44 = v26;
                [v26 addObject:v22];
              }
            }
          }

          v11 = v13;
        }

        ++v14;
      }

      while (v9 != v14);
      v27 = [(SBHSimpleApplication *)v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
      v9 = v27;
    }

    while (v27);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v10 = 0;
    v39 = 0;
  }

  v38 = v7;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = [(NSHashTable *)self->_oldObservers copy];
  v28 = [obja countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v50;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        if (v39 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v32 iconModelApplicationDataSource:self applicationsAdded:v39];
        }

        if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v32 iconModelApplicationDataSource:self applicationsUpdated:v43];
        }

        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v32 iconModelApplicationDataSource:self applicationPlaceholdersAdded:v10];
        }

        if (v44 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v32 iconModelApplicationDataSource:self applicationPlaceholdersRemoved:v44];
        }
      }

      v29 = [obja countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v29);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v42 = [(NSHashTable *)self->_observers copy];
  v33 = [v42 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v46;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v42);
        }

        v37 = *(*(&v45 + 1) + 8 * j);
        if (v39 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 applicationInfoProvider:self didAddApplications:v39];
        }

        if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 applicationInfoProvider:self didUpdateApplications:v43];
        }

        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 applicationInfoProvider:self didAddApplicationPlaceholders:v10];
        }

        if (v44 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 applicationInfoProvider:self didRemoveApplicationPlaceholders:v44];
        }
      }

      v34 = [v42 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v34);
  }
}

- (void)removeApplicationsForBundleIdentifiers:(id)identifiers
{
  v47 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = identifiersCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Will remove applications for %@", buf, 0xCu);
  }

  BSDispatchQueueAssertMain();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_applications objectForKey:v12];
        if (v13)
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v9 addObject:v13];
          v14 = SBLogSelectedApplicationDataSource();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v13;
            _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Found non-placeholder app to remove: %@", buf, 0xCu);
          }
        }

        v15 = [(NSMutableDictionary *)self->_applicationPlaceholders objectForKey:v12];

        if (v15)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v8 addObject:v15];
          v16 = SBLogSelectedApplicationDataSource();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Found placeholder app to remove: %@", buf, 0xCu);
          }
        }

        [(NSMutableDictionary *)self->_applications removeObjectForKey:v12];
        [(NSMutableDictionary *)self->_applicationPlaceholders removeObjectForKey:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [(NSHashTable *)self->_observers copy];
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v22 iconModelApplicationDataSource:self applicationsRemoved:v9];
        }

        if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v22 iconModelApplicationDataSource:self applicationPlaceholdersRemoved:v8];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = [(NSHashTable *)self->_observers copy];
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * k);
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v28 applicationInfoProvider:self didRemoveApplications:v9];
        }

        if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v28 applicationInfoProvider:self didRemoveApplicationPlaceholders:v8];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
  }
}

- (void)_lock_beginObservingInstallProgress:(id)progress forBundleIdentifier:(id)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  installProgressBundleIdentifiers = self->_installProgressBundleIdentifiers;
  if (installProgressBundleIdentifiers)
  {
    v9 = [(NSMapTable *)installProgressBundleIdentifiers objectForKey:progressCopy];

    if (!v9)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      keyPathsForObservingInstallProgress = [objc_opt_class() keyPathsForObservingInstallProgress];
      v11 = [keyPathsForObservingInstallProgress countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(keyPathsForObservingInstallProgress);
            }

            [progressCopy addObserver:self forKeyPath:*(*(&v33 + 1) + 8 * v14++) options:0 context:305926858];
          }

          while (v12 != v14);
          v12 = [keyPathsForObservingInstallProgress countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      keyPathsForValuesAffectingInstallState = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallState];
      v16 = [keyPathsForValuesAffectingInstallState countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(keyPathsForValuesAffectingInstallState);
            }

            [progressCopy addObserver:self forKeyPath:*(*(&v29 + 1) + 8 * v19++) options:0 context:305926858];
          }

          while (v17 != v19);
          v17 = [keyPathsForValuesAffectingInstallState countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v17);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      keyPathsForValuesAffectingInstallPhase = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallPhase];
      v21 = [keyPathsForValuesAffectingInstallPhase countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v26;
        do
        {
          v24 = 0;
          do
          {
            if (*v26 != v23)
            {
              objc_enumerationMutation(keyPathsForValuesAffectingInstallPhase);
            }

            [progressCopy addObserver:self forKeyPath:*(*(&v25 + 1) + 8 * v24++) options:0 context:305926858];
          }

          while (v22 != v24);
          v22 = [keyPathsForValuesAffectingInstallPhase countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v22);
      }

      [(NSMapTable *)self->_installProgressBundleIdentifiers setObject:identifierCopy forKey:progressCopy];
      [(NSMutableDictionary *)self->_bundleIdentifierToInstallProgresses setObject:progressCopy forKey:identifierCopy];
    }
  }
}

- (void)_lock_endObservingInstallProgress:(id)progress
{
  v36 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  keyPathsForObservingInstallProgress = [objc_opt_class() keyPathsForObservingInstallProgress];
  v6 = [keyPathsForObservingInstallProgress countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(keyPathsForObservingInstallProgress);
        }

        [progressCopy removeObserver:self forKeyPath:*(*(&v29 + 1) + 8 * v9++) context:305926858];
      }

      while (v7 != v9);
      v7 = [keyPathsForObservingInstallProgress countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  keyPathsForValuesAffectingInstallState = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallState];
  v11 = [keyPathsForValuesAffectingInstallState countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(keyPathsForValuesAffectingInstallState);
        }

        [progressCopy removeObserver:self forKeyPath:*(*(&v25 + 1) + 8 * v14++) context:305926858];
      }

      while (v12 != v14);
      v12 = [keyPathsForValuesAffectingInstallState countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  keyPathsForValuesAffectingInstallPhase = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallPhase];
  v16 = [keyPathsForValuesAffectingInstallPhase countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(keyPathsForValuesAffectingInstallPhase);
        }

        [progressCopy removeObserver:self forKeyPath:*(*(&v21 + 1) + 8 * v19++) context:305926858];
      }

      while (v17 != v19);
      v17 = [keyPathsForValuesAffectingInstallPhase countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = [(NSMapTable *)self->_installProgressBundleIdentifiers objectForKey:progressCopy];
  if (v20)
  {
    [(NSMutableDictionary *)self->_bundleIdentifierToInstallProgresses removeObjectForKey:v20];
  }

  [(NSMapTable *)self->_installProgressBundleIdentifiers removeObjectForKey:progressCopy];
}

- (void)updateStateOfPlaceholder:(id)placeholder fromProgress:(id)progress
{
  progressCopy = progress;
  placeholderCopy = placeholder;
  installState = [progressCopy installState];
  installPhase = [progressCopy installPhase];
  [progressCopy fractionCompleted];
  v10 = v9;

  [(SBHSelectedApplicationDataSource *)self updateStateOfPlaceholder:placeholderCopy withInstallState:installState installPhase:installPhase installProgress:v10];
}

- (void)updateStateOfPlaceholder:(id)placeholder withInstallState:(unint64_t)state installPhase:(unint64_t)phase installProgress:(double)progress
{
  v24 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  if (state - 3 >= 2)
  {
    if (state != 2)
    {
      if (state == 5 && (BSFloatIsOne() & 1) != 0)
      {
        v10 = 0;
        v11 = 0;
      }

      else if ((phase & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v12 = phase - 1;
        v13 = phase == 3;
        v10 = 0;
        if (v12 >= 2)
        {
          v11 = v13;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v10 = 0;
        if (BSFloatIsZero())
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }

      goto LABEL_13;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 1;
LABEL_13:
  v14 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [placeholderCopy bundleIdentifier];
    v16 = 138413058;
    v17 = bundleIdentifier;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    progressCopy = progress;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Updating install progress for %@: state: %li, progress: %f, paused: %{BOOL}u", &v16, 0x26u);
  }

  [placeholderCopy updateProgressState:v11 progressPercent:v10 progressPaused:progress];
}

- (void)applicationInstallsDidStart:(id)start
{
  v24 = *MEMORY[0x1E69E9840];
  startCopy = start;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = startCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [bundleIdentifier copy];

        installProgress = [v11 installProgress];
        v15 = installProgress;
        if (v13)
        {
          v16 = installProgress == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [v4 addObject:v13];
          [v5 setObject:v15 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v4 count])
  {
    v17 = v5;
    v18 = v4;
    BSDispatchMain();
  }
}

uint64_t __64__SBHSelectedApplicationDataSource_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SBHSelectedApplicationDataSource_applicationInstallsDidStart___block_invoke_2;
  v6[3] = &unk_1E808E6C8;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  v3 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Application installs did start: %@", buf, 0xCu);
  }

  return [*(a1 + 32) addApplicationsForBundleIdentifiers:*(a1 + 48) forcePlaceholders:1];
}

void __64__SBHSelectedApplicationDataSource_applicationInstallsDidStart___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(*(a1 + 32) + 8) containsObject:v6])
  {
    [*(a1 + 32) _lock_beginObservingInstallProgress:v5 forBundleIdentifier:v6];
  }
}

- (void)applicationInstallsDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = changeCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@:%@", buf, 0x16u);
  }

  v7 = changeCopy;
  BSDispatchMain();
}

void __65__SBHSelectedApplicationDataSource_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        if (v8)
        {
          v9 = [*(*(a1 + 40) + 24) objectForKey:v8];
          if (v9)
          {
            v10 = [v7 installProgress];
            [*(a1 + 40) updateStateOfPlaceholder:v9 fromProgress:v10];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)applicationsDidInstall:(id)install
{
  v20 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = installCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        if (bundleIdentifier)
        {
          [v4 addObject:bundleIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = SBLogSelectedApplicationDataSource();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Applications did install: %@", buf, 0xCu);
    }

    v12 = v4;
    BSDispatchMain();
  }
}

uint64_t __59__SBHSelectedApplicationDataSource_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 56) objectForKey:{*(*(&v9 + 1) + 8 * v6), v9}];
        if (v7)
        {
          [*(a1 + 32) _lock_endObservingInstallProgress:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 64));
  return [*(a1 + 32) addApplicationsForBundleIdentifiers:*(a1 + 40) forcePlaceholders:0];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v17 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = uninstallCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        if (bundleIdentifier)
        {
          [v4 addObject:bundleIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = v4;
    BSDispatchMain();
  }
}

uint64_t __61__SBHSelectedApplicationDataSource_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Applications did uninstall: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) removeApplicationsForBundleIdentifiers:*(a1 + 32)];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v11 = SBLogSelectedApplicationDataSource();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = pathCopy;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@:%@", buf, 0x16u);
  }

  if (context == 305926858)
  {
    v13 = objectCopy;
    v14 = SBLogSelectedApplicationDataSource();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Install progress did change: %@", buf, 0xCu);
    }

    v15 = v13;
    BSDispatchMain();
  }
}

uint64_t __83__SBHSelectedApplicationDataSource_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v6 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  v3 = v6;
  if (v6)
  {
    v2 = [*(*(a1 + 32) + 24) objectForKey:v6];
    v3 = v6;
    if (v2)
    {
      v4 = v2;
      [*(a1 + 32) updateStateOfPlaceholder:v2 fromProgress:*(a1 + 40)];

      v3 = v6;
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)homeScreenService:(id)service applicationIconInfoChangedForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  BSDispatchMain();
}

void __101__SBHSelectedApplicationDataSource_homeScreenService_applicationIconInfoChangedForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 40) + 16) objectForKey:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 remoteBadgeValueDidChange];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)addApplicationInfoProviderObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)addIconModelApplicationDataSourceObserver:(id)observer
{
  observerCopy = observer;
  oldObservers = self->_oldObservers;
  v8 = observerCopy;
  if (!oldObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_oldObservers;
    self->_oldObservers = weakObjectsHashTable;

    observerCopy = v8;
    oldObservers = self->_oldObservers;
  }

  [(NSHashTable *)oldObservers addObject:observerCopy];
}

- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__SBHSelectedApplicationDataSource_uninstallApplicationWithBundleIdentifier_completion___block_invoke;
  v8[3] = &unk_1E808E6F0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SBHSelectedApplicationDataSource *)self uninstallApplicationWithBundleIdentifier:identifier options:1 completion:v8];
}

uint64_t __88__SBHSelectedApplicationDataSource_uninstallApplicationWithBundleIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHSelectedApplicationDataSource *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_trackedApplicationBundleIdentifiers withName:@"trackedApplicationBundleIdentifiers"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHSelectedApplicationDataSource *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end