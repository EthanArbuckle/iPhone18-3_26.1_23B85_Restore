@interface SBHApplicationDataSource
- (NSArray)applicationPlaceholders;
- (NSArray)applications;
- (SBHApplicationDataSource)initWithOptions:(unint64_t)a3;
- (id)allApplicationPlaceholdersForIconModel:(id)a3;
- (id)applicationPlaceholderWithBundleIdentifier:(id)a3;
- (id)applicationPlaceholdersForFrontBoardPlaceholders:(id)a3;
- (id)applicationWithBundleIdentifier:(id)a3;
- (id)applicationsForApplicationsInfo:(id)a3;
- (void)_didAddApplicationsInfo:(id)a3;
- (void)_didAddPlaceholders:(id)a3;
- (void)_didRemoveApplicationsInfo:(id)a3;
- (void)_didRemovePlaceholders:(id)a3;
- (void)_didReplaceApplicationsInfo:(id)a3;
- (void)addApplicationInfoProviderObserver:(id)a3;
- (void)addIconModelApplicationDataSourceObserver:(id)a3;
- (void)dealloc;
- (void)uninstallApplicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)uninstallApplicationWithBundleIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation SBHApplicationDataSource

- (SBHApplicationDataSource)initWithOptions:(unint64_t)a3
{
  v51.receiver = self;
  v51.super_class = SBHApplicationDataSource;
  v4 = [(SBHApplicationDataSource *)&v51 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E699FA90]);
    [v5 setAllowConcurrentLoading:1];
    v6 = objc_opt_self();
    [v5 setApplicationInfoClass:v6];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke;
    v50[3] = &__block_descriptor_40_e28_B16__0__LSApplicationProxy_8l;
    v50[4] = a3;
    [v5 setInstalledApplicationFilter:v50];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applications = v4->_applications;
    v4->_applications = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applicationPlaceholders = v4->_applicationPlaceholders;
    v4->_applicationPlaceholders = v9;

    v11 = [objc_alloc(MEMORY[0x1E699FA88]) initWithConfiguration:v5];
    appLibrary = v4->_appLibrary;
    v4->_appLibrary = v11;

    objc_initWeak(&location, v4);
    v13 = v4->_appLibrary;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_2;
    v47[3] = &unk_1E8091188;
    objc_copyWeak(&v48, &location);
    v14 = [(FBSApplicationLibrary *)v13 observeDidAddApplicationsWithBlock:v47];
    addApplicationsObservationToken = v4->_addApplicationsObservationToken;
    v4->_addApplicationsObservationToken = v14;

    v16 = v4->_appLibrary;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_4;
    v45[3] = &unk_1E80911B0;
    objc_copyWeak(&v46, &location);
    v17 = [(FBSApplicationLibrary *)v16 observeDidReplaceApplicationsWithBlock:v45];
    replaceApplicationsObservationToken = v4->_replaceApplicationsObservationToken;
    v4->_replaceApplicationsObservationToken = v17;

    v19 = v4->_appLibrary;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_6;
    v43[3] = &unk_1E80911B0;
    objc_copyWeak(&v44, &location);
    v20 = [(FBSApplicationLibrary *)v19 observeDidUpdateApplicationsWithBlock:v43];
    updateApplicationsObservationToken = v4->_updateApplicationsObservationToken;
    v4->_updateApplicationsObservationToken = v20;

    v22 = v4->_appLibrary;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_8;
    v41[3] = &unk_1E8091188;
    objc_copyWeak(&v42, &location);
    v23 = [(FBSApplicationLibrary *)v22 observeDidRemoveApplicationsWithBlock:v41];
    removeApplicationsObservationToken = v4->_removeApplicationsObservationToken;
    v4->_removeApplicationsObservationToken = v23;

    v25 = v4->_appLibrary;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_10;
    v39[3] = &unk_1E8091188;
    objc_copyWeak(&v40, &location);
    v26 = [(FBSApplicationLibrary *)v25 observeDidDemoteApplicationsWithBlock:v39];
    demoteApplicationsObservationToken = v4->_demoteApplicationsObservationToken;
    v4->_demoteApplicationsObservationToken = v26;

    v28 = v4->_appLibrary;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_12;
    v37[3] = &unk_1E8091188;
    objc_copyWeak(&v38, &location);
    v29 = [(FBSApplicationLibrary *)v28 observeDidAddPlaceholdersWithBlock:v37];
    addPlaceholdersObservationToken = v4->_addPlaceholdersObservationToken;
    v4->_addPlaceholdersObservationToken = v29;

    v31 = v4->_appLibrary;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __44__SBHApplicationDataSource_initWithOptions___block_invoke_14;
    v35[3] = &unk_1E8091188;
    objc_copyWeak(&v36, &location);
    v32 = [(FBSApplicationLibrary *)v31 observeDidCancelPlaceholdersWithBlock:v35];
    removedPlaceholdersObservationToken = v4->_removedPlaceholdersObservationToken;
    v4->_removedPlaceholdersObservationToken = v32;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v4;
}

uint64_t __44__SBHApplicationDataSource_initWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appTags];
  v5 = [v4 containsObject:@"hidden"];

  if ((v5 & 1) == 0)
  {
    v7 = [v3 applicationType];
    v8 = v7;
    v9 = *(a1 + 32);
    if (v9)
    {
      if ([v7 isEqualToString:@"User"])
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 32);
    }

    if ((v9 & 2) != 0)
    {
      if ([v8 isEqualToString:@"System"])
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 32);
    }

    if ((v9 & 4) == 0 || ([v8 isEqualToString:@"Internal"] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v6 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddApplicationsInfo:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReplaceApplicationsInfo:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReplaceApplicationsInfo:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRemoveApplicationsInfo:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRemoveApplicationsInfo:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddPlaceholders:*(a1 + 32)];
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __44__SBHApplicationDataSource_initWithOptions___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRemovePlaceholders:*(a1 + 32)];
}

- (void)dealloc
{
  if (self->_addApplicationsObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_replaceApplicationsObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_updateApplicationsObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_removeApplicationsObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_demoteApplicationsObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_addPlaceholdersObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  if (self->_removedPlaceholdersObservationToken)
  {
    [(FBSApplicationLibrary *)self->_appLibrary removeObserverForToken:?];
  }

  v3.receiver = self;
  v3.super_class = SBHApplicationDataSource;
  [(SBHApplicationDataSource *)&v3 dealloc];
}

- (NSArray)applications
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FBSApplicationLibrary *)self->_appLibrary allInstalledApplications];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [(SBHApplicationDataSource *)self applicationWithBundleIdentifier:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_applications objectForKey:v4];
  if (!v5)
  {
    v6 = [(FBSApplicationLibrary *)self->_appLibrary applicationInfoForBundleIdentifier:v4];
    if (v6)
    {
      v5 = [[SBHSimpleApplication alloc] initWithApplicationInfo:v6];
      [(SBHSimpleApplication *)v5 setIconModelApplicationDataSource:self];
      [(NSMutableDictionary *)self->_applications setObject:v5 forKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)applicationPlaceholders
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FBSApplicationLibrary *)self->_appLibrary allPlaceholders];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [(SBHApplicationDataSource *)self applicationPlaceholderWithBundleIdentifier:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)applicationPlaceholderWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_applicationPlaceholders objectForKey:v4];
  if (!v5)
  {
    v6 = [(FBSApplicationLibrary *)self->_appLibrary placeholderWithBundleIdentifier:v4];
    if (v6)
    {
      v5 = [[SBHProxiedApplicationPlaceholder alloc] initWithPlaceholderProxy:v6];
      [(NSMutableDictionary *)self->_applicationPlaceholders setObject:v5 forKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)uninstallApplicationWithBundleIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E699FA98];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  [v10 setUserInitiated:1];
  appLibrary = self->_appLibrary;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke;
  v13[3] = &unk_1E808E828;
  v14 = v7;
  v12 = v7;
  [(FBSApplicationLibrary *)appLibrary uninstallApplication:v9 withOptions:v10 completion:v13];
}

void __88__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke_2;
  v5[3] = &unk_1E8088D68;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __88__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_options_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (id)applicationsForApplicationsInfo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v12 = [(SBHApplicationDataSource *)self applicationWithBundleIdentifier:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)applicationPlaceholdersForFrontBoardPlaceholders:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v12 = [(SBHApplicationDataSource *)self applicationPlaceholderWithBundleIdentifier:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_didAddApplicationsInfo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(SBHApplicationDataSource *)self applicationsForApplicationsInfo:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSHashTable *)self->_oldObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconModelApplicationDataSource:self applicationsAdded:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 applicationInfoProvider:self didAddApplications:v4];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)_didReplaceApplicationsInfo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 bundleIdentifier];
        [(NSMutableDictionary *)self->_applications removeObjectForKey:v12];
        v13 = [v6 objectForKey:v11];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v14 = [(SBHApplicationDataSource *)self applicationsForApplicationsInfo:v5];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [(NSHashTable *)self->_oldObservers copy];
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v20 iconModelApplicationDataSource:self applicationsUpdated:v14];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v17);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [(NSHashTable *)self->_observers copy];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v27 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v26 applicationInfoProvider:self didUpdateApplications:v14];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v23);
  }
}

- (void)_didRemoveApplicationsInfo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHApplicationDataSource *)self applicationsForApplicationsInfo:v4];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v32 + 1) + 8 * v10) bundleIdentifier];
        [(NSMutableDictionary *)self->_applications removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(NSHashTable *)self->_oldObservers copy];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 iconModelApplicationDataSource:self applicationsRemoved:v5];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [(NSHashTable *)self->_observers copy];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (objc_opt_respondsToSelector())
          {
            [v23 applicationInfoProvider:self didRemoveApplications:v5];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v20);
    }
  }
}

- (void)_didAddPlaceholders:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(SBHApplicationDataSource *)self applicationPlaceholdersForFrontBoardPlaceholders:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSHashTable *)self->_oldObservers copy];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconModelApplicationDataSource:self applicationPlaceholdersAdded:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 applicationInfoProvider:self didAddApplicationPlaceholders:v4];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)_didRemovePlaceholders:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHApplicationDataSource *)self applicationPlaceholdersForFrontBoardPlaceholders:v4];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v32 + 1) + 8 * v10) bundleIdentifier];
        [(NSMutableDictionary *)self->_applicationPlaceholders removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(NSHashTable *)self->_oldObservers copy];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 iconModelApplicationDataSource:self applicationPlaceholdersRemoved:v5];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [(NSHashTable *)self->_observers copy];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (objc_opt_respondsToSelector())
          {
            [v23 applicationInfoProvider:self didRemoveApplicationPlaceholders:v5];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v20);
    }
  }
}

- (void)addApplicationInfoProviderObserver:(id)a3
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

- (id)allApplicationPlaceholdersForIconModel:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FBSApplicationLibrary *)self->_appLibrary allPlaceholders];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v10 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v11 = [(SBHApplicationDataSource *)self applicationPlaceholderWithBundleIdentifier:v10];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addIconModelApplicationDataSourceObserver:(id)a3
{
  v4 = a3;
  oldObservers = self->_oldObservers;
  v8 = v4;
  if (!oldObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_oldObservers;
    self->_oldObservers = v6;

    v4 = v8;
    oldObservers = self->_oldObservers;
  }

  [(NSHashTable *)oldObservers addObject:v4];
}

- (void)uninstallApplicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_completion___block_invoke;
  v8[3] = &unk_1E8088EF0;
  v9 = v6;
  v7 = v6;
  [(SBHApplicationDataSource *)self uninstallApplicationWithBundleIdentifier:a3 options:0 completion:v8];
}

uint64_t __80__SBHApplicationDataSource_uninstallApplicationWithBundleIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 1);
  }

  return result;
}

@end