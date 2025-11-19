@interface PXSidebarDataController
+ (id)albumsDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)bookmarksDataSectionManagerForLibrary:(id)a3;
+ (id)collectionsDataSectionManagerForLibrary:(id)a3 mediaTypesItemManager:(id)a4 context:(id)a5;
+ (id)collectionsItemDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)dataSectionManagerForCollection:(id)a3 context:(id)a4;
+ (id)dataSectionManagerForCollection:(id)a3 context:(id)a4 enablementItem:(int64_t)a5;
+ (id)dataSectionManagerForCollectionList:(id)a3 context:(id)a4 topLevelIdentifier:(id)a5;
+ (id)dataSectionManagerForGroupCollectionList:(id)a3 context:(id)a4;
+ (id)dataSectionManagerForTransientCollection:(id)a3 context:(id)a4;
+ (id)devicesDataSectionManagerForLibrary:(id)a3;
+ (id)favoritesDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)fromMyMacDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)libraryDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)libraryItemDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)mediaTypesDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)projectsDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)recentlySavedDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)sharedAlbumsDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)sharedLibrarySuggestionsDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)sharingDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)trashDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)unableToUploadDataSectionManagerForLibrary:(id)a3 context:(id)a4;
+ (id)utilitiesDataSectionManagerForLibrary:(id)a3 context:(id)a4;
- (BOOL)isItemExpanded:(id)a3;
- (BOOL)moveGroupItem:(id)a3 afterGroupItem:(id)a4;
- (PXDataSectionManager)mediaTypesSectionManager;
- (PXNavigationListItemDataSectionManager)mediaTypesItemManager;
- (PXSidebarDataController)init;
- (PXSidebarDataController)initWithPhotoLibrary:(id)a3 context:(id)a4 options:(unint64_t)a5 pickerAllPhotosVirtualCollection:(id)a6;
- (PXSidebarDataSourceControllerDelegate)delegate;
- (id)_childDataSectionManagerForListItem:(id)a3;
- (id)child:(int64_t)a3 ofItem:(id)a4;
- (id)childDataSectionForItem:(id)a3;
- (id)childrenOfListItem:(id)a3;
- (id)dataSectionManagerForItem:(id)a3;
- (id)fetchCollectionsInDisplayCollectionList:(id)a3;
- (id)infoForItem:(id)a3 childIndex:(int64_t)a4;
- (id)itemsForCollectionIdentifier:(id)a3;
- (id)makeSectionManagers;
- (id)outlineDataSectionManager:(id)a3 arrangedSectionContent:(id)a4;
- (int64_t)numberOfChildrenOfItem:(id)a3;
- (void)_removeDataSectionManagerForKey:(id)a3;
- (void)_setDataSectionManager:(id)a3 forKey:(id)a4;
- (void)_updateDataSectionForRemovedItems:(id)a3;
- (void)_updateMediaTypesItemManager;
- (void)_updateSectionObjectLookupDataForChildItem:(id)a3;
- (void)cancelImageRequest:(int64_t)a3;
- (void)didNavigateToListItem:(id)a3;
- (void)markListItemAsRead:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setExpanded:(BOOL)a3 forItem:(id)a4;
@end

@implementation PXSidebarDataController

- (PXSidebarDataSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v7 = a3;
  if (PXDataSectionManagerChangeContext == a5)
  {
    v15 = v7;
    v8 = [(PXDataSectionManager *)v7 previousDataSection];
    v9 = [(PXDataSectionManager *)v15 changeDetailsFromPreviousDataSection];
    v10 = [[PXSidebarItemChangeDetails alloc] initWithArrayChangeDetails:v9 previousDataSection:v8];
    v11 = [(PXSidebarItemChangeDetails *)v10 removedItems];
    [(PXSidebarDataController *)self _updateDataSectionForRemovedItems:v11];

    v12 = [(PXDataSectionManager *)v15 outlineObject];
    if (!v12 || ([(PXSidebarDataController *)self dataSectionManagerForItem:v12], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = [(PXSidebarDataController *)self delegate];
      [v14 sidebarDataSourceController:self didChangeChildrenOfItem:v12 changeDetails:v10];
    }

    if (self->_mediaTypesSectionManager == v15)
    {
      [(PXSidebarDataController *)self _updateMediaTypesItemManager];
    }

    v7 = v15;
  }
}

- (id)outlineDataSectionManager:(id)a3 arrangedSectionContent:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v14 identifier];
        [v8 setObject:v14 forKeyedSubscript:v15];
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  location = &self->_arrangedObjectIdentifiers;
  v16 = self->_arrangedObjectIdentifiers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = [v8 objectForKeyedSubscript:v21];
        if (!v22)
        {
          [v6 removeAllObjects];
          goto LABEL_18;
        }

        v23 = v22;
        [v6 addObject:v22];
        [v8 setObject:0 forKeyedSubscript:v21];
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!*location || [v8 count])
  {
    objc_storeStrong(location, v7);
  }

  if ([v6 count])
  {
    v24 = v6;
  }

  else
  {
    v24 = v9;
  }

  v25 = v24;

  return v24;
}

- (id)fetchCollectionsInDisplayCollectionList:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    [v6 setIncludeUserSmartAlbums:1];
    v7 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v4 options:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (BOOL)isItemExpanded:(id)a3
{
  v4 = a3;
  if ([v4 isExpandable])
  {
    v5 = [v4 defaultsToExpanded];
    v6 = [(PXSidebarDataController *)self localDefaults];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 identifiersForKey:@"CollapsedSidebarSectionIdentifiers"];
      v9 = [v4 identifier];
      v10 = [v8 containsObject:v9] ^ 1;
    }

    else
    {
      v8 = [v6 identifiersForKey:@"ExpandedSidebarItemIdentifiers"];
      v9 = [v4 identifier];
      LOBYTE(v10) = [v8 containsObject:v9];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)dataSectionManagerForItem:(id)a3
{
  dataSectionManagers = self->_dataSectionManagers;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)dataSectionManagers objectForKeyedSubscript:v4];

  return v5;
}

- (id)childDataSectionForItem:(id)a3
{
  if (a3)
  {
    v3 = [(PXSidebarDataController *)self _childDataSectionManagerForListItem:?];
  }

  else
  {
    v3 = self->_rootDataSectionManager;
  }

  v4 = v3;
  v5 = [(PXDataSectionManager *)v3 dataSection];

  return v5;
}

- (void)cancelImageRequest:(int64_t)a3
{
  v4 = [(PXSidebarDataController *)self imageLoader];
  [v4 cancelImageRequest:a3];
}

- (id)infoForItem:(id)a3 childIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXSidebarDataController *)self childDataSectionForItem:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [v8 indexOfChildDataSourceForObjectAtIndex:a4 localIndex:&v14];
    v7 = v8;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      v11 = [v8 childDataSections];
      v7 = [v11 objectAtIndexedSubscript:v10];

      a4 = v14;
    }
  }

  v12 = [[PXSidebarItemChildInfo alloc] initWithListItem:v6 dataSection:v7 childIndex:a4];

  return v12;
}

- (void)markListItemAsRead:(id)a3
{
  v5 = [a3 collection];
  if ([v5 px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    v3 = [v5 photoLibrary];
    v4 = [v3 px_sharedLibrarySharingSuggestionsCountsManager];
    [v4 markAllSuggestionsAsRead];
  }
}

- (void)didNavigateToListItem:(id)a3
{
  v5 = [a3 collection];
  if ([v5 px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    v3 = [v5 photoLibrary];
    v4 = [v3 px_sharedLibrarySharingSuggestionsCountsManager];
    [v4 markAnyNotificationsAsRead];
  }
}

- (void)setExpanded:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [v10 defaultsToExpanded];
  v7 = [(PXSidebarDataController *)self localDefaults];
  v8 = [v10 identifier];
  if (v6)
  {
    v9 = @"CollapsedSidebarSectionIdentifiers";
    if (v4)
    {
LABEL_3:
      [v7 removeIdentifier:v8 forKey:v9];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = @"ExpandedSidebarItemIdentifiers";
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  [v7 addIdentifier:v8 forKey:v9];
LABEL_6:
}

- (BOOL)moveGroupItem:(id)a3 afterGroupItem:(id)a4
{
  v6 = a4;
  arrangedObjectIdentifiers = self->_arrangedObjectIdentifiers;
  v8 = [a3 identifier];
  [(NSArray *)arrangedObjectIdentifiers indexOfObject:v8];

  if (v6)
  {
    v9 = self->_arrangedObjectIdentifiers;
    v10 = [v6 identifier];
    [(NSArray *)v9 indexOfObject:v10];
  }

  PXArrayByMovingObjectFromIndexToIndex();
}

- (id)itemsForCollectionIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 allValues];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)childrenOfListItem:(id)a3
{
  v4 = [(PXSidebarDataController *)self childDataSectionForItem:a3];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v5];
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = [v4 objectAtIndex:i];
        [(PXSidebarDataController *)self _updateSectionObjectLookupDataForChildItem:v9];
        [v7 addObject:v9];
      }
    }

    if (v6 != [v7 count])
    {
      PXAssertGetLog();
    }

    v10 = [v7 array];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)child:(int64_t)a3 ofItem:(id)a4
{
  v6 = [(PXSidebarDataController *)self childDataSectionForItem:a4];
  v7 = [v6 objectAtIndex:a3];
  [(PXSidebarDataController *)self _updateSectionObjectLookupDataForChildItem:v7];

  return v7;
}

- (int64_t)numberOfChildrenOfItem:(id)a3
{
  v3 = [(PXSidebarDataController *)self childDataSectionForItem:a3];
  v4 = [v3 count];

  return v4;
}

- (void)_updateSectionObjectLookupDataForChildItem:(id)a3
{
  v12 = a3;
  v4 = [v12 identifier];
  if (v4)
  {
    [(NSMutableDictionary *)self->_dataSectionObjectsByItemIdentifier setObject:v12 forKeyedSubscript:v4];
    v5 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:v4];
    [v5 setOutlineObject:v12];
  }

  v6 = [v12 collectionIdentifier];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier setObject:v7 forKeyedSubscript:v6];
    }

    v8 = [v12 topLevelIdentifier];
    v9 = v8;
    v10 = @"root";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    [v7 setObject:v12 forKeyedSubscript:v11];
  }
}

- (id)_childDataSectionManagerForListItem:(id)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
    goto LABEL_27;
  }

  if (![v4 isExpandable] || (-[PXOutlineDataSectionManager childDataSectionManagerForOutlineObject:](self->_rootDataSectionManager, "childDataSectionManagerForOutlineObject:", v4), v7 = objc_claimAutoreleasedReturnValue(), -[PXSidebarDataController _setDataSectionManager:forKey:](self, "_setDataSectionManager:forKey:", v7, v5), !v7))
  {
    v8 = [v4 collection];
    v9 = [v4 topLevelIdentifier];
    if (v9)
    {
      v10 = [v4 identifier];
    }

    else
    {
      v10 = 0;
    }

    if ([v8 px_isSharedAlbumsAndActivityFolder])
    {
      v11 = [(PXSidebarDataController *)self photoLibrary];
      v12 = [v11 px_virtualCollections];
      v45 = [v12 sharedActivityCollection];

      [(PXSidebarDataController *)self context];
      v46 = v8;
      v14 = v13 = v10;
      v15 = [PXSidebarDataController dataSectionManagerForCollection:v45 context:v14 enablementItem:5];

      v16 = [(PXSidebarDataController *)self photoLibrary];
      v17 = [v16 px_virtualCollections];
      v18 = [v17 sharedAlbumsCollectionList];

      v19 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:v18];
      [v19 setIncludeKeyAssetFetches:1];
      [v19 setSkipAssetFetches:1];
      [v19 setSkipAssetCountFetches:1];
      v20 = [(PXSidebarDataController *)self context];
      v21 = [v20 assetsFilterPredicate];
      [v19 setAssetsFilterPredicate:v21];

      v22 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v19 topLevelIdentifier:v13];
      [(PXNavigationListDataSectionManager *)v22 startBackgroundFetchingIfNeeded];
      v23 = [PXStackedDataSectionManager alloc];
      v49[0] = v15;
      v49[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v7 = [(PXStackedDataSectionManager *)v23 initWithChildDataSectionManagers:v24];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      v10 = v13;
      v8 = v46;

      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([v8 px_isUtilitiesFolder])
    {
      v25 = ([(PXSidebarDataController *)self options]>> 3) & 1;
      v26 = ([(PXSidebarDataController *)self options]>> 4) & 1;
      v27 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeUtilitiesDataSectionManagerWithLibrary:v27 topLevelIdentifier:v10 forPicker:v25 excludeHiddenAlbum:v26];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([v8 px_isMediaTypesFolder])
    {
      v28 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeMediaTypesDataSectionManagerWithLibrary:v28 topLevelIdentifier:v10];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([v8 px_isAllMacSyncedAlbumsFolder])
    {
      v29 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeMacSyncedDataSectionManagerWithLibrary:v29 topLevelIdentifier:v10];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([v8 px_isBookmarksFolder])
    {
      v30 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeBookmarksDataSectionManagerWithLibrary:v30 topLevelIdentifier:v10];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([v8 canContainCollections])
    {
      if ([v8 px_isProjectsFolder])
      {
        v31 = [(PXSidebarDataController *)self context];
        v32 = [v31 libraryFilterState];
        v33 = [v32 viewMode];

        if (v33)
        {
          v34 = MEMORY[0x1E6978760];
          v35 = [v8 localizedTitle];
          v36 = [(PXSidebarDataController *)self photoLibrary];
          v37 = [v34 transientCollectionListWithCollections:MEMORY[0x1E695E0F0] title:v35 identifier:0 photoLibrary:v36];

          v8 = v37;
        }
      }

      v38 = objc_opt_class();
      v39 = [(PXSidebarDataController *)self context];
      v7 = [v38 dataSectionManagerForCollectionList:v8 context:v39 topLevelIdentifier:v10];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:v4];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if (![v5 isEqualToString:@"PXNavigationListGroupItemTypeDevices"])
    {
      v7 = 0;
      goto LABEL_26;
    }

    v40 = objc_opt_class();
    v41 = [(PXSidebarDataController *)self photoLibrary];
    v7 = [v40 devicesDataSectionManagerForLibrary:v41];

    if (v7)
    {
LABEL_25:
      [(PXSidebarDataController *)self _setDataSectionManager:v7 forKey:v5, v45];
    }

LABEL_26:
  }

LABEL_27:
  v42 = [off_1E7721858 sharedScheduler];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __63__PXSidebarDataController__childDataSectionManagerForListItem___block_invoke;
  v47[3] = &unk_1E774C648;
  v43 = v7;
  v48 = v43;
  [v42 scheduleTaskAfterCATransactionCommits:v47];

  return v43;
}

- (void)_updateMediaTypesItemManager
{
  v3 = PLSidebarGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PXSidebarDataController._updateMediaTypesItemManager", "", buf, 2u);
  }

  v7 = self->_mediaTypesItemManager;
  if (v7)
  {
    v8 = [(PXSidebarDataController *)self mediaTypesSectionManager];
    if ([v8 allowsEmptyDataSection])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isDataSectionEmpty] ^ 1;
    }

    [(PXNavigationListItemDataSectionManager *)v7 setEnabled:v9];
  }

  v10 = v6;
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v4, "PXSidebarDataController._updateMediaTypesItemManager", "", v12, 2u);
  }
}

- (void)_updateDataSectionForRemovedItems:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 identifier];
        if (([v9 isEqualToString:@"PXMediaTypesVirtualCollection"] & 1) == 0)
        {
          [(PXSidebarDataController *)self _removeDataSectionManagerForKey:v9];
          [(NSMutableDictionary *)self->_dataSectionObjectsByItemIdentifier removeObjectForKey:v9];
          v10 = [v8 collectionIdentifier];
          if (v10)
          {
            v11 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:v10];
            v12 = [v8 topLevelIdentifier];
            v13 = v12;
            v14 = @"root";
            if (v12)
            {
              v14 = v12;
            }

            v15 = v14;

            [v11 setObject:0 forKeyedSubscript:v15];
            if (![v11 count])
            {
              [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier setObject:0 forKeyedSubscript:v10];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)_removeDataSectionManagerForKey:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_dataSectionManagers setObject:0 forKeyedSubscript:v5];
    [v4 unregisterChangeObserver:self context:PXDataSectionManagerChangeContext];
  }
}

- (void)_setDataSectionManager:(id)a3 forKey:(id)a4
{
  dataSectionManagers = self->_dataSectionManagers;
  v7 = a3;
  [(NSMutableDictionary *)dataSectionManagers setObject:v7 forKeyedSubscript:a4];
  [v7 registerChangeObserver:self context:PXDataSectionManagerChangeContext];
}

- (PXSidebarDataController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPhotoLibrary_);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSidebarDataController.m" lineNumber:350 description:{@"Use the designated initializer %@", v5}];

  return 0;
}

- (id)makeSectionManagers
{
  v3 = [(PXSidebarDataController *)self photoLibrary];
  v4 = [(PXSidebarDataController *)self context];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v6 = MEMORY[0x1A590D320]();
  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [v7 libraryItemDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v8];

    v9 = [objc_opt_class() collectionsItemDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v9];

    v10 = [objc_opt_class() devicesDataSectionManagerForLibrary:v3];
    [v5 addObject:v10];

    v11 = [objc_opt_class() bookmarksDataSectionManagerForLibrary:v3];
    [v5 addObject:v11];

    v12 = [objc_opt_class() albumsDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v12];

    v13 = [objc_opt_class() sharingDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v13];

    v14 = [objc_opt_class() mediaTypesDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v14];

    v15 = [objc_opt_class() utilitiesDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v15];

    [objc_opt_class() projectsDataSectionManagerForLibrary:v3 context:v4];
  }

  else
  {
    v16 = [v7 libraryDataSectionManagerForLibrary:v3 context:v4];
    [v5 addObject:v16];

    v17 = [objc_opt_class() devicesDataSectionManagerForLibrary:v3];
    [v5 addObject:v17];

    v18 = objc_opt_class();
    v19 = [(PXSidebarDataController *)self mediaTypesItemManager];
    v20 = [v18 collectionsDataSectionManagerForLibrary:v3 mediaTypesItemManager:v19 context:v4];
    [v5 addObject:v20];

    [objc_opt_class() sharingDataSectionManagerForLibrary:v3 context:v4];
  }
  v21 = ;
  [v5 addObject:v21];

  v22 = [v5 copy];

  return v22;
}

- (PXNavigationListItemDataSectionManager)mediaTypesItemManager
{
  p_mediaTypesItemManager = &self->_mediaTypesItemManager;
  v4 = self->_mediaTypesItemManager;
  if (!v4)
  {
    v5 = PLSidebarGetLog();
    v6 = os_signpost_id_generate(v5);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PXSidebarDataController.mediaTypesItemManager", "", buf, 2u);
    }

    v9 = objc_opt_class();
    v10 = [(PXSidebarDataController *)self photoLibrary];
    v11 = [v10 px_virtualCollections];
    v12 = [v11 mediaTypesCollectionList];
    v13 = [(PXSidebarDataController *)self context];
    v4 = [v9 dataSectionManagerForCollection:v12 context:v13];

    objc_storeStrong(p_mediaTypesItemManager, v4);
    v14 = v8;
    v15 = v14;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v6, "PXSidebarDataController.mediaTypesItemManager", "", v17, 2u);
    }

    [(PXSidebarDataController *)self _updateMediaTypesItemManager];
  }

  return v4;
}

- (PXDataSectionManager)mediaTypesSectionManager
{
  p_mediaTypesSectionManager = &self->_mediaTypesSectionManager;
  v4 = self->_mediaTypesSectionManager;
  if (!v4)
  {
    v5 = PLSidebarGetLog();
    v6 = os_signpost_id_generate(v5);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PXSidebarDataController.mediaTypesSectionManager", "", buf, 2u);
    }

    v9 = [(PXSidebarDataController *)self photoLibrary];
    v10 = [v9 px_virtualCollections];
    v11 = [v10 mediaTypesCollectionList];
    v12 = PXNavigationListItemWithObject(v11, 0, 0, 0, 0);

    v4 = [(PXSidebarDataController *)self _childDataSectionManagerForListItem:v12];
    objc_storeStrong(p_mediaTypesSectionManager, v4);
    v13 = v8;
    v14 = v13;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v6, "PXSidebarDataController.mediaTypesSectionManager", "", v16, 2u);
    }
  }

  return v4;
}

- (PXSidebarDataController)initWithPhotoLibrary:(id)a3 context:(id)a4 options:(unint64_t)a5 pickerAllPhotosVirtualCollection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = PXSidebarDataController;
  v14 = [(PXSidebarDataController *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_photoLibrary, a3);
    objc_storeStrong(&v15->_context, a4);
    v15->_options = a5;
    objc_storeStrong(&v15->_pickerAllPhotosVirtualCollection, a6);
    v16 = objc_alloc_init(PXSidebarImageLoader);
    imageLoader = v15->_imageLoader;
    v15->_imageLoader = v16;

    v18 = [v11 px_localDefaults];
    localDefaults = v15->_localDefaults;
    v15->_localDefaults = v18;

    v20 = objc_opt_new();
    dataSectionManagers = v15->_dataSectionManagers;
    v15->_dataSectionManagers = v20;

    v22 = objc_opt_new();
    dataSectionObjectsByItemIdentifier = v15->_dataSectionObjectsByItemIdentifier;
    v15->_dataSectionObjectsByItemIdentifier = v22;

    v24 = objc_opt_new();
    dataSectionObjectsByCollectionIdentifier = v15->_dataSectionObjectsByCollectionIdentifier;
    v15->_dataSectionObjectsByCollectionIdentifier = v24;

    [(PXPhotoLibraryLocalDefaults *)v15->_localDefaults arrayForKey:@"ArrangedSidebarSectionIdentifiers"];
    objc_claimAutoreleasedReturnValue();
    objc_opt_class();
    PXFilterArrayForObjectsOfClass();
  }

  return 0;
}

+ (id)bookmarksDataSectionManagerForLibrary:(id)a3
{
  v3 = a3;
  v4 = [PXSidebarDataManagerFactory makeBookmarksDataSectionManagerWithLibrary:v3 topLevelIdentifier:@"bookmarks"];
  v5 = [PXNavigationListGroupItem alloc];
  v6 = [v3 px_virtualCollections];

  v7 = [v6 bookmarksCollectionList];
  v8 = [(PXNavigationListGroupItem *)v5 initWithCollectionList:v7];
  [v4 setOutlineObject:v8];

  return v4;
}

+ (id)devicesDataSectionManagerForLibrary:(id)a3
{
  v3 = a3;
  v4 = [[PXImportSourceDataSectionManager alloc] initWithPhotoLibrary:v3];

  v5 = [[PXNavigationListGroupItem alloc] initWithIdentifier:@"PXNavigationListGroupItemTypeDevices" defaultsToExpanded:1];
  [(PXDataSectionManager *)v4 setOutlineObject:v5];

  return v4;
}

+ (id)collectionsDataSectionManagerForLibrary:(id)a3 mediaTypesItemManager:(id)a4 context:(id)a5
{
  v33[9] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v24 = a4;
  v9 = [a3 px_virtualCollections];
  v26 = [PXStackedDataSectionManager alloc];
  v32 = [v9 eventsCollection];
  v31 = [a1 dataSectionManagerForCollection:v32 context:v8];
  v33[0] = v31;
  v30 = [v9 peopleCollection];
  v29 = [a1 dataSectionManagerForCollection:v30 context:v8];
  v33[1] = v29;
  v28 = [v9 memoriesCollection];
  v27 = [a1 dataSectionManagerForCollection:v28 context:v8 enablementItem:1];
  v33[2] = v27;
  v25 = [v9 tripsCollection];
  v23 = [a1 dataSectionManagerForCollection:v25 context:v8 enablementItem:8];
  v33[3] = v23;
  v22 = [v9 featuredPhotosCollection];
  v10 = [a1 dataSectionManagerForCollection:v22 context:v8 enablementItem:11];
  v33[4] = v10;
  v11 = [v9 utilitiesCollectionList];
  v12 = [a1 dataSectionManagerForCollection:v11 context:v8];
  v33[5] = v12;
  v33[6] = v24;
  v13 = [v9 rootAlbumCollectionList];
  v14 = [a1 dataSectionManagerForCollection:v13 context:v8];
  v33[7] = v14;
  v15 = [v9 sharedAlbumsAndActivityCollectionList];
  v16 = [a1 dataSectionManagerForCollection:v15 context:v8 enablementItem:6];

  v33[8] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:9];
  v18 = [(PXStackedDataSectionManager *)v26 initWithChildDataSectionManagers:v17];

  v19 = [PXNavigationListGroupItem alloc];
  v20 = [(PXNavigationListGroupItem *)v19 initWithIdentifier:@"PXNavigationListGroupItemTypeCollections" defaultsToExpanded:1];
  [(PXStackedDataSectionManager *)v18 setOutlineObject:v20];

  return v18;
}

+ (id)utilitiesDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [PXSidebarDataManagerFactory makeUtilitiesDataSectionManagerWithLibrary:v4 topLevelIdentifier:0 forPicker:0 excludeHiddenAlbum:0];
  v6 = [PXNavigationListGroupItem alloc];
  v7 = [v4 px_virtualCollections];

  v8 = [v7 utilitiesCollectionList];
  v9 = [(PXNavigationListGroupItem *)v6 initWithCollectionList:v8];
  [v5 setOutlineObject:v9];

  return v5;
}

+ (id)mediaTypesDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [PXSidebarDataManagerFactory makeMediaTypesDataSectionManagerWithLibrary:v4 topLevelIdentifier:0];
  v6 = [PXNavigationListGroupItem alloc];
  v7 = [v4 px_virtualCollections];

  v8 = [v7 mediaTypesCollectionList];
  v9 = [(PXNavigationListGroupItem *)v6 initWithCollectionList:v8];
  [v5 setOutlineObject:v9];

  return v5;
}

+ (id)sharingDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v25[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 px_virtualCollections];
  v21 = [PXStackedDataSectionManager alloc];
  v24 = [v8 sharedAlbumsCollectionList];
  v23 = [a1 dataSectionManagerForCollection:v24 context:v6 enablementItem:6];
  v25[0] = v23;
  v22 = [v8 sharedActivityCollection];
  v9 = [a1 dataSectionManagerForCollection:v22 context:v6 enablementItem:6];
  v25[1] = v9;
  v10 = [v8 contentSyndicationCollection];
  v11 = [a1 dataSectionManagerForCollection:v10 context:v6 enablementItem:16];
  v25[2] = v11;
  v12 = [v8 completeMyMomentCollection];
  v13 = [a1 dataSectionManagerForCollection:v12 context:v6 enablementItem:14];
  v25[3] = v13;
  v14 = [a1 sharedLibrarySuggestionsDataSectionManagerForLibrary:v7 context:v6];

  v25[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v16 = [(PXStackedDataSectionManager *)v21 initWithChildDataSectionManagers:v15];

  v17 = [PXNavigationListGroupItem alloc];
  v18 = [v7 isSystemPhotoLibrary];

  v19 = [(PXNavigationListGroupItem *)v17 initWithIdentifier:@"PXNavigationListGroupItemTypeSharing" defaultsToExpanded:v18];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v19];

  return v16;
}

+ (id)projectsDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 px_virtualCollections];
  v8 = [PXNavigationListItemDataSectionManager alloc];
  v9 = [v7 allProjectsCollection];
  v10 = [(PXNavigationListItemDataSectionManager *)v8 initWithCollection:v9 context:v6];

  v11 = [v7 rootProjectCollectionList];
  v12 = [a1 dataSectionManagerForCollectionList:v11 context:v6 topLevelIdentifier:0];

  v13 = [PXStackedDataSectionManager alloc];
  v20[0] = v10;
  v20[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [(PXStackedDataSectionManager *)v13 initWithChildDataSectionManagers:v14];

  [(PXStackedDataSectionManager *)v15 setAlwaysContainsObjects:1];
  v16 = [PXNavigationListGroupItem alloc];
  v17 = [v7 rootProjectCollectionList];
  v18 = [(PXNavigationListGroupItem *)v16 initWithCollectionList:v17];
  [(PXStackedDataSectionManager *)v15 setOutlineObject:v18];

  return v15;
}

+ (id)sharedAlbumsDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 px_virtualCollections];
  v8 = [PXNavigationListItemDataSectionManager alloc];
  v9 = [v7 sharedAlbumsCollection];
  v10 = [(PXNavigationListItemDataSectionManager *)v8 initWithCollection:v9 context:v6];

  v11 = [v7 sharedAlbumsCollectionList];
  v12 = [a1 dataSectionManagerForCollectionList:v11 context:v6 topLevelIdentifier:0];

  v13 = [PXStackedDataSectionManager alloc];
  v20[0] = v10;
  v20[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [(PXStackedDataSectionManager *)v13 initWithChildDataSectionManagers:v14];

  [(PXStackedDataSectionManager *)v15 setAlwaysContainsObjects:1];
  v16 = [PXNavigationListGroupItem alloc];
  v17 = [v7 sharedAlbumsCollectionList];
  v18 = [(PXNavigationListGroupItem *)v16 initWithCollectionList:v17];
  [(PXStackedDataSectionManager *)v15 setOutlineObject:v18];

  return v15;
}

+ (id)fromMyMacDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 px_virtualCollections];
  v7 = [v6 rootAlbumCollectionList];
  v8 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:v7];

  v9 = [v5 assetsFilterPredicate];

  [v8 setAssetsFilterPredicate:v9];
  [v8 setIncludeKeyAssetFetches:1];
  [v8 setShowSyncedFromMacAlbums:1];
  [v8 setSkipAssetFetches:1];
  [v8 setSkipAssetCountFetches:1];
  v10 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v8 topLevelIdentifier:0];
  v11 = [PXNavigationListGroupItem alloc];
  v12 = [v6 macSyncedAlbumsCollectionList];
  v13 = [(PXNavigationListGroupItem *)v11 initWithCollectionList:v12];
  [(PXDataSectionManager *)v10 setOutlineObject:v13];

  return v10;
}

+ (id)albumsDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 px_virtualCollections];
  v9 = [PXNavigationListItemDataSectionManager alloc];
  v10 = [v8 allAlbumsCollection];
  v11 = [(PXNavigationListItemDataSectionManager *)v9 initWithCollection:v10 context:v6];

  v12 = [v7 px_rootAlbumCollectionList];
  v13 = [a1 dataSectionManagerForCollectionList:v12 context:v6 topLevelIdentifier:0];

  v14 = [PXStackedDataSectionManager alloc];
  v21[0] = v11;
  v21[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16 = [(PXStackedDataSectionManager *)v14 initWithChildDataSectionManagers:v15];

  [(PXStackedDataSectionManager *)v16 setAlwaysContainsObjects:1];
  v17 = [PXNavigationListGroupItem alloc];
  v18 = [v7 px_rootAlbumCollectionList];

  v19 = [(PXNavigationListGroupItem *)v17 initWithCollectionList:v18];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v19];

  return v16;
}

+ (id)libraryDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v19[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 px_virtualCollections];
  v9 = [PXStackedDataSectionManager alloc];
  v10 = [v8 photosCollection];
  v11 = [a1 dataSectionManagerForCollection:v10 context:v6];
  v19[0] = v11;
  v12 = [a1 favoritesDataSectionManagerForLibrary:v7 context:v6];
  v19[1] = v12;
  v13 = [a1 recentlySavedDataSectionManagerForLibrary:v7 context:v6];
  v19[2] = v13;
  v14 = [a1 trashDataSectionManagerForLibrary:v7 context:v6];

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v16 = [(PXStackedDataSectionManager *)v9 initWithChildDataSectionManagers:v15];

  v17 = [[PXNavigationListGroupItem alloc] initWithIdentifier:@"PXNavigationListGroupItemTypePhotos" defaultsToExpanded:1];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v17];

  return v16;
}

+ (id)dataSectionManagerForCollectionList:(id)a3 context:(id)a4 topLevelIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:v9];
  v11 = [v9 px_isMediaTypesFolder];
  v12 = [v8 assetsFilterPredicate];

  [v10 setAssetsFilterPredicate:v12];
  [v10 setIncludeKeyAssetFetches:v11 ^ 1u];
  [v10 setIncludeUserSmartAlbums:1];
  v13 = [v9 px_isMediaTypesFolder];

  [v10 setEmptyCollectionsHidden:v13];
  [v10 setSkipKeyAssetFetchesForSmartAlbums:1];
  [v10 setSkipAssetFetches:1];
  [v10 setSkipAssetCountFetches:1];
  v14 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v10 topLevelIdentifier:v7];

  return v14;
}

+ (id)trashDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_assetCollectionForSmartAlbumWithSubtype:1000000201];
  v8 = [a1 dataSectionManagerForCollection:v7 context:v6];
  v9 = [v6 enablementProvider];

  [v9 configureEnablementOfSectionManager:v8 enablementItem:3];
  [v8 setHiddenWhenEmpty:0];

  return v8;
}

+ (id)sharedLibrarySuggestionsDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_assetCollectionForSmartAlbumWithSubtype:1000000214];
  v8 = [a1 dataSectionManagerForCollection:v7 context:v6];
  v9 = [v6 enablementProvider];

  [v9 configureEnablementOfSectionManager:v8 enablementItem:15];
  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)unableToUploadDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_assetCollectionForSmartAlbumWithSubtype:216];
  v8 = [a1 dataSectionManagerForCollection:v7 context:v6];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)recentlySavedDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_assetCollectionForSmartAlbumWithSubtype:1000000218];
  v8 = [a1 dataSectionManagerForCollection:v7 context:v6];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)favoritesDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_assetCollectionForSmartAlbumWithSubtype:203];
  v8 = [a1 dataSectionManagerForCollection:v7 context:v6];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)collectionsItemDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_virtualCollections];
  v8 = [v7 collectionsCollection];

  v9 = [a1 dataSectionManagerForCollection:v8 context:v6];

  v10 = PXNavigationListItemWithObject(v8, 0, 0, 0, 0);
  [v9 setOutlineObject:v10];

  return v9;
}

+ (id)libraryItemDataSectionManagerForLibrary:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 px_virtualCollections];
  v8 = [v7 photosCollection];

  v9 = [a1 dataSectionManagerForCollection:v8 context:v6];

  v10 = PXNavigationListItemWithObject(v8, 0, 0, 0, 0);
  [v9 setOutlineObject:v10];

  return v9;
}

+ (id)dataSectionManagerForCollection:(id)a3 context:(id)a4 enablementItem:(int64_t)a5
{
  v8 = a4;
  v9 = [a1 dataSectionManagerForCollection:a3 context:v8];
  v10 = [v8 enablementProvider];

  [v10 configureEnablementOfSectionManager:v9 enablementItem:a5];

  return v9;
}

+ (id)dataSectionManagerForTransientCollection:(id)a3 context:(id)a4
{
  v4 = [a1 dataSectionManagerForCollection:a3 context:a4];
  [v4 setHiddenWhenEmpty:1];

  return v4;
}

+ (id)dataSectionManagerForGroupCollectionList:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [a1 dataSectionManagerForCollectionList:v6 context:a4 topLevelIdentifier:0];
  v8 = [[PXNavigationListGroupItem alloc] initWithCollectionList:v6];

  [v7 setOutlineObject:v8];

  return v7;
}

+ (id)dataSectionManagerForCollection:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXNavigationListItemDataSectionManager alloc] initWithCollection:v6 context:v5];

  return v7;
}

@end