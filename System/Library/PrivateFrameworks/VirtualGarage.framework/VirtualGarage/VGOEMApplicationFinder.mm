@interface VGOEMApplicationFinder
- (BOOL)_addOEMApplicationForApplicationRecordIfNeeded:(id)needed;
- (BOOL)_removeOEMApplicationForBundleIdentifier:(id)identifier;
- (NSDictionary)allowlist;
- (NSSet)disabledAppIdentifiers;
- (VGOEMApplicationFinder)init;
- (VGOEMApplicationFinderUpdates)delegate;
- (id)_allowlistPayload;
- (id)_applicationRecordForBundleIdentifier:(id)identifier;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)findOEMApplications;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation VGOEMApplicationFinder

- (VGOEMApplicationFinder)init
{
  v17.receiver = self;
  v17.super_class = VGOEMApplicationFinder;
  v2 = [(VGOEMApplicationFinder *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("VGOEMApplicationFinderQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    applications = v2->_applications;
    v2->_applications = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 setWithObjects:{v10, v12, 0}];
    requiredIntents = v2->_requiredIntents;
    v2->_requiredIntents = v13;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    _GEOConfigAddDelegateListenerForKey();
  }

  return v2;
}

- (void)findOEMApplications
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__VGOEMApplicationFinder_findOEMApplications__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__VGOEMApplicationFinder_findOEMApplications__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v23 = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136315394;
    v48 = "[VGOEMApplicationFinder findOEMApplications]_block_invoke";
    v49 = 1024;
    v50 = 221;
    v24 = "strongSelf went away in %s line %d";
    v25 = v23;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 18;
LABEL_43:
    _os_log_impl(&dword_270EC1000, v25, v26, v24, buf, v27);
    goto LABEL_44;
  }

  v2 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Finding OEM apps", buf, 2u);
  }

  v3 = VGGetOEMApplicationLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VGGetOEMApplicationLog();
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "FindOEMApplications", "", buf, 2u);
  }

  v8 = *MEMORY[0x277D0EA90];
  v9 = *(MEMORY[0x277D0EA90] + 8);
  BOOL = GEOConfigGetBOOL();
  v11 = VGGetOEMApplicationLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!BOOL)
  {
    v41 = v4 - 1;
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Allowlist is disabled; querying all installed apps", buf, 2u);
    }

    v13 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v28 = objc_autoreleasePoolPush();
    v29 = [v13 nextObject];
    if (v29)
    {
      v30 = v29;
      v16 = 0;
      do
      {
        v31 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v30 bundleIdentifier];
          *buf = 138412290;
          v48 = v32;
          _os_log_impl(&dword_270EC1000, v31, OS_LOG_TYPE_INFO, "Processing bundle id %@", buf, 0xCu);
        }

        v16 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v30];
        objc_autoreleasePoolPop(v28);
        v28 = objc_autoreleasePoolPush();
        v33 = [v13 nextObject];

        v30 = v33;
      }

      while (v33);
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    objc_autoreleasePoolPop(v28);
    goto LABEL_33;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Allowlist enabled; querying all allowlist apps", buf, 2u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [WeakRetained allowlist];
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = v4;
    v41 = v4 - 1;
    v16 = 0;
    v17 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v19;
          _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_INFO, "Processing bundle id %@", buf, 0xCu);
        }

        v22 = [WeakRetained _applicationRecordForBundleIdentifier:v19];
        v16 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v22];

        objc_autoreleasePoolPop(v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v15);
    v4 = v40;
LABEL_33:
    v7 = v41;
    goto LABEL_34;
  }

  LOBYTE(v16) = 0;
LABEL_34:

  v34 = VGGetOEMApplicationLog();
  v35 = v34;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v35, OS_SIGNPOST_INTERVAL_END, v4, "FindOEMApplications", "", buf, 2u);
  }

  v23 = VGGetOEMApplicationLog();
  v36 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if ((v16 & 1) == 0)
  {
    if (!v36)
    {
      goto LABEL_44;
    }

    *buf = 0;
    v24 = "No OEM apps found";
    v25 = v23;
    v26 = OS_LOG_TYPE_INFO;
    v27 = 2;
    goto LABEL_43;
  }

  if (v36)
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v23, OS_LOG_TYPE_INFO, "Found OEM apps", buf, 2u);
  }

  v23 = [WeakRetained delegate];
  v37 = [WeakRetained applications];
  v38 = [v37 allValues];
  [v23 OEMAppsUpdated:v38];

LABEL_44:
  v39 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)allowlist
{
  v30 = *MEMORY[0x277D85DE8];
  allowlist = self->_allowlist;
  if (allowlist)
  {
    goto LABEL_21;
  }

  selfCopy = self;
  _allowlistPayload = [(VGOEMApplicationFinder *)self _allowlistPayload];
  v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(_allowlistPayload, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = _allowlistPayload;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = GEOConfigGetString();
        v12 = [v10 objectForKeyedSubscript:v11];

        v13 = GEOConfigGetString();
        v14 = [v10 objectForKeyedSubscript:v13];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSDictionary *)v22 setObject:v14 forKeyedSubscript:v12];

            goto LABEL_14;
          }
        }
      }

      v12 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "Encountered a bundle that is malformed: %@", buf, 0xCu);
      }

LABEL_14:
    }

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v7);
LABEL_16:

  v15 = selfCopy->_allowlist;
  selfCopy->_allowlist = v22;
  v16 = v22;

  v17 = [(NSDictionary *)selfCopy->_allowlist count];
  if (!v17)
  {
    v18 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "Error parsing manifest resource. Not having any allowlisted apps is a grave error.", buf, 2u);
    }
  }

  allowlist = selfCopy->_allowlist;
LABEL_21:
  v19 = *MEMORY[0x277D85DE8];

  return allowlist;
}

- (id)_allowlistPayload
{
  v2 = objc_autoreleasePoolPush();
  v3 = VGAllowlistPayload();
  v4 = GEOConfigGetString();
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "No allowlisted apps. Returning.", v9, 2u);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v6;
}

- (VGOEMApplicationFinderUpdates)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = VGOEMApplicationFinder;
  [(VGOEMApplicationFinder *)&v4 dealloc];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v16 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__VGOEMApplicationFinder_applicationsDidUninstall___block_invoke;
  v11[3] = &unk_279E26F20;
  objc_copyWeak(&v13, buf);
  v12 = uninstallCopy;
  v9 = uninstallCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __51__VGOEMApplicationFinder_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[VGOEMApplicationFinder applicationsDidUninstall:]_block_invoke";
      v22 = 1024;
      v23 = 300;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        v6 |= [WeakRetained _removeOEMApplicationForBundleIdentifier:v11];

        objc_autoreleasePoolPop(v10);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (v6)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v12 = [WeakRetained applications];
    v13 = [v12 allValues];
    [v3 OEMAppsUpdated:v13];

    goto LABEL_15;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)install
{
  v16 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__VGOEMApplicationFinder_applicationsDidInstall___block_invoke;
  v11[3] = &unk_279E26F20;
  objc_copyWeak(&v13, buf);
  v12 = installCopy;
  v9 = installCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __49__VGOEMApplicationFinder_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[VGOEMApplicationFinder applicationsDidInstall:]_block_invoke";
      v23 = 1024;
      v24 = 275;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        v12 = [WeakRetained _applicationRecordForBundleIdentifier:v11];
        v6 |= [WeakRetained _addOEMApplicationForApplicationRecordIfNeeded:v12];

        objc_autoreleasePoolPop(v10);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);

  if (v6)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v13 = [WeakRetained applications];
    v14 = [v13 allValues];
    [v3 OEMAppsUpdated:v14];

    goto LABEL_15;
  }

LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeOEMApplicationForBundleIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applications = [(VGOEMApplicationFinder *)self applications];
  v6 = [applications objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Removed application: %@", &v11, 0xCu);
    }

    applications2 = [(VGOEMApplicationFinder *)self applications];
    [applications2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (BOOL)_addOEMApplicationForApplicationRecordIfNeeded:(id)needed
{
  v31 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  bundleIdentifier = [neededCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    applications = [(VGOEMApplicationFinder *)self applications];
    v7 = [applications objectForKeyedSubscript:bundleIdentifier];

    if (!v7)
    {
      v9 = [MEMORY[0x277CD3A68] appInfoWithApplicationRecord:neededCopy];
      supportedIntents = [v9 supportedIntents];

      v8 = [(NSSet *)self->_requiredIntents isSubsetOfSet:supportedIntents];
      if (v8)
      {
        v11 = [[VGOEMApplication alloc] initWithIdentifier:bundleIdentifier applicationRecord:neededCopy];
        allowlist = [(VGOEMApplicationFinder *)self allowlist];
        v13 = [allowlist objectForKeyedSubscript:bundleIdentifier];
        [(VGOEMApplication *)v11 setAllowedFormulaIDs:v13];

        disabledAppIdentifiers = [(VGOEMApplicationFinder *)self disabledAppIdentifiers];
        -[VGOEMApplication setEnabled:](v11, "setEnabled:", [disabledAppIdentifiers containsObject:bundleIdentifier] ^ 1);

        v15 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = bundleIdentifier;
          _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "Added application: %@", &v27, 0xCu);
        }

        applications2 = [(VGOEMApplicationFinder *)self applications];
        [applications2 setObject:v11 forKeyedSubscript:bundleIdentifier];

        goto LABEL_14;
      }

      allowlist2 = [(VGOEMApplicationFinder *)self allowlist];
      v18 = [allowlist2 objectForKeyedSubscript:bundleIdentifier];

      v19 = VGGetOEMApplicationLog();
      v11 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          requiredIntents = self->_requiredIntents;
          v27 = 138412546;
          v28 = bundleIdentifier;
          v29 = 2112;
          v30 = requiredIntents;
          v21 = "allowlisted application '%@' doesn't support our required intents: %@";
          p_super = &v11->super;
          v23 = OS_LOG_TYPE_ERROR;
LABEL_13:
          _os_log_impl(&dword_270EC1000, p_super, v23, v21, &v27, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = self->_requiredIntents;
        v27 = 138412546;
        v28 = bundleIdentifier;
        v29 = 2112;
        v30 = v24;
        v21 = "application '%@' doesn't support our required intents: %@";
        p_super = &v11->super;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_applicationRecordForBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_8;
  }

  v5 = *MEMORY[0x277D0EA90];
  v6 = *(MEMORY[0x277D0EA90] + 8);
  if (!GEOConfigGetBOOL() || (-[VGOEMApplicationFinder allowlist](self, "allowlist"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:identifierCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    applications = [(VGOEMApplicationFinder *)self applications];
    v10 = [applications objectForKeyedSubscript:identifierCopy];

    if (v10)
    {
      v11 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_DEBUG, "Won't create an LSAppRecord for bundleId: %@ as we already have this app saved.", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v17 = 0;
      v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v17];
      v11 = v17;
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v14 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = identifierCopy;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "Failed making LSApplicationRecord for '%@': %@. App is not installed", buf, 0x16u);
        }
      }
    }
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  v4 = *&key.var0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__VGOEMApplicationFinder_valueChangedForGEOConfigKey___block_invoke;
  v7[3] = &unk_279E26B90;
  objc_copyWeak(v8, &location);
  v8[1] = v4;
  v8[2] = var1;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __54__VGOEMApplicationFinder_valueChangedForGEOConfigKey___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[VGOEMApplicationFinder valueChangedForGEOConfigKey:]_block_invoke";
      v25 = 1024;
      v26 = 137;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_17;
  }

  if (*(a1 + 40) == 17 && *(a1 + 48) == &VirtualGarageConfig_EVRoutingDisabledApplications_Metadata)
  {
    [WeakRetained setDisabledAppIdentifiers:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v3 applications];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v3 applications];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = [v3 disabledAppIdentifiers];
          [v12 setEnabled:{objc_msgSend(v13, "containsObject:", v10) ^ 1}];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v14 = [v3 delegate];
    v15 = [v3 applications];
    v16 = [v15 allValues];
    [v14 OEMAppsUpdated:v16];

LABEL_17:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NSSet)disabledAppIdentifiers
{
  disabledAppIdentifiers = self->_disabledAppIdentifiers;
  if (!disabledAppIdentifiers)
  {
    v4 = GEOConfigGetString();
    v5 = MEMORY[0x277CBEB98];
    v6 = [v4 componentsSeparatedByString:{@", "}];
    v7 = [v5 setWithArray:v6];
    v8 = self->_disabledAppIdentifiers;
    self->_disabledAppIdentifiers = v7;

    disabledAppIdentifiers = self->_disabledAppIdentifiers;
  }

  return disabledAppIdentifiers;
}

@end