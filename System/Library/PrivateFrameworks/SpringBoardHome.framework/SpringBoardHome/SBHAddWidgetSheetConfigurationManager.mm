@interface SBHAddWidgetSheetConfigurationManager
+ (unint64_t)_galleryVariantForAddWidgetSheetLocation:(unint64_t)location;
- (BOOL)_isContainerBundleIdentifierUnprotected:(id)unprotected;
- (BOOL)_isDescriptorAllowed:(id)allowed;
- (BOOL)_isDescriptorContainerUnprotected:(id)unprotected;
- (BOOL)_isDescriptorSupportedByDelegate:(id)delegate;
- (BOOL)_isDescriptorUpdatedForSDKRequirements:(id)requirements;
- (BOOL)_shouldAddSpecialAvocadoOfType:(unint64_t)type;
- (SBHAddWidgetSheetConfigurationManager)initWithWidgetExtensionProvider:(id)provider;
- (SBHAddWidgetSheetConfigurationManagerDelegate)configurationManagerDelegate;
- (SBHIconModel)iconModel;
- (SBHWidgetDragHandling)widgetDragHandlerDelegate;
- (SBIconListLayoutProvider)listLayoutProvider;
- (id)_widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (id)_widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class;
- (id)applicationControlCollections;
- (id)applicationWidgetCollectionsForEditingViewController:(id)controller withAllowedSizeClasses:(id *)classes allowingNonStackableItems:(BOOL)items;
- (id)effectiveGridSizeClassDomain;
- (id)homeScreenDefaults;
- (id)vendorNameForAppWithBundleIdentifier:(id)identifier;
- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask;
- (void)_addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:(id)collections;
- (void)_addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:(id)allowed;
- (void)_addFilesSpecialAvocadosToApplicationWidgetCollections:(id)collections;
- (void)_addShortcutsSpecialAvocadoToApplicationWidgetCollections:(id)collections;
- (void)_addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:(id)collections;
- (void)_fetchGalleryContentForGridSize:(unint64_t)size withFamilyMask:(unint64_t)mask completion:(id)completion;
- (void)_insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:(id)collections;
- (void)_processGalleryContentItems:(id)items gridSize:(unint64_t)size addWidgetSheetViewController:(id)controller;
- (void)_sortApplicationWidgetCollections:(id)collections;
- (void)fetchGalleryContentForHomeScreenEditingWithGridSize:(unint64_t)size addWidgetSheetViewController:(id)controller;
- (void)fetchGalleryContentForHomeScreenEditingWithRequest:(id)request addWidgetSheetViewController:(id)controller;
- (void)fetchGalleryContentForStackConfigurationViewController:(id)controller addWidgetSheetViewController:(id)viewController;
- (void)updatePresentedWidgetEditingViewController:(id)controller;
@end

@implementation SBHAddWidgetSheetConfigurationManager

- (SBHAddWidgetSheetConfigurationManager)initWithWidgetExtensionProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBHAddWidgetSheetConfigurationManager;
  v6 = [(SBHAddWidgetSheetConfigurationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetExtensionProvider, provider);
    v7->_allowedWidgetFamilies = 94;
    [(SBHAddWidgetSheetConfigurationManager *)v7 setAllowsFakeWidgets:1];
    [(SBHAddWidgetSheetConfigurationManager *)v7 setMinimumRequiredSDKVersion:0];
  }

  return v7;
}

- (void)fetchGalleryContentForStackConfigurationViewController:(id)controller addWidgetSheetViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceStackIconView = [controllerCopy sourceStackIconView];
  if (sourceStackIconView)
  {
    _stackConfigurationGridSize = [(SBHAddWidgetSheetConfigurationManager *)self _stackConfigurationGridSize];
    icon = [sourceStackIconView icon];
    gridSizeClass = [icon gridSizeClass];

    v12 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:gridSizeClass];
    chsWidgetFamilyMask = [(SBHIconGridSizeClassSet *)v12 chsWidgetFamilyMask];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __125__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForStackConfigurationViewController_addWidgetSheetViewController___block_invoke;
    v14[3] = &unk_1E8091038;
    v15 = controllerCopy;
    v16 = sourceStackIconView;
    selfCopy = self;
    v18 = viewControllerCopy;
    v19 = _stackConfigurationGridSize;
    [(SBHAddWidgetSheetConfigurationManager *)self _fetchGalleryContentForGridSize:_stackConfigurationGridSize withFamilyMask:chsWidgetFamilyMask completion:v14];
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

- (void)fetchGalleryContentForHomeScreenEditingWithRequest:(id)request addWidgetSheetViewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  mEMORY[0x1E698AEC0] = [MEMORY[0x1E698AEC0] sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithRequest_addWidgetSheetViewController___block_invoke;
  v11[3] = &unk_1E8091060;
  v12 = requestCopy;
  selfCopy = self;
  v14 = controllerCopy;
  v9 = controllerCopy;
  v10 = requestCopy;
  [mEMORY[0x1E698AEC0] fetchWidgetGalleryItemsWithRequest:v10 completionHandler:v11];
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

- (void)fetchGalleryContentForHomeScreenEditingWithGridSize:(unint64_t)size addWidgetSheetViewController:(id)controller
{
  controllerCopy = controller;
  _defaultEditingSuggestedWidgetItemsFamilyMask = [(SBHAddWidgetSheetConfigurationManager *)self _defaultEditingSuggestedWidgetItemsFamilyMask];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__SBHAddWidgetSheetConfigurationManager_fetchGalleryContentForHomeScreenEditingWithGridSize_addWidgetSheetViewController___block_invoke;
  v9[3] = &unk_1E8091088;
  v10 = controllerCopy;
  sizeCopy = size;
  v9[4] = self;
  v8 = controllerCopy;
  [(SBHAddWidgetSheetConfigurationManager *)self _fetchGalleryContentForGridSize:size withFamilyMask:_defaultEditingSuggestedWidgetItemsFamilyMask completion:v9];
}

- (void)_processGalleryContentItems:(id)items gridSize:(unint64_t)size addWidgetSheetViewController:(id)controller
{
  itemsCopy = items;
  controllerCopy = controller;
  [(SBHAddWidgetSheetConfigurationManager *)self setEditingSuggestedWidgetItems:itemsCopy];
  presenter = [controllerCopy presenter];
  v10 = presenter;
  if (presenter && [presenter presenterType] != 2)
  {
    [controllerCopy setSuggestedItems:itemsCopy forGalleryLayoutSize:size];
  }
}

- (void)_fetchGalleryContentForGridSize:(unint64_t)size withFamilyMask:(unint64_t)mask completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E698AEC0] = [MEMORY[0x1E698AEC0] sharedInstance];
  v10 = [SBHAddWidgetSheetConfigurationManager _galleryVariantForAddWidgetSheetLocation:[(SBHAddWidgetSheetConfigurationManager *)self addWidgetSheetLocation]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__SBHAddWidgetSheetConfigurationManager__fetchGalleryContentForGridSize_withFamilyMask_completion___block_invoke;
  v12[3] = &unk_1E80910B0;
  v13 = completionCopy;
  maskCopy = mask;
  v11 = completionCopy;
  [mEMORY[0x1E698AEC0] fetchGalleryItemsForVariant:v10 gridSize:size supportedFamilies:mask completionHandler:v12];
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

+ (unint64_t)_galleryVariantForAddWidgetSheetLocation:(unint64_t)location
{
  if (location == 3)
  {
    return 2;
  }

  else
  {
    return location == 2;
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

- (id)applicationWidgetCollectionsForEditingViewController:(id)controller withAllowedSizeClasses:(id *)classes allowingNonStackableItems:(BOOL)items
{
  itemsCopy = items;
  v67 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v49 = *classes;
  array = [MEMORY[0x1E695DF70] array];
  sbh_descriptorsByExtensionIdentifier = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider sbh_descriptorsByExtensionIdentifier];
  v52 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = sbh_descriptorsByExtensionIdentifier;
  v7 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  selfCopy = self;
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

          self = selfCopy;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v8);
  }

  v16 = array;
  [(SBHAddWidgetSheetConfigurationManager *)self _addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:array];
  presenterType = [controllerCopy presenterType];
  v18 = presenterType;
  if (presenterType)
  {
    if (presenterType != 1)
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
    listLayoutProvider = [(SBHAddWidgetSheetConfigurationManager *)self listLayoutProvider];
    v23 = [listLayoutProvider layoutForIconLocation:v21];

    v24 = SBHIconListLayoutSupportedIconGridSizeClasses(v23);

    v20 = v24;
  }

LABEL_20:
  configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  v26 = objc_opt_respondsToSelector();
  if (v18 == 1 && (v26 & 1) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = [configurationManagerDelegate rootFolderForAddWidgetSheetConfigurationManager:self];
    todayList = [v27 todayList];
    icons = [todayList icons];

    v30 = [icons countByEnumeratingWithState:&v56 objects:v65 count:16];
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
            objc_enumerationMutation(icons);
          }

          v34 = *(*(&v56 + 1) + 8 * j);
          if ([v34 isWidgetIcon])
          {
            gridSizeClass = [v34 gridSizeClass];
            v36 = gridSizeClass;
            if (gridSizeClass == @"SBHIconGridSizeClassNewsLargeTall")
            {

              self = selfCopy;
LABEL_34:
              v20 = [v50 gridSizeClassSetByRemovingGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"];

              goto LABEL_35;
            }

            gridSizeClass2 = [v34 gridSizeClass];
            v38 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassNewsLargeTall"];

            self = selfCopy;
            if (v38)
            {
              goto LABEL_34;
            }
          }
        }

        v31 = [icons countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      v20 = v50;
LABEL_35:
      v16 = array;
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
  if (itemsCopy)
  {
    [(SBHAddWidgetSheetConfigurationManager *)self _insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:v39];
  }

  v40 = v20;
  *classes = v20;
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
  array = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider containers];
  v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v38)
  {
    v36 = *v55;
    v37 = array;
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
        containerBundleIdentifier = [v5 containerBundleIdentifier];
        v7 = [SBLeafIcon alloc];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v43 = [(SBLeafIcon *)v7 initWithLeafIdentifier:uUIDString applicationBundleID:containerBundleIdentifier];

        v40 = containerBundleIdentifier;
        v42 = [(SBHAddWidgetSheetConfigurationManager *)self vendorNameForAppWithBundleIdentifier:containerBundleIdentifier];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = v5;
        allExtensions = [v5 allExtensions];
        v11 = [allExtensions countByEnumeratingWithState:&v50 objects:v59 count:16];
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
                objc_enumerationMutation(allExtensions);
              }

              orderedControlDescriptors = [*(*(&v50 + 1) + 8 * i) orderedControlDescriptors];
              if ([orderedControlDescriptors count])
              {
                firstObject = [orderedControlDescriptors firstObject];
                v17 = [(SBHAddWidgetSheetConfigurationManager *)self _isDescriptorContainerUnprotected:firstObject];

                if (v17)
                {
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v18 = orderedControlDescriptors;
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

            v12 = [allExtensions countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v12);
        }

        v25 = v42;
        v24 = v43;
        v26 = [[SBHApplicationWidgetCollection alloc] initWithIcon:v43 galleryItems:v10 vendorName:v42];
        localizedContainerDisplayName = [v39 localizedContainerDisplayName];
        [(SBHApplicationWidgetCollection *)v26 setContainerName:localizedContainerDisplayName];

        if (!v43)
        {
          firstObject2 = [v10 firstObject];
          extensionIdentity = [firstObject2 extensionIdentity];
          extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
          v31 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(extensionBundleIdentifier);

          localizedName = [v31 localizedName];
          if (localizedName)
          {
            [(SBHApplicationWidgetCollection *)v26 setContainerName:localizedName];
          }

          else
          {
            localizedShortName = [v31 localizedShortName];
            [(SBHApplicationWidgetCollection *)v26 setContainerName:localizedShortName];
          }

          [(SBHApplicationWidgetCollection *)v26 setIconImageApplicationBundleIdentifier:v40];
          v25 = v42;
          v24 = 0;
        }

        array = v37;
        [v37 addObject:v26];

        v4 = v41 + 1;
      }

      while (v41 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v38);
  }

  [(SBHAddWidgetSheetConfigurationManager *)self _addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:array];
  [(SBHAddWidgetSheetConfigurationManager *)self _sortApplicationWidgetCollections:array];

  return array;
}

- (id)vendorNameForAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [configurationManagerDelegate addWidgetSheetConfigurationManager:self vendorNameForAppWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isDescriptorAllowed:(id)allowed
{
  allowedCopy = allowed;
  mEMORY[0x1E69D3F88] = [MEMORY[0x1E69D3F88] sharedInstance];
  if ([mEMORY[0x1E69D3F88] showInternalWidgets])
  {
    LOBYTE(v6) = 1;
  }

  else if (-[SBHAddWidgetSheetConfigurationManager _isVisibilityWidgetDefined:](self, "_isVisibilityWidgetDefined:", [allowedCopy widgetVisibility]))
  {
    v7 = objc_alloc(MEMORY[0x1E695E000]);
    extensionBundleIdentifier = [allowedCopy extensionBundleIdentifier];
    v9 = [v7 initWithSuiteName:extensionBundleIdentifier];

    v10 = *MEMORY[0x1E6994210];
    v11 = [v9 objectForKey:*MEMORY[0x1E6994210]];

    if (v11)
    {
      v12 = [v9 BOOLForKey:v10];
    }

    else
    {
      v12 = [(SBHAddWidgetSheetConfigurationManager *)self _isDescriptorVisibleByDefault:allowedCopy];
    }

    LOBYTE(v6) = v12;
  }

  else
  {
    v6 = [allowedCopy isInternal] ^ 1;
  }

  return v6;
}

- (BOOL)_isDescriptorUpdatedForSDKRequirements:(id)requirements
{
  requirementsCopy = requirements;
  homeScreenDefaults = [(SBHAddWidgetSheetConfigurationManager *)self homeScreenDefaults];
  if ([homeScreenDefaults shouldIgnoreMinimumRequiredSDKVersionForWidgets])
  {
    v6 = 1;
  }

  else
  {
    v6 = [requirementsCopy sbh_isLinkedOnOrAfter:{-[SBHAddWidgetSheetConfigurationManager minimumRequiredSDKVersion](self, "minimumRequiredSDKVersion")}];
  }

  return v6;
}

- (BOOL)_isDescriptorContainerUnprotected:(id)unprotected
{
  unprotectedCopy = unprotected;
  extensionIdentity = [unprotectedCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [configurationManagerDelegate addWidgetSheetConfigurationManager:self containerBundleIdentiferForDescriptor:unprotectedCopy];

    containerBundleIdentifier = v8;
  }

  if (containerBundleIdentifier)
  {
    v9 = [(SBHAddWidgetSheetConfigurationManager *)self _isContainerBundleIdentifierUnprotected:containerBundleIdentifier];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isContainerBundleIdentifierUnprotected:(id)unprotected
{
  v3 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:unprotected];
  isHidden = [v3 isHidden];
  v5 = isHidden | [v3 isLocked];

  return (v5 & 1) == 0;
}

- (BOOL)_isDescriptorSupportedByDelegate:(id)delegate
{
  delegateCopy = delegate;
  configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [configurationManagerDelegate addWidgetSheetConfigurationManager:self isDescriptorSupported:delegateCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_sortApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  [collectionsCopy sortUsingComparator:&__block_literal_global_72];
  v4 = [collectionsCopy bs_filter:&__block_literal_global_44];
  [collectionsCopy removeObjectsInArray:v4];
  [collectionsCopy addObjectsFromArray:v4];
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

- (void)_addCustomApplicationWidgetCollectionsToApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [configurationManagerDelegate customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:self];
    [collectionsCopy addObjectsFromArray:v5];
  }
}

- (void)updatePresentedWidgetEditingViewController:(id)controller
{
  controllerCopy = controller;
  presenter = [controllerCopy presenter];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = controllerCopy;
    allowedWidgets = [v8 allowedWidgets];
    v11 = v10;
    v12 = [SBHIconGridSizeClassSet alloc];
    effectiveGridSizeClassDomain = [(SBHAddWidgetSheetConfigurationManager *)self effectiveGridSizeClassDomain];
    v14 = [(SBHIconGridSizeClassSet *)v12 initWithCHSWidgetFamilyMask:allowedWidgets inDomain:effectiveGridSizeClassDomain];

    v17 = v14;
    v15 = [(SBHAddWidgetSheetConfigurationManager *)self applicationWidgetCollectionsForEditingViewController:presenter withAllowedSizeClasses:&v17 allowingNonStackableItems:v11 & 1];
    v16 = v17;

    [v8 setApplicationWidgetCollections:v15];
  }
}

- (id)homeScreenDefaults
{
  homeScreenDefaults = self->_homeScreenDefaults;
  if (!homeScreenDefaults)
  {
    configurationManagerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self configurationManagerDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [configurationManagerDelegate homeScreenDefaultsForAddWidgetSheetConfigurationManager:self];
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
  gridSizeClassDomain = [(SBHAddWidgetSheetConfigurationManager *)self gridSizeClassDomain];
  if (!gridSizeClassDomain)
  {
    gridSizeClassDomain = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return gridSizeClassDomain;
}

- (void)_addFakeWidgetsToApplicationWidgetCollectionsIfAllowed:(id)allowed
{
  if (self->_allowsFakeWidgets)
  {
    allowedCopy = allowed;
    [(SBHAddWidgetSheetConfigurationManager *)self _addShortcutsSpecialAvocadoToApplicationWidgetCollections:allowedCopy];
    [(SBHAddWidgetSheetConfigurationManager *)self _addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:allowedCopy];
    [(SBHAddWidgetSheetConfigurationManager *)self _addFilesSpecialAvocadosToApplicationWidgetCollections:allowedCopy];
  }
}

- (void)_addShortcutsSpecialAvocadoToApplicationWidgetCollections:(id)collections
{
  v14[2] = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:2]|| [(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:6])
  {
    iconModel = [(SBHAddWidgetSheetConfigurationManager *)self iconModel];
    v6 = [iconModel applicationIconForBundleIdentifier:@"com.apple.shortcuts"];

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

      [collectionsCopy addObject:v13];
    }
  }
}

- (void)_addSiriSuggestionsSpecialAvocadosToApplicationWidgetCollections:(id)collections
{
  v15[2] = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
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

    [collectionsCopy addObject:v12];
  }
}

- (void)_addFilesSpecialAvocadosToApplicationWidgetCollections:(id)collections
{
  v13[1] = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  if ([(SBHAddWidgetSheetConfigurationManager *)self _shouldAddSpecialAvocadoOfType:3]&& [(SBHAddWidgetSheetConfigurationManager *)self _isContainerBundleIdentifierUnprotected:@"com.apple.DocumentsApp"])
  {
    iconModel = [(SBHAddWidgetSheetConfigurationManager *)self iconModel];
    v6 = [iconModel applicationIconForBundleIdentifier:@"com.apple.DocumentsApp"];

    if (v6)
    {
      v7 = [SBHApplicationWidgetCollection alloc];
      v8 = [[SBHSpecialWidgetDescriptor alloc] initWithType:3];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = SBHBundle();
      v11 = [v10 localizedStringForKey:@"APPLE_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v12 = [(SBHApplicationWidgetCollection *)v7 initWithIcon:v6 galleryItems:v9 vendorName:v11];

      [collectionsCopy addObject:v12];
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

- (void)_insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections:(id)collections
{
  v18[1] = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
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

    [collectionsCopy insertObject:v11 atIndex:0];
    mEMORY[0x1E698AEC0] = [MEMORY[0x1E698AEC0] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __112__SBHAddWidgetSheetConfigurationManager__insertSmartStackSpecialAvocadosAtTheTopOfApplicationWidgetCollections___block_invoke;
    v14[3] = &unk_1E8091140;
    v15 = v11;
    selfCopy = self;
    v17 = collectionsCopy;
    v13 = v11;
    [mEMORY[0x1E698AEC0] fetchSmartStackOfVariant:0 completionHandler:v14];
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

- (BOOL)_shouldAddSpecialAvocadoOfType:(unint64_t)type
{
  if (!self->_allowsFakeWidgets)
  {
    return 0;
  }

  v3 = @"com.apple.shortcuts";
  if (type != 2 && type != 6)
  {
    if (type != 3)
    {
      return 1;
    }

    v3 = @"com.apple.DocumentsApp";
  }

  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v5 = v4 != 0;

  return v5;
}

- (id)_widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  descriptorCopy = descriptor;
  widgetDragHandlerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self widgetDragHandlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [widgetDragHandlerDelegate widgetIconForDescriptor:descriptorCopy sizeClass:class];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class
{
  descriptorsCopy = descriptors;
  widgetDragHandlerDelegate = [(SBHAddWidgetSheetConfigurationManager *)self widgetDragHandlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [widgetDragHandlerDelegate widgetIconForDescriptors:descriptorsCopy sizeClass:class];
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