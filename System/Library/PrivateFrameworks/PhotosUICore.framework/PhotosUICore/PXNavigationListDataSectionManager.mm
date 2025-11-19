@interface PXNavigationListDataSectionManager
+ (id)makeCollectionsDataSourceManagerForConfiguration:(id)a3;
- (BOOL)isChangeProcessingPaused;
- (PXNavigationListDataSectionManager)initWithChildDataSectionManagers:(id)a3;
- (PXNavigationListDataSectionManager)initWithCollectionList:(id)a3 topLevelIdentifier:(id)a4;
- (PXNavigationListDataSectionManager)initWithConfiguration:(id)a3 topLevelIdentifier:(id)a4;
- (PXPhotoKitCollectionsDataSource)collectionsDataSource;
- (id)_changeDetailsForItemAtIndex:(int64_t)a3 childDataSection:(id)a4 expanding:(BOOL)a5;
- (id)auxiliaryObjectForKey:(id)a3 dataSectionObject:(id)a4 hintIndex:(int64_t)a5;
- (id)createDataSection;
- (void)_requestParentForListItem:(id)a3 hintIndex:(int64_t)a4 resultHandler:(id)a5 recursionHandler:(id)a6;
- (void)collapseListItem:(id)a3 hintIndex:(int64_t)a4;
- (void)expandListItem:(id)a3 hintIndex:(int64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pauseBackgroundFetching;
- (void)setAllowsEmptyDataSection:(BOOL)a3;
- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4;
- (void)startBackgroundFetchingIfNeeded;
@end

@implementation PXNavigationListDataSectionManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (ChildDataSectionManagerObservationContext == a5)
  {
    v22 = v9;
    v12 = [(NSMapTable *)self->_parentListItems objectForKey:v9];
    v14 = [(NSMutableDictionary *)self->_childDataSectionIndexes objectForKeyedSubscript:v12];
    if (v14)
    {
      v17 = [v22 changeDetailsFromPreviousDataSection];
      v11 = [v17 changeDetailsShiftedBy:{objc_msgSend(v14, "integerValue") + 1}];
    }

    else
    {
      v11 = 0;
    }

    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v11];
    goto LABEL_13;
  }

  if (CollectionsDataSourceManagerObservationContext == a5)
  {
    v22 = v9;
    v11 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceIfExisting];
    v12 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
    v18 = [v12 dataSource];
    [(PXNavigationListDataSectionManager *)self setCollectionsDataSource:v18];

    v19 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
    v14 = [v12 changeDetailsFromDataSource:v11 toDataSource:v19];

    v15 = [v14 itemChangesInSection:0];
    v16 = [v14 itemsWithSubitemChangesInSection:0];
    v20 = [v15 changeDetailsByAddingChangedIndexes:v16];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v20];

LABEL_10:
LABEL_13:

    goto LABEL_14;
  }

  if (PrivacyControllerObservationContext != a5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSectionManager.m" lineNumber:343 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    v22 = v9;
    v11 = [v9 identifier];
    v12 = [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId objectForKeyedSubscript:v11];
    if (!v12)
    {
LABEL_14:

      v10 = v22;
      goto LABEL_15;
    }

    v13 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
    v14 = [v13 indexPathForCollection:v12];

    v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v14, "item")}];
    v16 = [off_1E7721450 changeDetailsWithChangedIndexes:v15];
    [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v16];
    goto LABEL_10;
  }

LABEL_15:
}

- (void)collapseListItem:(id)a3 hintIndex:(int64_t)a4
{
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PXNavigationListDataSectionManager_collapseListItem_hintIndex___block_invoke;
  v11[3] = &unk_1E773D330;
  v11[4] = self;
  v12 = v7;
  v13 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PXNavigationListDataSectionManager_collapseListItem_hintIndex___block_invoke_2;
  v9[3] = &unk_1E7736350;
  v10 = v12;
  v8 = v12;
  [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v8 hintIndex:a4 resultHandler:v11 recursionHandler:v9];
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

- (void)expandListItem:(id)a3 hintIndex:(int64_t)a4
{
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PXNavigationListDataSectionManager_expandListItem_hintIndex___block_invoke;
  v11[3] = &unk_1E773D330;
  v12 = v7;
  v13 = self;
  v14 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PXNavigationListDataSectionManager_expandListItem_hintIndex___block_invoke_2;
  v9[3] = &unk_1E7736350;
  v10 = v12;
  v8 = v12;
  [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v8 hintIndex:a4 resultHandler:v11 recursionHandler:v9];
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
  v2 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  [v2 pauseBackgroundFetching];
}

- (void)startBackgroundFetchingIfNeeded
{
  v2 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  [v2 prepareBackgroundFetchingIfNeeded];
  [v2 startBackgroundFetchingIfNeeded];
}

- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXNavigationListDataSectionManager;
  v6 = a4;
  [(PXDataSectionManager *)&v8 setChangeProcessingPaused:v4 forReason:v6];
  v7 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager:v8.receiver];
  [v7 setChangeProcessingPaused:v4 forReason:v6];
}

- (BOOL)isChangeProcessingPaused
{
  v2 = [(PXNavigationListDataSectionManager *)self collectionsDataSourceManager];
  v3 = [v2 isChangeProcessingPaused];

  return v3;
}

- (id)auxiliaryObjectForKey:(id)a3 dataSectionObject:(id)a4 hintIndex:(int64_t)a5
{
  v8 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__84232;
  v36 = __Block_byref_object_dispose__84233;
  v37 = 0;
  v9 = a4;
  v10 = [v9 collection];
  v11 = [v10 px_allowsKeyAssetDisplay];
  if (([v8 isEqualToString:@"PXNavigationListItemKeyAsset"] & v11) == 1)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke;
    v29[3] = &unk_1E7736300;
    v29[4] = self;
    v30 = v10;
    v31 = &v32;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_2;
    v25[3] = &unk_1E7736328;
    v28 = &v32;
    v26 = v8;
    v27 = v9;
    [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v27 hintIndex:a5 resultHandler:v29 recursionHandler:v25];

    v12 = v30;
LABEL_5:

    goto LABEL_7;
  }

  if (([v8 isEqualToString:@"PXNavigationListItemFolderKeyAssets"] & v11) == 1)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_3;
    v22[3] = &unk_1E7736300;
    v22[4] = self;
    v23 = v10;
    v24 = &v32;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__PXNavigationListDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke_4;
    v18[3] = &unk_1E7736328;
    v21 = &v32;
    v19 = v8;
    v20 = v9;
    [(PXNavigationListDataSectionManager *)self _requestParentForListItem:v20 hintIndex:a5 resultHandler:v22 recursionHandler:v18];

    v12 = v23;
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = PXNavigationListDataSectionManager;
  v13 = [(PXDataSectionManager *)&v17 auxiliaryObjectForKey:v8 dataSectionObject:v9 hintIndex:a5];
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
        v11 = [v10 dataSection];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v6);
  }

  v12 = 0x1E695D000uLL;
  v13 = objc_opt_new();
  v51 = [(PXDataSectionManager *)self dataSectionIfCreated];
  if (v51)
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
          v20 = [v19 integerValue];

          v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v51, "indexInCollectionsDataSectionOfListItem:hintIndex:", v18, v20)}];
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
  v22 = [(NSMutableDictionary *)self->_privacyControllersById allValues];
  v23 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
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
          objc_enumerationMutation(v22);
        }

        [*(*(&v57 + 1) + 8 * k) unregisterChangeObserver:self context:PrivacyControllerObservationContext];
      }

      v24 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v24);
  }

  [(NSMutableDictionary *)self->_privacyControllersById removeAllObjects];
  [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId removeAllObjects];
  v27 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
  v28 = [v27 allItemsEnumerator];

  v50 = [*(v12 + 3984) dictionaryWithCapacity:{objc_msgSend(v28, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = v28;
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
          v49 = [v36 identifier];
          [(NSMutableDictionary *)self->_privacyControllersById setObject:v36 forKeyedSubscript:v49];
          [(NSMutableDictionary *)self->_collectionsByPrivacyControllerId setObject:v34 forKeyedSubscript:v49];
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
  v40 = [(PXNavigationListDataSectionManager *)self collectionsDataSource];
  v41 = [(PXDataSectionManager *)self outlineObject];
  v42 = [(PXCollectionsDataSection *)v39 initWithCollectionsDataSource:v40 lockStatePerCollection:v50 outlineObject:v41];

  v43 = [PXNavigationListDataSection alloc];
  v44 = [(PXNavigationListDataSectionManager *)self indentationLevel];
  v45 = [(PXNavigationListDataSectionManager *)self topLevelIdentifier];
  v46 = [(PXNavigationListDataSection *)v43 initWithCollectionsDataSection:v42 indentationLevel:v44 topLevelIdentifier:v45 childDataSections:v3 childIndexHints:v52 skipAssetCountFetches:[(PXNavigationListDataSectionManager *)self skipAssetCountFetches]];

  return v46;
}

- (void)setAllowsEmptyDataSection:(BOOL)a3
{
  if (self->_allowsEmptyDataSection != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PXNavigationListDataSectionManager_setAllowsEmptyDataSection___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXNavigationListDataSectionManager *)self performChanges:v5];
  }
}

- (void)_requestParentForListItem:(id)a3 hintIndex:(int64_t)a4 resultHandler:(id)a5 recursionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [(PXDataSectionManager *)self dataSection];
  v14 = [v13 validatedIndexOfListItem:v12 hintIndex:a4];

  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = [v13 parentOfListItemAtIndex:v14 localIndex:&v18];
  v16 = [(NSMutableDictionary *)self->_childDataSectionManagers objectForKeyedSubscript:v15];
  v17 = v16;
  if (v15 && v16)
  {
    v11[2](v11, v16, v18);
  }

  else
  {
    v10[2](v10, v14);
  }
}

- (id)_changeDetailsForItemAtIndex:(int64_t)a3 childDataSection:(id)a4 expanding:(BOOL)a5
{
  v5 = a5;
  v7 = [a4 count];
  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a3 + 1, v7}];
  v9 = !v5;
  if (v5)
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

  v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v13 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v11 insertedIndexes:v10 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v12];

  return v13;
}

- (PXPhotoKitCollectionsDataSource)collectionsDataSource
{
  v3 = self->_collectionsDataSource;
  if (!v3)
  {
    v3 = [(PXSectionedDataSourceManager *)self->_collectionsDataSourceManager dataSource];
    objc_storeStrong(&self->_collectionsDataSource, v3);
  }

  return v3;
}

- (PXNavigationListDataSectionManager)initWithChildDataSectionManagers:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSectionManager.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXNavigationListDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXNavigationListDataSectionManager)initWithCollectionList:(id)a3 topLevelIdentifier:(id)a4
{
  v6 = a4;
  v7 = [PXNavigationListDataSectionConfiguration configurationWithCollectionList:a3];
  v8 = [(PXNavigationListDataSectionManager *)self initWithConfiguration:v7 topLevelIdentifier:v6];

  return v8;
}

- (PXNavigationListDataSectionManager)initWithConfiguration:(id)a3 topLevelIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = PXNavigationListDataSectionManager;
  v8 = [(PXDataSectionManager *)&v28 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  if (v8)
  {
    v9 = [v6 collectionList];
    v10 = PXNavigationListItemWithObject(v9, 0, 0, 0, 0);
    [(PXDataSectionManager *)v8 setOutlineObject:v10];

    v11 = [objc_opt_class() makeCollectionsDataSourceManagerForConfiguration:v6];
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

    v21 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    parentListItems = v8->_parentListItems;
    v8->_parentListItems = v21;

    v23 = [v6 collectionList];
    collectionList = v8->_collectionList;
    v8->_collectionList = v23;

    v8->_skipAssetCountFetches = [v6 skipAssetCountFetches];
    v25 = [v7 copy];
    topLevelIdentifier = v8->_topLevelIdentifier;
    v8->_topLevelIdentifier = v25;

    [(PXCollectionsDataSourceManager *)v8->_collectionsDataSourceManager registerChangeObserver:v8 context:CollectionsDataSourceManagerObservationContext];
  }

  return v8;
}

+ (id)makeCollectionsDataSourceManagerForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 collectionList];
  v5 = [v3 collectionsFetchResult];
  v6 = v5;
  if (v4)
  {
    v7 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:v4];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v5)
  {
    v7 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionsFetchResult:v5];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipSyndicatedAssetFetches:](v8, "setSkipSyndicatedAssetFetches:", [v3 skipSyndicatedAssetFetches]);
  if ([v3 emptyCollectionsHidden])
  {
    v9 = -3;
  }

  else if ([v3 showSyncedFromMacAlbums])
  {
    v9 = 0x200000;
  }

  else
  {
    if (![v4 px_isTopLevelFolder])
    {
      goto LABEL_13;
    }

    v9 = 4980738;
  }

  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:v9];
LABEL_13:
  if ([v3 includeUserSmartAlbums])
  {
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 collectionTypesToInclude]| 0x400000];
  }

  if ([v3 hideHiddenAlbum])
  {
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setCollectionTypesToInclude:[(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 collectionTypesToInclude]& 0xFFFFFFFFFFFFFEFFLL];
  }

  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipKeyAssetFetches:](v8, "setSkipKeyAssetFetches:", [v3 includeKeyAssetFetches] ^ 1);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setUpdateKeyAssetFetchesInBackground:](v8, "setUpdateKeyAssetFetchesInBackground:", [v3 includeKeyAssetFetches]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipKeyAssetFetchesForSmartAlbums:](v8, "setSkipKeyAssetFetchesForSmartAlbums:", [v3 skipKeyAssetFetchesForSmartAlbums]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSkipAssetFetches:](v8, "setSkipAssetFetches:", [v3 skipAssetFetches]);
  v10 = [v3 assetsFilterPredicate];
  [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v8 setAssetsFilterPredicate:v10];

  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setSimulateNonIncrementalChanges:](v8, "setSimulateNonIncrementalChanges:", [v3 simulateNonIncrementalChanges]);
  -[PXPhotoKitCollectionsDataSourceManagerConfiguration setPausedChangeDetailsBufferLength:](v8, "setPausedChangeDetailsBufferLength:", [v3 pausedChangeDetailsBufferLength]);
  v11 = [[PXPhotoKitCollectionsDataSourceManager alloc] initWithConfiguration:v8];

  return v11;
}

@end