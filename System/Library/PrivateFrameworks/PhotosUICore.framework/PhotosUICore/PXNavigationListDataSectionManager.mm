@interface PXNavigationListDataSectionManager
+ (id)makeCollectionsDataSourceManagerForConfiguration:(id)configuration;
- (BOOL)isChangeProcessingPaused;
- (PXNavigationListDataSectionManager)initWithChildDataSectionManagers:(id)managers;
- (PXNavigationListDataSectionManager)initWithCollectionList:(id)list topLevelIdentifier:(id)identifier;
- (PXNavigationListDataSectionManager)initWithConfiguration:(id)configuration topLevelIdentifier:(id)identifier;
- (PXPhotoKitCollectionsDataSource)collectionsDataSource;
- (id)_changeDetailsForItemAtIndex:(int64_t)index childDataSection:(id)section expanding:(BOOL)expanding;
- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index;
- (id)createDataSection;
- (void)_requestParentForListItem:(id)item hintIndex:(int64_t)index resultHandler:(id)handler recursionHandler:(id)recursionHandler;
- (void)collapseListItem:(id)item hintIndex:(int64_t)index;
- (void)expandListItem:(id)item hintIndex:(int64_t)index;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pauseBackgroundFetching;
- (void)setAllowsEmptyDataSection:(BOOL)section;
- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason;
- (void)startBackgroundFetchingIfNeeded;
@end

@implementation PXNavigationListDataSectionManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  v10 = observableCopy;
  if (ChildDataSectionManagerObservationContext == context)
  {
    v22 = observableCopy;
    collectionsDataSourceManager = [(NSMapTable *)self->_parentListItems objectForKey:observableCopy];
    v14 = [(NSMutableDictionary *)self->_childDataSectionIndexes objectForKeyedSubscript:collectionsDataSourceManager];
    if (v14)
    {
      changeDetailsFromPreviousDataSection = [v22 changeDetailsFromPreviousDataSection];
      collectionsDataSourceIfExisting = [changeDetailsFromPreviousDataSection changeDetailsShiftedBy:{objc_msgSend(v14, "integerValue") + 1}];
    }

    else
    {
      collectionsDataSourceIfExisting = 0;
    }

    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:collectionsDataSourceIfExisting];
    goto LABEL_13;
  }

  if (CollectionsDataSourceManagerObservationContext == context)
  {
    v22 = observableCopy;
    collectionsDataSourceIfExisting = [(PXNavigationListDataSectionManager *)self collectionsDataSourceIfExisting];
    collectionsDataSourceManager = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
    dataSource = [collectionsDataSourceManager dataSource];
    [(PXNavigationListDataSectionManager *)self setCollectionsDataSource:dataSource];

    collectionsDataSource = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
    v14 = [collectionsDataSourceManager changeDetailsFromDataSource:collectionsDataSourceIfExisting toDataSource:collectionsDataSource];

    v15 = [v14 itemChangesInSection:0];
    v16 = [v14 itemsWithSubitemChangesInSection:0];
    v20 = [v15 changeDetailsByAddingChangedIndexes:v16];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v20];

LABEL_10:
LABEL_13:

    goto LABEL_14;
  }

  if (PrivacyControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSectionManager.m" lineNumber:343 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    v22 = observableCopy;
    collectionsDataSourceIfExisting = [observableCopy identifier];
    collectionsDataSourceManager = [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId objectForKeyedSubscript:collectionsDataSourceIfExisting];
    if (!collectionsDataSourceManager)
    {
LABEL_14:

      v10 = v22;
      goto LABEL_15;
    }

    collectionsDataSource2 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
    v14 = [collectionsDataSource2 indexPathForCollection:collectionsDataSourceManager];

    v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v14, "item")}];
    v16 = [off_1E7721450 changeDetailsWithChangedIndexes:v15];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v16];
    goto LABEL_10;
  }

LABEL_15:
}

- (void)collapseListItem:(id)item hintIndex:(int64_t)index
{
  itemCopy = item;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PXNavigationListDataSectionManager_collapseListItem_hintIndex___block_invoke;
  v11[3] = &unk_1E773D330;
  v11[4] = self;
  v12 = itemCopy;
  v13 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PXNavigationListDataSectionManager_collapseListItem_hintIndex___block_invoke_2;
  v9[3] = &unk_1E7736350;
  v10 = v12;
  v8 = v12;
  [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v8 hintIndex:index resultHandler:v11 recursionHandler:v9];
}

void __65__PXNavigationListDataSectionManager_collapseListItem_hintIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v8 = v4;
    [v4 unregisterChangeObserver:*(a1 + 32) context:ChildDataSectionManagerObservationContext];
    [*(*(a1 + 32) + 160) removeObjectForKey:v8];
    [*(*(a1 + 32) + 144) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(*(a1 + 32) + 152) setObject:0 forKeyedSubscript:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = [v8 dataSection];
    v7 = [v5 _changeDetailsForItemAtIndex:a2 childDataSection:v6 expanding:0];

    [*(a1 + 32) updateDataSectionWithChangeDetails:v7];
    v4 = v8;
  }
}

- (void)expandListItem:(id)item hintIndex:(int64_t)index
{
  itemCopy = item;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PXNavigationListDataSectionManager_expandListItem_hintIndex___block_invoke;
  v11[3] = &unk_1E773D330;
  v12 = itemCopy;
  selfCopy = self;
  v14 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PXNavigationListDataSectionManager_expandListItem_hintIndex___block_invoke_2;
  v9[3] = &unk_1E7736350;
  v10 = v12;
  v8 = v12;
  [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v8 hintIndex:index resultHandler:v11 recursionHandler:v9];
}

void __63__PXNavigationListDataSectionManager_expandListItem_hintIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) collection];
  v4 = [*(*(a1 + 40) + 144) objectForKeyedSubscript:*(a1 + 32)];
  if (!v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [PXNavigationListDataSectionManager alloc];
      v6 = [*(a1 + 40) topLevelIdentifier];
      v4 = [(PXNavigationListDataSectionManager *)v5 initWithCollectionList:v11 topLevelIdentifier:v6];

      -[PXNavigationListDataSectionManager setIndentationLevel:](v4, "setIndentationLevel:", [*(a1 + 40) indentationLevel] + 1);
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      [*(*(a1 + 40) + 152) setObject:v7 forKeyedSubscript:*(a1 + 32)];

      [*(*(a1 + 40) + 144) setObject:v4 forKeyedSubscript:*(a1 + 32)];
      [*(*(a1 + 40) + 160) setObject:*(a1 + 32) forKey:v4];
      [(PXNavigationListDataSectionManager *)v4 registerChangeObserver:*(a1 + 40) context:ChildDataSectionManagerObservationContext];
      v8 = *(a1 + 40);
      v9 = [(PXDataSectionManager *)v4 dataSection];
      v10 = [v8 _changeDetailsForItemAtIndex:a2 childDataSection:v9 expanding:1];

      [*(a1 + 40) updateDataSectionWithChangeDetails:v10];
    }

    else
    {
      v4 = 0;
    }
  }
}

- (void)pauseBackgroundFetching
{
  collectionsDataSourceManager = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  [collectionsDataSourceManager pauseBackgroundFetching];
}

- (void)startBackgroundFetchingIfNeeded
{
  collectionsDataSourceManager = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  [collectionsDataSourceManager prepareBackgroundFetchingIfNeeded];
  [collectionsDataSourceManager startBackgroundFetchingIfNeeded];
}

- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason
{
  pausedCopy = paused;
  v8.receiver = self;
  v8.super_class = PXNavigationListDataSectionManager;
  reasonCopy = reason;
  [(PXDataSectionManager *)&v8 setChangeProcessingPaused:pausedCopy forReason:reasonCopy];
  v7 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager:v8.receiver];
  [v7 setChangeProcessingPaused:pausedCopy forReason:reasonCopy];
}

- (BOOL)isChangeProcessingPaused
{
  collectionsDataSourceManager = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  isChangeProcessingPaused = [collectionsDataSourceManager isChangeProcessingPaused];

  return isChangeProcessingPaused;
}

- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index
{
  keyCopy = key;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__84232;
  v36 = __Block_byref_object_dispose__84233;
  v37 = 0;
  objectCopy = object;
  collection = [objectCopy collection];
  px_allowsKeyAssetDisplay = [collection px_allowsKeyAssetDisplay];
  if (([keyCopy isEqualToString:@"PXNavigationListItemKeyAsset"] & px_allowsKeyAssetDisplay) == 1)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke;
    v29[3] = &unk_1E7736300;
    v29[4] = self;
    v30 = collection;
    v31 = &v32;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_2;
    v25[3] = &unk_1E7736328;
    v28 = &v32;
    v26 = keyCopy;
    v27 = objectCopy;
    [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v27 hintIndex:index resultHandler:v29 recursionHandler:v25];

    v12 = v30;
LABEL_5:

    goto LABEL_7;
  }

  if (([keyCopy isEqualToString:@"PXNavigationListItemFolderKeyAssets"] & px_allowsKeyAssetDisplay) == 1)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_3;
    v22[3] = &unk_1E7736300;
    v22[4] = self;
    v23 = collection;
    v24 = &v32;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_4;
    v18[3] = &unk_1E7736328;
    v21 = &v32;
    v19 = keyCopy;
    v20 = objectCopy;
    [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v20 hintIndex:index resultHandler:v22 recursionHandler:v18];

    v12 = v23;
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = PXNavigationListDataSectionManager;
  v13 = [(PXDataSectionManager *)&v17 auxiliaryObjectForKey:keyCopy dataSectionObject:objectCopy hintIndex:index];
  v14 = v33[5];
  v33[5] = v13;

LABEL_7:
  v15 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v15;
}

void __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 216) keyAssetsFetchResultForCollection:a1[5] fetchIfNeeded:0];
  v4 = [v2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v3);
}

void __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v4 = [a2 auxiliaryObjectForKey:a1[4] dataSectionObject:a1[5] hintIndex:a3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 216) displayableAssetsForCollectionList:a1[5] maximumCount:4 useCache:1 correspondingCollections:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_4(void *a1, void *a2, uint64_t a3)
{
  v4 = [a2 auxiliaryObjectForKey:a1[4] dataSectionObject:a1[5] hintIndex:a3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)createDataSection
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = self->_childDataSectionManagers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_childDataSectionManagers objectForKeyedSubscript:v9];
        dataSection = [v10 dataSection];
        [v3 setObject:dataSection forKeyedSubscript:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v6);
  }

  v12 = 0x1E695D000uLL;
  v13 = objc_opt_new();
  dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
  if (dataSectionIfCreated)
  {
    v52 = v13;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v13 = self->_childDataSectionIndexes;
    v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v62;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v61 + 1) + 8 * j);
          v19 = [(NSMutableDictionary *)self->_childDataSectionIndexes objectForKeyedSubscript:v18];
          integerValue = [v19 integerValue];

          v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dataSectionIfCreated, "indexInCollectionsDataSectionOfListItem:hintIndex:", v18, integerValue)}];
          [(NSMutableDictionary *)v52 setObject:v21 forKeyedSubscript:v18];
        }

        v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v15);
      v12 = 0x1E695D000;
    }
  }

  else
  {
    v52 = self->_childDataSectionIndexes;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  allValues = [(NSMutableDictionary *)self->_privacyControllersById allValues];
  v23 = [allValues countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v58;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v57 + 1) + 8 * k) unregisterChangeObserver:self context:PrivacyControllerObservationContext];
      }

      v24 = [allValues countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v24);
  }

  [(NSMutableDictionary *)self->_privacyControllersById removeAllObjects];
  [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId removeAllObjects];
  collectionsDataSource = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
  allItemsEnumerator = [collectionsDataSource allItemsEnumerator];

  v50 = [*(v12 + 3984) dictionaryWithCapacity:{objc_msgSend(allItemsEnumerator, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = allItemsEnumerator;
  v30 = [v29 countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v54;
    do
    {
      v33 = 0;
      do
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v53 + 1) + 8 * v33);
        v35 = [PXContentPrivacyController privacyControllerForCollection:v34];
        v36 = v35;
        if (v35)
        {
          [v35 registerChangeObserver:self context:PrivacyControllerObservationContext];
          identifier = [v36 identifier];
          [(NSMutableDictionary *)self->_privacyControllersById setObject:v36 forKeyedSubscript:identifier];
          [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId setObject:v34 forKeyedSubscript:identifier];
          if ([v36 isContentPrivacyEnabled])
          {
            if ([v36 isLocked])
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
            [v50 setObject:v48 forKeyedSubscript:v34];
          }
        }

        ++v33;
      }

      while (v31 != v33);
      v38 = [v29 countByEnumeratingWithState:&v53 objects:v69 count:16];
      v31 = v38;
    }

    while (v38);
  }

  v39 = [PXCollectionsDataSection alloc];
  collectionsDataSource2 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
  outlineObject = [(PXDataSectionManager *)self outlineObject];
  v42 = [(PXCollectionsDataSection *)v39 initWithCollectionsDataSource:collectionsDataSource2 lockStatePerCollection:v50 outlineObject:outlineObject];

  v43 = [PXNavigationListDataSection alloc];
  indentationLevel = [(PXNavigationListDataSectionManager *)self indentationLevel];
  topLevelIdentifier = [(PXNavigationListDataSectionManager *)self topLevelIdentifier];
  v46 = [(PXNavigationListDataSection *)v43 initWithCollectionsDataSection:v42 indentationLevel:indentationLevel topLevelIdentifier:topLevelIdentifier childDataSections:v3 childIndexHints:v52 skipAssetCountFetches:[(PXNavigationListDataSectionManager *)self skipAssetCountFetches]];

  return v46;
}

- (void)setAllowsEmptyDataSection:(BOOL)section
{
  if (self->_allowsEmptyDataSection != section)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PXNavigationListDataSectionManager_setAllowsEmptyDataSection___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    sectionCopy = section;
    [(PXNavigationListDataSectionManager *)self performChanges:v5];
  }
}

- (void)_requestParentForListItem:(id)item hintIndex:(int64_t)index resultHandler:(id)handler recursionHandler:(id)recursionHandler
{
  handlerCopy = handler;
  recursionHandlerCopy = recursionHandler;
  itemCopy = item;
  dataSection = [(PXDataSectionManager *)self dataSection];
  v14 = [dataSection validatedIndexOfListItem:itemCopy hintIndex:index];

  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = [dataSection parentOfListItemAtIndex:v14 localIndex:&v18];
  v16 = [(NSMutableDictionary *)self->_childDataSectionManagers objectForKeyedSubscript:v15];
  v17 = v16;
  if (v15 && v16)
  {
    recursionHandlerCopy[2](recursionHandlerCopy, v16, v18);
  }

  else
  {
    handlerCopy[2](handlerCopy, v14);
  }
}

- (id)_changeDetailsForItemAtIndex:(int64_t)index childDataSection:(id)section expanding:(BOOL)expanding
{
  expandingCopy = expanding;
  v7 = [section count];
  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{index + 1, v7}];
  v9 = !expandingCopy;
  if (expandingCopy)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
  v13 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v11 insertedIndexes:v10 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v12];

  return v13;
}

- (PXPhotoKitCollectionsDataSource)collectionsDataSource
{
  dataSource = self->_collectionsDataSource;
  if (!dataSource)
  {
    dataSource = [(PXSectionedDataSourceManager *)self->_collectionsDataSourceManager dataSource];
    objc_storeStrong(&self->_collectionsDataSource, dataSource);
  }

  return dataSource;
}

- (PXNavigationListDataSectionManager)initWithChildDataSectionManagers:(id)managers
{
  managersCopy = managers;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSectionManager.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXNavigationListDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXNavigationListDataSectionManager)initWithCollectionList:(id)list topLevelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:list];
  v8 = [(PXNavigationListDataSectionManager *)self initWithConfiguration:v7 topLevelIdentifier:identifierCopy];

  return v8;
}

- (PXNavigationListDataSectionManager)initWithConfiguration:(id)configuration topLevelIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = PXNavigationListDataSectionManager;
  v8 = [(PXDataSectionManager *)&v28 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  if (v8)
  {
    collectionList = [configurationCopy collectionList];
    v10 = PXNavigationListItemWithObject(collectionList, 0, 0, 0, 0);
    [(PXDataSectionManager *)v8 setOutlineObject:v10];

    v11 = [objc_opt_class() makeCollectionsDataSourceManagerForConfiguration:configurationCopy];
    collectionsDataSourceManager = v8->_collectionsDataSourceManager;
    v8->_collectionsDataSourceManager = v11;

    v13 = objc_opt_new();
    childDataSectionManagers = v8->_childDataSectionManagers;
    v8->_childDataSectionManagers = v13;

    v15 = objc_opt_new();
    childDataSectionIndexes = v8->_childDataSectionIndexes;
    v8->_childDataSectionIndexes = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    collectionsByPrivacyControllerId = v8->_collectionsByPrivacyControllerId;
    v8->_collectionsByPrivacyControllerId = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    privacyControllersById = v8->_privacyControllersById;
    v8->_privacyControllersById = v19;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    parentListItems = v8->_parentListItems;
    v8->_parentListItems = weakToStrongObjectsMapTable;

    collectionList2 = [configurationCopy collectionList];
    collectionList = v8->_collectionList;
    v8->_collectionList = collectionList2;

    v8->_skipAssetCountFetches = [configurationCopy skipAssetCountFetches];
    v25 = [identifierCopy copy];
    topLevelIdentifier = v8->_topLevelIdentifier;
    v8->_topLevelIdentifier = v25;

    [(PXCollectionsDataSourceManager *)v8->_collectionsDataSourceManager registerChangeObserver:v8 context:CollectionsDataSourceManagerObservationContext];
  }

  return v8;
}

+ (id)makeCollectionsDataSourceManagerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  collectionList = [configurationCopy collectionList];
  collectionsFetchResult = [configurationCopy collectionsFetchResult];
  v6 = collectionsFetchResult;
  if (collectionList)
  {
    v7 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:collectionList];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (collectionsFetchResult)
  {
    v7 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionsFetchResult:collectionsFetchResult];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipSyndicatedAssetFetches:](v8, "setSkipSyndicatedAssetFetches:", [configurationCopy skipSyndicatedAssetFetches]);
  if ([configurationCopy emptyCollectionsHidden])
  {
    v9 = -3;
  }

  else if ([configurationCopy showSyncedFromMacAlbums])
  {
    v9 = 0x200000;
  }

  else
  {
    if (![collectionList px_isTopLevelFolder])
    {
      goto LABEL_13;
    }

    v9 = 4980738;
  }

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:v9];
LABEL_13:
  if ([configurationCopy includeUserSmartAlbums])
  {
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 collectionTypesToInclude]| 0x400000];
  }

  if ([configurationCopy hideHiddenAlbum])
  {
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 collectionTypesToInclude]& 0xFFFFFFFFFFFFFEFFLL];
  }

  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipKeyAssetFetches:](v8, "setSkipKeyAssetFetches:", [configurationCopy includeKeyAssetFetches] ^ 1);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setUpdateKeyAssetFetchesInBackground:](v8, "setUpdateKeyAssetFetchesInBackground:", [configurationCopy includeKeyAssetFetches]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipKeyAssetFetchesForSmartAlbums:](v8, "setSkipKeyAssetFetchesForSmartAlbums:", [configurationCopy skipKeyAssetFetchesForSmartAlbums]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipAssetFetches:](v8, "setSkipAssetFetches:", [configurationCopy skipAssetFetches]);
  assetsFilterPredicate = [configurationCopy assetsFilterPredicate];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetsFilterPredicate:assetsFilterPredicate];

  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSimulateNonIncrementalChanges:](v8, "setSimulateNonIncrementalChanges:", [configurationCopy simulateNonIncrementalChanges]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setPausedChangeDetailsBufferLength:](v8, "setPausedChangeDetailsBufferLength:", [configurationCopy pausedChangeDetailsBufferLength]);
  v11 = [[PXPhotoKitCollectionsDataSourceManager alloc] initWithConfiguration:v8];

  return v11;
}

@end