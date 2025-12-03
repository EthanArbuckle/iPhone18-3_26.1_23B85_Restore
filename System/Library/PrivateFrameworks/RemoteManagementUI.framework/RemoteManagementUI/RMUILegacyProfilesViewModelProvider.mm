@interface RMUILegacyProfilesViewModelProvider
- (RMUILegacyProfilesViewModelProvider)initWithScope:(int64_t)scope;
- (void)_updateViewModelsWithDeclarations:(id)declarations;
- (void)loadProfilesFromConfigurationsWithCompletionHandler:(id)handler;
@end

@implementation RMUILegacyProfilesViewModelProvider

- (RMUILegacyProfilesViewModelProvider)initWithScope:(int64_t)scope
{
  v8.receiver = self;
  v8.super_class = RMUILegacyProfilesViewModelProvider;
  v4 = [(RMUILegacyProfilesViewModelProvider *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    profileViewModels = v4->_profileViewModels;
    v4->_profileViewModels = v5;

    v4->_scope = scope;
  }

  return v4;
}

- (void)_updateViewModelsWithDeclarations:(id)declarations
{
  v27 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  profileViewModels = [(RMUILegacyProfilesViewModelProvider *)self profileViewModels];
  [profileViewModels removeAllObjects];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = declarationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = objc_opt_new();
        label = [v11 label];
        [v12 setTitle:label];

        profileIdentifier = [v11 profileIdentifier];
        [v12 setProfileIdentifier:profileIdentifier];

        declaration = [v11 declaration];
        [v12 setDeclaration:declaration];

        [v12 setSymbol:1];
        [v12 setIsInteractiveProfile:{objc_msgSend(v11, "isRequired") ^ 1}];
        if ([v12 isInteractiveProfile])
        {
          label2 = [v11 label];
          toggleViewModel = [v12 toggleViewModel];
          [toggleViewModel setTitle:label2];

          isActive = [v11 isActive];
          profileIdentifier2 = [v11 profileIdentifier];
          [v12 setInteractiveProfileActive:isActive profileIdentifier:profileIdentifier2];
        }

        profileViewModels2 = [(RMUILegacyProfilesViewModelProvider *)self profileViewModels];
        [profileViewModels2 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)loadProfilesFromConfigurationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke;
  v12[3] = &unk_279B07CB0;
  objc_copyWeak(&v14, &location);
  v5 = handlerCopy;
  v13 = v5;
  v6 = MEMORY[0x266720D10](v12);
  observerStore = [(RMUILegacyProfilesViewModelProvider *)self observerStore];
  if (observerStore)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8;
    v9[3] = &unk_279B07CD8;
    v11 = v6;
    v9[4] = self;
    v10 = observerStore;
    [v10 displayableProfileConfigurationsWithCompletionHandler:v9];
  }

  else
  {
    v8 = +[RMUILog profilesViewModelProvider];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RMUILegacyProfilesViewModelProvider loadProfilesFromConfigurationsWithCompletionHandler:v8];
    }

    v6[2](v6, MEMORY[0x277CBEBF8]);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279B07C88;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _updateViewModelsWithDeclarations:*(a1 + 32)];
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v5);
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RMUILog profilesViewModelProvider];
  v8 = v7;
  if (v5)
  {
    v34 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8_cold_1(v5, v8);
    }

    v38 = [MEMORY[0x277D460C0] newProfileControllerWithPrefix:*MEMORY[0x277D46080] scope:{objc_msgSend(*(a1 + 32), "scope")}];
    v37 = [v38 installedProfileIdentifiers];
    v9 = [MEMORY[0x277D460C0] newProfileControllerWithPrefix:*MEMORY[0x277D46088] scope:{objc_msgSend(*(a1 + 32), "scope")}];
    v36 = [v9 installedProfileIdentifiers];
    v39 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v5;
    v10 = v5;
    v11 = v9;
    obj = v10;
    v12 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v16 = v11;
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = [v17 declarationIdentifier];
          v19 = [*(a1 + 32) filterDeclarationIdentifiers];
          if (v19)
          {
            v20 = v19;
            v21 = [*(a1 + 32) filterDeclarationIdentifiers];
            v22 = [v21 containsObject:v18];

            if ((v22 & 1) == 0)
            {
              v23 = +[RMUILog profilesViewModelProvider];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v46 = v18;
                _os_log_debug_impl(&dword_261E8A000, v23, OS_LOG_TYPE_DEBUG, "Ignoring configuration: %@", buf, 0xCu);
              }

              v11 = v16;
              goto LABEL_24;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v16;
            v23 = [v16 profileIdentifierForDeclaration:v17 store:*(a1 + 40)];
            if (!v23 || ([v16 profileNameForProfileIdentifier:v23], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v25 = +[RMUILog profilesViewModelProvider];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v46 = v23;
                _os_log_error_impl(&dword_261E8A000, v25, OS_LOG_TYPE_ERROR, "Error fetching name from legacy profile %{public}@", buf, 0xCu);
              }

              goto LABEL_23;
            }

            v25 = v24;
            v26 = [v36 containsObject:v23];
            v27 = [RMUIDeclarationInfo alloc];
            v28 = v17;
            v29 = v25;
            v30 = v23;
            v31 = 1;
          }

          else
          {
            objc_opt_class();
            v11 = v16;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_25;
            }

            v23 = [v38 profileIdentifierForDeclaration:v17 store:*(a1 + 40)];
            v25 = [v17 payloadVisibleName];
            v26 = [v37 containsObject:v23];
            v27 = [RMUIDeclarationInfo alloc];
            v28 = v17;
            v29 = v25;
            v30 = v23;
            v31 = 0;
          }

          v32 = [(RMUIDeclarationInfo *)v27 initWithProfileDeclaration:v28 label:v29 profileIdentifier:v30 isRequired:v31 isActive:v26];
          [v39 addObject:v32];

          v11 = v16;
LABEL_23:

LABEL_24:
LABEL_25:
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v13);
    }

    (*(*(a1 + 48) + 16))();
    v6 = v34;
    v5 = v35;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8_cold_2(v6, v8);
    }

    (*(*(a1 + 48) + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_261E8A000, a2, OS_LOG_TYPE_DEBUG, "Found RMConfigurationTypeLegacyProfiles & RMConfigurationTypeLegacyInteractiveProfiles configurations: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __91__RMUILegacyProfilesViewModelProvider_loadProfilesFromConfigurationsWithCompletionHandler___block_invoke_8_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_261E8A000, a2, OS_LOG_TYPE_ERROR, "Failed to find RMConfigurationTypeLegacyProfiles & RMConfigurationTypeLegacyInteractiveProfiles configurations: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end