@interface SBHProactivePageSuggestionsManager
- (SBHIconManager)iconManager;
- (SBHProactivePageSuggestionsManager)initWithIconManager:(id)a3 overridingRootFolder:(id)a4;
- (SBRootFolder)rootFolder;
- (id)_iconForATXHomeScreenApp:(id)a3 iconModel:(id)a4 rootFolder:(id)a5;
- (void)_addLeafIcons:(id)a3 toList:(id)a4 iconModel:(id)a5 rootFolder:(id)a6 snapshot:(BOOL)a7;
- (void)_addSuggestedPage:(id)a3 atIndex:(unint64_t)a4 forSnapshot:(BOOL)a5 focusMode:(id)a6;
- (void)_addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4;
- (void)addSuggestedPages:(id)a3 withFocusModeIdentifier:(id)a4 forSnapshot:(BOOL)a5 completion:(id)a6;
@end

@implementation SBHProactivePageSuggestionsManager

- (SBHProactivePageSuggestionsManager)initWithIconManager:(id)a3 overridingRootFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBHProactivePageSuggestionsManager;
  v8 = [(SBHProactivePageSuggestionsManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconManager, v6);
    if (v7)
    {
      objc_storeWeak(&v9->_rootFolder, v7);
    }

    else
    {
      v10 = [v6 rootFolder];
      objc_storeWeak(&v9->_rootFolder, v10);
    }

    v11 = objc_alloc_init(MEMORY[0x1E698AF40]);
    suggestedPagesClient = v9->_suggestedPagesClient;
    v9->_suggestedPagesClient = v11;
  }

  return v9;
}

- (void)addSuggestedPages:(id)a3 withFocusModeIdentifier:(id)a4 forSnapshot:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = SBLogFocusModes();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    *buf = 138413314;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = [v11 count];
    v31 = 2112;
    v32 = v12;
    v33 = 1024;
    v34 = v7;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "[%@ %@] suggestedPages: %li, focusModeIdentifier: %@, snapshot: %d", buf, 0x30u);
  }

  v18 = [SBHFocusMode alloc];
  v19 = [(SBHProactivePageSuggestionsManager *)self rootFolder];
  v20 = [(SBHFocusMode *)v18 initWithIdentifier:v12 folder:v19];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __103__SBHProactivePageSuggestionsManager_addSuggestedPages_withFocusModeIdentifier_forSnapshot_completion___block_invoke;
  v22[3] = &unk_1E808D350;
  v24 = v7;
  v22[4] = self;
  v23 = v20;
  v21 = v20;
  [v11 enumerateObjectsUsingBlock:v22];
  if (v13)
  {
    v13[2](v13);
  }
}

- (void)_addSuggestedPage:(id)a3 atIndex:(unint64_t)a4 forSnapshot:(BOOL)a5 focusMode:(id)a6
{
  v7 = a5;
  v92 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v61 = a6;
  v74 = [(SBHProactivePageSuggestionsManager *)self iconManager];
  v60 = self;
  v10 = [(SBHProactivePageSuggestionsManager *)self rootFolder];
  v62 = [v10 model];
  v63 = v10;
  v64 = v7;
  if (v7)
  {
    v11 = [v10 addEmptyList];
    v12 = SBLogFocusModes();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "Preparing to add a suggested page for a snapshot (skipping focus mode configuration)...";
LABEL_12:
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_13;
  }

  v11 = [v10 insertEmptyListAtIndex:a4];
  v14 = SBLogFocusModes();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Preparing to add a suggested page...", buf, 2u);
  }

  if (!v61)
  {
    v12 = SBLogFocusModes();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "No focus mode was provided";
    goto LABEL_12;
  }

  [v11 setHidden:1];
  [v61 addToList:v11];
  v12 = [v74 focusModeManager];
  v15 = [v61 identifier];
  [v12 addFocusModeRequiringIntroduction:v15];
  v16 = SBLogFocusModes();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v91 = v61;
    _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Successfully configured suggested page for focus mode: %{public}@", buf, 0xCu);
  }

LABEL_13:
  v17 = SBLogFocusModes();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Adding leaf icons...", buf, 2u);
  }

  v59 = [v65 leafIcons];
  [SBHProactivePageSuggestionsManager _addLeafIcons:"_addLeafIcons:toList:iconModel:rootFolder:snapshot:" toList:? iconModel:? rootFolder:? snapshot:?];
  v18 = SBLogFocusModes();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "Adding widgets...", buf, 2u);
  }

  [v65 stacks];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v70 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v70)
  {
    v19 = 3;
    if (!v64)
    {
      v19 = 0;
    }

    v67 = v19;
    v68 = *v84;
    v69 = v11;
    do
    {
      v20 = 0;
      do
      {
        if (*v84 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v20;
        v21 = *(*(&v83 + 1) + 8 * v20);
        v22 = SBLogFocusModes();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v91 = v21;
          _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "Widget: %{public}@", buf, 0xCu);
        }

        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = v23;
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v72 = v21;
        v27 = [v21 widgets];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v80;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v80 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v79 + 1) + 8 * i);
              v33 = [v32 extensionBundleId];
              [v25 addObject:v33];

              v34 = [v32 widgetKind];
              [v24 addObject:v34];

              v35 = [v32 appBundleId];
              [v26 addObject:v35];
            }

            v29 = [v27 countByEnumeratingWithState:&v79 objects:v88 count:16];
          }

          while (v29);
        }

        v71 = v25;
        v36 = [[SBWidgetIcon alloc] initWithWidgetExtensionIdentifiers:v25 widgetKinds:v24 widgetContainerBundleIdentifiers:v26 suggestionSource:v67];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v37 = v27;
        v38 = [v37 countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v76;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v76 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v75 + 1) + 8 * j);
              v43 = [v42 intent];
              if (v43)
              {
                v44 = [(SBIcon *)v36 uniqueIdentifier];
                v45 = [v42 widgetUniqueId];
                [v74 setTemporaryIntent:v43 forIconWithIdentifier:v44 widgetUniqueIdentifier:v45];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v39);
        }

        v46 = SBHStackLayoutSizeToIconGridSizeClass([v72 stackLayoutSize]);
        [(SBIcon *)v36 setGridSizeClass:v46];
        v47 = SBIconCoordinateMake([v72 coordinateColumn] + 1, objc_msgSend(v72, "coordinateRow") + 1);
        v11 = v69;
        v49 = [v69 insertIcon:v36 atCoordinate:v47 gridCellInfoOptions:v48 mutationOptions:{0, 0}];

        v20 = v73 + 1;
      }

      while (v73 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v70);
  }

  if ([v11 isEmpty])
  {
    v50 = v63;
    [v63 removeList:v11];
    v51 = v65;
    v52 = v61;
  }

  else
  {
    v51 = v65;
    v52 = v61;
    v50 = v63;
    if (!v64)
    {
      v53 = [v11 uniqueIdentifier];
      [v65 setUniqueIdentifier:v53];

      v54 = [v61 identifier];

      if (v54)
      {
        v55 = MEMORY[0x1E695DFD8];
        v56 = [v61 identifier];
        v57 = [v55 setWithObject:v56];
        [v65 setAssociatedModeUUIDs:v57];
      }

      v58 = [(SBHProactivePageSuggestionsManager *)v60 suggestedPagesClient];
      [v58 didInstallSuggestedPage:v65];

      v50 = v63;
    }
  }
}

- (void)_addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4
{
  v6 = a4;
  v7 = [&unk_1F3DB2EB0 objectForKey:a3];
  v8 = [v7 integerValue];

  v9 = objc_alloc_init(MEMORY[0x1E698AF48]);
  [v9 setPageType:v8];
  v10 = objc_alloc_init(MEMORY[0x1E698AF50]);
  v11 = [(SBHProactivePageSuggestionsManager *)self suggestedPagesClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke;
  v13[3] = &unk_1E808D3A0;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v11 suggestedPagesWithFilter:v9 layoutOptions:v10 completionHandler:v13];
}

void __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke_2;
  block[3] = &unk_1E8088F88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke_2(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke_3;
  v3[3] = &unk_1E808D378;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 enumerateObjectsUsingBlock:v3];
}

void __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v9 = a2;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a2;
    v8 = [v6 arrayWithObjects:&v9 count:1];
    [v5 addSuggestedPages:v8 withFocusModeIdentifier:*(a1 + 40) forSnapshot:0 completion:{0, v9, v10}];
  }
}

- (void)_addLeafIcons:(id)a3 toList:(id)a4 iconModel:(id)a5 rootFolder:(id)a6 snapshot:(BOOL)a7
{
  v64 = a7;
  v79 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v62 = a4;
  v12 = a5;
  v13 = a6;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v11;
  v14 = [v11 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v60 = *v70;
    do
    {
      v16 = 0;
      v61 = v15;
      do
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v69 + 1) + 8 * v16);
        v18 = SBLogFocusModes();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v74 = v17;
          _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "Icon: %{public}@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_opt_class();
          v20 = v17;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          v23 = [(SBHProactivePageSuggestionsManager *)self _iconForATXHomeScreenApp:v22 iconModel:v12 rootFolder:v13];

          v24 = [v62 addIcon:v23];
        }

        objc_opt_class();
        v63 = v16;
        if (objc_opt_isKindOfClass())
        {
          v25 = objc_opt_class();
          v26 = v17;
          log = v17;
          if (v25)
          {
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v56 = [v28 name];
          v29 = [[SBFolder alloc] initWithDisplayName:v56 maxListCount:9 maxIconCountInLists:9];
          v57 = v28;
          v30 = [v28 folderPages];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v31 = [v30 countByEnumeratingWithState:&v65 objects:v77 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v66;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v66 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v65 + 1) + 8 * i);
                v36 = SBLogFocusModes();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_DEFAULT, "Adding a folder icon...", buf, 2u);
                }

                v37 = [v35 contents];
                v38 = [(SBFolder *)v29 firstList];
                [(SBHProactivePageSuggestionsManager *)self _addLeafIcons:v37 toList:v38 iconModel:v12 rootFolder:v13 snapshot:v64];
              }

              v32 = [v30 countByEnumeratingWithState:&v65 objects:v77 count:16];
            }

            while (v32);
          }

          v39 = [[SBFolderIcon alloc] initWithFolder:v29];
          v40 = [v62 addIcon:v39];

          v15 = v61;
          v16 = v63;
          v17 = log;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v17 identifier];
          v42 = [v17 bundleIdentifierForDisplay];
          v43 = [v17 name];
          v44 = objc_alloc_init(MEMORY[0x1E69DD2B8]);
          [v44 setIdentifier:v41];
          [v44 setShortcutIdentifier:v41];
          v45 = v42;
          [v44 setApplicationBundleIdentifier:v42];
          v46 = v43;
          [v44 setTitle:v43];
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shortcuts://x-callback-url/run-shortcut?id=%@&source=homescreen", v41];
          v48 = [MEMORY[0x1E695DFF8] URLWithString:v47];
          [v44 setPageURL:v48];

          v49 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{-[NSObject icon](v17, "icon")}];
          [v44 setIconImage:v49 isPrecomposed:0];
          if (!v64 && ([v44 createOnDisk] & 1) == 0)
          {
            v50 = SBLogIcon();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = objc_opt_class();
              NSStringFromClass(v51);
              v52 = loga = v50;
              *buf = 138412546;
              v74 = v52;
              v75 = 2112;
              v76 = v44;
              _os_log_impl(&dword_1BEB18000, loga, OS_LOG_TYPE_DEFAULT, "[%@] Failed to save web clip %@", buf, 0x16u);

              v50 = loga;
            }
          }

          v53 = [v12 addBookmarkIconForWebClip:v44];
          v54 = [v62 addIcon:v53];

          v16 = v63;
          v15 = v61;
        }

        ++v16;
      }

      while (v16 != v15);
      v15 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v15);
  }
}

- (id)_iconForATXHomeScreenApp:(id)a3 iconModel:(id)a4 rootFolder:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 bundleId];
  v11 = [v8 applicationIconForBundleIdentifier:v10];
  if (v11)
  {
    if ([v9 containsIcon:v11])
    {
      v12 = [v8 addAdditionalIconMatchingIcon:v11];
    }

    else
    {
      v12 = v11;
    }

    v14 = v12;
  }

  else
  {
    v13 = SBLogFocusModes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SBHProactivePageSuggestionsManager _iconForATXHomeScreenApp:v10 iconModel:v13 rootFolder:?];
    }

    v14 = 0;
  }

  return v14;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (SBRootFolder)rootFolder
{
  WeakRetained = objc_loadWeakRetained(&self->_rootFolder);

  return WeakRetained;
}

- (void)_iconForATXHomeScreenApp:(uint64_t)a1 iconModel:(uint64_t)a2 rootFolder:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_fault_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to create app icon for suggested bundle identifier: %{public}@", &v7, 0x16u);
}

@end