@interface PUTabbedSidebarController
- (PUTabbedSidebarController)initWithPhotoLibrary:(id)library libraryFilterState:(id)state actionProviderDelegate:(id)delegate;
- (PXActionProviderDelegate)actionProviderDelegate;
- (PXSidebarDataContext)dataContext;
- (PXTabGroupManager)albumsTabGroupManager;
- (PXTabGroupManager)bookmarksTabGroupManager;
- (PXTabGroupManager)fromMyMacTabGroupManager;
- (PXTabGroupManager)mediaTypesTabGroupManager;
- (PXTabGroupManager)sharedAlbumsTabGroupManager;
- (PXTabGroupManager)utilitiesTabGroupManager;
- (PXTabListManager)collectionsTabListManager;
- (id)_tabGroupControllerForTab:(id)tab;
- (id)representedObjectForTab:(id)tab;
- (id)tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (id)tabBarController:(id)controller sidebar:(id)sidebar trailingSwipeActionsConfigurationForTab:(id)tab;
- (id)tabGroupController:(id)controller makeViewControllerForTab:(id)tab;
- (void)_createControllerIfNeededForTabGroup:(id)group;
- (void)_loadImageForTab:(id)tab traitCollection:(id)collection;
- (void)_registerTabGroupController:(id)controller forOutlineItem:(id)item;
- (void)displayOrderDidChangeForGroup:(id)group undoManager:(id)manager;
- (void)tabGroupController:(id)controller didUpdateAuxiliaryObjectsForTabs:(id)tabs;
@end

@implementation PUTabbedSidebarController

- (PXActionProviderDelegate)actionProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProviderDelegate);

  return WeakRetained;
}

- (id)_tabGroupControllerForTab:(id)tab
{
  parent = [tab parent];
  v5 = parent;
  if (parent)
  {
    if ([parent sidebarAppearance] == 1)
    {
      parent2 = [v5 parent];

      v5 = parent2;
    }

    tabGroupControllers = self->_tabGroupControllers;
    identifier = [v5 identifier];
    v9 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:identifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_registerTabGroupController:(id)controller forOutlineItem:(id)item
{
  tabGroupControllers = self->_tabGroupControllers;
  controllerCopy = controller;
  identifier = [item identifier];
  [(NSMutableDictionary *)tabGroupControllers setObject:controllerCopy forKeyedSubscript:identifier];
}

- (void)_loadImageForTab:(id)tab traitCollection:(id)collection
{
  tabCopy = tab;
  collectionCopy = collection;
  if (!collectionCopy)
  {
    v8 = MEMORY[0x1E69DD1B8];
    [(PUTabbedSidebarController *)self lastUsedDisplayScale];
    collectionCopy = [v8 traitCollectionWithDisplayScale:?];
  }

  v9 = [(PUTabbedSidebarController *)self _tabGroupControllerForTab:tabCopy];
  if ([v9 wantsFolderKeyAssetsForChildTab:tabCopy])
  {
    v10 = [v9 auxiliaryObjectForChildTab:tabCopy key:*MEMORY[0x1E69C40D8]];
    PXSizeMakeSquare();
    v12 = v11;
    v14 = v13;
    imageLoader = self->_imageLoader;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__PUTabbedSidebarController__loadImageForTab_traitCollection___block_invoke;
    v24[3] = &unk_1E7B74B38;
    v16 = &v25;
    v25 = tabCopy;
    [(PXSidebarImageLoader *)imageLoader requestFolderImageWithAssets:v10 imageSize:collectionCopy traitCollection:v24 completion:v12, v14];
LABEL_7:

    goto LABEL_8;
  }

  v10 = [v9 auxiliaryObjectForChildTab:tabCopy key:*MEMORY[0x1E69C40F0]];
  if (v10)
  {
    [collectionCopy displayScale];
    PXSizeMakeSquare();
    v18 = v17;
    v20 = v19;
    v21 = self->_imageLoader;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PUTabbedSidebarController__loadImageForTab_traitCollection___block_invoke_2;
    v22[3] = &unk_1E7B74B38;
    v16 = &v23;
    v23 = tabCopy;
    [(PXSidebarImageLoader *)v21 requestImageForAsset:v10 pixelSize:v22 completion:v18, v20];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_createControllerIfNeededForTabGroup:(id)group
{
  groupCopy = group;
  tabGroupControllers = self->_tabGroupControllers;
  v17 = groupCopy;
  identifier = [groupCopy identifier];
  v7 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v8 = [objc_msgSend(MEMORY[0x1E69C3B80] "transformerClass")];
    v9 = MEMORY[0x1E69C3A30];
    collection = [v8 collection];
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    identifier2 = [v17 identifier];
    v13 = [v9 dataSectionManagerForCollectionList:collection context:dataContext topLevelIdentifier:identifier2];

    v14 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithTabGroup:v17 dataSectionManager:v13];
    v15 = self->_tabGroupControllers;
    identifier3 = [v17 identifier];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:identifier3];

    [v14 updateTabGroup];
    [v14 setDelegate:self];
  }
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  v9 = [(PUTabbedSidebarController *)self representedObjectForTab:tabCopy];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    options = [(PUTabbedSidebarController *)self options];
    assetCollectionSubtype = [v11 assetCollectionSubtype];
    px_isSharedAlbum = [v11 px_isSharedAlbum];
    if ((options & 1) == 0 && (assetCollectionSubtype == 2) | px_isSharedAlbum & 1)
    {
      v15 = MEMORY[0x1E69DC8D8];
      identifier = [tabCopy identifier];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __85__PUTabbedSidebarController_tabBarController_sidebar_contextMenuConfigurationForTab___block_invoke;
      v26[3] = &unk_1E7B78C80;
      v27 = v11;
      selfCopy = self;
      v17 = v11;
      v18 = [v15 configurationWithIdentifier:identifier previewProvider:0 actionProvider:v26];

LABEL_12:
      goto LABEL_15;
    }
  }

  else if ([v10 canContainCollections])
  {
    v17 = [MEMORY[0x1E69C4608] popoverPresenterWithViewController:controllerCopy sourceItem:tabCopy];
    undoManager = [controllerCopy undoManager];
    v18 = PXCollectionActionMenuForCollection();

    if (v18)
    {
      v20 = MEMORY[0x1E69DC8D8];
      identifier2 = [tabCopy identifier];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__PUTabbedSidebarController_tabBarController_sidebar_contextMenuConfigurationForTab___block_invoke_3;
      v24[3] = &unk_1E7B78CA8;
      v25 = v18;
      v22 = v18;
      v18 = [v20 configurationWithIdentifier:identifier2 previewProvider:0 actionProvider:v24];
    }

    goto LABEL_12;
  }

  v18 = 0;
LABEL_15:

  return v18;
}

id __85__PUTabbedSidebarController_tabBarController_sidebar_contextMenuConfigurationForTab___block_invoke(uint64_t a1)
{
  v2 = PXPhotosViewConfigurationForAssetCollection();
  v3 = [v2 assetCollectionActionManager];
  v4 = [v2 dataSourceManager];
  [v4 performChanges:&__block_literal_global_4461];
  v5 = [*(a1 + 40) actionProviderDelegate];
  [v3 setPerformerDelegate:v5];

  [*(a1 + 40) setAssetCollectionActionManager:v3];
  v6 = [MEMORY[0x1E69C4460] contextMenuWithActionManager:v3 overrideActions:0];

  return v6;
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar trailingSwipeActionsConfigurationForTab:(id)tab
{
  v23[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v8 = [(PUTabbedSidebarController *)self representedObjectForTab:tab];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;

    if (v9 && [v9 canPerformEditOperation:6])
    {
      v10 = PXCollectionDeleteConfirmationTitle();
      v11 = MEMORY[0x1E69DC8E8];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __94__PUTabbedSidebarController_tabBarController_sidebar_trailingSwipeActionsConfigurationForTab___block_invoke;
      v20 = &unk_1E7B78C30;
      v9 = v9;
      v21 = v9;
      v22 = controllerCopy;
      v12 = [v11 contextualActionWithStyle:1 title:v10 handler:&v17];
      v13 = MEMORY[0x1E69DCFC0];
      v23[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{1, v17, v18, v19, v20}];
      v15 = [v13 configurationWithActions:v14];

      goto LABEL_8;
    }
  }

  else
  {

    v9 = 0;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

void __94__PUTabbedSidebarController_tabBarController_sidebar_trailingSwipeActionsConfigurationForTab___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 undoManager];
  v12 = v6;
  v9 = v6;
  v10 = PXCollectionDeletionAlertControllerForCollection();

  v11 = [v10 popoverPresentationController];
  [v11 setSourceView:v7];

  [*(a1 + 40) presentViewController:v10 animated:1 completion:0];
}

uint64_t __94__PUTabbedSidebarController_tabBarController_sidebar_trailingSwipeActionsConfigurationForTab___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  v8 = MEMORY[0x1E69DD018];
  requestCopy = request;
  v10 = [v8 itemFromRequest:requestCopy];
  v11 = [requestCopy tab];

  if (v11)
  {
    v12 = [(PUTabbedSidebarController *)self _tabGroupControllerForTab:v11];
    [v12 activateIfNeeded];
    defaultContentConfiguration = [v10 defaultContentConfiguration];
    imageProperties = [defaultContentConfiguration imageProperties];
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    [defaultMetrics scaledValueForValue:25.0];
    v17 = v16;

    PXSizeMakeSquare();
    [imageProperties setReservedLayoutSize:?];
    [imageProperties reservedLayoutSize];
    [imageProperties setMaximumSize:?];
    v49 = imageProperties;
    [imageProperties setCornerRadius:v17 / 9.3];
    v18 = [objc_msgSend(MEMORY[0x1E69C3B80] "transformerClass")];
    image = [v11 image];

    if (!image)
    {
      glyphImageName = [v18 glyphImageName];
      if (glyphImageName)
      {
        v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:glyphImageName];
        [defaultContentConfiguration setImage:v21];
      }

      traitCollection = [controllerCopy traitCollection];
      [(PUTabbedSidebarController *)self _loadImageForTab:v11 traitCollection:traitCollection];
    }

    selfCopy = self;
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if ([v18 isDeletable])
    {
      v24 = objc_alloc_init(MEMORY[0x1E69DC798]);
      [v23 addObject:v24];
    }

    v48 = v18;
    accessoryGlyphImageName = [v18 accessoryGlyphImageName];
    if ([accessoryGlyphImageName length])
    {
      v26 = MEMORY[0x1E69DCAD8];
      [MEMORY[0x1E69DC888] secondaryLabelColor];
      v27 = v10;
      v28 = defaultContentConfiguration;
      v29 = v12;
      v31 = v30 = controllerCopy;
      v32 = [v26 configurationWithHierarchicalColor:v31];

      v33 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:accessoryGlyphImageName withConfiguration:v32];
      v35 = [v33 initWithImage:v34];

      v36 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v35 placement:1];
      [v23 addObject:v36];

      controllerCopy = v30;
      v12 = v29;
      defaultContentConfiguration = v28;
      v10 = v27;
    }

    [v10 setAccessories:v23];
    v37 = v11;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v38 = v37;

      parent = [v38 parent];
      if (parent)
      {
        v40 = parent;
        v41 = v10;
        v42 = defaultContentConfiguration;
        v43 = v12;
        v44 = controllerCopy;
        sidebarAppearance = [v38 sidebarAppearance];

        if (sidebarAppearance != 1)
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __69__PUTabbedSidebarController_tabBarController_sidebar_itemForRequest___block_invoke;
          v50[3] = &unk_1E7B80C38;
          v50[4] = selfCopy;
          v38 = v38;
          v51 = v38;
          [(PUTabbedSidebarController *)selfCopy _performTabUpdates:v50];
        }

        controllerCopy = v44;
        v12 = v43;
        defaultContentConfiguration = v42;
        v10 = v41;
      }
    }

    else
    {

      v38 = 0;
    }

    [v10 setContentConfiguration:defaultContentConfiguration];
  }

  return v10;
}

- (void)tabGroupController:(id)controller didUpdateAuxiliaryObjectsForTabs:(id)tabs
{
  v15 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [tabsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(tabsCopy);
        }

        [(PUTabbedSidebarController *)self _loadImageForTab:*(*(&v10 + 1) + 8 * v9++) traitCollection:0];
      }

      while (v7 != v9);
      v7 = [tabsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)tabGroupController:(id)controller makeViewControllerForTab:(id)tab
{
  v5 = [(PUTabbedSidebarController *)self representedObjectForTab:tab];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 px_isAllAlbumsVirtualCollection] & 1) != 0 || (objc_msgSend(v6, "px_isSharedAlbumsVirtualCollection"))
  {
    v7 = 0;
    goto LABEL_15;
  }

  v8 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;

    if (!v9)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v8 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v9 revealMode:1 routingType:2];
    v10 = PXLemonadeViewControllerFactory();
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    actionProviderDelegate = [(PUTabbedSidebarController *)self actionProviderDelegate];
    v7 = [v10 viewControllerForSidebarNavigationDestination:v8 photoLibrary:photoLibrary actionProviderDelegate:actionProviderDelegate];
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

LABEL_14:
LABEL_15:

  return v7;
}

- (void)displayOrderDidChangeForGroup:(id)group undoManager:(id)manager
{
  tabGroupControllers = self->_tabGroupControllers;
  managerCopy = manager;
  identifier = [group identifier];
  v8 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:identifier];

  [v8 persistDisplayOrderWithUndoManager:managerCopy];
}

- (id)representedObjectForTab:(id)tab
{
  tabCopy = tab;
  userInfo = [tabCopy userInfo];
  if (objc_opt_respondsToSelector())
  {
    userInfo2 = [tabCopy userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  representedObject = [userInfo2 representedObject];

  return representedObject;
}

- (PXTabListManager)collectionsTabListManager
{
  v16[6] = *MEMORY[0x1E69E9840];
  collectionsTabListManager = self->_collectionsTabListManager;
  if (!collectionsTabListManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C3B88]);
    bookmarksTabGroupManager = [(PUTabbedSidebarController *)self bookmarksTabGroupManager];
    v16[0] = bookmarksTabGroupManager;
    albumsTabGroupManager = [(PUTabbedSidebarController *)self albumsTabGroupManager];
    v16[1] = albumsTabGroupManager;
    fromMyMacTabGroupManager = [(PUTabbedSidebarController *)self fromMyMacTabGroupManager];
    v16[2] = fromMyMacTabGroupManager;
    sharedAlbumsTabGroupManager = [(PUTabbedSidebarController *)self sharedAlbumsTabGroupManager];
    v16[3] = sharedAlbumsTabGroupManager;
    mediaTypesTabGroupManager = [(PUTabbedSidebarController *)self mediaTypesTabGroupManager];
    v16[4] = mediaTypesTabGroupManager;
    utilitiesTabGroupManager = [(PUTabbedSidebarController *)self utilitiesTabGroupManager];
    v16[5] = utilitiesTabGroupManager;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    v12 = [v4 initWithChildTabManagers:v11];
    v13 = self->_collectionsTabListManager;
    self->_collectionsTabListManager = v12;

    collectionsTabListManager = self->_collectionsTabListManager;
  }

  v14 = collectionsTabListManager;

  return v14;
}

- (PXTabGroupManager)utilitiesTabGroupManager
{
  utilitiesTabGroupManager = self->_utilitiesTabGroupManager;
  if (utilitiesTabGroupManager)
  {
    v3 = utilitiesTabGroupManager;
  }

  else
  {
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:utilitiesCollectionList];
    v9 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 utilitiesDataSectionManagerForLibrary:photoLibrary2 context:dataContext];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v8 dataSectionManager:v12];
    v14 = self->_utilitiesTabGroupManager;
    self->_utilitiesTabGroupManager = v13;

    [(PXTabGroupManager *)self->_utilitiesTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_utilitiesTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_utilitiesTabGroupManager setEnabled:1];
    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_utilitiesTabGroupManager forOutlineItem:v8];
    v3 = self->_utilitiesTabGroupManager;
  }

  return v3;
}

- (PXTabGroupManager)mediaTypesTabGroupManager
{
  mediaTypesTabGroupManager = self->_mediaTypesTabGroupManager;
  if (mediaTypesTabGroupManager)
  {
    v3 = mediaTypesTabGroupManager;
  }

  else
  {
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:mediaTypesCollectionList];
    v9 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 mediaTypesDataSectionManagerForLibrary:photoLibrary2 context:dataContext];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v8 dataSectionManager:v12];
    v14 = self->_mediaTypesTabGroupManager;
    self->_mediaTypesTabGroupManager = v13;

    [(PXTabGroupManager *)self->_mediaTypesTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_mediaTypesTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_mediaTypesTabGroupManager setEnabled:1];
    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_mediaTypesTabGroupManager forOutlineItem:v8];
    v3 = self->_mediaTypesTabGroupManager;
  }

  return v3;
}

- (PXTabGroupManager)sharedAlbumsTabGroupManager
{
  sharedAlbumsTabGroupManager = self->_sharedAlbumsTabGroupManager;
  if (sharedAlbumsTabGroupManager)
  {
    v3 = sharedAlbumsTabGroupManager;
  }

  else
  {
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    sharedAlbumsCollectionList = [px_virtualCollections sharedAlbumsCollectionList];

    v9 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:sharedAlbumsCollectionList];
    v10 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    v12 = [v10 sharedAlbumsDataSectionManagerForLibrary:photoLibrary2 context:dataContext];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v9 dataSectionManager:v12];
    v14 = self->_sharedAlbumsTabGroupManager;
    self->_sharedAlbumsTabGroupManager = v13;

    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setDelegate:self];
    v15 = MEMORY[0x1E695DEC8];
    addSharedAlbumAction = [(PUTabbedSidebarController *)self addSharedAlbumAction];
    v17 = [v15 arrayWithObjects:{addSharedAlbumAction, 0}];
    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setSidebarActions:v17];

    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_sharedAlbumsTabGroupManager forOutlineItem:v9];
    enablementProvider = [dataContext enablementProvider];
    [enablementProvider configureEnablementOfSectionManager:self->_sharedAlbumsTabGroupManager enablementItem:6];

    v3 = self->_sharedAlbumsTabGroupManager;
  }

  return v3;
}

- (PXTabGroupManager)fromMyMacTabGroupManager
{
  fromMyMacTabGroupManager = self->_fromMyMacTabGroupManager;
  if (fromMyMacTabGroupManager)
  {
    v3 = fromMyMacTabGroupManager;
  }

  else
  {
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    macSyncedAlbumsCollectionList = [px_virtualCollections macSyncedAlbumsCollectionList];

    v9 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:macSyncedAlbumsCollectionList];
    v10 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    v12 = [v10 fromMyMacDataSectionManagerForLibrary:photoLibrary2 context:dataContext];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v9 dataSectionManager:v12];
    v14 = self->_fromMyMacTabGroupManager;
    self->_fromMyMacTabGroupManager = v13;

    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setEnabled:1];
    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_fromMyMacTabGroupManager forOutlineItem:v9];
    enablementProvider = [dataContext enablementProvider];
    [enablementProvider configureEnablementOfSectionManager:self->_fromMyMacTabGroupManager enablementItem:7];

    v3 = self->_fromMyMacTabGroupManager;
  }

  return v3;
}

- (PXTabGroupManager)albumsTabGroupManager
{
  albumsTabGroupManager = self->_albumsTabGroupManager;
  if (albumsTabGroupManager)
  {
    v3 = albumsTabGroupManager;
  }

  else
  {
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:rootAlbumCollectionList];
    v9 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    dataContext = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 albumsDataSectionManagerForLibrary:photoLibrary2 context:dataContext];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v8 dataSectionManager:v12];
    v14 = self->_albumsTabGroupManager;
    self->_albumsTabGroupManager = v13;

    [(PXTabGroupManager *)self->_albumsTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_albumsTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_albumsTabGroupManager setEnabled:1];
    v15 = MEMORY[0x1E695DEC8];
    addAlbumAction = [(PUTabbedSidebarController *)self addAlbumAction];
    v17 = [v15 arrayWithObjects:{addAlbumAction, 0}];
    [(PXTabGroupManager *)self->_albumsTabGroupManager setSidebarActions:v17];

    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_albumsTabGroupManager forOutlineItem:v8];
    v3 = self->_albumsTabGroupManager;
  }

  return v3;
}

- (PXTabGroupManager)bookmarksTabGroupManager
{
  bookmarksTabGroupManager = self->_bookmarksTabGroupManager;
  if (bookmarksTabGroupManager)
  {
    v3 = bookmarksTabGroupManager;
  }

  else
  {
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    bookmarksCollectionList = [px_virtualCollections bookmarksCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:bookmarksCollectionList];
    v9 = MEMORY[0x1E69C3A30];
    photoLibrary2 = [(PUTabbedSidebarController *)self photoLibrary];
    v11 = [v9 bookmarksDataSectionManagerForLibrary:photoLibrary2];

    v12 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v8 dataSectionManager:v11];
    v13 = self->_bookmarksTabGroupManager;
    self->_bookmarksTabGroupManager = v12;

    [(PXTabGroupManager *)self->_bookmarksTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_bookmarksTabGroupManager setEnabled:1];
    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_bookmarksTabGroupManager forOutlineItem:v8];
    v3 = self->_bookmarksTabGroupManager;
  }

  return v3;
}

- (PXSidebarDataContext)dataContext
{
  dataContext = self->_dataContext;
  if (dataContext)
  {
    v3 = dataContext;
  }

  else
  {
    v5 = [PUSidebarDataSectionEnablementController alloc];
    photoLibrary = [(PUTabbedSidebarController *)self photoLibrary];
    v7 = [(PUSidebarDataSectionEnablementController *)v5 initWithPhotoLibrary:photoLibrary andOptions:[(PUTabbedSidebarController *)self options]];

    v8 = MEMORY[0x1E69C3A28];
    libraryFilterState = [(PUTabbedSidebarController *)self libraryFilterState];
    v10 = [v8 standardContextWithLibraryFilterState:libraryFilterState enablementProvider:v7 assetsFilterPredicate:0 collectionsTabBadgeModel:0 sharedActivityTabBadgeModel:0];
    v11 = self->_dataContext;
    self->_dataContext = v10;

    v3 = self->_dataContext;
  }

  return v3;
}

- (PUTabbedSidebarController)initWithPhotoLibrary:(id)library libraryFilterState:(id)state actionProviderDelegate:(id)delegate
{
  libraryCopy = library;
  stateCopy = state;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = PUTabbedSidebarController;
  v12 = [(PUTabbedSidebarController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    objc_storeStrong(&v13->_libraryFilterState, state);
    objc_storeWeak(&v13->_actionProviderDelegate, delegateCopy);
    v13->_options = 0;
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    tabGroupControllers = v13->_tabGroupControllers;
    v13->_tabGroupControllers = v14;

    v16 = objc_alloc_init(MEMORY[0x1E69C3A48]);
    imageLoader = v13->_imageLoader;
    v13->_imageLoader = v16;

    v13->_lastUsedDisplayScale = 2.0;
  }

  return v13;
}

@end