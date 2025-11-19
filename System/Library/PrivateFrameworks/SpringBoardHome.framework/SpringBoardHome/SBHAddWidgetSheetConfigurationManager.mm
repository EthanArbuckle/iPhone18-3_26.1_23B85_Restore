@interface SBHAddWidgetSheetConfigurationManager
+ (unint64_t)_galleryVariantForAddWidgetSheetLocation:(unint64_t)a3;
- (BOOL)_isContainerBundleIdentifierUnprotected:(id)a3;
- (BOOL)_isDescriptorAllowed:(id)a3;
- (BOOL)_isDescriptorContainerUnprotected:(id)a3;
- (BOOL)_isDescriptorSupportedByDelegate:(id)a3;
- (BOOL)_isDescriptorUpdatedForSDKRequirements:(id)a3;
- (BOOL)_shouldAddSpecialAvocadoOfType:(unint64_t)a3;
- (SBHAddWidgetSheetConfigurationManager)initWithWidgetExtensionProvider:(id)a3;
- (SBHAddWidgetSheetConfigurationManagerDelegate)configurationManagerDelegate;
- (SBHIconModel)iconModel;
- (SBHWidgetDragHandling)widgetDragHandlerDelegate;
- (SBIconListLayoutProvider)listLayoutProvider;
- (id)_widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (id)_widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4;
- (id)applicationControlCollections;
- (id)applicationWidgetCollectionsForEditingViewController:(id)a3 withAllowedSizeClasses:(id *)a4 allowingNonStackableItems:(BOOL)a5;
- (id)effectiveGridSizeClassDomain;
- (id)homeScreenDefaults;
- (id)vendorNameForAppWithBundleIdentifier:(id)a3;
- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask;
- (void)_addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:(id)a3;
- (void)_addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:(id)a3;
- (void)_addFilesSpecialAvocadosToApplicationWidgetCollections:(id)a3;
- (void)_addShortcutsSpecialAvocadoToApplicationWidgetCollections:(id)a3;
- (void)_addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:(id)a3;
- (void)_fetchGalleryContentForGridSize:(unint64_t)a3 withFamilyMask:(unint64_t)a4 completion:(id)a5;
- (void)_insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:(id)a3;
- (void)_processGalleryContentItems:(id)a3 gridSize:(unint64_t)a4 addWidgetSheetViewController:(id)a5;
- (void)_sortApplicationWidgetCollections:(id)a3;
- (void)fetchGalleryContentForHomeScreenEditingWithGridSize:(unint64_t)a3 addWidgetSheetViewController:(id)a4;
- (void)fetchGalleryContentForHomeScreenEditingWithRequest:(id)a3 addWidgetSheetViewController:(id)a4;
- (void)fetchGalleryContentForStackConfigurationViewController:(id)a3 addWidgetSheetViewController:(id)a4;
- (void)updatePresentedWidgetEditingViewController:(id)a3;
@end

@implementation SBHAddWidgetSheetConfigurationManager

- (SBHAddWidgetSheetConfigurationManager)initWithWidgetExtensionProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHAddWidgetSheetConfigurationManager;
  v6 = [(SBHAddWidgetSheetConfigurationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetExtensionProvider, a3);
    v7->_allowedWidgetFamilies = 94;
    [(SBHAddWidgetSheetConfigurationManager *)v7 setAllowsFakeWidgets:1];
    [(SBHAddWidgetSheetConfigurationManager *)v7 setMinimumRequiredSDKVersion:0];
  }

  return v7;
}

- (void)fetchGalleryContentForStackConfigurationViewController:(id)a3 addWidgetSheetViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceStackIconView];
  if (v8)
  {
    v9 = [(SBHAddWidgetSheetConfigurationManager *)self _stackConfigurationGridSize];
    v10 = [v8 icon];
    v11 = [v10 gridSizeClass];

    v12 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:v11];
    v13 = [(SBHIconGridSizeClassSet *)v12 chsWidgetFamilyMask];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __125__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForStackConfigurationViewController_addWidgetSheetViewController___block_invoke;
    v14[3] = &unk_1E8091038;
    v15 = v6;
    v16 = v8;
    v17 = self;
    v18 = v7;
    v19 = v9;
    [(SBHAddWidgetSheetConfigurationManager *)self _fetchGalleryContentForGridSize:v9 withFamilyMask:v13 completion:v14];
  }
}

uint64_t __125__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForStackConfigurationViewController_addWidgetSheetViewController___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) sourceStackIconView];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 48) setStackConfigurationSuggestedWidgetItems:v8];
    v5 = [*(a1 + 56) presenter];
    v6 = v5;
    if (v5 && [v5 presenterType] == 2)
    {
      [*(a1 + 56) setSuggestedItems:v8 forGalleryLayoutSize:*(a1 + 64)];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)fetchGalleryContentForHomeScreenEditingWithRequest:(id)a3 addWidgetSheetViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E698AEC0] sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke;
  v11[3] = &unk_1E8091060;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 fetchWidgetGalleryItemsWithRequest:v10 completionHandler:v11];
}

void __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) widgetFamilyMask];
  v7 = CHSWidgetFamilyMaskDescription();
  v8 = SBLogWidgets();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_cold_1(v7, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_15;
    block[3] = &unk_1E8088F88;
    v10 = &v20.i64[1];
    v14 = *(a1 + 32);
    v11 = v14.i64[0];
    v20 = vextq_s8(v14, v14, 8uLL);
    v12 = &v21;
    v21 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 items];
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Found suggested widget items [of families: %@]: %@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_17;
    v15[3] = &unk_1E8089E68;
    v15[4] = *(a1 + 40);
    v10 = &v16;
    v16 = v5;
    v12 = &v17;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

uint64_t __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetGridSize];
  v4 = *(a1 + 48);

  return [v2 _processGalleryContentItems:0 gridSize:v3 addWidgetSheetViewController:v4];
}

void __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) items];
  [v2 _processGalleryContentItems:v3 gridSize:objc_msgSend(*(a1 + 48) addWidgetSheetViewController:{"widgetGridSize"), *(a1 + 56)}];
}

- (void)fetchGalleryContentForHomeScreenEditingWithGridSize:(unint64_t)a3 addWidgetSheetViewController:(id)a4
{
  v6 = a4;
  v7 = [(SBHAddWidgetSheetConfigurationManager *)self _defaultEditingSuggestedWidgetItemsFamilyMask];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithGridSize_addWidgetSheetViewController___block_invoke;
  v9[3] = &unk_1E8091088;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [(SBHAddWidgetSheetConfigurationManager *)self _fetchGalleryContentForGridSize:a3 withFamilyMask:v7 completion:v9];
}

- (void)_processGalleryContentItems:(id)a3 gridSize:(unint64_t)a4 addWidgetSheetViewController:(id)a5
{
  v11 = a3;
  v8 = a5;
  [(SBHAddWidgetSheetConfigurationManager *)self setEditingSuggestedWidgetItems:v11];
  v9 = [v8 presenter];
  v10 = v9;
  if (v9 && [v9 presenterType] != 2)
  {
    [v8 setSuggestedItems:v11 forGalleryLayoutSize:a4];
  }
}

- (void)_fetchGalleryContentForGridSize:(unint64_t)a3 withFamilyMask:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x1E698AEC0] sharedInstance];
  v10 = [SBHAddWidgetSheetConfigurationManager _galleryVariantForAddWidgetSheetLocation:[(SBHAddWidgetSheetConfigurationManager *)self addWidgetSheetLocation]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__SBHAddWidgetSheetConfigurationManager__fetchGalleryContentForGridSize_withFamilyMask_completion___block_invoke;
  v12[3] = &unk_1E80910B0;
  v13 = v8;
  v14 = a4;
  v11 = v8;
  [v9 fetchGalleryItemsForVariant:v10 gridSize:a3 supportedFamilies:a4 completionHandler:v12];
}

void __99__SBHAddWidgetSheetConfigurationManager__fetchGalleryContentForGridSize_withFamilyMask_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CHSWidgetFamilyMaskDescription();
  v8 = SBLogWidgets();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_cold_1(v7, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__SBHAddWidgetSheetConfigurationManager__fetchGalleryContentForGridSize_withFamilyMask_completion___block_invoke_20;
    block[3] = &unk_1E8089600;
    v10 = &v15;
    v15 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Found suggested widget items [of families: %@]: %@", buf, 0x16u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__SBHAddWidgetSheetConfigurationManager__fetchGalleryContentForGridSize_withFamilyMask_completion___block_invoke_21;
    v11[3] = &unk_1E80898D8;
    v10 = &v13;
    v13 = *(a1 + 32);
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

+ (unint64_t)_galleryVariantForAddWidgetSheetLocation:(unint64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask
{
  if ([(SBHAddWidgetSheetConfigurationManager *)self addWidgetSheetStyle]== 1)
  {
    return 30;
  }

  else
  {
    return 14;
  }
}

- (id)applicationWidgetCollectionsForEditingViewController:(id)a3 withAllowedSizeClasses:(id *)a4 allowingNonStackableItems:(BOOL)a5
{
  v45 = a5;
  v67 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v49 = *a4;
  v48 = [MEMORY[0x1E695DF70] array];
  v6 = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider sbh_descriptorsByExtensionIdentifier];
  v52 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  v51 = self;
  if (v7)
  {
    v8 = v7;
    v9 = *v62;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        v12 = SBHContainingBundleIdentifierForWidgetWithBundleIdentifier(v11);
        v13 = [obj objectForKeyedSubscript:v11];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __143__SBHAddWidgetSheetConfigurationManager_applicationWidgetCollectionsForEditingViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke;
        v60[3] = &unk_1E8090350;
        v60[4] = self;
        v14 = [v13 bs_filter:v60];

        if (v12 && [v14 count])
        {
          v15 = [v52 objectForKey:v12];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v52 setValue:v15 forKey:v12];
          }

          [v15 addObjectsFromArray:v14];

          self = v51;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v8);
  }

  v16 = v48;
  [(SBHAddWidgetSheetConfigurationManager *)self _addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:v48];
  v17 = [v47 presenterType];
  v18 = v17;
  if (v17)
  {
    if (v17 != 1)
    {
      v21 = 0;
      v20 = v49;
      goto LABEL_20;
    }

    v19 = SBIconLocationTodayView;
  }

  else
  {
    v19 = SBIconLocationRoot;
  }

  v20 = v49;
  v21 = *v19;
  if (v21)
  {
    v22 = [(SBHAddWidgetSheetConfigurationManager *)self listLayoutProvider];
    v23 = [v22 layoutForIconLocation:v21];

    v24 = SBHIconListLayoutSupportedIconGridSizeClasses(v23);

    v20 = v24;
  }

LABEL_20:
  v25 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  v26 = objc_opt_respondsToSelector();
  if (v18 == 1 && (v26 & 1) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = [v25 rootFolderForAddWidgetSheetConfigurationManager:self];
    v28 = [v27 todayList];
    v29 = [v28 icons];

    v30 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v30)
    {
      v31 = v30;
      v44 = v21;
      v50 = v20;
      v32 = *v57;
      while (2)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v56 + 1) + 8 * j);
          if ([v34 isWidgetIcon])
          {
            v35 = [v34 gridSizeClass];
            v36 = v35;
            if (v35 == @"SBHIconGridSizeClassNewsLargeTall")
            {

              self = v51;
LABEL_34:
              v20 = [v50 gridSizeClassSetByRemovingGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"];

              goto LABEL_35;
            }

            v37 = [v34 gridSizeClass];
            v38 = [v37 isEqualToString:@"SBHIconGridSizeClassNewsLargeTall"];

            self = v51;
            if (v38)
            {
              goto LABEL_34;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      v20 = v50;
LABEL_35:
      v16 = v48;
      v21 = v44;
    }
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __143__SBHAddWidgetSheetConfigurationManager_applicationWidgetCollectionsForEditingViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke_2;
  v54[3] = &unk_1E80910D8;
  v54[4] = self;
  v39 = v16;
  v55 = v39;
  [v52 enumerateKeysAndObjectsUsingBlock:v54];
  [(SBHAddWidgetSheetConfigurationManager *)self _sortApplicationWidgetCollections:v39];
  if (v45)
  {
    [(SBHAddWidgetSheetConfigurationManager *)self _insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:v39];
  }

  v40 = v20;
  *a4 = v20;
  v41 = v55;
  v42 = v39;

  return v39;
}

uint64_t __143__SBHAddWidgetSheetConfigurationManager_applicationWidgetCollectionsForEditingViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isDescriptorAllowed:v3] && objc_msgSend(*(a1 + 32), "_isDescriptorSupported:", v3) && objc_msgSend(*(a1 + 32), "_isDescriptorUpdatedForSDKRequirements:", v3))
  {
    v4 = [*(a1 + 32) _isDescriptorContainerUnprotected:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __143__SBHAddWidgetSheetConfigurationManager_applicationWidgetCollectionsForEditingViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) iconModel];
  v7 = [v6 applicationIconForBundleIdentifier:v16];

  v8 = [*(a1 + 32) vendorNameForAppWithBundleIdentifier:v16];
  v9 = [[SBHApplicationWidgetCollection alloc] initWithIcon:v7 galleryItems:v5 vendorName:v8];
  if (!v7)
  {
    v10 = [v5 firstObject];
    v11 = [v10 extensionIdentity];
    v12 = [v11 extensionBundleIdentifier];
    v13 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v12);

    v14 = [v13 localizedName];
    if (v14)
    {
      [(SBHApplicationWidgetCollection *)v9 setContainerName:v14];
    }

    else
    {
      v15 = [v13 localizedShortName];
      [(SBHApplicationWidgetCollection *)v9 setContainerName:v15];
    }

    [(SBHApplicationWidgetCollection *)v9 setIconImageApplicationBundleIdentifier:v16];
  }

  [*(a1 + 40) addObject:v9];
}

- (id)applicationControlCollections
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider containers];
  v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v38)
  {
    v36 = *v55;
    v37 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v4;
        v5 = *(*(&v54 + 1) + 8 * v4);
        v6 = [v5 containerBundleIdentifier];
        v7 = [SBLeafIcon alloc];
        v8 = [MEMORY[0x1E696AFB0] UUID];
        v9 = [v8 UUIDString];
        v43 = [(SBLeafIcon *)v7 initWithLeafIdentifier:v9 applicationBundleID:v6];

        v40 = v6;
        v42 = [(SBHAddWidgetSheetConfigurationManager *)self vendorNameForAppWithBundleIdentifier:v6];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = v5;
        v45 = [v5 allExtensions];
        v11 = [v45 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v51;
          v44 = *v51;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v51 != v13)
              {
                objc_enumerationMutation(v45);
              }

              v15 = [*(*(&v50 + 1) + 8 * i) orderedControlDescriptors];
              if ([v15 count])
              {
                v16 = [v15 firstObject];
                v17 = [(SBHAddWidgetSheetConfigurationManager *)self _isDescriptorContainerUnprotected:v16];

                if (v17)
                {
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v18 = v15;
                  v19 = [v18 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *v47;
                    do
                    {
                      for (j = 0; j != v20; ++j)
                      {
                        if (*v47 != v21)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v23 = *(*(&v46 + 1) + 8 * j);
                        if ([(SBHAddWidgetSheetConfigurationManager *)self _isDescriptorSupportedByDelegate:v23])
                        {
                          [v10 addObject:v23];
                        }
                      }

                      v20 = [v18 countByEnumeratingWithState:&v46 objects:v58 count:16];
                    }

                    while (v20);
                  }

                  v13 = v44;
                }
              }
            }

            v12 = [v45 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v12);
        }

        v25 = v42;
        v24 = v43;
        v26 = [[SBHApplicationWidgetCollection alloc] initWithIcon:v43 galleryItems:v10 vendorName:v42];
        v27 = [v39 localizedContainerDisplayName];
        [(SBHApplicationWidgetCollection *)v26 setContainerName:v27];

        if (!v43)
        {
          v28 = [v10 firstObject];
          v29 = [v28 extensionIdentity];
          v30 = [v29 extensionBundleIdentifier];
          v31 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v30);

          v32 = [v31 localizedName];
          if (v32)
          {
            [(SBHApplicationWidgetCollection *)v26 setContainerName:v32];
          }

          else
          {
            v33 = [v31 localizedShortName];
            [(SBHApplicationWidgetCollection *)v26 setContainerName:v33];
          }

          [(SBHApplicationWidgetCollection *)v26 setIconImageApplicationBundleIdentifier:v40];
          v25 = v42;
          v24 = 0;
        }

        v3 = v37;
        [v37 addObject:v26];

        v4 = v41 + 1;
      }

      while (v41 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v38);
  }

  [(SBHAddWidgetSheetConfigurationManager *)self _addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:v3];
  [(SBHAddWidgetSheetConfigurationManager *)self _sortApplicationWidgetCollections:v3];

  return v3;
}

- (id)vendorNameForAppWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 addWidgetSheetConfigurationManager:self vendorNameForAppWithBundleIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isDescriptorAllowed:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69D3F88] sharedInstance];
  if ([v5 showInternalWidgets])
  {
    LOBYTE(v6) = 1;
  }

  else if (-[SBHAddWidgetSheetConfigurationManager _isVisibilityWidgetDefined:](self, "_isVisibilityWidgetDefined:", [v4 widgetVisibility]))
  {
    v7 = objc_alloc(MEMORY[0x1E695E000]);
    v8 = [v4 extensionBundleIdentifier];
    v9 = [v7 initWithSuiteName:v8];

    v10 = *MEMORY[0x1E6994210];
    v11 = [v9 objectForKey:*MEMORY[0x1E6994210]];

    if (v11)
    {
      v12 = [v9 BOOLForKey:v10];
    }

    else
    {
      v12 = [(SBHAddWidgetSheetConfigurationManager *)self _isDescriptorVisibleByDefault:v4];
    }

    LOBYTE(v6) = v12;
  }

  else
  {
    v6 = [v4 isInternal] ^ 1;
  }

  return v6;
}

- (BOOL)_isDescriptorUpdatedForSDKRequirements:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetConfigurationManager *)self homeScreenDefaults];
  if ([v5 shouldIgnoreMinimumRequiredSDKVersionForWidgets])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 sbh_isLinkedOnOrAfter:{-[SBHAddWidgetSheetConfigurationManager minimumRequiredSDKVersion](self, "minimumRequiredSDKVersion")}];
  }

  return v6;
}

- (BOOL)_isDescriptorContainerUnprotected:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionIdentity];
  v6 = [v5 containerBundleIdentifier];
  v7 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 addWidgetSheetConfigurationManager:self containerBundleIdentiferForDescriptor:v4];

    v6 = v8;
  }

  if (v6)
  {
    v9 = [(SBHAddWidgetSheetConfigurationManager *)self _isContainerBundleIdentifierUnprotected:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isContainerBundleIdentifierUnprotected:(id)a3
{
  v3 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:a3];
  v4 = [v3 isHidden];
  v5 = v4 | [v3 isLocked];

  return (v5 & 1) == 0;
}

- (BOOL)_isDescriptorSupportedByDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 addWidgetSheetConfigurationManager:self isDescriptorSupported:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_sortApplicationWidgetCollections:(id)a3
{
  v3 = a3;
  [v3 sortUsingComparator:&__block_literal_global_72];
  v4 = [v3 bs_filter:&__block_literal_global_44];
  [v3 removeObjectsInArray:v4];
  [v3 addObjectsFromArray:v4];
}

uint64_t __75__SBHAddWidgetSheetConfigurationManager__sortApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __75__SBHAddWidgetSheetConfigurationManager__sortApplicationWidgetCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 displayName];
  v3 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v4 = [v3 invertedSet];

  if ([v2 rangeOfCharacterFromSet:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  v7 = !v6;

  return v7;
}

- (void)_addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:(id)a3
{
  v6 = a3;
  v4 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:self];
    [v6 addObjectsFromArray:v5];
  }
}

- (void)updatePresentedWidgetEditingViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 presenter];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v4;
    v9 = [v8 allowedWidgets];
    v11 = v10;
    v12 = [SBHIconGridSizeClassSet alloc];
    v13 = [(SBHAddWidgetSheetConfigurationManager *)self effectiveGridSizeClassDomain];
    v14 = [(SBHIconGridSizeClassSet *)v12 initWithCHSWidgetFamilyMask:v9 inDomain:v13];

    v17 = v14;
    v15 = [(SBHAddWidgetSheetConfigurationManager *)self applicationWidgetCollectionsForEditingViewController:v5 withAllowedSizeClasses:&v17 allowingNonStackableItems:v11 & 1];
    v16 = v17;

    [v8 setApplicationWidgetCollections:v15];
  }
}

- (id)homeScreenDefaults
{
  homeScreenDefaults = self->_homeScreenDefaults;
  if (!homeScreenDefaults)
  {
    v4 = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 homeScreenDefaultsForAddWidgetSheetConfigurationManager:self];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E69D4030]);
    }

    v6 = self->_homeScreenDefaults;
    self->_homeScreenDefaults = v5;

    homeScreenDefaults = self->_homeScreenDefaults;
  }

  return homeScreenDefaults;
}

- (id)effectiveGridSizeClassDomain
{
  v2 = [(SBHAddWidgetSheetConfigurationManager *)self gridSizeClassDomain];
  if (!v2)
  {
    v2 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return v2;
}

- (void)_addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:(id)a3
{
  if (self->_allowsFakeWidgets)
  {
    v5 = a3;
    [(SBHAddWidgetSheetConfigurationManager *)self _addShortcutsSpecialAvocadoToApplicationWidgetCollections:v5];
    [(SBHAddWidgetSheetConfigurationManager *)self _addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:v5];
    [(SBHAddWidgetSheetConfigurationManager *)self _addFilesSpecialAvocadosToApplicationWidgetCollections:v5];
  }
}

- (void)_addShortcutsSpecialAvocadoToApplicationWidgetCollections:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:2]|| [(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:6])
  {
    v5 = [(SBHAddWidgetSheetConfigurationManager *)self iconModel];
    v6 = [v5 applicationIconForBundleIdentifier:@"com.apple.shortcuts"];

    if (v6)
    {
      v7 = [SBHApplicationWidgetCollection alloc];
      v8 = [[SBHSpecialWidgetDescriptor alloc] initWithType:6];
      v14[0] = v8;
      v9 = [[SBHSpecialWidgetDescriptor alloc] initWithType:2];
      v14[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      v11 = SBHBundle();
      v12 = [v11 localizedStringForKey:@"APPLE_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v13 = [(SBHApplicationWidgetCollection *)v7 initWithIcon:v6 galleryItems:v10 vendorName:v12];

      [v4 addObject:v13];
    }
  }
}

- (void)_addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:1])
  {
    v5 = [[SBHSpecialWidgetDescriptor alloc] initWithType:1];
    v6 = [[SBHSpecialWidgetDescriptor alloc] initWithType:4];
    v7 = [(SBHAddWidgetSheetConfigurationManager *)self _widgetIconForDescriptor:v5 sizeClass:2];
    v8 = [SBHApplicationWidgetCollection alloc];
    v15[0] = v6;
    v15[1] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = SBHBundle();
    v11 = [v10 localizedStringForKey:@"APPLE_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v12 = [(SBHApplicationWidgetCollection *)v8 initWithIcon:v7 galleryItems:v9 vendorName:v11];

    v13 = SBHBundle();
    v14 = [v13 localizedStringForKey:@"PROACTIVE_SUGGESTIONS_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(SBHApplicationWidgetCollection *)v12 setContainerName:v14];

    [v4 addObject:v12];
  }
}

- (void)_addFilesSpecialAvocadosToApplicationWidgetCollections:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:3]&& [(SBHAddWidgetSheetConfigurationManager *)self _isContainerBundleIdentifierUnprotected:@"com.apple.DocumentsApp"])
  {
    v5 = [(SBHAddWidgetSheetConfigurationManager *)self iconModel];
    v6 = [v5 applicationIconForBundleIdentifier:@"com.apple.DocumentsApp"];

    if (v6)
    {
      v7 = [SBHApplicationWidgetCollection alloc];
      v8 = [[SBHSpecialWidgetDescriptor alloc] initWithType:3];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = SBHBundle();
      v11 = [v10 localizedStringForKey:@"APPLE_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v12 = [(SBHApplicationWidgetCollection *)v7 initWithIcon:v6 galleryItems:v9 vendorName:v11];

      [v4 addObject:v12];
    }

    else
    {
      v12 = SBLogWidgets();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBHAddWidgetSheetConfigurationManager _addFilesSpecialAvocadosToApplicationWidgetCollections:v12];
      }
    }
  }
}

- (void)_insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:5])
  {
    v5 = [[SBHSpecialWidgetDescriptor alloc] initWithType:5];
    v18[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v7 = [(SBHAddWidgetSheetConfigurationManager *)self _widgetIconForDescriptors:v6 sizeClass:2];

    v8 = [SBHApplicationWidgetCollection alloc];
    v9 = SBHBundle();
    v10 = [v9 localizedStringForKey:@"APPLE_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v11 = [(SBHApplicationWidgetCollection *)v8 initWithIcon:v7 galleryItems:MEMORY[0x1E695E0F0] vendorName:v10];

    [v4 insertObject:v11 atIndex:0];
    v12 = [MEMORY[0x1E698AEC0] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke;
    v14[3] = &unk_1E8091140;
    v15 = v11;
    v16 = self;
    v17 = v4;
    v13 = v11;
    [v12 fetchSmartStackOfVariant:0 completionHandler:v14];
  }
}

void __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = SBLogWidgets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = SBLogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Found suggested default widget stack: %@", buf, 0xCu);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke_73;
    v12[3] = &unk_1E8089E68;
    v13 = v7;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v6 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

void __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke_73(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = [*(a1 + 32) smallDefaultStack];
  v4 = [v3 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v53;
    do
    {
      v7 = 0;
      do
      {
        if (*v53 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v52 + 1) + 8 * v7) avocadoDescriptor];
        v9 = [v8 sanitizedDescriptor];

        if (v9)
        {
          [v2 addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v5);
  }

  v10 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = [*(a1 + 32) mediumDefaultStack];
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      v15 = 0;
      do
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v48 + 1) + 8 * v15) avocadoDescriptor];
        v17 = [v16 sanitizedDescriptor];

        if (v17)
        {
          [v10 addObject:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v13);
  }

  v18 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = [*(a1 + 32) largeDefaultStack];
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      v23 = 0;
      do
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v44 + 1) + 8 * v23) avocadoDescriptor];
        v25 = [v24 sanitizedDescriptor];

        if (v25)
        {
          [v18 addObject:v25];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v21);
  }

  v26 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = a1;
  v27 = [*(a1 + 32) extraLargeDefaultStack];
  v28 = [v27 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      v31 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v40 + 1) + 8 * v31) avocadoDescriptor];
        v33 = [v32 sanitizedDescriptor];

        if (v33)
        {
          [v26 addObject:v33];
        }

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v29);
  }

  v34 = [[SBHWidgetStackDescriptor alloc] initWithSmallStackDescriptors:v2 mediumStackDescriptors:v10 largeStackDescriptors:v18 extraLargeStackDescriptors:v26];
  v35 = *(v39 + 40);
  v56 = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  [v35 setWidgetDescriptors:v36];

  v37 = [*(v39 + 48) configurationManagerDelegate];
  v38 = [v37 addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:*(v39 + 48)];
  [v38 setApplicationWidgetCollections:*(v39 + 56)];
}

- (BOOL)_shouldAddSpecialAvocadoOfType:(unint64_t)a3
{
  if (!self->_allowsFakeWidgets)
  {
    return 0;
  }

  v3 = @"com.apple.shortcuts";
  if (a3 != 2 && a3 != 6)
  {
    if (a3 != 3)
    {
      return 1;
    }

    v3 = @"com.apple.DocumentsApp";
  }

  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v5 = v4 != 0;

  return v5;
}

- (id)_widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBHAddWidgetSheetConfigurationManager *)self widgetDragHandlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 widgetIconForDescriptor:v6 sizeClass:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBHAddWidgetSheetConfigurationManager *)self widgetDragHandlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 widgetIconForDescriptors:v6 sizeClass:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SBHIconModel)iconModel
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModel);

  return WeakRetained;
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  return WeakRetained;
}

- (SBHWidgetDragHandling)widgetDragHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDragHandlerDelegate);

  return WeakRetained;
}

- (SBHAddWidgetSheetConfigurationManagerDelegate)configurationManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationManagerDelegate);

  return WeakRetained;
}

void __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_16();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke_cold_1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_16();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end