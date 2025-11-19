@interface PUTabbedSidebarController
- (PUTabbedSidebarController)initWithPhotoLibrary:(id)a3 libraryFilterState:(id)a4 actionProviderDelegate:(id)a5;
- (PXActionProviderDelegate)actionProviderDelegate;
- (PXSidebarDataContext)dataContext;
- (PXTabGroupManager)albumsTabGroupManager;
- (PXTabGroupManager)bookmarksTabGroupManager;
- (PXTabGroupManager)fromMyMacTabGroupManager;
- (PXTabGroupManager)mediaTypesTabGroupManager;
- (PXTabGroupManager)sharedAlbumsTabGroupManager;
- (PXTabGroupManager)utilitiesTabGroupManager;
- (PXTabListManager)collectionsTabListManager;
- (id)_tabGroupControllerForTab:(id)a3;
- (id)representedObjectForTab:(id)a3;
- (id)tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 trailingSwipeActionsConfigurationForTab:(id)a5;
- (id)tabGroupController:(id)a3 makeViewControllerForTab:(id)a4;
- (void)_createControllerIfNeededForTabGroup:(id)a3;
- (void)_loadImageForTab:(id)a3 traitCollection:(id)a4;
- (void)_registerTabGroupController:(id)a3 forOutlineItem:(id)a4;
- (void)displayOrderDidChangeForGroup:(id)a3 undoManager:(id)a4;
- (void)tabGroupController:(id)a3 didUpdateAuxiliaryObjectsForTabs:(id)a4;
@end

@implementation PUTabbedSidebarController

- (PXActionProviderDelegate)actionProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProviderDelegate);

  return WeakRetained;
}

- (id)_tabGroupControllerForTab:(id)a3
{
  v4 = [a3 parent];
  v5 = v4;
  if (v4)
  {
    if ([v4 sidebarAppearance] == 1)
    {
      v6 = [v5 parent];

      v5 = v6;
    }

    tabGroupControllers = self->_tabGroupControllers;
    v8 = [v5 identifier];
    v9 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_registerTabGroupController:(id)a3 forOutlineItem:(id)a4
{
  tabGroupControllers = self->_tabGroupControllers;
  v6 = a3;
  v7 = [a4 identifier];
  [(NSMutableDictionary *)tabGroupControllers setObject:v6 forKeyedSubscript:v7];
}

- (void)_loadImageForTab:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = MEMORY[0x1E69DD1B8];
    [(PUTabbedSidebarController *)self lastUsedDisplayScale];
    v7 = [v8 traitCollectionWithDisplayScale:?];
  }

  v9 = [(PUTabbedSidebarController *)self _tabGroupControllerForTab:v6];
  if ([v9 wantsFolderKeyAssetsForChildTab:v6])
  {
    v10 = [v9 auxiliaryObjectForChildTab:v6 key:*MEMORY[0x1E69C40D8]];
    PXSizeMakeSquare();
    v12 = v11;
    v14 = v13;
    imageLoader = self->_imageLoader;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__PUTabbedSidebarController__loadImageForTab_traitCollection___block_invoke;
    v24[3] = &unk_1E7B74B38;
    v16 = &v25;
    v25 = v6;
    [(PXSidebarImageLoader *)imageLoader requestFolderImageWithAssets:v10 imageSize:v7 traitCollection:v24 completion:v12, v14];
LABEL_7:

    goto LABEL_8;
  }

  v10 = [v9 auxiliaryObjectForChildTab:v6 key:*MEMORY[0x1E69C40F0]];
  if (v10)
  {
    [v7 displayScale];
    PXSizeMakeSquare();
    v18 = v17;
    v20 = v19;
    v21 = self->_imageLoader;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PUTabbedSidebarController__loadImageForTab_traitCollection___block_invoke_2;
    v22[3] = &unk_1E7B74B38;
    v16 = &v23;
    v23 = v6;
    [(PXSidebarImageLoader *)v21 requestImageForAsset:v10 pixelSize:v22 completion:v18, v20];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_createControllerIfNeededForTabGroup:(id)a3
{
  v4 = a3;
  tabGroupControllers = self->_tabGroupControllers;
  v17 = v4;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [objc_msgSend(MEMORY[0x1E69C3B80] "transformerClass")];
    v9 = MEMORY[0x1E69C3A30];
    v10 = [v8 collection];
    v11 = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v17 identifier];
    v13 = [v9 dataSectionManagerForCollectionList:v10 context:v11 topLevelIdentifier:v12];

    v14 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithTabGroup:v17 dataSectionManager:v13];
    v15 = self->_tabGroupControllers;
    v16 = [v17 identifier];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

    [v14 updateTabGroup];
    [v14 setDelegate:self];
  }
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PUTabbedSidebarController *)self representedObjectForTab:v8];
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
    v12 = [(PUTabbedSidebarController *)self options];
    v13 = [v11 assetCollectionSubtype];
    v14 = [v11 px_isSharedAlbum];
    if ((v12 & 1) == 0 && (v13 == 2) | v14 & 1)
    {
      v15 = MEMORY[0x1E69DC8D8];
      v16 = [v8 identifier];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __85__PUTabbedSidebarController_tabBarController_sidebar_contextMenuConfigurationForTab___block_invoke;
      v26[3] = &unk_1E7B78C80;
      v27 = v11;
      v28 = self;
      v17 = v11;
      v18 = [v15 configurationWithIdentifier:v16 previewProvider:0 actionProvider:v26];

LABEL_12:
      goto LABEL_15;
    }
  }

  else if ([v10 canContainCollections])
  {
    v17 = [MEMORY[0x1E69C4608] popoverPresenterWithViewController:v7 sourceItem:v8];
    v19 = [v7 undoManager];
    v18 = PXCollectionActionMenuForCollection();

    if (v18)
    {
      v20 = MEMORY[0x1E69DC8D8];
      v21 = [v8 identifier];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__PUTabbedSidebarController_tabBarController_sidebar_contextMenuConfigurationForTab___block_invoke_3;
      v24[3] = &unk_1E7B78CA8;
      v25 = v18;
      v22 = v18;
      v18 = [v20 configurationWithIdentifier:v21 previewProvider:0 actionProvider:v24];
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

- (id)tabBarController:(id)a3 sidebar:(id)a4 trailingSwipeActionsConfigurationForTab:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PUTabbedSidebarController *)self representedObjectForTab:a5];
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
      v22 = v7;
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

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E69DD018];
  v9 = a5;
  v10 = [v8 itemFromRequest:v9];
  v11 = [v9 tab];

  if (v11)
  {
    v12 = [(PUTabbedSidebarController *)self _tabGroupControllerForTab:v11];
    [v12 activateIfNeeded];
    v13 = [v10 defaultContentConfiguration];
    v14 = [v13 imageProperties];
    v15 = [MEMORY[0x1E69DCA40] defaultMetrics];
    [v15 scaledValueForValue:25.0];
    v17 = v16;

    PXSizeMakeSquare();
    [v14 setReservedLayoutSize:?];
    [v14 reservedLayoutSize];
    [v14 setMaximumSize:?];
    v49 = v14;
    [v14 setCornerRadius:v17 / 9.3];
    v18 = [objc_msgSend(MEMORY[0x1E69C3B80] "transformerClass")];
    v19 = [v11 image];

    if (!v19)
    {
      v20 = [v18 glyphImageName];
      if (v20)
      {
        v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v20];
        [v13 setImage:v21];
      }

      v22 = [v7 traitCollection];
      [(PUTabbedSidebarController *)self _loadImageForTab:v11 traitCollection:v22];
    }

    v47 = self;
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if ([v18 isDeletable])
    {
      v24 = objc_alloc_init(MEMORY[0x1E69DC798]);
      [v23 addObject:v24];
    }

    v48 = v18;
    v25 = [v18 accessoryGlyphImageName];
    if ([v25 length])
    {
      v26 = MEMORY[0x1E69DCAD8];
      [MEMORY[0x1E69DC888] secondaryLabelColor];
      v27 = v10;
      v28 = v13;
      v29 = v12;
      v31 = v30 = v7;
      v32 = [v26 configurationWithHierarchicalColor:v31];

      v33 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:v25 withConfiguration:v32];
      v35 = [v33 initWithImage:v34];

      v36 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v35 placement:1];
      [v23 addObject:v36];

      v7 = v30;
      v12 = v29;
      v13 = v28;
      v10 = v27;
    }

    [v10 setAccessories:v23];
    v37 = v11;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v38 = v37;

      v39 = [v38 parent];
      if (v39)
      {
        v40 = v39;
        v41 = v10;
        v42 = v13;
        v43 = v12;
        v44 = v7;
        v45 = [v38 sidebarAppearance];

        if (v45 != 1)
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __69__PUTabbedSidebarController_tabBarController_sidebar_itemForRequest___block_invoke;
          v50[3] = &unk_1E7B80C38;
          v50[4] = v47;
          v38 = v38;
          v51 = v38;
          [(PUTabbedSidebarController *)v47 _performTabUpdates:v50];
        }

        v7 = v44;
        v12 = v43;
        v13 = v42;
        v10 = v41;
      }
    }

    else
    {

      v38 = 0;
    }

    [v10 setContentConfiguration:v13];
  }

  return v10;
}

- (void)tabGroupController:(id)a3 didUpdateAuxiliaryObjectsForTabs:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(PUTabbedSidebarController *)self _loadImageForTab:*(*(&v10 + 1) + 8 * v9++) traitCollection:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)tabGroupController:(id)a3 makeViewControllerForTab:(id)a4
{
  v5 = [(PUTabbedSidebarController *)self representedObjectForTab:a4];
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
    v11 = [(PUTabbedSidebarController *)self photoLibrary];
    v12 = [(PUTabbedSidebarController *)self actionProviderDelegate];
    v7 = [v10 viewControllerForSidebarNavigationDestination:v8 photoLibrary:v11 actionProviderDelegate:v12];
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

- (void)displayOrderDidChangeForGroup:(id)a3 undoManager:(id)a4
{
  tabGroupControllers = self->_tabGroupControllers;
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [(NSMutableDictionary *)tabGroupControllers objectForKeyedSubscript:v7];

  [v8 persistDisplayOrderWithUndoManager:v6];
}

- (id)representedObjectForTab:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 userInfo];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 representedObject];

  return v6;
}

- (PXTabListManager)collectionsTabListManager
{
  v16[6] = *MEMORY[0x1E69E9840];
  collectionsTabListManager = self->_collectionsTabListManager;
  if (!collectionsTabListManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C3B88]);
    v5 = [(PUTabbedSidebarController *)self bookmarksTabGroupManager];
    v16[0] = v5;
    v6 = [(PUTabbedSidebarController *)self albumsTabGroupManager];
    v16[1] = v6;
    v7 = [(PUTabbedSidebarController *)self fromMyMacTabGroupManager];
    v16[2] = v7;
    v8 = [(PUTabbedSidebarController *)self sharedAlbumsTabGroupManager];
    v16[3] = v8;
    v9 = [(PUTabbedSidebarController *)self mediaTypesTabGroupManager];
    v16[4] = v9;
    v10 = [(PUTabbedSidebarController *)self utilitiesTabGroupManager];
    v16[5] = v10;
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
    v5 = [(PUTabbedSidebarController *)self photoLibrary];
    v6 = [v5 px_virtualCollections];
    v7 = [v6 utilitiesCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v7];
    v9 = MEMORY[0x1E69C3A30];
    v10 = [(PUTabbedSidebarController *)self photoLibrary];
    v11 = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 utilitiesDataSectionManagerForLibrary:v10 context:v11];

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
    v5 = [(PUTabbedSidebarController *)self photoLibrary];
    v6 = [v5 px_virtualCollections];
    v7 = [v6 mediaTypesCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v7];
    v9 = MEMORY[0x1E69C3A30];
    v10 = [(PUTabbedSidebarController *)self photoLibrary];
    v11 = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 mediaTypesDataSectionManagerForLibrary:v10 context:v11];

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
    v5 = [(PUTabbedSidebarController *)self dataContext];
    v6 = [(PUTabbedSidebarController *)self photoLibrary];
    v7 = [v6 px_virtualCollections];
    v8 = [v7 sharedAlbumsCollectionList];

    v9 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v8];
    v10 = MEMORY[0x1E69C3A30];
    v11 = [(PUTabbedSidebarController *)self photoLibrary];
    v12 = [v10 sharedAlbumsDataSectionManagerForLibrary:v11 context:v5];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v9 dataSectionManager:v12];
    v14 = self->_sharedAlbumsTabGroupManager;
    self->_sharedAlbumsTabGroupManager = v13;

    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setDelegate:self];
    v15 = MEMORY[0x1E695DEC8];
    v16 = [(PUTabbedSidebarController *)self addSharedAlbumAction];
    v17 = [v15 arrayWithObjects:{v16, 0}];
    [(PXTabGroupManager *)self->_sharedAlbumsTabGroupManager setSidebarActions:v17];

    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_sharedAlbumsTabGroupManager forOutlineItem:v9];
    v18 = [v5 enablementProvider];
    [v18 configureEnablementOfSectionManager:self->_sharedAlbumsTabGroupManager enablementItem:6];

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
    v5 = [(PUTabbedSidebarController *)self dataContext];
    v6 = [(PUTabbedSidebarController *)self photoLibrary];
    v7 = [v6 px_virtualCollections];
    v8 = [v7 macSyncedAlbumsCollectionList];

    v9 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v8];
    v10 = MEMORY[0x1E69C3A30];
    v11 = [(PUTabbedSidebarController *)self photoLibrary];
    v12 = [v10 fromMyMacDataSectionManagerForLibrary:v11 context:v5];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v9 dataSectionManager:v12];
    v14 = self->_fromMyMacTabGroupManager;
    self->_fromMyMacTabGroupManager = v13;

    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_fromMyMacTabGroupManager setEnabled:1];
    [(PUTabbedSidebarController *)self _registerTabGroupController:self->_fromMyMacTabGroupManager forOutlineItem:v9];
    v15 = [v5 enablementProvider];
    [v15 configureEnablementOfSectionManager:self->_fromMyMacTabGroupManager enablementItem:7];

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
    v5 = [(PUTabbedSidebarController *)self photoLibrary];
    v6 = [v5 px_virtualCollections];
    v7 = [v6 rootAlbumCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v7];
    v9 = MEMORY[0x1E69C3A30];
    v10 = [(PUTabbedSidebarController *)self photoLibrary];
    v11 = [(PUTabbedSidebarController *)self dataContext];
    v12 = [v9 albumsDataSectionManagerForLibrary:v10 context:v11];

    v13 = [objc_alloc(MEMORY[0x1E69C3B80]) initWithOutlineItem:v8 dataSectionManager:v12];
    v14 = self->_albumsTabGroupManager;
    self->_albumsTabGroupManager = v13;

    [(PXTabGroupManager *)self->_albumsTabGroupManager setCollapsedByDefault:1];
    [(PXTabGroupManager *)self->_albumsTabGroupManager setDelegate:self];
    [(PXTabGroupManager *)self->_albumsTabGroupManager setEnabled:1];
    v15 = MEMORY[0x1E695DEC8];
    v16 = [(PUTabbedSidebarController *)self addAlbumAction];
    v17 = [v15 arrayWithObjects:{v16, 0}];
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
    v5 = [(PUTabbedSidebarController *)self photoLibrary];
    v6 = [v5 px_virtualCollections];
    v7 = [v6 bookmarksCollectionList];

    v8 = [objc_alloc(MEMORY[0x1E69C3710]) initWithCollectionList:v7];
    v9 = MEMORY[0x1E69C3A30];
    v10 = [(PUTabbedSidebarController *)self photoLibrary];
    v11 = [v9 bookmarksDataSectionManagerForLibrary:v10];

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
    v6 = [(PUTabbedSidebarController *)self photoLibrary];
    v7 = [(PUSidebarDataSectionEnablementController *)v5 initWithPhotoLibrary:v6 andOptions:[(PUTabbedSidebarController *)self options]];

    v8 = MEMORY[0x1E69C3A28];
    v9 = [(PUTabbedSidebarController *)self libraryFilterState];
    v10 = [v8 standardContextWithLibraryFilterState:v9 enablementProvider:v7 assetsFilterPredicate:0 collectionsTabBadgeModel:0 sharedActivityTabBadgeModel:0];
    v11 = self->_dataContext;
    self->_dataContext = v10;

    v3 = self->_dataContext;
  }

  return v3;
}

- (PUTabbedSidebarController)initWithPhotoLibrary:(id)a3 libraryFilterState:(id)a4 actionProviderDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PUTabbedSidebarController;
  v12 = [(PUTabbedSidebarController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, a3);
    objc_storeStrong(&v13->_libraryFilterState, a4);
    objc_storeWeak(&v13->_actionProviderDelegate, v11);
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