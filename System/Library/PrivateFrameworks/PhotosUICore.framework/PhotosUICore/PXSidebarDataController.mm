@interface PXSidebarDataController
+ (id)albumsDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)bookmarksDataSectionManagerForLibrary:(id)library;
+ (id)collectionsDataSectionManagerForLibrary:(id)library mediaTypesItemManager:(id)manager context:(id)context;
+ (id)collectionsItemDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)dataSectionManagerForCollection:(id)collection context:(id)context;
+ (id)dataSectionManagerForCollection:(id)collection context:(id)context enablementItem:(int64_t)item;
+ (id)dataSectionManagerForCollectionList:(id)list context:(id)context topLevelIdentifier:(id)identifier;
+ (id)dataSectionManagerForGroupCollectionList:(id)list context:(id)context;
+ (id)dataSectionManagerForTransientCollection:(id)collection context:(id)context;
+ (id)devicesDataSectionManagerForLibrary:(id)library;
+ (id)favoritesDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)fromMyMacDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)libraryDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)libraryItemDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)mediaTypesDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)projectsDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)recentlySavedDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)sharedAlbumsDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)sharedLibrarySuggestionsDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)sharingDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)trashDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)unableToUploadDataSectionManagerForLibrary:(id)library context:(id)context;
+ (id)utilitiesDataSectionManagerForLibrary:(id)library context:(id)context;
- (BOOL)isItemExpanded:(id)expanded;
- (BOOL)moveGroupItem:(id)item afterGroupItem:(id)groupItem;
- (PXDataSectionManager)mediaTypesSectionManager;
- (PXNavigationListItemDataSectionManager)mediaTypesItemManager;
- (PXSidebarDataController)init;
- (PXSidebarDataController)initWithPhotoLibrary:(id)library context:(id)context options:(unint64_t)options pickerAllPhotosVirtualCollection:(id)collection;
- (PXSidebarDataSourceControllerDelegate)delegate;
- (id)_childDataSectionManagerForListItem:(id)item;
- (id)child:(int64_t)child ofItem:(id)item;
- (id)childDataSectionForItem:(id)item;
- (id)childrenOfListItem:(id)item;
- (id)dataSectionManagerForItem:(id)item;
- (id)fetchCollectionsInDisplayCollectionList:(id)list;
- (id)infoForItem:(id)item childIndex:(int64_t)index;
- (id)itemsForCollectionIdentifier:(id)identifier;
- (id)makeSectionManagers;
- (id)outlineDataSectionManager:(id)manager arrangedSectionContent:(id)content;
- (int64_t)numberOfChildrenOfItem:(id)item;
- (void)_removeDataSectionManagerForKey:(id)key;
- (void)_setDataSectionManager:(id)manager forKey:(id)key;
- (void)_updateDataSectionForRemovedItems:(id)items;
- (void)_updateMediaTypesItemManager;
- (void)_updateSectionObjectLookupDataForChildItem:(id)item;
- (void)cancelImageRequest:(int64_t)request;
- (void)didNavigateToListItem:(id)item;
- (void)markListItemAsRead:(id)read;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setExpanded:(BOOL)expanded forItem:(id)item;
@end

@implementation PXSidebarDataController

- (PXSidebarDataSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXDataSectionManagerChangeContext == context)
  {
    v15 = observableCopy;
    previousDataSection = [(PXDataSectionManager *)observableCopy previousDataSection];
    changeDetailsFromPreviousDataSection = [(PXDataSectionManager *)v15 changeDetailsFromPreviousDataSection];
    v10 = [[PXSidebarItemChangeDetails alloc] initWithArrayChangeDetails:changeDetailsFromPreviousDataSection previousDataSection:previousDataSection];
    removedItems = [(PXSidebarItemChangeDetails *)v10 removedItems];
    [(PXSidebarDataController *)self _updateDataSectionForRemovedItems:removedItems];

    outlineObject = [(PXDataSectionManager *)v15 outlineObject];
    if (!outlineObject || ([(PXSidebarDataController *)self dataSectionManagerForItem:outlineObject], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      delegate = [(PXSidebarDataController *)self delegate];
      [delegate sidebarDataSourceController:self didChangeChildrenOfItem:outlineObject changeDetails:v10];
    }

    if (self->_mediaTypesSectionManager == v15)
    {
      [(PXSidebarDataController *)self _updateMediaTypesItemManager];
    }

    observableCopy = v15;
  }
}

- (id)outlineDataSectionManager:(id)manager arrangedSectionContent:(id)content
{
  v38 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(contentCopy, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(contentCopy, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(contentCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = contentCopy;
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
        identifier = [v14 identifier];
        [v8 setObject:v14 forKeyedSubscript:identifier];
        [v7 addObject:identifier];
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

- (id)fetchCollectionsInDisplayCollectionList:(id)list
{
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = listCopy;
    photoLibrary = [v4 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeUserSmartAlbums:1];
    v7 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v4 options:librarySpecificFetchOptions];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (BOOL)isItemExpanded:(id)expanded
{
  expandedCopy = expanded;
  if ([expandedCopy isExpandable])
  {
    defaultsToExpanded = [expandedCopy defaultsToExpanded];
    localDefaults = [(PXSidebarDataController *)self localDefaults];
    v7 = localDefaults;
    if (defaultsToExpanded)
    {
      v8 = [localDefaults identifiersForKey:@"CollapsedSidebarSectionIdentifiers"];
      identifier = [expandedCopy identifier];
      v10 = [v8 containsObject:identifier] ^ 1;
    }

    else
    {
      v8 = [localDefaults identifiersForKey:@"ExpandedSidebarItemIdentifiers"];
      identifier = [expandedCopy identifier];
      LOBYTE(v10) = [v8 containsObject:identifier];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)dataSectionManagerForItem:(id)item
{
  dataSectionManagers = self->_dataSectionManagers;
  identifier = [item identifier];
  v5 = [(NSMutableDictionary *)dataSectionManagers objectForKeyedSubscript:identifier];

  return v5;
}

- (id)childDataSectionForItem:(id)item
{
  if (item)
  {
    v3 = [(PXSidebarDataController *)self _childDataSectionManagerForListItem:?];
  }

  else
  {
    v3 = self->_rootDataSectionManager;
  }

  v4 = v3;
  dataSection = [(PXDataSectionManager *)v3 dataSection];

  return dataSection;
}

- (void)cancelImageRequest:(int64_t)request
{
  imageLoader = [(PXSidebarDataController *)self imageLoader];
  [imageLoader cancelImageRequest:request];
}

- (id)infoForItem:(id)item childIndex:(int64_t)index
{
  itemCopy = item;
  v7 = [(PXSidebarDataController *)self childDataSectionForItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [v8 indexOfChildDataSourceForObjectAtIndex:index localIndex:&v14];
    v7 = v8;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      childDataSections = [v8 childDataSections];
      v7 = [childDataSections objectAtIndexedSubscript:v10];

      index = v14;
    }
  }

  v12 = [[PXSidebarItemChildInfo alloc] initWithListItem:itemCopy dataSection:v7 childIndex:index];

  return v12;
}

- (void)markListItemAsRead:(id)read
{
  collection = [read collection];
  if ([collection px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    photoLibrary = [collection photoLibrary];
    px_sharedLibrarySharingSuggestionsCountsManager = [photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];
    [px_sharedLibrarySharingSuggestionsCountsManager markAllSuggestionsAsRead];
  }
}

- (void)didNavigateToListItem:(id)item
{
  collection = [item collection];
  if ([collection px_isSharedLibrarySharingSuggestionsSmartAlbum])
  {
    photoLibrary = [collection photoLibrary];
    px_sharedLibrarySharingSuggestionsCountsManager = [photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];
    [px_sharedLibrarySharingSuggestionsCountsManager markAnyNotificationsAsRead];
  }
}

- (void)setExpanded:(BOOL)expanded forItem:(id)item
{
  expandedCopy = expanded;
  itemCopy = item;
  defaultsToExpanded = [itemCopy defaultsToExpanded];
  localDefaults = [(PXSidebarDataController *)self localDefaults];
  identifier = [itemCopy identifier];
  if (defaultsToExpanded)
  {
    v9 = @"CollapsedSidebarSectionIdentifiers";
    if (expandedCopy)
    {
LABEL_3:
      [localDefaults removeIdentifier:identifier forKey:v9];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = @"ExpandedSidebarItemIdentifiers";
    if (!expandedCopy)
    {
      goto LABEL_3;
    }
  }

  [localDefaults addIdentifier:identifier forKey:v9];
LABEL_6:
}

- (BOOL)moveGroupItem:(id)item afterGroupItem:(id)groupItem
{
  groupItemCopy = groupItem;
  arrangedObjectIdentifiers = self->_arrangedObjectIdentifiers;
  identifier = [item identifier];
  [(NSArray *)arrangedObjectIdentifiers indexOfObject:identifier];

  if (groupItemCopy)
  {
    v9 = self->_arrangedObjectIdentifiers;
    identifier2 = [groupItemCopy identifier];
    [(NSArray *)v9 indexOfObject:identifier2];
  }

  PXArrayByMovingObjectFromIndexToIndex();
}

- (id)itemsForCollectionIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:identifier];
  allValues = [v3 allValues];
  v5 = allValues;
  if (allValues)
  {
    v6 = allValues;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)childrenOfListItem:(id)item
{
  v4 = [(PXSidebarDataController *)self childDataSectionForItem:item];
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

    array = [v7 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)child:(int64_t)child ofItem:(id)item
{
  v6 = [(PXSidebarDataController *)self childDataSectionForItem:item];
  v7 = [v6 objectAtIndex:child];
  [(PXSidebarDataController *)self _updateSectionObjectLookupDataForChildItem:v7];

  return v7;
}

- (int64_t)numberOfChildrenOfItem:(id)item
{
  v3 = [(PXSidebarDataController *)self childDataSectionForItem:item];
  v4 = [v3 count];

  return v4;
}

- (void)_updateSectionObjectLookupDataForChildItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  if (identifier)
  {
    [(NSMutableDictionary *)self->_dataSectionObjectsByItemIdentifier setObject:itemCopy forKeyedSubscript:identifier];
    v5 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:identifier];
    [v5 setOutlineObject:itemCopy];
  }

  collectionIdentifier = [itemCopy collectionIdentifier];
  if (collectionIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:collectionIdentifier];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier setObject:v7 forKeyedSubscript:collectionIdentifier];
    }

    topLevelIdentifier = [itemCopy topLevelIdentifier];
    v9 = topLevelIdentifier;
    v10 = @"root";
    if (topLevelIdentifier)
    {
      v10 = topLevelIdentifier;
    }

    v11 = v10;

    [v7 setObject:itemCopy forKeyedSubscript:v11];
  }
}

- (id)_childDataSectionManagerForListItem:(id)item
{
  v49[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:identifier];
  if (v6)
  {
    v7 = v6;
    goto LABEL_27;
  }

  if (![itemCopy isExpandable] || (-[PXOutlineDataSectionManager childDataSectionManagerForOutlineObject:](self->_rootDataSectionManager, "childDataSectionManagerForOutlineObject:", itemCopy), v7 = objc_claimAutoreleasedReturnValue(), -[PXSidebarDataController _setDataSectionManager:forKey:](self, "_setDataSectionManager:forKey:", v7, identifier), !v7))
  {
    collection = [itemCopy collection];
    topLevelIdentifier = [itemCopy topLevelIdentifier];
    if (topLevelIdentifier)
    {
      identifier2 = [itemCopy identifier];
    }

    else
    {
      identifier2 = 0;
    }

    if ([collection px_isSharedAlbumsAndActivityFolder])
    {
      photoLibrary = [(PXSidebarDataController *)self photoLibrary];
      px_virtualCollections = [photoLibrary px_virtualCollections];
      sharedActivityCollection = [px_virtualCollections sharedActivityCollection];

      [(PXSidebarDataController *)self context];
      v46 = collection;
      v14 = v13 = identifier2;
      v15 = [PXSidebarDataController dataSectionManagerForCollection:sharedActivityCollection context:v14 enablementItem:5];

      photoLibrary2 = [(PXSidebarDataController *)self photoLibrary];
      px_virtualCollections2 = [photoLibrary2 px_virtualCollections];
      sharedAlbumsCollectionList = [px_virtualCollections2 sharedAlbumsCollectionList];

      v19 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:sharedAlbumsCollectionList];
      [v19 setIncludeKeyAssetFetches:1];
      [v19 setSkipAssetFetches:1];
      [v19 setSkipAssetCountFetches:1];
      context = [(PXSidebarDataController *)self context];
      assetsFilterPredicate = [context assetsFilterPredicate];
      [v19 setAssetsFilterPredicate:assetsFilterPredicate];

      v22 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v19 topLevelIdentifier:v13];
      [(PXNavigationListDataSectionManager *)v22 startBackgroundFetchingIfNeeded];
      v23 = [PXStackedDataSectionManager alloc];
      v49[0] = v15;
      v49[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v7 = [(PXStackedDataSectionManager *)v23 initWithChildDataSectionManagers:v24];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      identifier2 = v13;
      collection = v46;

      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([collection px_isUtilitiesFolder])
    {
      v25 = ([(PXSidebarDataController *)self options]>> 3) & 1;
      v26 = ([(PXSidebarDataController *)self options]>> 4) & 1;
      photoLibrary3 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeUtilitiesDataSectionManagerWithLibrary:photoLibrary3 topLevelIdentifier:identifier2 forPicker:v25 excludeHiddenAlbum:v26];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([collection px_isMediaTypesFolder])
    {
      photoLibrary4 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeMediaTypesDataSectionManagerWithLibrary:photoLibrary4 topLevelIdentifier:identifier2];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([collection px_isAllMacSyncedAlbumsFolder])
    {
      photoLibrary5 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeMacSyncedDataSectionManagerWithLibrary:photoLibrary5 topLevelIdentifier:identifier2];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([collection px_isBookmarksFolder])
    {
      photoLibrary6 = [(PXSidebarDataController *)self photoLibrary];
      v7 = [PXSidebarDataManagerFactory makeBookmarksDataSectionManagerWithLibrary:photoLibrary6 topLevelIdentifier:identifier2];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if ([collection canContainCollections])
    {
      if ([collection px_isProjectsFolder])
      {
        context2 = [(PXSidebarDataController *)self context];
        libraryFilterState = [context2 libraryFilterState];
        viewMode = [libraryFilterState viewMode];

        if (viewMode)
        {
          v34 = MEMORY[0x1E6978760];
          localizedTitle = [collection localizedTitle];
          photoLibrary7 = [(PXSidebarDataController *)self photoLibrary];
          v37 = [v34 transientCollectionListWithCollections:MEMORY[0x1E695E0F0] title:localizedTitle identifier:0 photoLibrary:photoLibrary7];

          collection = v37;
        }
      }

      v38 = objc_opt_class();
      context3 = [(PXSidebarDataController *)self context];
      v7 = [v38 dataSectionManagerForCollectionList:collection context:context3 topLevelIdentifier:identifier2];

      [(PXStackedDataSectionManager *)v7 setOutlineObject:itemCopy];
      if (v7)
      {
        goto LABEL_25;
      }
    }

    if (![identifier isEqualToString:@"PXNavigationListGroupItemTypeDevices"])
    {
      v7 = 0;
      goto LABEL_26;
    }

    v40 = objc_opt_class();
    photoLibrary8 = [(PXSidebarDataController *)self photoLibrary];
    v7 = [v40 devicesDataSectionManagerForLibrary:photoLibrary8];

    if (v7)
    {
LABEL_25:
      [(PXSidebarDataController *)self _setDataSectionManager:v7 forKey:identifier, sharedActivityCollection];
    }

LABEL_26:
  }

LABEL_27:
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __63__PXSidebarDataController__childDataSectionManagerForListItem___block_invoke;
  v47[3] = &unk_1E774C648;
  v43 = v7;
  v48 = v43;
  [sharedScheduler scheduleTaskAfterCATransactionCommits:v47];

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
    mediaTypesSectionManager = [(PXSidebarDataController *)self mediaTypesSectionManager];
    if ([mediaTypesSectionManager allowsEmptyDataSection])
    {
      v9 = 1;
    }

    else
    {
      v9 = [mediaTypesSectionManager isDataSectionEmpty] ^ 1;
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

- (void)_updateDataSectionForRemovedItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = items;
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
        identifier = [v8 identifier];
        if (([identifier isEqualToString:@"PXMediaTypesVirtualCollection"] & 1) == 0)
        {
          [(PXSidebarDataController *)self _removeDataSectionManagerForKey:identifier];
          [(NSMutableDictionary *)self->_dataSectionObjectsByItemIdentifier removeObjectForKey:identifier];
          collectionIdentifier = [v8 collectionIdentifier];
          if (collectionIdentifier)
          {
            v11 = [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier objectForKeyedSubscript:collectionIdentifier];
            topLevelIdentifier = [v8 topLevelIdentifier];
            v13 = topLevelIdentifier;
            v14 = @"root";
            if (topLevelIdentifier)
            {
              v14 = topLevelIdentifier;
            }

            v15 = v14;

            [v11 setObject:0 forKeyedSubscript:v15];
            if (![v11 count])
            {
              [(NSMutableDictionary *)self->_dataSectionObjectsByCollectionIdentifier setObject:0 forKeyedSubscript:collectionIdentifier];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)_removeDataSectionManagerForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_dataSectionManagers objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_dataSectionManagers setObject:0 forKeyedSubscript:keyCopy];
    [v4 unregisterChangeObserver:self context:PXDataSectionManagerChangeContext];
  }
}

- (void)_setDataSectionManager:(id)manager forKey:(id)key
{
  dataSectionManagers = self->_dataSectionManagers;
  managerCopy = manager;
  [(NSMutableDictionary *)dataSectionManagers setObject:managerCopy forKeyedSubscript:key];
  [managerCopy registerChangeObserver:self context:PXDataSectionManagerChangeContext];
}

- (PXSidebarDataController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPhotoLibrary_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSidebarDataController.m" lineNumber:350 description:{@"Use the designated initializer %@", v5}];

  return 0;
}

- (id)makeSectionManagers
{
  photoLibrary = [(PXSidebarDataController *)self photoLibrary];
  context = [(PXSidebarDataController *)self context];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v6 = MEMORY[0x1A590D320]();
  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [v7 libraryItemDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v8];

    v9 = [objc_opt_class() collectionsItemDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v9];

    v10 = [objc_opt_class() devicesDataSectionManagerForLibrary:photoLibrary];
    [v5 addObject:v10];

    v11 = [objc_opt_class() bookmarksDataSectionManagerForLibrary:photoLibrary];
    [v5 addObject:v11];

    v12 = [objc_opt_class() albumsDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v12];

    v13 = [objc_opt_class() sharingDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v13];

    v14 = [objc_opt_class() mediaTypesDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v14];

    v15 = [objc_opt_class() utilitiesDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v15];

    [objc_opt_class() projectsDataSectionManagerForLibrary:photoLibrary context:context];
  }

  else
  {
    v16 = [v7 libraryDataSectionManagerForLibrary:photoLibrary context:context];
    [v5 addObject:v16];

    v17 = [objc_opt_class() devicesDataSectionManagerForLibrary:photoLibrary];
    [v5 addObject:v17];

    v18 = objc_opt_class();
    mediaTypesItemManager = [(PXSidebarDataController *)self mediaTypesItemManager];
    v20 = [v18 collectionsDataSectionManagerForLibrary:photoLibrary mediaTypesItemManager:mediaTypesItemManager context:context];
    [v5 addObject:v20];

    [objc_opt_class() sharingDataSectionManagerForLibrary:photoLibrary context:context];
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
    photoLibrary = [(PXSidebarDataController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
    context = [(PXSidebarDataController *)self context];
    v4 = [v9 dataSectionManagerForCollection:mediaTypesCollectionList context:context];

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

    photoLibrary = [(PXSidebarDataController *)self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
    v12 = PXNavigationListItemWithObject(mediaTypesCollectionList, 0, 0, 0, 0);

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

- (PXSidebarDataController)initWithPhotoLibrary:(id)library context:(id)context options:(unint64_t)options pickerAllPhotosVirtualCollection:(id)collection
{
  libraryCopy = library;
  contextCopy = context;
  collectionCopy = collection;
  v27.receiver = self;
  v27.super_class = PXSidebarDataController;
  v14 = [(PXSidebarDataController *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_photoLibrary, library);
    objc_storeStrong(&v15->_context, context);
    v15->_options = options;
    objc_storeStrong(&v15->_pickerAllPhotosVirtualCollection, collection);
    v16 = objc_alloc_init(PXSidebarImageLoader);
    imageLoader = v15->_imageLoader;
    v15->_imageLoader = v16;

    px_localDefaults = [libraryCopy px_localDefaults];
    localDefaults = v15->_localDefaults;
    v15->_localDefaults = px_localDefaults;

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

+ (id)bookmarksDataSectionManagerForLibrary:(id)library
{
  libraryCopy = library;
  v4 = [PXSidebarDataManagerFactory makeBookmarksDataSectionManagerWithLibrary:libraryCopy topLevelIdentifier:@"bookmarks"];
  v5 = [PXNavigationListGroupItem alloc];
  px_virtualCollections = [libraryCopy px_virtualCollections];

  bookmarksCollectionList = [px_virtualCollections bookmarksCollectionList];
  v8 = [(PXNavigationListGroupItem *)v5 initWithCollectionList:bookmarksCollectionList];
  [v4 setOutlineObject:v8];

  return v4;
}

+ (id)devicesDataSectionManagerForLibrary:(id)library
{
  libraryCopy = library;
  v4 = [[PXImportSourceDataSectionManager alloc] initWithPhotoLibrary:libraryCopy];

  v5 = [[PXNavigationListGroupItem alloc] initWithIdentifier:@"PXNavigationListGroupItemTypeDevices" defaultsToExpanded:1];
  [(PXDataSectionManager *)v4 setOutlineObject:v5];

  return v4;
}

+ (id)collectionsDataSectionManagerForLibrary:(id)library mediaTypesItemManager:(id)manager context:(id)context
{
  v33[9] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  managerCopy = manager;
  px_virtualCollections = [library px_virtualCollections];
  v26 = [PXStackedDataSectionManager alloc];
  eventsCollection = [px_virtualCollections eventsCollection];
  v31 = [self dataSectionManagerForCollection:eventsCollection context:contextCopy];
  v33[0] = v31;
  peopleCollection = [px_virtualCollections peopleCollection];
  v29 = [self dataSectionManagerForCollection:peopleCollection context:contextCopy];
  v33[1] = v29;
  memoriesCollection = [px_virtualCollections memoriesCollection];
  v27 = [self dataSectionManagerForCollection:memoriesCollection context:contextCopy enablementItem:1];
  v33[2] = v27;
  tripsCollection = [px_virtualCollections tripsCollection];
  v23 = [self dataSectionManagerForCollection:tripsCollection context:contextCopy enablementItem:8];
  v33[3] = v23;
  featuredPhotosCollection = [px_virtualCollections featuredPhotosCollection];
  v10 = [self dataSectionManagerForCollection:featuredPhotosCollection context:contextCopy enablementItem:11];
  v33[4] = v10;
  utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];
  v12 = [self dataSectionManagerForCollection:utilitiesCollectionList context:contextCopy];
  v33[5] = v12;
  v33[6] = managerCopy;
  rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
  v14 = [self dataSectionManagerForCollection:rootAlbumCollectionList context:contextCopy];
  v33[7] = v14;
  sharedAlbumsAndActivityCollectionList = [px_virtualCollections sharedAlbumsAndActivityCollectionList];
  v16 = [self dataSectionManagerForCollection:sharedAlbumsAndActivityCollectionList context:contextCopy enablementItem:6];

  v33[8] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:9];
  v18 = [(PXStackedDataSectionManager *)v26 initWithChildDataSectionManagers:v17];

  v19 = [PXNavigationListGroupItem alloc];
  v20 = [(PXNavigationListGroupItem *)v19 initWithIdentifier:@"PXNavigationListGroupItemTypeCollections" defaultsToExpanded:1];
  [(PXStackedDataSectionManager *)v18 setOutlineObject:v20];

  return v18;
}

+ (id)utilitiesDataSectionManagerForLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  v5 = [PXSidebarDataManagerFactory makeUtilitiesDataSectionManagerWithLibrary:libraryCopy topLevelIdentifier:0 forPicker:0 excludeHiddenAlbum:0];
  v6 = [PXNavigationListGroupItem alloc];
  px_virtualCollections = [libraryCopy px_virtualCollections];

  utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];
  v9 = [(PXNavigationListGroupItem *)v6 initWithCollectionList:utilitiesCollectionList];
  [v5 setOutlineObject:v9];

  return v5;
}

+ (id)mediaTypesDataSectionManagerForLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  v5 = [PXSidebarDataManagerFactory makeMediaTypesDataSectionManagerWithLibrary:libraryCopy topLevelIdentifier:0];
  v6 = [PXNavigationListGroupItem alloc];
  px_virtualCollections = [libraryCopy px_virtualCollections];

  mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
  v9 = [(PXNavigationListGroupItem *)v6 initWithCollectionList:mediaTypesCollectionList];
  [v5 setOutlineObject:v9];

  return v5;
}

+ (id)sharingDataSectionManagerForLibrary:(id)library context:(id)context
{
  v25[5] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  libraryCopy = library;
  px_virtualCollections = [libraryCopy px_virtualCollections];
  v21 = [PXStackedDataSectionManager alloc];
  sharedAlbumsCollectionList = [px_virtualCollections sharedAlbumsCollectionList];
  v23 = [self dataSectionManagerForCollection:sharedAlbumsCollectionList context:contextCopy enablementItem:6];
  v25[0] = v23;
  sharedActivityCollection = [px_virtualCollections sharedActivityCollection];
  v9 = [self dataSectionManagerForCollection:sharedActivityCollection context:contextCopy enablementItem:6];
  v25[1] = v9;
  contentSyndicationCollection = [px_virtualCollections contentSyndicationCollection];
  v11 = [self dataSectionManagerForCollection:contentSyndicationCollection context:contextCopy enablementItem:16];
  v25[2] = v11;
  completeMyMomentCollection = [px_virtualCollections completeMyMomentCollection];
  v13 = [self dataSectionManagerForCollection:completeMyMomentCollection context:contextCopy enablementItem:14];
  v25[3] = v13;
  v14 = [self sharedLibrarySuggestionsDataSectionManagerForLibrary:libraryCopy context:contextCopy];

  v25[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v16 = [(PXStackedDataSectionManager *)v21 initWithChildDataSectionManagers:v15];

  v17 = [PXNavigationListGroupItem alloc];
  isSystemPhotoLibrary = [libraryCopy isSystemPhotoLibrary];

  v19 = [(PXNavigationListGroupItem *)v17 initWithIdentifier:@"PXNavigationListGroupItemTypeSharing" defaultsToExpanded:isSystemPhotoLibrary];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v19];

  return v16;
}

+ (id)projectsDataSectionManagerForLibrary:(id)library context:(id)context
{
  v20[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  v8 = [PXNavigationListItemDataSectionManager alloc];
  allProjectsCollection = [px_virtualCollections allProjectsCollection];
  v10 = [(PXNavigationListItemDataSectionManager *)v8 initWithCollection:allProjectsCollection context:contextCopy];

  rootProjectCollectionList = [px_virtualCollections rootProjectCollectionList];
  v12 = [self dataSectionManagerForCollectionList:rootProjectCollectionList context:contextCopy topLevelIdentifier:0];

  v13 = [PXStackedDataSectionManager alloc];
  v20[0] = v10;
  v20[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [(PXStackedDataSectionManager *)v13 initWithChildDataSectionManagers:v14];

  [(PXStackedDataSectionManager *)v15 setAlwaysContainsObjects:1];
  v16 = [PXNavigationListGroupItem alloc];
  rootProjectCollectionList2 = [px_virtualCollections rootProjectCollectionList];
  v18 = [(PXNavigationListGroupItem *)v16 initWithCollectionList:rootProjectCollectionList2];
  [(PXStackedDataSectionManager *)v15 setOutlineObject:v18];

  return v15;
}

+ (id)sharedAlbumsDataSectionManagerForLibrary:(id)library context:(id)context
{
  v20[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  v8 = [PXNavigationListItemDataSectionManager alloc];
  sharedAlbumsCollection = [px_virtualCollections sharedAlbumsCollection];
  v10 = [(PXNavigationListItemDataSectionManager *)v8 initWithCollection:sharedAlbumsCollection context:contextCopy];

  sharedAlbumsCollectionList = [px_virtualCollections sharedAlbumsCollectionList];
  v12 = [self dataSectionManagerForCollectionList:sharedAlbumsCollectionList context:contextCopy topLevelIdentifier:0];

  v13 = [PXStackedDataSectionManager alloc];
  v20[0] = v10;
  v20[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [(PXStackedDataSectionManager *)v13 initWithChildDataSectionManagers:v14];

  [(PXStackedDataSectionManager *)v15 setAlwaysContainsObjects:1];
  v16 = [PXNavigationListGroupItem alloc];
  sharedAlbumsCollectionList2 = [px_virtualCollections sharedAlbumsCollectionList];
  v18 = [(PXNavigationListGroupItem *)v16 initWithCollectionList:sharedAlbumsCollectionList2];
  [(PXStackedDataSectionManager *)v15 setOutlineObject:v18];

  return v15;
}

+ (id)fromMyMacDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
  v8 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:rootAlbumCollectionList];

  assetsFilterPredicate = [contextCopy assetsFilterPredicate];

  [v8 setAssetsFilterPredicate:assetsFilterPredicate];
  [v8 setIncludeKeyAssetFetches:1];
  [v8 setShowSyncedFromMacAlbums:1];
  [v8 setSkipAssetFetches:1];
  [v8 setSkipAssetCountFetches:1];
  v10 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v8 topLevelIdentifier:0];
  v11 = [PXNavigationListGroupItem alloc];
  macSyncedAlbumsCollectionList = [px_virtualCollections macSyncedAlbumsCollectionList];
  v13 = [(PXNavigationListGroupItem *)v11 initWithCollectionList:macSyncedAlbumsCollectionList];
  [(PXDataSectionManager *)v10 setOutlineObject:v13];

  return v10;
}

+ (id)albumsDataSectionManagerForLibrary:(id)library context:(id)context
{
  v21[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  libraryCopy = library;
  px_virtualCollections = [libraryCopy px_virtualCollections];
  v9 = [PXNavigationListItemDataSectionManager alloc];
  allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
  v11 = [(PXNavigationListItemDataSectionManager *)v9 initWithCollection:allAlbumsCollection context:contextCopy];

  px_rootAlbumCollectionList = [libraryCopy px_rootAlbumCollectionList];
  v13 = [self dataSectionManagerForCollectionList:px_rootAlbumCollectionList context:contextCopy topLevelIdentifier:0];

  v14 = [PXStackedDataSectionManager alloc];
  v21[0] = v11;
  v21[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16 = [(PXStackedDataSectionManager *)v14 initWithChildDataSectionManagers:v15];

  [(PXStackedDataSectionManager *)v16 setAlwaysContainsObjects:1];
  v17 = [PXNavigationListGroupItem alloc];
  px_rootAlbumCollectionList2 = [libraryCopy px_rootAlbumCollectionList];

  v19 = [(PXNavigationListGroupItem *)v17 initWithCollectionList:px_rootAlbumCollectionList2];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v19];

  return v16;
}

+ (id)libraryDataSectionManagerForLibrary:(id)library context:(id)context
{
  v19[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  libraryCopy = library;
  px_virtualCollections = [libraryCopy px_virtualCollections];
  v9 = [PXStackedDataSectionManager alloc];
  photosCollection = [px_virtualCollections photosCollection];
  v11 = [self dataSectionManagerForCollection:photosCollection context:contextCopy];
  v19[0] = v11;
  v12 = [self favoritesDataSectionManagerForLibrary:libraryCopy context:contextCopy];
  v19[1] = v12;
  v13 = [self recentlySavedDataSectionManagerForLibrary:libraryCopy context:contextCopy];
  v19[2] = v13;
  v14 = [self trashDataSectionManagerForLibrary:libraryCopy context:contextCopy];

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v16 = [(PXStackedDataSectionManager *)v9 initWithChildDataSectionManagers:v15];

  v17 = [[PXNavigationListGroupItem alloc] initWithIdentifier:@"PXNavigationListGroupItemTypePhotos" defaultsToExpanded:1];
  [(PXStackedDataSectionManager *)v16 setOutlineObject:v17];

  return v16;
}

+ (id)dataSectionManagerForCollectionList:(id)list context:(id)context topLevelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contextCopy = context;
  listCopy = list;
  v10 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:listCopy];
  px_isMediaTypesFolder = [listCopy px_isMediaTypesFolder];
  assetsFilterPredicate = [contextCopy assetsFilterPredicate];

  [v10 setAssetsFilterPredicate:assetsFilterPredicate];
  [v10 setIncludeKeyAssetFetches:px_isMediaTypesFolder ^ 1u];
  [v10 setIncludeUserSmartAlbums:1];
  px_isMediaTypesFolder2 = [listCopy px_isMediaTypesFolder];

  [v10 setEmptyCollectionsHidden:px_isMediaTypesFolder2];
  [v10 setSkipKeyAssetFetchesForSmartAlbums:1];
  [v10 setSkipAssetFetches:1];
  [v10 setSkipAssetCountFetches:1];
  v14 = [[PXNavigationListDataSectionManager alloc] initWithConfiguration:v10 topLevelIdentifier:identifierCopy];

  return v14;
}

+ (id)trashDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  v7 = [library px_assetCollectionForSmartAlbumWithSubtype:1000000201];
  v8 = [self dataSectionManagerForCollection:v7 context:contextCopy];
  enablementProvider = [contextCopy enablementProvider];

  [enablementProvider configureEnablementOfSectionManager:v8 enablementItem:3];
  [v8 setHiddenWhenEmpty:0];

  return v8;
}

+ (id)sharedLibrarySuggestionsDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  v7 = [library px_assetCollectionForSmartAlbumWithSubtype:1000000214];
  v8 = [self dataSectionManagerForCollection:v7 context:contextCopy];
  enablementProvider = [contextCopy enablementProvider];

  [enablementProvider configureEnablementOfSectionManager:v8 enablementItem:15];
  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)unableToUploadDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  v7 = [library px_assetCollectionForSmartAlbumWithSubtype:216];
  v8 = [self dataSectionManagerForCollection:v7 context:contextCopy];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)recentlySavedDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  v7 = [library px_assetCollectionForSmartAlbumWithSubtype:1000000218];
  v8 = [self dataSectionManagerForCollection:v7 context:contextCopy];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)favoritesDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  v7 = [library px_assetCollectionForSmartAlbumWithSubtype:203];
  v8 = [self dataSectionManagerForCollection:v7 context:contextCopy];

  [v8 setHiddenWhenEmpty:1];

  return v8;
}

+ (id)collectionsItemDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  collectionsCollection = [px_virtualCollections collectionsCollection];

  v9 = [self dataSectionManagerForCollection:collectionsCollection context:contextCopy];

  v10 = PXNavigationListItemWithObject(collectionsCollection, 0, 0, 0, 0);
  [v9 setOutlineObject:v10];

  return v9;
}

+ (id)libraryItemDataSectionManagerForLibrary:(id)library context:(id)context
{
  contextCopy = context;
  px_virtualCollections = [library px_virtualCollections];
  photosCollection = [px_virtualCollections photosCollection];

  v9 = [self dataSectionManagerForCollection:photosCollection context:contextCopy];

  v10 = PXNavigationListItemWithObject(photosCollection, 0, 0, 0, 0);
  [v9 setOutlineObject:v10];

  return v9;
}

+ (id)dataSectionManagerForCollection:(id)collection context:(id)context enablementItem:(int64_t)item
{
  contextCopy = context;
  v9 = [self dataSectionManagerForCollection:collection context:contextCopy];
  enablementProvider = [contextCopy enablementProvider];

  [enablementProvider configureEnablementOfSectionManager:v9 enablementItem:item];

  return v9;
}

+ (id)dataSectionManagerForTransientCollection:(id)collection context:(id)context
{
  v4 = [self dataSectionManagerForCollection:collection context:context];
  [v4 setHiddenWhenEmpty:1];

  return v4;
}

+ (id)dataSectionManagerForGroupCollectionList:(id)list context:(id)context
{
  listCopy = list;
  v7 = [self dataSectionManagerForCollectionList:listCopy context:context topLevelIdentifier:0];
  v8 = [[PXNavigationListGroupItem alloc] initWithCollectionList:listCopy];

  [v7 setOutlineObject:v8];

  return v7;
}

+ (id)dataSectionManagerForCollection:(id)collection context:(id)context
{
  contextCopy = context;
  collectionCopy = collection;
  v7 = [[PXNavigationListItemDataSectionManager alloc] initWithCollection:collectionCopy context:contextCopy];

  return v7;
}

@end