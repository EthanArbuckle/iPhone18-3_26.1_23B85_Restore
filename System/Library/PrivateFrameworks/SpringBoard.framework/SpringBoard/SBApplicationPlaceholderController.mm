@interface SBApplicationPlaceholderController
+ (SBApplicationPlaceholderController)sharedInstance;
- (BOOL)placeholderRepresentsNewAppInstallFromStore:(id)store;
- (BOOL)placeholderShouldAllowPausing:(id)pausing;
- (SBApplicationPlaceholderController)init;
- (id)iconControllers;
- (id)placeholderForDisplayID:(id)d;
- (void)_addPlaceholders:(id)placeholders;
- (void)_finishPlaceholder:(id)placeholder;
- (void)_postPlaceholdersDidChangeForAdded:(id)added modified:(id)modified removed:(id)removed;
- (void)_processPendingProxies;
- (void)_removePlaceholders:(id)placeholders forInstall:(BOOL)install;
- (void)applicationPlaceholdersAdded:(id)added;
- (void)applicationPlaceholdersCancelled:(id)cancelled;
- (void)applicationPlaceholdersInstalled:(id)installed;
- (void)applicationPlaceholdersNetworkUsageChanged:(BOOL)changed;
- (void)dealloc;
- (void)iconAccessoriesDidUpdate:(id)update;
- (void)placeholderWantsUninstall:(id)uninstall;
@end

@implementation SBApplicationPlaceholderController

+ (SBApplicationPlaceholderController)sharedInstance
{
  if (sharedInstance_onceToken_63 != -1)
  {
    +[SBApplicationPlaceholderController sharedInstance];
  }

  v3 = sharedInstance___instance_13;

  return v3;
}

uint64_t __52__SBApplicationPlaceholderController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBApplicationPlaceholderController);
  v1 = sharedInstance___instance_13;
  sharedInstance___instance_13 = v0;

  return kdebug_trace();
}

- (SBApplicationPlaceholderController)init
{
  v35 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = SBApplicationPlaceholderController;
  v2 = [(SBApplicationPlaceholderController *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    placeholdersByBundleID = v2->_placeholdersByBundleID;
    v2->_placeholdersByBundleID = v3;

    v5 = +[SBApplicationController sharedInstance];
    appController = v2->_appController;
    v2->_appController = v5;

    _appLibraryObserver = [(SBApplicationController *)v2->_appController _appLibraryObserver];
    lsWorkspaceObserver = v2->_lsWorkspaceObserver;
    v2->_lsWorkspaceObserver = _appLibraryObserver;

    [(SBApplicationLibraryObserver *)v2->_lsWorkspaceObserver addPlaceholderLifecycleObserver:v2];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingAdded = v2->_pendingAdded;
    v2->_pendingAdded = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingInstalled = v2->_pendingInstalled;
    v2->_pendingInstalled = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingCancelled = v2->_pendingCancelled;
    v2->_pendingCancelled = v13;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    placeholders = [(SBApplicationLibraryObserver *)v2->_lsWorkspaceObserver placeholders];
    v16 = [placeholders countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(placeholders);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          bundleIdentifier = [v20 bundleIdentifier];
          if (bundleIdentifier)
          {
            v22 = [(SBHProxiedApplicationPlaceholder *)[SBApplicationPlaceholder alloc] initWithPlaceholderProxy:v20];
            v23 = v22;
            if (v22)
            {
              [(SBHProxiedApplicationPlaceholder *)v22 setDelegate:v2];
              [(NSMutableDictionary *)v2->_placeholdersByBundleID setObject:v23 forKey:bundleIdentifier];
            }
          }
        }

        v17 = [placeholders countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v17);
    }

    v24 = SBLogAppPlaceholder();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [(NSMutableDictionary *)v2->_placeholdersByBundleID allKeys];
      *buf = 138412290;
      v33 = allKeys;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Placeholders @ boot time: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(SBApplicationLibraryObserver *)self->_lsWorkspaceObserver removePlaceholderLifecycleObserver:self];
  v3.receiver = self;
  v3.super_class = SBApplicationPlaceholderController;
  [(SBApplicationPlaceholderController *)&v3 dealloc];
}

- (id)placeholderForDisplayID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_placeholdersByBundleID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applicationPlaceholdersAdded:(id)added
{
  v13 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    placeholdersByBundleID = self->_placeholdersByBundleID;
    v9 = 138412546;
    v10 = addedCopy;
    v11 = 2112;
    v12 = placeholdersByBundleID;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "App placeholder proxies added: %@, currentlyKnownExistingPlaceholders: %@", &v9, 0x16u);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationPlaceholderController applicationPlaceholdersAdded:];
    if (!addedCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (addedCopy)
  {
LABEL_5:
    pendingAdded = self->_pendingAdded;
    v8 = [MEMORY[0x277CBEB98] setWithArray:addedCopy];
    [(NSMutableSet *)pendingAdded unionSet:v8];

    [(NSMutableSet *)self->_pendingCancelled minusSet:self->_pendingAdded];
    [(NSMutableSet *)self->_pendingInstalled minusSet:self->_pendingAdded];
    [(SBApplicationPlaceholderController *)self _processPendingProxies];
  }

LABEL_6:
}

- (void)applicationPlaceholdersInstalled:(id)installed
{
  v10 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  v5 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = installedCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "App placeholder proxies installed: %@", &v8, 0xCu);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationPlaceholderController applicationPlaceholdersInstalled:];
    if (!installedCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (installedCopy)
  {
LABEL_5:
    pendingInstalled = self->_pendingInstalled;
    v7 = [MEMORY[0x277CBEB98] setWithArray:installedCopy];
    [(NSMutableSet *)pendingInstalled unionSet:v7];

    [(SBApplicationPlaceholderController *)self _processPendingProxies];
  }

LABEL_6:
}

- (void)applicationPlaceholdersCancelled:(id)cancelled
{
  v10 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = SBLogAppPlaceholder();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = cancelledCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "App placeholder proxies cancelled: %@", &v8, 0xCu);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationPlaceholderController applicationPlaceholdersCancelled:];
    if (!cancelledCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (cancelledCopy)
  {
LABEL_5:
    pendingCancelled = self->_pendingCancelled;
    v7 = [MEMORY[0x277CBEB98] setWithArray:cancelledCopy];
    [(NSMutableSet *)pendingCancelled unionSet:v7];

    [(SBApplicationPlaceholderController *)self _processPendingProxies];
  }

LABEL_6:
}

- (void)applicationPlaceholdersNetworkUsageChanged:(BOOL)changed
{
  if (self->_usingNetwork != changed)
  {
    self->_usingNetwork = changed;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBApplicationPlaceholdersNetworkUsageDidChangeNotification" object:self userInfo:0];
  }
}

- (void)_processPendingProxies
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:"-[SBApplicationPlaceholderController _processPendingProxies]" object:? file:? lineNumber:? description:?];
}

- (id)iconControllers
{
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v4 = [connectedWindowScenes bs_compactMap:&__block_literal_global_35_3];

  return v4;
}

- (void)_addPlaceholders:(id)placeholders
{
  v64 = *MEMORY[0x277D85DE8];
  placeholdersCopy = placeholders;
  v37 = +[SBIconController sharedIconRepository];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = placeholdersCopy;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  v33 = v5;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v44 = *v54;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v54 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v53 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      bundleIdentifier = [v11 bundleIdentifier];
      v14 = MEMORY[0x277D28AB8];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Placeholder add BEGIN"];
      [v14 logStep:0 byParty:10 phase:1 success:1 forBundleID:bundleIdentifier description:v15];

      v16 = [(SBApplicationPlaceholderController *)self placeholderForDisplayID:bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = v36;
LABEL_10:
        [v18 addObject:v17];
        goto LABEL_11;
      }

      v19 = [(SBHProxiedApplicationPlaceholder *)[SBApplicationPlaceholder alloc] initWithPlaceholderProxy:v11];
      v17 = v19;
      if (v19)
      {
        [(SBHProxiedApplicationPlaceholder *)v19 setDelegate:self];
        [(NSMutableDictionary *)self->_placeholdersByBundleID setObject:v17 forKey:bundleIdentifier];
        v18 = v33;
        goto LABEL_10;
      }

LABEL_11:
      [v6 addObject:v17];
      if (!self->_hasDownloadedFromStore && [v17 isStoreDownload])
      {
        self->_hasDownloadedFromStore = 1;
      }

      if ([(SBApplicationPlaceholderController *)self placeholderRepresentsNewAppInstallFromStore:v17])
      {
        v20 = bundleIdentifier;

        v9 = v20;
      }

      objc_autoreleasePoolPop(v12);
    }

    v8 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  }

  while (v8);
LABEL_20:
  v40 = v9;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  iconControllers = [(SBApplicationPlaceholderController *)self iconControllers];
  v41 = [iconControllers countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v41)
  {
    v38 = *v50;
    v39 = v6;
    do
    {
      v21 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(iconControllers);
        }

        v43 = v21;
        iconManager = [*(*(&v49 + 1) + 8 * v21) iconManager];
        v22 = [iconManager addApplicationPlaceholders:v6];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v46;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v45 + 1) + 8 * j);
              applicationBundleID = [v27 applicationBundleID];
              v29 = MEMORY[0x277D28AB8];
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Created icon for placeholder."];
              [v29 logStep:1 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v30];

              v31 = SBLogAppPlaceholder();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218242;
                v58 = v27;
                v59 = 2112;
                v60 = applicationBundleID;
                _os_log_debug_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEBUG, "Created icon %p for placeholder %@", buf, 0x16u);
              }

              if (([v27 hasObserver:self] & 1) == 0)
              {
                [v27 addObserver:self];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
          }

          while (v24);
        }

        if (v40)
        {
          v32 = [v37 applicationIconForBundleIdentifier:?];
          if (v32)
          {
            [iconManager setIconToReveal:v32 revealingPrevious:1];
            [iconManager tryScrollToIconToRevealAnimated:SBWorkspaceSpringBoardIsActive()];
          }
        }

        v21 = v43 + 1;
        v6 = v39;
      }

      while (v43 + 1 != v41);
      v41 = [iconControllers countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v41);
  }

  if ([v33 count] || objc_msgSend(v36, "count"))
  {
    [(SBApplicationPlaceholderController *)self _postPlaceholdersDidChangeForAdded:v33 modified:v36 removed:0];
  }
}

- (void)_removePlaceholders:(id)placeholders forInstall:(BOOL)install
{
  installCopy = install;
  v76 = *MEMORY[0x277D85DE8];
  placeholdersCopy = placeholders;
  allBundleIdentifiers = [(SBApplicationController *)self->_appController allBundleIdentifiers];
  iconControllers = [(SBApplicationPlaceholderController *)self iconControllers];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = placeholdersCopy;
  v52 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v52)
  {
    v51 = *v66;
    v9 = 0x277D28000uLL;
    v10 = 0x277CCA000uLL;
    *&v8 = 138543362;
    v44 = v8;
    v47 = installCopy;
    v46 = v7;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v66 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = *(v9 + 2744);
        v15 = [*(v10 + 3240) stringWithFormat:@"Placeholder remove BEGIN"];
        [v14 logStep:4 byParty:10 phase:1 success:1 forBundleID:bundleIdentifier description:v15];

        v16 = [(SBApplicationPlaceholderController *)self placeholderForDisplayID:bundleIdentifier];
        if (v16)
        {
          [v7 addObject:v16];
          v17 = objc_autoreleasePoolPush();
          if (installCopy)
          {
            _appLibrary = [(SBApplicationController *)self->_appController _appLibrary];
            v19 = [_appLibrary installedApplicationWithBundleIdentifier:bundleIdentifier];

            if (v19)
            {
              v48 = v17;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v20 = iconControllers;
              v21 = [v20 countByEnumeratingWithState:&v61 objects:v72 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v62;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v62 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    [*(*(&v61 + 1) + 8 * j) _setIgnoreMutatingIconListsOnApplicationInstall:1];
                  }

                  v22 = [v20 countByEnumeratingWithState:&v61 objects:v72 count:16];
                }

                while (v22);
              }

              appController = self->_appController;
              v71 = v19;
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
              [(SBApplicationController *)appController applicationsAdded:v26];

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v27 = v20;
              v28 = [v27 countByEnumeratingWithState:&v57 objects:v70 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v58;
                do
                {
                  for (k = 0; k != v29; ++k)
                  {
                    if (*v58 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    [*(*(&v57 + 1) + 8 * k) _setIgnoreMutatingIconListsOnApplicationInstall:0];
                  }

                  v29 = [v27 countByEnumeratingWithState:&v57 objects:v70 count:16];
                }

                while (v29);
              }

              installCopy = v47;
              v17 = v48;
            }

            else
            {
              v27 = SBLogAppPlaceholder();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = v44;
                v74 = bundleIdentifier;
                _os_log_error_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_ERROR, "No app info found for supposedly installed placeholder for %{public}@", buf, 0xCu);
              }

              installCopy = v47;
            }

            v7 = v46;
          }

          v35 = [(SBApplicationController *)self->_appController applicationWithBundleIdentifier:bundleIdentifier];
          installType = [v12 installType];
          if (installType == 1)
          {
            if (![allBundleIdentifiers containsObject:bundleIdentifier])
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (installType != 3)
            {
LABEL_37:

              objc_autoreleasePoolPop(v17);
              goto LABEL_38;
            }

            if (([allBundleIdentifiers containsObject:bundleIdentifier] & 1) == 0)
            {
              [v35 markNewlyInstalled];
              goto LABEL_37;
            }
          }

          [v35 markRecentlyUpdated];
          goto LABEL_37;
        }

        v32 = *(v9 + 2744);
        v33 = [*(v10 + 3240) stringWithFormat:@"State mismatch -- no model placeholder found matching."];
        [v32 logStep:4 byParty:10 phase:2 success:0 forBundleID:bundleIdentifier description:v33];

        v34 = SBLogAppPlaceholder();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v44;
          v74 = bundleIdentifier;
          _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "*** No placeholder exists for placeholderProxy with bundleID: %{public}@. Ignoring this removal.", buf, 0xCu);
        }

LABEL_38:
        v9 = 0x277D28000;

        v10 = 0x277CCA000;
      }

      v52 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v52);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = v7;
  v38 = [v37 countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v54;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v53 + 1) + 8 * m);
        applicationBundleID = [v42 applicationBundleID];
        if (applicationBundleID)
        {
          [(SBApplicationPlaceholderController *)self _finishPlaceholder:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v39);
  }
}

- (void)_finishPlaceholder:(id)placeholder
{
  v33[1] = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  placeholderProxy = [placeholderCopy placeholderProxy];
  if (!placeholderProxy)
  {
    [SBApplicationPlaceholderController _finishPlaceholder:];
  }

  applicationBundleID = [placeholderCopy applicationBundleID];
  if (applicationBundleID)
  {
    [placeholderCopy invalidate];
    [(NSMutableDictionary *)self->_placeholdersByBundleID removeObjectForKey:applicationBundleID];
  }

  else
  {
    [(SBApplicationPlaceholderController *)a2 _finishPlaceholder:placeholderCopy];
  }

  v33[0] = placeholderCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [(SBApplicationPlaceholderController *)self _postPlaceholdersDidChangeForAdded:0 modified:0 removed:v7];

  v8 = [(SBApplicationController *)self->_appController applicationWithBundleIdentifier:applicationBundleID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(SBApplicationPlaceholderController *)self iconControllers];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v25 = placeholderCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        iconManager = [*(*(&v28 + 1) + 8 * i) iconManager];
        iconModel = [iconManager iconModel];
        v15 = [iconModel applicationIconsForBundleIdentifier:applicationBundleID];
        if (v8)
        {
          v16 = [iconManager replaceApplicationPlaceholderWithApplication:v8];
          if ([v15 count])
          {
            v17 = v11;
            v18 = applicationBundleID;
            info = [v8 info];
            if ([info isAppLibraryOnlyByDefault])
            {
              lastLayoutUnarchivedIdentifiers = [iconModel lastLayoutUnarchivedIdentifiers];
              v26 = [lastLayoutUnarchivedIdentifiers containsObject:v18];

              placeholderCopy = v25;
              applicationBundleID = v18;
              v11 = v17;
              if ((v26 & 1) == 0)
              {
                firstObject = [v15 firstObject];
                [iconManager addIconToIgnoredList:firstObject options:2 completion:0];

                placeholderCopy = v25;
              }
            }

            else
            {

              applicationBundleID = v18;
              v11 = v17;
            }
          }
        }

        else
        {
          [iconModel removeIcons:v15];
        }

        v22 = [iconModel removeApplicationPlaceholder:placeholderCopy pruneEmptyIcons:1];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)_postPlaceholdersDidChangeForAdded:(id)added modified:(id)modified removed:(id)removed
{
  v20 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  modifiedCopy = modified;
  removedCopy = removed;
  if ([addedCopy count] || objc_msgSend(modifiedCopy, "count") || objc_msgSend(removedCopy, "count"))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([addedCopy count])
    {
      [dictionary setObject:addedCopy forKey:@"__placeholdersAdded"];
    }

    if ([modifiedCopy count])
    {
      [dictionary setObject:modifiedCopy forKey:@"__placeholdersModified"];
    }

    if ([removedCopy count])
    {
      [dictionary setObject:removedCopy forKey:@"__placeholdersRemoved"];
    }

    v12 = SBLogAppPlaceholder();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = addedCopy;
      v16 = 2112;
      v17 = modifiedCopy;
      v18 = 2112;
      v19 = removedCopy;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Placeholders added: %@, modified: %@, removed: %@", &v14, 0x20u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBApplicationPlaceholdersDidChangeNotification" object:self userInfo:dictionary];
  }
}

- (BOOL)placeholderShouldAllowPausing:(id)pausing
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  iconController = [embeddedDisplayWindowScene iconController];

  iconManager = [iconController iconManager];
  LOBYTE(embeddedDisplayWindowScene) = [iconManager isEditingAllowed];

  return embeddedDisplayWindowScene;
}

- (void)placeholderWantsUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v6 = +[SBApplicationController sharedInstance];
  applicationBundleID = [uninstallCopy applicationBundleID];

  v5 = [v6 applicationWithBundleIdentifier:applicationBundleID];

  if (v5)
  {
    [v6 uninstallApplication:v5];
  }
}

- (BOOL)placeholderRepresentsNewAppInstallFromStore:(id)store
{
  storeCopy = store;
  isStoreDownload = [storeCopy isStoreDownload];
  applicationBundleIdentifier = [storeCopy applicationBundleIdentifier];

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:applicationBundleIdentifier];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = isStoreDownload;
  }

  return v8;
}

- (void)iconAccessoriesDidUpdate:(id)update
{
  v38 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(SBApplicationPlaceholderController *)self iconControllers];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = 0x27839E000uLL;
    v23 = *v33;
    do
    {
      v9 = 0;
      v24 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        iconManager = [v10 iconManager];
        if ([iconManager isEditing])
        {
          v11 = [v10 isUninstallSupportedForIcon:updateCopy];
        }

        else
        {
          v11 = 0;
        }

        sharedInstance = [*(v8 + 2312) sharedInstance];
        v13 = [sharedInstance alertItemsOfClass:objc_opt_class()];

        if ((v11 & 1) == 0 && [v13 count])
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = v13;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v29;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v28 + 1) + 8 * i);
                icon = [v19 icon];
                v21 = icon;
                if (icon == updateCopy)
                {
                  iconController = [v19 iconController];

                  if (iconController == v10)
                  {
                    [v19 deactivate];
                  }
                }

                else
                {
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v16);
          }

          v7 = v23;
          v6 = v24;
          v8 = 0x27839E000;
          v13 = v26;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }
}

- (void)applicationPlaceholdersAdded:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBApplicationPlaceholderController applicationPlaceholdersAdded:]" object:? file:? lineNumber:? description:?];
}

- (void)applicationPlaceholdersInstalled:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBApplicationPlaceholderController applicationPlaceholdersInstalled:]" object:? file:? lineNumber:? description:?];
}

- (void)applicationPlaceholdersCancelled:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBApplicationPlaceholderController applicationPlaceholdersCancelled:]" object:? file:? lineNumber:? description:?];
}

- (void)_finishPlaceholder:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_finishPlaceholder:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBApplicationPlaceholderController.m" lineNumber:337 description:@"We already checked that this had a non-nil applicationBundleID"];

  return [a3 invalidate];
}

@end