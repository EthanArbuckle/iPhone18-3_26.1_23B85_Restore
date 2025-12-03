@interface HDSPApplicationWorkspaceMonitor
- (BOOL)isApplicationInstalled:(id)installed;
- (HDSPApplicationWorkspaceMonitor)init;
- (void)addObserver:(id)observer;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer;
@end

@implementation HDSPApplicationWorkspaceMonitor

- (HDSPApplicationWorkspaceMonitor)init
{
  v7.receiver = self;
  v7.super_class = HDSPApplicationWorkspaceMonitor;
  v2 = [(HDSPApplicationWorkspaceMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D624A0]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  v5 = 0;
  [(HKSPObserverSet *)self->_observers addObserver:observer wasFirst:&v5];
  if (v5 == 1)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:self];
  }
}

- (void)removeObserver:(id)observer
{
  v5 = 0;
  [(HKSPObserverSet *)self->_observers removeObserver:observer wasLast:&v5];
  if (v5 == 1)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace removeObserver:self];
  }
}

- (BOOL)isApplicationInstalled:(id)installed
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1E70];
  installedCopy = installed;
  v15 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:installedCopy allowPlaceholder:1 error:&v15];

  v6 = v15;
  if (!v5)
  {
    applicationState = HKSPLogForCategory();
    if (os_log_type_enabled(applicationState, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v6;
      v14 = v13;
      _os_log_error_impl(&dword_269B11000, applicationState, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create application record: %{public}@.", buf, 0x16u);
    }

    goto LABEL_7;
  }

  applicationState = [v5 applicationState];
  if (![applicationState isValid])
  {
LABEL_7:
    isPlaceholder = 0;
    goto LABEL_10;
  }

  applicationState2 = [v5 applicationState];
  if ([applicationState2 isInstalled])
  {
    isPlaceholder = 1;
  }

  else
  {
    applicationState3 = [v5 applicationState];
    isPlaceholder = [applicationState3 isPlaceholder];
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return isPlaceholder;
}

- (void)applicationsDidInstall:(id)install
{
  v20 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        observers = self->_observers;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __58__HDSPApplicationWorkspaceMonitor_applicationsDidInstall___block_invoke;
        v13[3] = &unk_279C7C1D0;
        v14 = bundleIdentifier;
        v11 = bundleIdentifier;
        [(HKSPObserverSet *)observers enumerateObserversWithBlock:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HDSPApplicationWorkspaceMonitor_applicationsDidInstall___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 observedApplicationBundleIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  if (v4)
  {
    [v5 observedApplicationDidInstall:*(a1 + 32)];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v20 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v8) bundleIdentifier];
        observers = self->_observers;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60__HDSPApplicationWorkspaceMonitor_applicationsDidUninstall___block_invoke;
        v13[3] = &unk_279C7C1D0;
        v14 = bundleIdentifier;
        v11 = bundleIdentifier;
        [(HKSPObserverSet *)observers enumerateObserversWithBlock:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HDSPApplicationWorkspaceMonitor_applicationsDidUninstall___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 observedApplicationBundleIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  if (v4)
  {
    [v5 observedApplicationDidUninstall:*(a1 + 32)];
  }
}

@end