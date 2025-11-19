@interface PXImportAssetsDataSourceManager
+ (BOOL)assetCollectionsArray:(id)a3 isEqualToAssetCollectionsArray:(id)a4;
+ (void)addModels:(id)a3 toAssetCollections:(id)a4 assetCollectionsById:(id)a5;
+ (void)copyFromAssetCollections:(id)a3 toAssetCollections:(id *)a4 assetCollectionsById:(id *)a5;
+ (void)removeModels:(id)a3 fromAssetCollections:(id)a4 assetCollectionsById:(id)a5;
- (PXImportAssetCollection)unfilteredAlreadyImportedAssetCollection;
- (PXImportAssetsDataSourceManager)initWithAssetsFromDataSourceManager:(id)a3 delegate:(id)a4 logIdentifier:(id)a5;
- (PXImportAssetsDataSourceManager)initWithDelegate:(id)a3 logIdentifier:(id)a4;
- (PXImportAssetsDataSourceManagerDelegate)delegate;
- (id)createInitialDataSource;
- (id)existingModelsFromModels:(id)a3 inAssetCollections:(id)a4 assetCollectionsById:(id)a5;
- (id)filteredModelsFromModels:(id)a3 inAssetCollections:(id)a4 assetCollectionsById:(id)a5;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (int64_t)countOfAlreadyImportedAssetCollectionInCollectionsMap:(id)a3;
- (int64_t)countOfUnfilteredAlreadyImportedAssetCollection;
- (void)addAssets:(id)a3;
- (void)modifyAssetCollectionsWithBlock:(id)a3;
- (void)pruneEmptyAssetCollectionsInCollections:(id)a3 collectionsById:(id)a4;
- (void)rebuildAlreadyImportedAssetCollectionInCollections:(id)a3 collectionsById:(id)a4;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)removeAssets:(id)a3;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setAlreadyImportedItemsSelectable:(BOOL)a3;
- (void)setMaxAlreadyImportedItems:(int64_t)a3;
- (void)setShowAlreadyImportedItems:(BOOL)a3;
- (void)setShowNotYetImportedItems:(BOOL)a3;
- (void)setUnfilteredDataSource:(id)a3;
- (void)setVisibleImportAssetIdentifiers:(id)a3;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
- (void)updateAlreadyImportedSelectability;
- (void)updateFilteredAssetsIfNeeded;
@end

@implementation PXImportAssetsDataSourceManager

- (PXImportAssetsDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setUnfilteredDataSource:(id)a3
{
  v5 = a3;
  if (self->_unfilteredDataSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_unfilteredDataSource, a3);
    [(PXImportAssetsDataSourceManager *)self updateAlreadyImportedSelectability];
    v5 = v6;
  }
}

- (int64_t)countOfAlreadyImportedAssetCollectionInCollectionsMap:(id)a3
{
  v3 = a3;
  v4 = +[PXImportItemViewModel alreadyImportedGroupIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 numberOfItems];
  return v6;
}

- (int64_t)countOfUnfilteredAlreadyImportedAssetCollection
{
  v2 = [(PXImportAssetsDataSourceManager *)self unfilteredAlreadyImportedAssetCollection];
  v3 = [v2 numberOfItems];

  return v3;
}

- (PXImportAssetCollection)unfilteredAlreadyImportedAssetCollection
{
  v3 = +[PXImportItemViewModel alreadyImportedGroupIdentifier];
  v4 = [(PXImportAssetsDataSourceManager *)self allAssetCollectionsById];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (void)updateAlreadyImportedSelectability
{
  v3 = [(PXImportAssetsDataSourceManager *)self unfilteredAlreadyImportedAssetCollection];
  if (v3)
  {
    v4 = [(PXImportAssetsDataSourceManager *)self alreadyImportedItemsSelectable];
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__33646;
    v8[4] = __Block_byref_object_dispose__33647;
    v9 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PXImportAssetsDataSourceManager_updateAlreadyImportedSelectability__block_invoke;
    v7[3] = &unk_1E7730798;
    v7[4] = v8;
    [v3 arrangedObjects:v7];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__PXImportAssetsDataSourceManager_updateAlreadyImportedSelectability__block_invoke_2;
    v5[3] = &unk_1E77465B0;
    v5[4] = self;
    v5[5] = v8;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    _Block_object_dispose(v8, 8);
  }
}

void __69__PXImportAssetsDataSourceManager_updateAlreadyImportedSelectability__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 isSelectable];
        if (v8 != [*(a1 + 32) alreadyImportedItemsSelectable])
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __69__PXImportAssetsDataSourceManager_updateAlreadyImportedSelectability__block_invoke_3;
          v9[3] = &__block_descriptor_33_e40_v16__0___PXMutableImportItemViewModel__8l;
          v10 = *(a1 + 48);
          [v7 performChanges:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)setAlreadyImportedItemsSelectable:(BOOL)a3
{
  if (self->_alreadyImportedItemsSelectable != a3)
  {
    self->_alreadyImportedItemsSelectable = a3;
    [(PXImportAssetsDataSourceManager *)self updateAlreadyImportedSelectability];
  }
}

- (void)setShowNotYetImportedItems:(BOOL)a3
{
  if (self->_showNotYetImportedItems != a3)
  {
    self->_showNotYetImportedItems = a3;
    [(PXImportAssetsDataSourceManager *)self setNeedsFilterUpdate];
  }
}

- (void)setShowAlreadyImportedItems:(BOOL)a3
{
  if (self->_showAlreadyImportedItems != a3)
  {
    self->_showAlreadyImportedItems = a3;
    [(PXImportAssetsDataSourceManager *)self setNeedsFilterUpdate];
  }
}

- (void)setMaxAlreadyImportedItems:(int64_t)a3
{
  if (self->_maxAlreadyImportedItems != a3)
  {
    self->_maxAlreadyImportedItems = a3;
    [(PXImportAssetsDataSourceManager *)self setNeedsFilterUpdate];
  }
}

- (void)setVisibleImportAssetIdentifiers:(id)a3
{
  v4 = a3;
  visibleImportAssetIdentifiers = self->_visibleImportAssetIdentifiers;
  if (v4 | visibleImportAssetIdentifiers)
  {
    v9 = v4;
    v6 = [(NSSet *)visibleImportAssetIdentifiers isEqualToSet:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [v9 copy];
      v8 = self->_visibleImportAssetIdentifiers;
      self->_visibleImportAssetIdentifiers = v7;

      [(PXImportAssetsDataSourceManager *)self setNeedsFilterUpdate];
      v4 = v9;
    }
  }
}

- (void)pruneEmptyAssetCollectionsInCollections:(id)a3 collectionsById:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (![v14 numberOfItems])
        {
          [v7 addObject:v14];
          v15 = [v14 identifier];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v9 removeObjectsInArray:v7];
  [v6 removeObjectsForKeys:v8];
}

- (void)rebuildAlreadyImportedAssetCollectionInCollections:(id)a3 collectionsById:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = +[PXImportItemViewModel alreadyImportedGroupIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 removeAllObjects];
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__33646;
      v33 = __Block_byref_object_dispose__33647;
      v34 = 0;
      v10 = [(PXImportAssetsDataSourceManager *)self unfilteredAlreadyImportedAssetCollection];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __102__PXImportAssetsDataSourceManager_rebuildAlreadyImportedAssetCollectionInCollections_collectionsById___block_invoke;
      v28[3] = &unk_1E7730798;
      v28[4] = &v29;
      [v10 arrangedObjects:v28];

      v11 = [v30[5] count];
      v12 = +[PXImportSettings sharedInstance];
      v13 = [v12 alreadyImportedTruncationMode];

      v14 = [(PXImportAssetsDataSourceManager *)self forcedAlreadyImportedTruncationMode];
      if ((v14 - 1) < 3)
      {
        v13 = v14 - 1;
      }

      v16 = v11 <= [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems]|| [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems]< 1 || v13 != 1;
      if (v13 != 1)
      {
        v16 = 0;
      }

      if (!v13 || v16)
      {
        v20 = [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems];
        if (v20 >= v11)
        {
          v21 = v11;
        }

        else
        {
          v21 = v20;
        }

        v19 = [v30[5] subarrayWithRange:{0, v21}];
        [v9 addObjectsFromArray:v19];
      }

      else if (v13 == 2)
      {
        v17 = [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems];
        if (v17 >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v30[5] subarrayWithRange:v11 - v18];
        [v9 addObjectsFromArray:v19];
      }

      else
      {
        v22 = [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems];
        v23 = [(PXImportAssetsDataSourceManager *)self maxAlreadyImportedItems];
        v24 = v22;
        v22 /= 2;
        v19 = [v30[5] subarrayWithRange:{0, v23 + ~v22}];
        v25 = [v30[5] subarrayWithRange:{v11 - v24 / 2, v22}];
        [v9 addObjectsFromArray:v19];
        v26 = +[PXImportExpansionPlaceholderViewModel sharedInstance];
        [v9 addObject:v26];

        [v9 addObjectsFromArray:v25];
      }

      if (![v9 numberOfItems])
      {
        [v6 removeObject:v9];
        v27 = [v9 identifier];
        [v7 removeObjectForKey:v27];
      }

      _Block_object_dispose(&v29, 8);
    }
  }
}

- (id)existingModelsFromModels:(id)a3 inAssetCollections:(id)a4 assetCollectionsById:(id)a5
{
  v6 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PXImportAssetsDataSourceManager_existingModelsFromModels_inAssetCollections_assetCollectionsById___block_invoke;
  v12[3] = &unk_1E77307E8;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [v8 indexesOfObjectsPassingTest:v12];
  v10 = [v8 objectsAtIndexes:v9];

  return v10;
}

BOOL __100__PXImportAssetsDataSourceManager_existingModelsFromModels_inAssetCollections_assetCollectionsById___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 groupIdentifier];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = v5 && [v5 indexOfItem:v3] != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

- (id)filteredModelsFromModels:(id)a3 inAssetCollections:(id)a4 assetCollectionsById:(id)a5
{
  v7 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __100__PXImportAssetsDataSourceManager_filteredModelsFromModels_inAssetCollections_assetCollectionsById___block_invoke;
  v16 = &unk_1E77307C0;
  v17 = self;
  v18 = v7;
  v8 = v7;
  v9 = a3;
  v10 = [v9 indexesOfObjectsPassingTest:&v13];
  v11 = [v9 objectsAtIndexes:{v10, v13, v14, v15, v16, v17}];

  return v11;
}

BOOL __100__PXImportAssetsDataSourceManager_filteredModelsFromModels_inAssetCollections_assetCollectionsById___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 groupIdentifier];
  v5 = [*(a1 + 32) visibleImportAssetIdentifiers];
  v6 = [v5 count];

  if (v6 && ([v3 uuid], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "visibleImportAssetIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "member:", v7), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !v9))
  {
    v12 = 0;
  }

  else
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v11 = v10;
    v12 = v10 && (![v10 alreadyImportedGroup] || objc_msgSend(*(a1 + 32), "showAlreadyImportedItems")) && ((objc_msgSend(v11, "alreadyImportedGroup") & 1) != 0 || objc_msgSend(*(a1 + 32), "showNotYetImportedItems"));
  }

  return v12;
}

- (void)modifyAssetCollectionsWithBlock:(id)a3
{
  v4 = a3;
  modelQueue = self->_modelQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(modelQueue, v7);
}

void __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke(uint64_t a1)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v33 = [v3 viewModelMapForImportAssetsDataSourceManager:*v2];

  v4 = objc_opt_class();
  v5 = [*v2 filteredAssetCollections];
  v60 = 0;
  v61 = 0;
  [v4 copyFromAssetCollections:v5 toAssetCollections:&v61 assetCollectionsById:&v60];
  v37 = v61;
  v38 = v60;

  (*(*(a1 + 40) + 16))();
  v6 = objc_opt_class();
  v7 = [*v2 filteredAssetCollections];
  LOBYTE(v6) = [v6 assetCollectionsArray:v7 isEqualToAssetCollectionsArray:v37];

  if ((v6 & 1) == 0)
  {
    v29 = [*(a1 + 32) dataSource];
    v32 = -[PXImportAssetsDataSource initWithAssetCollections:assetsMap:startsAtEnd:]([PXImportAssetsDataSource alloc], "initWithAssetCollections:assetsMap:startsAtEnd:", v37, v33, [*(a1 + 32) dataSourcesStartAtEnd]);
    v8 = MEMORY[0x1E695DF70];
    v9 = [*(a1 + 32) filteredAssetCollections];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v37, "count")}];
    v12 = [*(a1 + 32) filteredAssetCollections];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_2;
    v58[3] = &unk_1E7730770;
    v31 = v10;
    v59 = v31;
    [v12 enumerateObjectsUsingBlock:v58];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_3;
    v56[3] = &unk_1E7730770;
    v30 = v11;
    v57 = v30;
    [v37 enumerateObjectsUsingBlock:v56];
    v35 = [off_1E7721450 changeDetailsFromArray:v31 toArray:v30 changedObjects:MEMORY[0x1E695E0F0]];
    v13 = [v35 insertedIndexes];
    v34 = [v13 count];

    v36 = [MEMORY[0x1E695DF90] dictionary];
    v14 = [*(a1 + 32) filteredAssetCollections];
    LOBYTE(v10) = [v14 count] == 0;

    if ((v10 & 1) == 0)
    {
      v15 = 0;
      do
      {
        v16 = [*(a1 + 32) filteredAssetCollections];
        v17 = [v16 objectAtIndexedSubscript:v15];

        v18 = [v17 identifier];
        v19 = [v38 objectForKeyedSubscript:v18];
        if (v19)
        {
          v50 = 0;
          v51 = &v50;
          v52 = 0x3032000000;
          v53 = __Block_byref_object_copy__33646;
          v54 = __Block_byref_object_dispose__33647;
          v55 = 0;
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_24;
          v49[3] = &unk_1E7730798;
          v49[4] = &v50;
          [v17 arrangedObjects:v49];
          v43 = 0;
          v44 = &v43;
          v45 = 0x3032000000;
          v46 = __Block_byref_object_copy__33646;
          v47 = __Block_byref_object_dispose__33647;
          v48 = 0;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_2_26;
          v42[3] = &unk_1E7730798;
          v42[4] = &v43;
          [v19 arrangedObjects:v42];
          v20 = [off_1E7721450 changeDetailsFromArray:v51[5] toArray:v44[5] changedObjects:MEMORY[0x1E695E0F0]];
          if ([v20 hasAnyChanges])
          {
            v21 = v15;
            if (v34)
            {
              v62[0] = v35;
              v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
              v21 = [off_1E7721450 indexAfterApplyingChanges:v22 toIndex:v15 objectChanged:0];
            }

            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
            [v36 setObject:v20 forKeyedSubscript:v23];
          }

          _Block_object_dispose(&v43, 8);
          _Block_object_dispose(&v50, 8);
        }

        v24 = [*(a1 + 32) filteredAssetCollections];
        v25 = [v24 count];

        ++v15;
      }

      while (v15 < v25);
    }

    v26 = [[off_1E77218B0 alloc] initWithFromDataSourceIdentifier:objc_msgSend(v29 toDataSourceIdentifier:"identifier") sectionChanges:-[PXImportAssetsDataSource identifier](v32 itemChangeDetailsBySection:"identifier") subitemChangeDetailsByItemBySection:{v35, v36, 0}];
    v27 = [v38 copy];
    [*(a1 + 32) setFilteredAssetCollectionsById:v27];

    v28 = [v37 copy];
    [*(a1 + 32) setFilteredAssetCollections:v28];

    if ([*(a1 + 32) dispatchesDataSourceUpdatesOnMainQueue])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_3_29;
      block[3] = &unk_1E774A1B8;
      block[4] = *(a1 + 32);
      v40 = v32;
      v41 = v26;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [*(a1 + 32) setDataSource:v32 changeDetails:v26];
    }
  }
}

void __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

void __67__PXImportAssetsDataSourceManager_modifyAssetCollectionsWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

- (void)updateFilteredAssetsIfNeeded
{
  if ([(PXImportAssetsDataSourceManager *)self needsFilterUpdate])
  {
    v3 = [(PXImportAssetsDataSourceManager *)self delegate];
    v4 = [v3 viewModelMapForImportAssetsDataSourceManager:self];

    v5 = [v4 allValues];
    if ([v5 count])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63__PXImportAssetsDataSourceManager_updateFilteredAssetsIfNeeded__block_invoke;
      v6[3] = &unk_1E7730748;
      v6[4] = self;
      v7 = v5;
      [(PXImportAssetsDataSourceManager *)self modifyAssetCollectionsWithBlock:v6];
    }
  }
}

void __63__PXImportAssetsDataSourceManager_updateFilteredAssetsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [v7 allAssetCollections];
  v10 = [*(a1 + 32) allAssetCollectionsById];
  v11 = [v7 filteredModelsFromModels:v8 inAssetCollections:v9 assetCollectionsById:v10];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v19 + 1) + 8 * i) removeAllObjects];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v6];
  [objc_opt_class() addModels:v11 toAssetCollections:v12 assetCollectionsById:v6];
  v18 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v6];
  if ([*(a1 + 32) maxAlreadyImportedItems] != 0x7FFFFFFFFFFFFFFFLL && v17 != v18)
  {
    [*(a1 + 32) rebuildAlreadyImportedAssetCollectionInCollections:v12 collectionsById:v6];
  }

  [*(a1 + 32) pruneEmptyAssetCollectionsInCollections:v12 collectionsById:{v6, v19}];
  [*(a1 + 32) setNeedsFilterUpdate:0];
}

- (void)removeAssets:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PXImportAssetsDataSourceManager_removeAssets___block_invoke;
  v6[3] = &unk_1E7730748;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXImportAssetsDataSourceManager *)self modifyAssetCollectionsWithBlock:v6];
}

void __48__PXImportAssetsDataSourceManager_removeAssets___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _importDataSourceManagerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) logIdentifier];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Remove %ld assets", objc_msgSend(*(a1 + 40), "count")];
    *buf = 138543874;
    v36 = v10;
    v37 = 2080;
    v38 = "[PXImportAssetsDataSourceManager removeAssets:]_block_invoke";
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %s: %@", buf, 0x20u);
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v30 + 1) + 8 * i) uuid];
        v19 = [v8 objectForKeyedSubscript:v18];

        if (v19)
        {
          [v12 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = objc_opt_class();
  v21 = [*(a1 + 32) allAssetCollections];
  v22 = [*(a1 + 32) allAssetCollectionsById];
  [v20 removeModels:v12 fromAssetCollections:v21 assetCollectionsById:v22];

  v23 = [PXImportAssetsDataSource alloc];
  v24 = [*(a1 + 32) allAssetCollections];
  v25 = -[PXImportAssetsDataSource initWithAssetCollections:assetsMap:startsAtEnd:](v23, "initWithAssetCollections:assetsMap:startsAtEnd:", v24, v8, [*(a1 + 32) dataSourcesStartAtEnd]);
  [*(a1 + 32) setUnfilteredDataSource:v25];

  v26 = [*(a1 + 32) existingModelsFromModels:v12 inAssetCollections:v29 assetCollectionsById:v7];
  v27 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v7];
  [objc_opt_class() removeModels:v26 fromAssetCollections:v29 assetCollectionsById:v7];
  v28 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v7];
  if ([*(a1 + 32) maxAlreadyImportedItems] != 0x7FFFFFFFFFFFFFFFLL && v27 != v28)
  {
    [*(a1 + 32) rebuildAlreadyImportedAssetCollectionInCollections:v29 collectionsById:v7];
  }
}

- (void)addAssets:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importDataSourceManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PXImportAssetsDataSourceManager *)self logIdentifier];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Add %ld assets", objc_msgSend(v4, "count")];
    *buf = 138543874;
    v12 = v6;
    v13 = 2080;
    v14 = "[PXImportAssetsDataSourceManager addAssets:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %s: %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PXImportAssetsDataSourceManager_addAssets___block_invoke;
  v9[3] = &unk_1E7730748;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(PXImportAssetsDataSourceManager *)self modifyAssetCollectionsWithBlock:v9];
}

void __45__PXImportAssetsDataSourceManager_addAssets___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v7 = a3;
  v8 = a4;
  v29 = [*(a1 + 32) countOfUnfilteredAlreadyImportedAssetCollection];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v31 + 1) + 8 * i) uuid];
        v16 = [v8 objectForKeyedSubscript:v15];

        if (v16)
        {
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  v17 = objc_opt_class();
  v18 = [*(a1 + 32) allAssetCollections];
  v19 = [*(a1 + 32) allAssetCollectionsById];
  [v17 addModels:v9 toAssetCollections:v18 assetCollectionsById:v19];

  if (v29 != [*(a1 + 32) countOfUnfilteredAlreadyImportedAssetCollection])
  {
    [*(a1 + 32) updateAlreadyImportedSelectability];
  }

  v20 = [PXImportAssetsDataSource alloc];
  v21 = [*(a1 + 32) allAssetCollections];
  v22 = -[PXImportAssetsDataSource initWithAssetCollections:assetsMap:startsAtEnd:](v20, "initWithAssetCollections:assetsMap:startsAtEnd:", v21, v8, [*(a1 + 32) dataSourcesStartAtEnd]);
  [*(a1 + 32) setUnfilteredDataSource:v22];

  v23 = *(a1 + 32);
  v24 = [v23 allAssetCollections];
  v25 = [*(a1 + 32) allAssetCollectionsById];
  v26 = [v23 filteredModelsFromModels:v9 inAssetCollections:v24 assetCollectionsById:v25];

  v27 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v7];
  [objc_opt_class() addModels:v26 toAssetCollections:v30 assetCollectionsById:v7];
  v28 = [*(a1 + 32) countOfAlreadyImportedAssetCollectionInCollectionsMap:v7];
  if ([*(a1 + 32) maxAlreadyImportedItems] != 0x7FFFFFFFFFFFFFFFLL && v27 != v28)
  {
    [*(a1 + 32) rebuildAlreadyImportedAssetCollectionInCollections:v30 collectionsById:v7];
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v7 = a3;
  v4 = [(PXImportAssetsDataSourceManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PXImportAssetsDataSourceManager *)self delegate];
    [v6 resumeChangeDeliveryAndBackgroundLoadingForImportAssetsDataSourceManager:self token:v7];
  }
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [(PXImportAssetsDataSourceManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXImportAssetsDataSourceManager *)self delegate];
    v10 = [v9 pauseChangeDeliveryForImportAssetsDataSourceManager:self withTimeout:v6 identifier:a3];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  return v10;
}

- (id)createInitialDataSource
{
  v3 = [PXImportAssetsDataSource alloc];
  v4 = [(PXImportAssetsDataSourceManager *)self dataSourcesStartAtEnd];
  v5 = [(PXImportAssetsDataSource *)v3 initWithAssetCollections:MEMORY[0x1E695E0F0] assetsMap:MEMORY[0x1E695E0F8] startsAtEnd:v4];

  return v5;
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXImportAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 unregisterChangeObserver:a3 context:a4];
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXImportAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 registerChangeObserver:a3 context:a4];
}

- (PXImportAssetsDataSourceManager)initWithAssetsFromDataSourceManager:(id)a3 delegate:(id)a4 logIdentifier:(id)a5
{
  v8 = a3;
  v9 = [(PXImportAssetsDataSourceManager *)self initWithDelegate:a4 logIdentifier:a5];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [v8 allAssetCollections];
    v21 = 0;
    v22 = 0;
    [v10 copyFromAssetCollections:v11 toAssetCollections:&v22 assetCollectionsById:&v21];
    v12 = v22;
    v13 = v21;

    [(NSMutableArray *)v9->_allAssetCollections addObjectsFromArray:v12];
    [(NSMutableDictionary *)v9->_allAssetCollectionsById addEntriesFromDictionary:v13];
    v14 = [(PXImportAssetsDataSourceManager *)v9 delegate];
    v15 = [v14 viewModelMapForImportAssetsDataSourceManager:v9];

    v16 = [PXImportAssetsDataSource alloc];
    v17 = [(PXImportAssetsDataSourceManager *)v9 allAssetCollections];
    v18 = [(PXImportAssetsDataSource *)v16 initWithAssetCollections:v17 assetsMap:v15 startsAtEnd:[(PXImportAssetsDataSourceManager *)v9 dataSourcesStartAtEnd]];
    unfilteredDataSource = v9->_unfilteredDataSource;
    v9->_unfilteredDataSource = v18;

    v9->_needsFilterUpdate = 1;
    [(PXImportAssetsDataSourceManager *)v9 updateFilteredAssetsIfNeeded];
  }

  return v9;
}

- (PXImportAssetsDataSourceManager)initWithDelegate:(id)a3 logIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = PXImportAssetsDataSourceManager;
  v8 = [(PXSectionedDataSourceManager *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allAssetCollectionsById = v9->_allAssetCollectionsById;
    v9->_allAssetCollectionsById = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF20]);
    filteredAssetCollectionsById = v9->_filteredAssetCollectionsById;
    v9->_filteredAssetCollectionsById = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allAssetCollections = v9->_allAssetCollections;
    v9->_allAssetCollections = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    filteredAssetCollections = v9->_filteredAssetCollections;
    v9->_filteredAssetCollections = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_UTILITY, 0);

    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v20 stringWithFormat:@"%@-modelQueue", v22];
    v24 = dispatch_queue_create([v23 UTF8String], v19);
    modelQueue = v9->_modelQueue;
    v9->_modelQueue = v24;

    v9->_maxAlreadyImportedItems = 0x7FFFFFFFFFFFFFFFLL;
    v9->_showAlreadyImportedItems = 1;
    v9->_showNotYetImportedItems = 1;
    *&v9->_alreadyImportedItemsSelectable = 1;
    v26 = [PXImportAssetsDataSource alloc];
    v27 = [(PXImportAssetsDataSource *)v26 initWithAssetCollections:MEMORY[0x1E695E0F0] assetsMap:MEMORY[0x1E695E0F8] startsAtEnd:v9->_dataSourcesStartAtEnd];
    unfilteredDataSource = v9->_unfilteredDataSource;
    v9->_unfilteredDataSource = v27;

    v29 = [v7 copy];
    logIdentifier = v9->_logIdentifier;
    v9->_logIdentifier = v29;
  }

  return v9;
}

uint64_t __63__PXImportAssetsDataSourceManager_sortAssetCollectionsInArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)removeModels:(id)a3 fromAssetCollections:(id)a4 assetCollectionsById:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    *&v11 = 138412290;
    v22 = v11;
    *&v11 = 138412546;
    v21 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 groupIdentifier];
        if (!v16)
        {
          PXAssertGetLog();
        }

        v17 = [v9 objectForKeyedSubscript:v16];
        if (!v17)
        {
          PXAssertGetLog();
        }

        v18 = v17;
        [v17 removeObject:v15];
        if (![v18 numberOfItems])
        {
          v19 = [v8 indexOfObject:v18];
          v20 = _importDataSourceManagerLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v28 = v19;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Removing asset collection at index %tu: %@, because it no longer has assets", buf, 0x16u);
          }

          [v9 removeObjectForKey:v16];
          [v8 removeObject:v18];
        }
      }

      v12 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }
}

+ (void)addModels:(id)a3 toAssetCollections:(id)a4 assetCollectionsById:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 groupIdentifier];
        v17 = [v9 objectForKeyedSubscript:v16];
        if (!v17)
        {
          v17 = objc_alloc_init(PXImportAssetCollection);
          [(PXImportAssetCollection *)v17 setIdentifier:v16];
          -[PXImportAssetCollection setAlreadyImportedGroup:](v17, "setAlreadyImportedGroup:", [v15 isDuplicate]);
          [v9 setObject:v17 forKeyedSubscript:v16];
          [v8 addObject:v17];
          v12 = 1;
        }

        [(PXImportAssetCollection *)v17 addObject:v15];
      }

      v11 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
    if (v12)
    {
      [objc_opt_class() sortAssetCollectionsInArray:v8];
    }
  }
}

+ (BOOL)assetCollectionsArray:(id)a3 isEqualToAssetCollectionsArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if ([v5 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [v9 identifier];
      v12 = [v10 identifier];
      v13 = [v11 isEqualToString:v12];

      if (!v13)
      {
        break;
      }

      v14 = [v9 numberOfItems];
      if (v14 != [v10 numberOfItems])
      {
        break;
      }

      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__33646;
      v29 = __Block_byref_object_dispose__33647;
      v30 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __88__PXImportAssetsDataSourceManager_assetCollectionsArray_isEqualToAssetCollectionsArray___block_invoke;
      v24[3] = &unk_1E7730798;
      v24[4] = &v25;
      [v9 arrangedObjects:v24];
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__33646;
      v22 = __Block_byref_object_dispose__33647;
      v23 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __88__PXImportAssetsDataSourceManager_assetCollectionsArray_isEqualToAssetCollectionsArray___block_invoke_2;
      v17[3] = &unk_1E7730798;
      v17[4] = &v18;
      [v10 arrangedObjects:v17];
      v15 = [v26[5] isEqualToArray:v19[5]];
      _Block_object_dispose(&v18, 8);

      _Block_object_dispose(&v25, 8);
      if ((v15 & 1) != 0 && ++v8 < [v5 count])
      {
        continue;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 1;
LABEL_12:

  return v15;
}

+ (void)copyFromAssetCollections:(id)a3 toAssetCollections:(id *)a4 assetCollectionsById:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) copy];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v21 identifier];
        [v15 setObject:v21 forKeyedSubscript:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  v23 = v16;
  *a4 = v16;
  v24 = v15;
  *a5 = v15;
}

@end