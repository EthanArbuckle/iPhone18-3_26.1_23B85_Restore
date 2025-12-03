@interface SBHProactivePageSuggestionsManager
- (SBHIconManager)iconManager;
- (SBHProactivePageSuggestionsManager)initWithIconManager:(id)manager overridingRootFolder:(id)folder;
- (SBRootFolder)rootFolder;
- (id)_iconForATXHomeScreenApp:(id)app iconModel:(id)model rootFolder:(id)folder;
- (void)_addLeafIcons:(id)icons toList:(id)list iconModel:(id)model rootFolder:(id)folder snapshot:(BOOL)snapshot;
- (void)_addSuggestedPage:(id)page atIndex:(unint64_t)index forSnapshot:(BOOL)snapshot focusMode:(id)mode;
- (void)_addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier;
- (void)addSuggestedPages:(id)pages withFocusModeIdentifier:(id)identifier forSnapshot:(BOOL)snapshot completion:(id)completion;
@end

@implementation SBHProactivePageSuggestionsManager

- (SBHProactivePageSuggestionsManager)initWithIconManager:(id)manager overridingRootFolder:(id)folder
{
  managerCopy = manager;
  folderCopy = folder;
  v14.receiver = self;
  v14.super_class = SBHProactivePageSuggestionsManager;
  v8 = [(SBHProactivePageSuggestionsManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconManager, managerCopy);
    if (folderCopy)
    {
      objc_storeWeak(&v9->_rootFolder, folderCopy);
    }

    else
    {
      rootFolder = [managerCopy rootFolder];
      objc_storeWeak(&v9->_rootFolder, rootFolder);
    }

    v11 = objc_alloc_init(MEMORY[0x1E698AF40]);
    suggestedPagesClient = v9->_suggestedPagesClient;
    v9->_suggestedPagesClient = v11;
  }

  return v9;
}

- (void)addSuggestedPages:(id)pages withFocusModeIdentifier:(id)identifier forSnapshot:(BOOL)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  v35 = *MEMORY[0x1E69E9840];
  pagesCopy = pages;
  identifierCopy = identifier;
  completionCopy = completion;
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
    v30 = [pagesCopy count];
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 1024;
    v34 = snapshotCopy;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "[%@ %@] suggestedPages: %li, focusModeIdentifier: %@, snapshot: %d", buf, 0x30u);
  }

  v18 = [SBHFocusMode alloc];
  rootFolder = [(SBHProactivePageSuggestionsManager *)self rootFolder];
  v20 = [(SBHFocusMode *)v18 initWithIdentifier:identifierCopy folder:rootFolder];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __103__SBHProactivePageSuggestionsManager_addSuggestedPages_withFocusModeIdentifier_forSnapshot_completion___block_invoke;
  v22[3] = &unk_1E808D350;
  v24 = snapshotCopy;
  v22[4] = self;
  v23 = v20;
  v21 = v20;
  [pagesCopy enumerateObjectsUsingBlock:v22];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_addSuggestedPage:(id)page atIndex:(unint64_t)index forSnapshot:(BOOL)snapshot focusMode:(id)mode
{
  snapshotCopy = snapshot;
  v92 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  modeCopy = mode;
  iconManager = [(SBHProactivePageSuggestionsManager *)self iconManager];
  selfCopy = self;
  rootFolder = [(SBHProactivePageSuggestionsManager *)self rootFolder];
  model = [rootFolder model];
  v63 = rootFolder;
  v64 = snapshotCopy;
  if (snapshotCopy)
  {
    addEmptyList = [rootFolder addEmptyList];
    focusModeManager = SBLogFocusModes();
    if (!os_log_type_enabled(focusModeManager, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "Preparing to add a suggested page for a snapshot (skipping focus mode configuration)...";
LABEL_12:
    _os_log_impl(&dword_1BEB18000, focusModeManager, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_13;
  }

  addEmptyList = [rootFolder insertEmptyListAtIndex:index];
  v14 = SBLogFocusModes();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Preparing to add a suggested page...", buf, 2u);
  }

  if (!modeCopy)
  {
    focusModeManager = SBLogFocusModes();
    if (!os_log_type_enabled(focusModeManager, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "No focus mode was provided";
    goto LABEL_12;
  }

  [addEmptyList setHidden:1];
  [modeCopy addToList:addEmptyList];
  focusModeManager = [iconManager focusModeManager];
  identifier = [modeCopy identifier];
  [focusModeManager addFocusModeRequiringIntroduction:identifier];
  v16 = SBLogFocusModes();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v91 = modeCopy;
    _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Successfully configured suggested page for focus mode: %{public}@", buf, 0xCu);
  }

LABEL_13:
  v17 = SBLogFocusModes();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Adding leaf icons...", buf, 2u);
  }

  leafIcons = [pageCopy leafIcons];
  [SBHProactivePageSuggestionsManager _addLeafIcons:"_addLeafIcons:toList:iconModel:rootFolder:snapshot:" toList:? iconModel:? rootFolder:? snapshot:?];
  v18 = SBLogFocusModes();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "Adding widgets...", buf, 2u);
  }

  [pageCopy stacks];
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
    v69 = addEmptyList;
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
        widgets = [v21 widgets];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v28 = [widgets countByEnumeratingWithState:&v79 objects:v88 count:16];
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
                objc_enumerationMutation(widgets);
              }

              v32 = *(*(&v79 + 1) + 8 * i);
              extensionBundleId = [v32 extensionBundleId];
              [v25 addObject:extensionBundleId];

              widgetKind = [v32 widgetKind];
              [v24 addObject:widgetKind];

              appBundleId = [v32 appBundleId];
              [v26 addObject:appBundleId];
            }

            v29 = [widgets countByEnumeratingWithState:&v79 objects:v88 count:16];
          }

          while (v29);
        }

        v71 = v25;
        v36 = [[SBWidgetIcon alloc] initWithWidgetExtensionIdentifiers:v25 widgetKinds:v24 widgetContainerBundleIdentifiers:v26 suggestionSource:v67];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v37 = widgets;
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
              intent = [v42 intent];
              if (intent)
              {
                uniqueIdentifier = [(SBIcon *)v36 uniqueIdentifier];
                widgetUniqueId = [v42 widgetUniqueId];
                [iconManager setTemporaryIntent:intent forIconWithIdentifier:uniqueIdentifier widgetUniqueIdentifier:widgetUniqueId];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v39);
        }

        v46 = SBHStackLayoutSizeToIconGridSizeClass([v72 stackLayoutSize]);
        [(SBIcon *)v36 setGridSizeClass:v46];
        v47 = SBIconCoordinateMake([v72 coordinateColumn] + 1, objc_msgSend(v72, "coordinateRow") + 1);
        addEmptyList = v69;
        v49 = [v69 insertIcon:v36 atCoordinate:v47 gridCellInfoOptions:v48 mutationOptions:{0, 0}];

        v20 = v73 + 1;
      }

      while (v73 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v70);
  }

  if ([addEmptyList isEmpty])
  {
    v50 = v63;
    [v63 removeList:addEmptyList];
    v51 = pageCopy;
    v52 = modeCopy;
  }

  else
  {
    v51 = pageCopy;
    v52 = modeCopy;
    v50 = v63;
    if (!v64)
    {
      uniqueIdentifier2 = [addEmptyList uniqueIdentifier];
      [pageCopy setUniqueIdentifier:uniqueIdentifier2];

      identifier2 = [modeCopy identifier];

      if (identifier2)
      {
        v55 = MEMORY[0x1E695DFD8];
        identifier3 = [modeCopy identifier];
        v57 = [v55 setWithObject:identifier3];
        [pageCopy setAssociatedModeUUIDs:v57];
      }

      suggestedPagesClient = [(SBHProactivePageSuggestionsManager *)selfCopy suggestedPagesClient];
      [suggestedPagesClient didInstallSuggestedPage:pageCopy];

      v50 = v63;
    }
  }
}

- (void)_addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [&unk_1F3DB2EB0 objectForKey:type];
  integerValue = [v7 integerValue];

  v9 = objc_alloc_init(MEMORY[0x1E698AF48]);
  [v9 setPageType:integerValue];
  v10 = objc_alloc_init(MEMORY[0x1E698AF50]);
  suggestedPagesClient = [(SBHProactivePageSuggestionsManager *)self suggestedPagesClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__SBHProactivePageSuggestionsManager__addSuggestedPageWithPageType_focusModeIdentifier___block_invoke;
  v13[3] = &unk_1E808D3A0;
  v13[4] = self;
  v14 = identifierCopy;
  v12 = identifierCopy;
  [suggestedPagesClient suggestedPagesWithFilter:v9 layoutOptions:v10 completionHandler:v13];
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

- (void)_addLeafIcons:(id)icons toList:(id)list iconModel:(id)model rootFolder:(id)folder snapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v79 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  listCopy = list;
  modelCopy = model;
  folderCopy = folder;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = iconsCopy;
  v14 = [iconsCopy countByEnumeratingWithState:&v69 objects:v78 count:16];
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

          v23 = [(SBHProactivePageSuggestionsManager *)self _iconForATXHomeScreenApp:v22 iconModel:modelCopy rootFolder:folderCopy];

          v24 = [listCopy addIcon:v23];
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

          name = [v28 name];
          v29 = [[SBFolder alloc] initWithDisplayName:name maxListCount:9 maxIconCountInLists:9];
          v57 = v28;
          folderPages = [v28 folderPages];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v31 = [folderPages countByEnumeratingWithState:&v65 objects:v77 count:16];
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
                  objc_enumerationMutation(folderPages);
                }

                v35 = *(*(&v65 + 1) + 8 * i);
                v36 = SBLogFocusModes();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_DEFAULT, "Adding a folder icon...", buf, 2u);
                }

                contents = [v35 contents];
                firstList = [(SBFolder *)v29 firstList];
                [(SBHProactivePageSuggestionsManager *)self _addLeafIcons:contents toList:firstList iconModel:modelCopy rootFolder:folderCopy snapshot:snapshotCopy];
              }

              v32 = [folderPages countByEnumeratingWithState:&v65 objects:v77 count:16];
            }

            while (v32);
          }

          v39 = [[SBFolderIcon alloc] initWithFolder:v29];
          v40 = [listCopy addIcon:v39];

          v15 = v61;
          v16 = v63;
          v17 = log;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v17 identifier];
          bundleIdentifierForDisplay = [v17 bundleIdentifierForDisplay];
          name2 = [v17 name];
          v44 = objc_alloc_init(MEMORY[0x1E69DD2B8]);
          [v44 setIdentifier:identifier];
          [v44 setShortcutIdentifier:identifier];
          v45 = bundleIdentifierForDisplay;
          [v44 setApplicationBundleIdentifier:bundleIdentifierForDisplay];
          v46 = name2;
          [v44 setTitle:name2];
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shortcuts://x-callback-url/run-shortcut?id=%@&source=homescreen", identifier];
          v48 = [MEMORY[0x1E695DFF8] URLWithString:v47];
          [v44 setPageURL:v48];

          v49 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{-[NSObject icon](v17, "icon")}];
          [v44 setIconImage:v49 isPrecomposed:0];
          if (!snapshotCopy && ([v44 createOnDisk] & 1) == 0)
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

          v53 = [modelCopy addBookmarkIconForWebClip:v44];
          v54 = [listCopy addIcon:v53];

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

- (id)_iconForATXHomeScreenApp:(id)app iconModel:(id)model rootFolder:(id)folder
{
  modelCopy = model;
  folderCopy = folder;
  bundleId = [app bundleId];
  v11 = [modelCopy applicationIconForBundleIdentifier:bundleId];
  if (v11)
  {
    if ([folderCopy containsIcon:v11])
    {
      v12 = [modelCopy addAdditionalIconMatchingIcon:v11];
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
      [SBHProactivePageSuggestionsManager _iconForATXHomeScreenApp:bundleId iconModel:v13 rootFolder:?];
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