@interface SBApplicationRestrictionController
- (BOOL)isAllowlistActiveAndTransient;
- (SBApplicationRestrictionController)initWithDataSource:(id)source;
- (id)allAllowedAppBundleIdentifiers;
- (id)allRestrictedAppBundleIdentifiers;
- (void)_postRestrictionState;
- (void)_postRestrictionStateToObservers:(uint64_t)observers;
- (void)_updateRestrictionsAndForcePost:(uint64_t)post;
- (void)_updateVisibilityPreferences;
- (void)addObserver:(id)observer;
- (void)beginPostingChanges;
- (void)carrierBundleInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
- (void)dealloc;
- (void)noteApplicationIdentifiersDidChangeWithAdded:(id)added replaced:(id)replaced removed:(id)removed;
- (void)noteVisibilityOverridesDidChange;
@end

@implementation SBApplicationRestrictionController

- (SBApplicationRestrictionController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v29.receiver = self;
  v29.super_class = SBApplicationRestrictionController;
  v6 = [(SBApplicationRestrictionController *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_dataSource, sourceCopy);
    v8 = +[SBDefaults localDefaults];
    applicationDefaults = [v8 applicationDefaults];
    applicationDefaults = v7->_applicationDefaults;
    v7->_applicationDefaults = applicationDefaults;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tagValidityMap = v7->_tagValidityMap;
    v7->_tagValidityMap = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    validTagsByIdentifier = v7->_validTagsByIdentifier;
    v7->_validTagsByIdentifier = v13;

    v7->_tagsNotificationToken = -1;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    enabledTags = v7->_enabledTags;
    v7->_enabledTags = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ratingRanksByIdentifier = v7->_ratingRanksByIdentifier;
    v7->_ratingRanksByIdentifier = v17;

    telephonyStateProvider = [SBApp telephonyStateProvider];
    if (!telephonyStateProvider)
    {
      [(SBApplicationRestrictionController *)a2 initWithDataSource:v7];
    }

    [telephonyStateProvider addObserver:v7];
    if (os_variant_has_internal_content())
    {
      objc_initWeak(&location, v7);
      v20 = v7->_applicationDefaults;
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldShowInternalApplications"];
      v22 = MEMORY[0x277D85CD0];
      v23 = MEMORY[0x277D85CD0];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__SBApplicationRestrictionController_initWithDataSource___block_invoke;
      v26[3] = &unk_2783A8C68;
      objc_copyWeak(&v27, &location);
      v24 = [(SBApplicationDefaults *)v20 observeDefault:v21 onQueue:v22 withBlock:v26];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

void __57__SBApplicationRestrictionController_initWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBApplicationRestrictionController *)WeakRetained _updateVisibilityPreferences];
}

- (void)dealloc
{
  telephonyStateProvider = [SBApp telephonyStateProvider];
  [telephonyStateProvider removeObserver:self];

  if (self->_tagsNotificationToken != -1)
  {
    MGCancelNotifications();
  }

  v4.receiver = self;
  v4.super_class = SBApplicationRestrictionController;
  [(SBApplicationRestrictionController *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v10 = observerCopy;
  if (!observerCopy)
  {
    [(SBApplicationRestrictionController *)a2 addObserver:?];
    observerCopy = 0;
  }

  if (![(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    observers = self->_observers;
    if (!observers)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:16];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v10];
    v9 = [MEMORY[0x277CBEB98] setWithObject:v10];
    [(SBApplicationRestrictionController *)self _postRestrictionStateToObservers:v9];
  }
}

- (id)allAllowedAppBundleIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [(NSSet *)self->_restrictedIdentifiers copy];
  v5 = MEMORY[0x277CBEB58];
  allBundleIdentifiers = [WeakRetained allBundleIdentifiers];
  v7 = [v5 setWithArray:allBundleIdentifiers];

  [v7 minusSet:v4];
  alwaysAvailableApplicationBundleIdentifiers = [WeakRetained alwaysAvailableApplicationBundleIdentifiers];
  [v7 minusSet:alwaysAvailableApplicationBundleIdentifiers];
  v9 = [v7 copy];

  return v9;
}

- (id)allRestrictedAppBundleIdentifiers
{
  v2 = [(NSSet *)self->_restrictedIdentifiers copy];

  return v2;
}

- (BOOL)isAllowlistActiveAndTransient
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  effectiveWhitelistedAppBundleIDs = [mEMORY[0x277D262A0] effectiveWhitelistedAppBundleIDs];

  v4 = [mEMORY[0x277D262A0] BOOLRestrictionForFeature:@"SpringBoardShouldConsiderAppAllowlistAsTransient"];
  if (effectiveWhitelistedAppBundleIDs)
  {
    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (void)noteApplicationIdentifiersDidChangeWithAdded:(id)added replaced:(id)replaced removed:(id)removed
{
  v97 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  replacedCopy = replaced;
  removedCopy = removed;
  v55 = [MEMORY[0x277CBEB98] setWithSet:self->_enabledTags];
  v61 = [MEMORY[0x277CBEB58] set];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  allValues = [(NSMutableDictionary *)self->_validTagsByIdentifier allValues];
  v10 = [allValues countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v10)
  {
    v11 = *v87;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v87 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [v61 addObjectsFromArray:*(*(&v86 + 1) + 8 * i)];
      }

      v10 = [allValues countByEnumeratingWithState:&v86 objects:v96 count:16];
    }

    while (v10);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = removedCopy;
  v13 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v13)
  {
    v62 = 0;
    v14 = *v83;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v82 + 1) + 8 * j);
        [(NSMutableDictionary *)self->_validTagsByIdentifier removeObjectForKey:v16];
        v17 = [(NSMutableDictionary *)self->_ratingRanksByIdentifier objectForKey:v16];
        v18 = v17 == 0;

        if (!v18)
        {
          [(NSMutableDictionary *)self->_ratingRanksByIdentifier removeObjectForKey:v16];
          v62 = 1;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v13);
  }

  else
  {
    v62 = 0;
  }

  v19 = [MEMORY[0x277CBEB58] setWithSet:addedCopy];
  [v19 unionSet:replacedCopy];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v58 = v19;
  v20 = [v58 countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v20)
  {
    v60 = *v79;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v79 != v60)
        {
          objc_enumerationMutation(v58);
        }

        v22 = *(*(&v78 + 1) + 8 * k);
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v24 = [WeakRetained applicationWithBundleIdentifier:v22];

        info = [v24 info];
        tags = [info tags];

        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __100__SBApplicationRestrictionController_noteApplicationIdentifiersDidChangeWithAdded_replaced_removed___block_invoke;
        v77[3] = &unk_2783C3F60;
        v77[4] = self;
        v27 = [tags indexesOfObjectsPassingTest:v77];
        if ([v27 count])
        {
          v28 = [v27 count];
          if (v28 != [tags count])
          {
            v29 = [tags objectsAtIndexes:v27];

            tags = v29;
          }

          [(NSMutableDictionary *)self->_validTagsByIdentifier setObject:tags forKey:v22];
        }

        else
        {
          [(NSMutableDictionary *)self->_validTagsByIdentifier removeObjectForKey:v22];
        }

        v30 = [(NSMutableDictionary *)self->_ratingRanksByIdentifier objectForKey:v22];
        if ([v24 isSystemApplication])
        {
          if (v30)
          {
            [(NSMutableDictionary *)self->_ratingRanksByIdentifier removeObjectForKey:v22];
            v62 = 1;
          }
        }

        else
        {
          v31 = MEMORY[0x277CCABB0];
          info2 = [v24 info];
          v33 = [v31 numberWithInteger:{objc_msgSend(info2, "ratingRank")}];

          if (([v33 isEqual:v30] & 1) == 0)
          {
            [(NSMutableDictionary *)self->_ratingRanksByIdentifier setObject:v33 forKey:v22];
            v62 = 1;
          }
        }
      }

      v20 = [v58 countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v20);
  }

  v34 = [MEMORY[0x277CBEB58] set];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_validTagsByIdentifier allValues];
  v36 = [allValues2 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v36)
  {
    v37 = *v74;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v74 != v37)
        {
          objc_enumerationMutation(allValues2);
        }

        [v34 addObjectsFromArray:*(*(&v73 + 1) + 8 * m)];
      }

      v36 = [allValues2 countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v36);
  }

  if (self->_tagsNotificationToken != -1)
  {
    if ([v34 isEqualToSet:v61])
    {
      goto LABEL_64;
    }

    if (self->_tagsNotificationToken != -1)
    {
      MGCancelNotifications();
      self->_tagsNotificationToken = -1;
    }
  }

  [(NSMutableSet *)self->_enabledTags removeAllObjects];
  if ([v34 count])
  {
    objc_initWeak(&location, self);
    [v34 allObjects];
    v39 = MEMORY[0x277D85CD0];
    v67 = MEMORY[0x277D85DD0];
    v68 = 3221225472;
    v69 = __100__SBApplicationRestrictionController_noteApplicationIdentifiersDidChangeWithAdded_replaced_removed___block_invoke_2;
    v70 = &unk_2783B6180;
    objc_copyWeak(&v71, &location);
    self->_tagsNotificationToken = MGRegisterForUpdates();

    [v34 allObjects];
    v40 = MGCopyMultipleAnswers();
    v41 = SBLogAppLibrary();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v91 = v40;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_INFO, " *|MGReset|* response=%@", buf, 0xCu);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v63 objects:v92 count:16];
    if (v43)
    {
      v44 = *v64;
      do
      {
        for (n = 0; n != v43; ++n)
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v63 + 1) + 8 * n);
          Value = CFDictionaryGetValue(v42, v46);
          v48 = CFGetTypeID(Value);
          if (v48 == CFBooleanGetTypeID() && CFBooleanGetValue(Value))
          {
            [(NSMutableSet *)self->_enabledTags addObject:v46];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v63 objects:v92 count:16];
      }

      while (v43);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    objc_destroyWeak(&v71);
    objc_destroyWeak(&location);
  }

LABEL_64:
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  effectiveWhitelistedAppBundleIDs = [mEMORY[0x277D262A0] effectiveWhitelistedAppBundleIDs];

  if (effectiveWhitelistedAppBundleIDs)
  {
    if ([addedCopy count])
    {
      v51 = 1;
    }

    else
    {
      v51 = [obj count] != 0;
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = [(NSMutableSet *)self->_enabledTags isEqualToSet:v55];
  v53 = v52;
  if ((v62 | v51))
  {
    v54 = SBLogAppLibrary();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v91 = v62 & 1;
      *&v91[4] = 1024;
      *&v91[6] = v51;
      _os_log_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_INFO, "restriction update: installed change - rankChange=%{BOOL}u allowedAppsFilterChange=%{BOOL}u", buf, 0xEu);
    }

    [(SBApplicationRestrictionController *)self _updateRestrictionsAndForcePost:?];
  }

  else if ((v52 & 1) == 0)
  {
    [(SBApplicationRestrictionController *)self _postRestrictionStateToObservers:?];
  }
}

uint64_t __100__SBApplicationRestrictionController_noteApplicationIdentifiersDidChangeWithAdded_replaced_removed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) objectForKey:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:MGIsQuestionValid()];
    [*(*(a1 + 32) + 24) setObject:v4 forKey:v3];
  }

  v5 = [v4 BOOLValue];

  return v5;
}

- (void)carrierBundleInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
{
  v5 = SBLogAppLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "restriction update: carrier change", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SBApplicationRestrictionController_carrierBundleInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)beginPostingChanges
{
  [(SBApplicationRestrictionController *)self _updateVisibilityPreferences];
  if (!*(self + 64))
  {
    [(SBApplicationRestrictionController *)self _updateRestrictionsAndForcePost:?];
  }

  *a2 = 1;
  v4 = *(self + 16);

  [(SBApplicationRestrictionController *)self _postRestrictionStateToObservers:v4];
}

void __70__SBApplicationRestrictionController__updateRestrictionsAndForcePost___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__SBApplicationRestrictionController__updateRestrictionsAndForcePost___block_invoke_2;
  v2[3] = &unk_2783C3F88;
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __70__SBApplicationRestrictionController__updateRestrictionsAndForcePost___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) applicationWithBundleIdentifier:v3];
  v5 = [v4 processState];
  v6 = [v5 isRunning];

  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Killing %@ because it has been disabled", &v9, 0xCu);
    }

    SBWorkspaceKillApplication(v4, 1, @"app has been disabled/restricted", 0);
  }

  if ([v3 isEqualToString:@"com.apple.AppStore"])
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "App for rdar://67699908 is restricted", &v9, 2u);
    }
  }
}

- (void)_updateVisibilityPreferences
{
  if (self)
  {
    v2 = *(self + 80);
    shouldShowInternalApplications = [*(self + 72) shouldShowInternalApplications];
    *(self + 80) = shouldShowInternalApplications;
    if (v2 != shouldShowInternalApplications)
    {
      v4 = *(self + 16);

      [(SBApplicationRestrictionController *)self _postRestrictionStateToObservers:v4];
    }
  }
}

- (void)_postRestrictionStateToObservers:(uint64_t)observers
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (observers && *(observers + 82) == 1)
  {
    *(observers + 81) = [observers isAllowlistActiveAndTransient];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v42;
      do
      {
        v8 = 0;
        do
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v41 + 1) + 8 * v8);
          v10 = objc_opt_respondsToSelector();
          if (v10)
          {
            v10 = [v9 applicationRestrictionControllerWillPostAppVisibilityUpdate:observers];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = OUTLINED_FUNCTION_2_40(v10, v11, &v41, v47);
      }

      while (v6);
    }

    v32 = v3;

    v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:*(observers + 48)];
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:*(observers + 64)];
    [v13 addObject:@"hidden"];
    if (*(observers + 80) == 1)
    {
      [v12 addObject:@"SBInternalAppTag"];
    }

    WeakRetained = objc_loadWeakRetained((observers + 8));
    bundleIdentifiersWithVisibilityOverrideHidden = [WeakRetained bundleIdentifiersWithVisibilityOverrideHidden];
    [v13 unionSet:bundleIdentifiersWithVisibilityOverrideHidden];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v37 + 1) + 8 * v20++) applicationRestrictionController:observers didUpdateVisibleTags:v12 hiddenTags:v13];
        }

        while (v18 != v20);
        v18 = OUTLINED_FUNCTION_2_40(v21, v22, &v37, v46);
      }

      while (v18);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v16;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        v27 = 0;
        do
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * v27);
          v29 = objc_opt_respondsToSelector();
          if (v29)
          {
            v29 = [v28 applicationRestrictionControllerDidPostAppVisibilityUpdate:observers];
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = OUTLINED_FUNCTION_2_40(v29, v30, &v33, v45);
      }

      while (v25);
    }

    v31 = +[SBIconController sharedIconRepository];
    [v31 setVisibilityOfIconsWithVisibleTags:v12 hiddenTags:v13];

    v3 = v32;
  }
}

void __100__SBApplicationRestrictionController_noteApplicationIdentifiersDidChangeWithAdded_replaced_removed___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MGCopyAnswer();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = SBLogAppLibrary();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [WeakRetained[6] containsObject:a2];
    v9 = 138412802;
    v10 = a2;
    v11 = 1024;
    v12 = v7;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, " *|MGUpdate|* tag=%@ old=%i new=%@", &v9, 0x1Cu);
  }

  if (v4)
  {
    v8 = CFGetTypeID(v4);
    if (v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v4))
    {
      [WeakRetained[6] addObject:a2];
    }

    else
    {
      [WeakRetained[6] removeObject:a2];
    }

    CFRelease(v4);
    goto LABEL_5;
  }

  if (WeakRetained)
  {
LABEL_5:
    [(SBApplicationRestrictionController *)WeakRetained _postRestrictionStateToObservers:?];
  }
}

- (void)_postRestrictionState
{
  if (self)
  {
    OUTLINED_FUNCTION_0_57(self);
  }
}

- (void)_updateRestrictionsAndForcePost:(uint64_t)post
{
  v95 = *MEMORY[0x277D85DE8];
  if (post)
  {
    postCopy = post;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] invalidateRestrictionCache];
    v5 = [MEMORY[0x277CBEB58] set];
    WeakRetained = objc_loadWeakRetained((postCopy + 8));
    v73 = WeakRetained;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      restrictedAppBundleIDs = [mEMORY[0x277D262A0] restrictedAppBundleIDs];
      if (restrictedAppBundleIDs)
      {
        [v5 unionSet:restrictedAppBundleIDs];
      }

      effectiveWhitelistedAppBundleIDs = [mEMORY[0x277D262A0] effectiveWhitelistedAppBundleIDs];
      if (effectiveWhitelistedAppBundleIDs && ([mEMORY[0x277D262A0] isInSingleAppMode] & 1) == 0)
      {
        allBundleIdentifiers = [WeakRetained allBundleIdentifiers];
        v10 = a2;
        v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:allBundleIdentifiers];
        [v11 minusSet:effectiveWhitelistedAppBundleIDs];
        [v5 unionSet:v11];

        a2 = v10;
      }

      v12 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25F70]];
      if (v12)
      {
        v66 = effectiveWhitelistedAppBundleIDs;
        v67 = restrictedAppBundleIDs;
        v68 = a2;
        v70 = mEMORY[0x277D262A0];
        v13 = MEMORY[0x277CBEB98];
        v14 = v12;
        appsRatingExemptedBundleIDs = [mEMORY[0x277D262A0] appsRatingExemptedBundleIDs];
        v16 = appsRatingExemptedBundleIDs;
        if (appsRatingExemptedBundleIDs)
        {
          v17 = appsRatingExemptedBundleIDs;
        }

        else
        {
          v17 = MEMORY[0x277CBEBF8];
        }

        v18 = [v13 setWithArray:v17];

        v65 = v14;
        intValue = [v14 intValue];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v19 = *(postCopy + 56);
        v20 = [v19 countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v87;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v87 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v86 + 1) + 8 * i);
              v25 = [v18 containsObject:v24];
              if ((v25 & 1) == 0)
              {
                v27 = [*(postCopy + 56) objectForKey:v24];
                intValue2 = [v27 intValue];

                if (intValue2 > intValue)
                {
                  v25 = [v5 addObject:v24];
                }
              }
            }

            v21 = OUTLINED_FUNCTION_2_40(v25, v26, &v86, v94);
          }

          while (v21);
        }

        a2 = v68;
        mEMORY[0x277D262A0] = v70;
        WeakRetained = v73;
        effectiveWhitelistedAppBundleIDs = v66;
        restrictedAppBundleIDs = v67;
        v12 = v65;
      }
    }

    alwaysAvailableApplicationBundleIdentifiers = [WeakRetained alwaysAvailableApplicationBundleIdentifiers];
    [v5 minusSet:alwaysAvailableApplicationBundleIdentifiers];
    v30 = +[SBTelephonyManager sharedTelephonyManager];
    carrierDisabledApplicationIDs = [v30 carrierDisabledApplicationIDs];

    if (carrierDisabledApplicationIDs)
    {
      [v5 unionSet:carrierDisabledApplicationIDs];
    }

    v72 = postCopy;
    v75 = alwaysAvailableApplicationBundleIdentifiers;
    if (([mEMORY[0x277D262A0] isAppClipsAllowed] & 1) == 0)
    {
      v69 = a2;
      v32 = mEMORY[0x277D262A0];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      allApplications = [WeakRetained allApplications];
      v34 = [allApplications countByEnumeratingWithState:&v82 objects:v93 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v83;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v83 != v36)
            {
              objc_enumerationMutation(allApplications);
            }

            v38 = *(*(&v82 + 1) + 8 * j);
            info = [v38 info];
            isAppClip = [info isAppClip];

            if (isAppClip)
            {
              bundleIdentifier = [v38 bundleIdentifier];
              [v5 addObject:bundleIdentifier];
            }
          }

          v35 = OUTLINED_FUNCTION_2_40(v41, v42, &v82, v93);
        }

        while (v35);
      }

      mEMORY[0x277D262A0] = v32;
      postCopy = v72;
      WeakRetained = v73;
      a2 = v69;
      alwaysAvailableApplicationBundleIdentifiers = v75;
    }

    if (([*(postCopy + 64) isEqualToSet:v5] & 1) == 0)
    {
      v71 = mEMORY[0x277D262A0];
      v44 = SBLogCommon();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v5;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "New list of restricted identifiers: %@", buf, 0xCu);
      }

      v45 = [v5 copy];
      v46 = *(postCopy + 64);
      *(postCopy + 64) = v45;

      v47 = +[SBApplicationController sharedInstanceIfExists];
      v48 = [MEMORY[0x277CBEB58] set];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      windowSceneManager = [SBApp windowSceneManager];
      connectedWindowScenes = [windowSceneManager connectedWindowScenes];

      v53 = OUTLINED_FUNCTION_2_40(v51, v52, &v78, v90);
      if (v53)
      {
        v54 = v53;
        v55 = *v79;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v79 != v55)
            {
              objc_enumerationMutation(connectedWindowScenes);
            }

            sceneManager = [*(*(&v78 + 1) + 8 * k) sceneManager];
            v58 = [sceneManager externalApplicationSceneHandlesForBundleIdentifiers:v5];
            [v48 unionSet:v58];
          }

          v54 = OUTLINED_FUNCTION_2_40(v59, v60, &v78, v90);
        }

        while (v54);
      }

      a2 = 1;
      v61 = SBApplicationSceneEntityDestructionMakeIntent(1, 1);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __70__SBApplicationRestrictionController__updateRestrictionsAndForcePost___block_invoke;
      v76[3] = &unk_2783B27A0;
      postCopy = v72;
      v76[4] = v72;
      v77 = v47;
      v62 = v47;
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v48, v61, v76);

      mEMORY[0x277D262A0] = v71;
      WeakRetained = v73;
      alwaysAvailableApplicationBundleIdentifiers = v75;
    }

    v63 = *(postCopy + 81);
    isAllowlistActiveAndTransient = [postCopy isAllowlistActiveAndTransient];
    if ((a2 & 1) != 0 || v63 != isAllowlistActiveAndTransient)
    {
      [(SBApplicationRestrictionController *)postCopy _postRestrictionStateToObservers:?];
    }
  }
}

- (void)noteVisibilityOverridesDidChange
{
  if (self)
  {
    OUTLINED_FUNCTION_0_57(self);
  }
}

- (void)initWithDataSource:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationRestrictionController.m" lineNumber:75 description:@"SBApplicationRestrictionController is being created before the telephony state provider"];
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationRestrictionController.m" lineNumber:103 description:@"observer cannot be nil"];
}

@end