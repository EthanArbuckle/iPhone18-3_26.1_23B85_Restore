@interface SBProactiveHomeScreenSuggestionProvider
- (SBHIconManager)iconManager;
- (SBProactiveHomeScreenSuggestionProvider)initWithIconManager:(id)manager;
- (id)_iconDataSourceInIcon:(id)icon withUniqueIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind suggestionSource:(int64_t)source;
- (id)_makeDataSourceForAtxWidget:(id)widget;
- (id)_supportedElementClasses;
- (id)iconModel;
- (id)rootFolder;
- (void)addObserver:(id)observer;
- (void)processUpdatedPredictions:(id)predictions;
- (void)updatePredictions;
@end

@implementation SBProactiveHomeScreenSuggestionProvider

- (SBProactiveHomeScreenSuggestionProvider)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBProactiveHomeScreenSuggestionProvider;
  v5 = [(SBProactiveHomeScreenSuggestionProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    [mEMORY[0x277CEB5A0] registerObserver:v6];

    [(SBProactiveHomeScreenSuggestionProvider *)v6 updatePredictions];
  }

  return v6;
}

- (id)iconModel
{
  iconManager = [(SBProactiveHomeScreenSuggestionProvider *)self iconManager];
  iconModel = [iconManager iconModel];

  return iconModel;
}

- (id)rootFolder
{
  iconModel = [(SBProactiveHomeScreenSuggestionProvider *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (void)updatePredictions
{
  v3 = SBLogProactiveHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "fetching new home screen predictions", buf, 2u);
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke;
  v5[3] = &unk_2783B9270;
  v5[4] = self;
  [mEMORY[0x277CEB5A0] homeScreenPredictionWithReply:v5];
}

void __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = a3;
  v5 = v7;
  v6 = v4;
  BSDispatchMain();
}

uint64_t __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 processUpdatedPredictions:?];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = SBLogProactiveHome();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2_cold_1((a1 + 48), v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "No prediction when fetching home screen widget predictions", v7, 2u);
    }

    return [*(a1 + 40) setCurrentPrediction:0];
  }
}

- (void)processUpdatedPredictions:(id)predictions
{
  v25 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v5 = SBLogProactiveHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBProactiveHomeScreenSuggestionProvider *)predictionsCopy processUpdatedPredictions:v5];
  }

  currentPrediction = [(SBProactiveHomeScreenSuggestionProvider *)self currentPrediction];
  [(SBProactiveHomeScreenSuggestionProvider *)self setCurrentPrediction:predictionsCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 proactiveHomeScreenSuggestionProviderDidUpdatePrediction:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  rootFolder = [(SBProactiveHomeScreenSuggestionProvider *)self rootFolder];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke;
  v16[3] = &unk_2783B92C0;
  v17 = predictionsCopy;
  v18 = currentPrediction;
  selfCopy = self;
  v14 = currentPrediction;
  v15 = predictionsCopy;
  [rootFolder enumerateAllIconsUsingBlock:v16];
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isWidgetStackIcon])
  {
    v4 = v3;
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) suggestionForStackIdentifier:v5];
    v7 = [*(a1 + 40) suggestionForStackIdentifier:v5];
    v8 = SBLogProactiveHome();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_cold_1();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17;
    v14[3] = &unk_2783A8F00;
    v9 = *(a1 + 48);
    v15 = v6;
    v16 = v9;
    v17 = v4;
    v18 = v5;
    v19 = v7;
    v10 = v7;
    v11 = v5;
    v12 = v4;
    v13 = v6;
    [v12 performCoalescedDataSourceUpdate:v14];
  }
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [*(a1 + 32) suggestedWidgets];
  v49 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v49)
  {
    v48 = *v59;
    *&v3 = 138412290;
    v44 = v3;
    v45 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v4;
        v5 = *(*(&v58 + 1) + 8 * v4);
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = [v5 widgetUniqueId];
        v9 = [v5 extensionBundleId];
        v10 = [v5 widgetKind];
        v11 = [v6 _iconDataSourceInIcon:v7 withUniqueIdentifier:v8 extensionBundleIdentifier:v9 widgetKind:v10 suggestionSource:1];

        if (v11)
        {
          v12 = SBLogProactiveHome();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v44;
            v64 = v11;
            _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "skipping adding data source because the suggested widget %@ is already suggested in stack", buf, 0xCu);
          }

          [v2 addObject:v11];
        }

        else
        {
          v13 = [*(a1 + 40) _makeDataSourceForAtxWidget:v5];
          if (v13)
          {
            v14 = SBLogProactiveHome();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = v44;
              v64 = v13;
              _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "adding new suggested widget data source %@", buf, 0xCu);
            }

            v46 = v13;

            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v51 = *(*(a1 + 40) + 8);
            v15 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v55;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v55 != v17)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v19 = *(*(&v54 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v20 = *(a1 + 40);
                    v21 = [v5 intent];
                    v22 = *(a1 + 56);
                    [v5 widgetUniqueId];
                    v23 = v5;
                    v25 = v24 = a1;
                    [v19 proactiveHomeScreenSuggestionProvider:v20 willUseTemporaryIntent:v21 forIconWithIdentifier:v22 widgetUniqueIdentifier:v25];

                    a1 = v24;
                    v5 = v23;
                  }
                }

                v16 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v16);
            }

            v26 = [*(a1 + 48) allowsSuggestions];
            v27 = *(a1 + 48);
            if (v26)
            {
              v13 = v46;
              [v27 addIconDataSource:v46];
            }

            else
            {
              v28 = [v27 activeDataSource];
              v13 = v46;
              [*(a1 + 48) insertIconDataSource:v46 beforeIconDataSource:v28];
            }

            v2 = v45;
            v11 = 0;
            [v45 addObject:v13];
          }
        }

        v4 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v49);
  }

  v30 = (a1 + 48);
  v29 = *(a1 + 48);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21;
  v52[3] = &unk_2783B9298;
  v31 = v2;
  v53 = v31;
  [v29 removeIconDataSourcesPassingTest:v52];
  v32 = [*(a1 + 40) iconManager];
  if ([v32 isShowingModalInteraction])
  {
    v33 = SBLogProactiveHome();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_5(v33);
    }
  }

  else
  {
    v34 = [*(a1 + 32) topWidget];

    if (v34)
    {
      v33 = [*(a1 + 32) topWidget];
      v35 = [*(a1 + 64) topWidget];
      if ([v33 isEqual:v35])
      {
        v36 = SBLogProactiveHome();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_3();
        }
      }

      else
      {
        v38 = *(a1 + 40);
        v37 = *(a1 + 48);
        v39 = [v33 widgetUniqueId];
        v40 = [v33 extensionBundleId];
        v41 = [v33 widgetKind];
        v36 = [v38 _iconDataSourceInIcon:v37 withUniqueIdentifier:v39 extensionBundleIdentifier:v40 widgetKind:v41 suggestionSource:0];

        v42 = SBLogProactiveHome();
        v43 = v42;
        if (v36)
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_1(v36, v30, v43);
          }

          [*v30 setStackChangeReason:2];
          [*v30 setActiveDataSource:v36];
        }

        else
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_2(v33, v43);
          }
        }
      }
    }

    else
    {
      v33 = SBLogProactiveHome();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_4(v33);
      }
    }
  }
}

uint64_t __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [v3 suggestionSource] == 1 && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    v6 = SBLogProactiveHome();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21_cold_1(v3, v6);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (id)_supportedElementClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

- (id)_iconDataSourceInIcon:(id)icon withUniqueIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind suggestionSource:(int64_t)source
{
  iconCopy = icon;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  if (identifier)
  {
    v15 = [iconCopy firstIconDataSourceWithUniqueIdentifier:identifier];
LABEL_3:
    v16 = v15;
    goto LABEL_8;
  }

  v17 = [MEMORY[0x277D66148] elementClassWithIdentifier:bundleIdentifierCopy];
  if (v17)
  {
    v18 = v17;
    _supportedElementClasses = [(SBProactiveHomeScreenSuggestionProvider *)self _supportedElementClasses];
    v20 = [_supportedElementClasses containsObject:v18];

    if (v20)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke;
      v26[3] = &__block_descriptor_48_e32_B16__0___SBLeafIconDataSource__8lu40l8;
      v26[4] = source;
      v26[5] = v18;
      v15 = [iconCopy firstIconDataSourcePassingTest:v26];
      goto LABEL_3;
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke_2;
  v22[3] = &unk_2783B9308;
  sourceCopy = source;
  v23 = bundleIdentifierCopy;
  v24 = kindCopy;
  v16 = [iconCopy firstWidgetPassingTest:v22];

LABEL_8:

  return v16;
}

uint64_t __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = objc_opt_self();
    isKindOfClass = (objc_opt_isKindOfClass() & 1) != 0 && [v3 suggestionSource] == *(a1 + 32);
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[6] && [v3 suggestionSource] != a1[6])
  {
    v9 = 0;
  }

  else
  {
    v5 = [v4 extensionBundleIdentifier];
    if ([v5 isEqualToString:a1[4]])
    {
      v7 = a1[5];
      v6 = a1 + 5;
      if (v7)
      {
        v8 = [v4 kind];
        v9 = [v8 isEqualToString:*v6];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_makeDataSourceForAtxWidget:(id)widget
{
  v29 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = MEMORY[0x277D66148];
  extensionBundleId = [widgetCopy extensionBundleId];
  v7 = [v5 elementClassWithIdentifier:extensionBundleId];

  if (!v7 || (-[SBProactiveHomeScreenSuggestionProvider _supportedElementClasses](self, "_supportedElementClasses"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, !v9) || (v10 = [v7 alloc], objc_msgSend(widgetCopy, "widgetUniqueId"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "initWithUniqueIdentifier:", v11), v11, v13 = objc_msgSend(v12, "copyWithSuggestionSource:", 1), v12, !v13))
  {
    widgetKind = [widgetCopy widgetKind];

    if (widgetKind)
    {
      v15 = objc_alloc(MEMORY[0x277D66320]);
      widgetUniqueId = [widgetCopy widgetUniqueId];
      widgetKind2 = [widgetCopy widgetKind];
      extensionBundleId2 = [widgetCopy extensionBundleId];
      appBundleId = [widgetCopy appBundleId];
      v20 = [v15 initWithUniqueIdentifier:widgetUniqueId kind:widgetKind2 extensionBundleIdentifier:extensionBundleId2 containerBundleIdentifier:appBundleId];

      v13 = [v20 copyWithSuggestionSource:1];
      v21 = SBLogWidgets();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        extensionBundleIdentifier = [v20 extensionBundleIdentifier];
        uniqueIdentifier = [v20 uniqueIdentifier];
        v25 = 138543618;
        v26 = extensionBundleIdentifier;
        v27 = 2114;
        v28 = uniqueIdentifier;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created for home screen suggestion.", &v25, 0x16u);
      }
    }

    else
    {
      v20 = SBLogProactiveHome();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [SBProactiveHomeScreenSuggestionProvider _makeDataSourceForAtxWidget:v20];
      }

      v13 = 0;
    }
  }

  return v13;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

void __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error fetching home screen widget predictions: %@", &v3, 0xCu);
}

- (void)processUpdatedPredictions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 suggestionsForAllStacks];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "process updated predictions: %@", &v4, 0xCu);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a2 activeDataSource];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "setting active data source to widget %@ (previously: %@)", &v6, 0x16u);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 widgetUniqueId];
  v5 = [a1 extensionBundleId];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "suggested top widget not found in stack for widget identifier: %@, extension bundle identifier: %@", &v6, 0x16u);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "removing suggested widget data source %@ because it's no longer suggested", &v2, 0xCu);
}

@end