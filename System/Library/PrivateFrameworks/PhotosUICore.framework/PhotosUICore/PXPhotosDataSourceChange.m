@interface PXPhotosDataSourceChange
- (BOOL)_shouldPerformFullReloadForCollectionListChangeNotifications:(id)a3 collectionChangeNotifications:(id)a4;
- (BOOL)affectsSectionsInRange:(_NSRange)a3;
- (NSArray)changedIndexPaths;
- (NSArray)contentChangedIndexPaths;
- (NSArray)deletedIndexPaths;
- (NSArray)favoriteChangedIndexPaths;
- (NSArray)insertedIndexPaths;
- (NSIndexSet)changedSections;
- (NSIndexSet)deletedSections;
- (NSIndexSet)insertedSections;
- (PHChange)originatingPhotoLibraryChange;
- (PXPhotosDataSourceChange)initWithFromIdentifier:(int64_t)a3 toIdentifier:(int64_t)a4;
- (PXPhotosDataSourceChange)initWithIncrementalChanges:(id)a3 assetCollectionChangeDetails:(id)a4 sectionsWithKeyAssetChanges:(id)a5 previousCollectionsCount:(int64_t)a6 assetCollectionToSectionCache:(id)a7 originatingPhotoLibraryChange:(id)a8 fromIdentifier:(int64_t)a9 toIdentifier:(int64_t)a10;
- (id)description;
- (id)indexPathAfterApplyingIncrementalChangesToIndexPath:(id)a3;
- (id)indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:(id)a3;
- (void)_prepareIncrementalDetails;
- (void)prepareIfNeeded;
@end

@implementation PXPhotosDataSourceChange

- (PHChange)originatingPhotoLibraryChange
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingPhotoLibraryChange);

  return WeakRetained;
}

- (id)indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:(id)a3
{
  v6 = a3;
  if ([(PXPhotosDataSourceChange *)self hasIncrementalChanges])
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"[self hasIncrementalChanges] == YES"}];

    if (v6)
    {
LABEL_3:
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__68023;
      v30 = __Block_byref_object_dispose__68024;
      v31 = 0;
      v7 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
      if (([v7 containsObject:v6] & 1) == 0)
      {
        v8 = [(PXPhotosDataSourceChange *)self insertedSections];
        v9 = [v8 containsIndex:{objc_msgSend(v6, "px_section")}];

        if (v9)
        {
          goto LABEL_10;
        }

        objc_storeStrong(v27 + 5, a3);
        v10 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];

        if (v10)
        {
          v11 = v27[5];
          v12 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
          v13 = [v11 px_alteredIndexPathAfterDeletingItemsAtIndexPaths:v12];
          v14 = v27[5];
          v27[5] = v13;
        }

        v15 = [(PXPhotosDataSourceChange *)self insertedSections];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke;
        v25[3] = &unk_1E7734980;
        v25[4] = &v26;
        [v15 enumerateIndexesWithOptions:2 usingBlock:v25];

        v16 = [(PXPhotosDataSourceChange *)self deletedSections];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke_2;
        v24[3] = &unk_1E7734980;
        v24[4] = &v26;
        [v16 enumerateIndexesUsingBlock:v24];

        v17 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];

        if (!v17)
        {
          goto LABEL_10;
        }

        v18 = v27[5];
        v7 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
        v19 = [v18 px_alteredIndexPathAfterInsertingItemsAtIndexPaths:v7];
        v20 = v27[5];
        v27[5] = v19;
      }

LABEL_10:
      v21 = v27[5];
      _Block_object_dispose(&v26, 8);

      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

void __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) px_section] > a2)
  {
    v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) inSection:{"px_item"), objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "px_section") - 1}];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) px_section] >= a2)
  {
    v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) inSection:{"px_item"), objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "px_section") + 1}];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)indexPathAfterApplyingIncrementalChangesToIndexPath:(id)a3
{
  v6 = a3;
  if ([(PXPhotosDataSourceChange *)self hasIncrementalChanges])
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"[self hasIncrementalChanges] == YES"}];

    if (v6)
    {
LABEL_3:
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__68023;
      v30 = __Block_byref_object_dispose__68024;
      v31 = 0;
      v7 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
      if (([v7 containsObject:v6] & 1) == 0)
      {
        v8 = [(PXPhotosDataSourceChange *)self deletedSections];
        v9 = [v8 containsIndex:{objc_msgSend(v6, "px_section")}];

        if (v9)
        {
          goto LABEL_10;
        }

        objc_storeStrong(v27 + 5, a3);
        v10 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];

        if (v10)
        {
          v11 = v27[5];
          v12 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
          v13 = [v11 px_alteredIndexPathAfterDeletingItemsAtIndexPaths:v12];
          v14 = v27[5];
          v27[5] = v13;
        }

        v15 = [(PXPhotosDataSourceChange *)self deletedSections];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke;
        v25[3] = &unk_1E7734980;
        v25[4] = &v26;
        [v15 enumerateIndexesWithOptions:2 usingBlock:v25];

        v16 = [(PXPhotosDataSourceChange *)self insertedSections];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke_2;
        v24[3] = &unk_1E7734980;
        v24[4] = &v26;
        [v16 enumerateIndexesUsingBlock:v24];

        v17 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];

        if (!v17)
        {
          goto LABEL_10;
        }

        v18 = v27[5];
        v7 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
        v19 = [v18 px_alteredIndexPathAfterInsertingItemsAtIndexPaths:v7];
        v20 = v27[5];
        v27[5] = v19;
      }

LABEL_10:
      v21 = v27[5];
      _Block_object_dispose(&v26, 8);

      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

void __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) px_section] > a2)
  {
    v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) inSection:{"px_item"), objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "px_section") - 1}];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) px_section] >= a2)
  {
    v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(*(*(*(a1 + 32) + 8) + 40) inSection:{"px_item"), objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "px_section") + 1}];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (BOOL)affectsSectionsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v64 = *MEMORY[0x1E69E9840];
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:333 description:@"Must have a valid location"];

    if (length)
    {
      goto LABEL_3;
    }

LABEL_28:
    v36 = 0;
    return v36 & 1;
  }

  if (!a3.length)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:334 description:@"Must have a valid length"];
  }

  v48 = [(PXPhotosDataSourceChange *)self deletedSections];
  v47 = [(PXPhotosDataSourceChange *)self insertedSections];
  v46 = [(PXPhotosDataSourceChange *)self changedSections];
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addIndex:{objc_msgSend(*(*(&v57 + 1) + 8 * i), "px_section")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x1E696AD50] indexSet];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v54;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 addIndex:{objc_msgSend(*(*(&v53 + 1) + 8 * j), "px_section")}];
      }

      v16 = [v14 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v16);
  }

  v19 = [MEMORY[0x1E696AD50] indexSet];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = [(PXPhotosDataSourceChange *)self changedIndexPaths];
  v21 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v50;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v19 addIndex:{objc_msgSend(*(*(&v49 + 1) + 8 * k), "px_section")}];
      }

      v22 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v22);
  }

  v25 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
  [v25 addIndex:{objc_msgSend(v25, "lastIndex") + 1}];
  v45 = [v25 px_indexSetAdjustedForDeletions:v48];
  v44 = [v45 px_indexSetAdjustedForInsertions:v47];
  v26 = [v25 px_coveringRange];
  v28 = v27;
  v29 = [v45 px_coveringRange];
  v40 = v30;
  v41 = v29;
  v31 = [v44 px_coveringRange];
  v33 = v32;
  v43 = [v48 intersectsIndexesInRange:{v26, v28}];
  v42 = [v7 intersectsIndexesInRange:{v26, v28}];
  v34 = [v47 intersectsIndexesInRange:{v41, v40}];
  v35 = [v19 intersectsIndexesInRange:{v31, v33}];
  LOBYTE(v26) = [v46 intersectsIndexesInRange:{v31, v33}];
  v36 = v43 | v42 | v34 | v35 | v26 | [v19 intersectsIndexesInRange:{v31, v33}];

  return v36 & 1;
}

- (BOOL)_shouldPerformFullReloadForCollectionListChangeNotifications:(id)a3 collectionChangeNotifications:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [v5 insertedIndexes];
  v8 = [v7 count];
  v9 = [v5 removedIndexes];
  v10 = [v9 count];

  if (![v5 hasIncrementalChanges])
  {
    v11 = 1;
    goto LABEL_20;
  }

  v11 = 1;
  if (([v5 hasMoves] & 1) == 0 && v10 + v8 <= 20)
  {
LABEL_5:
    v25 = v6;
    v26 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 insertedIndexes];
          v20 = [v19 count];
          v21 = [v18 removedIndexes];
          v22 = [v21 count];

          if (![v18 hasIncrementalChanges])
          {
            v11 = 1;
            goto LABEL_19;
          }

          v23 = [v18 hasMoves];
          v11 = 1;
          if (v23)
          {
            goto LABEL_19;
          }

          v15 += v20 + v22;
          if (v15 > 100)
          {
            goto LABEL_19;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v11 = 0;
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_19:

    v6 = v25;
    v5 = v26;
  }

LABEL_20:

  return v11;
}

- (void)_prepareIncrementalDetails
{
  v47 = *MEMORY[0x1E69E9840];
  p_collectionListChangeDetails = &self->_collectionListChangeDetails;
  v4 = [(PHFetchResultChangeDetails *)self->_collectionListChangeDetails removedIndexes];
  v5 = [(PHFetchResultChangeDetails *)*p_collectionListChangeDetails insertedIndexes];
  v6 = [(PHFetchResultChangeDetails *)*p_collectionListChangeDetails changedIndexes];
  previousCollectionsCount = self->_previousCollectionsCount;
  v8 = [v5 count] + previousCollectionsCount;
  v9 = v8 - [v4 count];
  v10 = [(NSDictionary *)self->_assetCollectionToSectionCache count];
  if (v9 == v10)
  {
    objc_storeStrong(&self->_deletedSections, v4);
    objc_storeStrong(&self->_insertedSections, v5);
    objc_storeStrong(&self->_changedSections, v6);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__68023;
    *v46 = __Block_byref_object_dispose__68024;
    *&v46[8] = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__68023;
    v42 = __Block_byref_object_dispose__68024;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__68023;
    v36 = __Block_byref_object_dispose__68024;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__68023;
    v30 = __Block_byref_object_dispose__68024;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__68023;
    v24 = __Block_byref_object_dispose__68024;
    v25 = 0;
    assetCollectionChangeDetails = self->_assetCollectionChangeDetails;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__PXPhotosDataSourceChange__prepareIncrementalDetails__block_invoke;
    v19[3] = &unk_1E7734958;
    v19[4] = self;
    v19[5] = buf;
    v19[6] = &v38;
    v19[7] = &v32;
    v19[8] = &v26;
    v19[9] = &v20;
    [(NSDictionary *)assetCollectionChangeDetails enumerateKeysAndObjectsUsingBlock:v19];
    objc_storeStrong(&self->_deletedIndexPaths, *(*&buf[8] + 40));
    objc_storeStrong(&self->_insertedIndexPaths, v39[5]);
    objc_storeStrong(&self->_changedIndexPaths, v33[5]);
    objc_storeStrong(&self->_contentChangedIndexPaths, v27[5]);
    objc_storeStrong(&self->_favoriteChangedIndexPaths, v21[5]);
    v12 = ![(NSIndexSet *)self->_deletedSections count]&& ![(NSIndexSet *)self->_insertedSections count]&& ![(NSIndexSet *)self->_changedSections count]&& ![(NSArray *)self->_deletedIndexPaths count]&& ![(NSArray *)self->_insertedIndexPaths count]&& ![(NSArray *)self->_changedIndexPaths count]&& ![(NSArray *)self->_contentChangedIndexPaths count]&& [(NSArray *)self->_favoriteChangedIndexPaths count]== 0;
    self->_changesAreNoOp = v12;
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = v10;
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_previousCollectionsCount;
      v16 = [v5 count];
      v17 = [v4 count];
      v18 = [(NSDictionary *)self->_assetCollectionToSectionCache allKeys];
      *buf = 134219010;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v45 = v16;
      *v46 = 2048;
      *&v46[2] = v17;
      *&v46[10] = 2112;
      *&v46[12] = v18;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "The new collection count (%lu) doesn't match the expected count (%lu + %lu - %lu). Collection: %@", buf, 0x34u);
    }
  }
}

void __54__PXPhotosDataSourceChange__prepareIncrementalDetails__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1[4] + 16) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntegerValue];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      v11 = *(a1[4] + 24);
      v12 = v10;
      if (v11)
      {
        v13 = [v11 fetchResultBeforeChanges];
        v12 = [v13 indexOfObject:v5];
      }

      v14 = [v6 removedIndexes];
      if ([v14 count])
      {
        v15 = *(a1[5] + 8);
        v16 = *(v15 + 40);
        if (v16)
        {
          v17 = v16;
          v18 = *(v15 + 40);
          *(v15 + 40) = v17;
        }

        else
        {
          v19 = [MEMORY[0x1E695DF70] array];
          v20 = *(a1[5] + 8);
          v18 = *(v20 + 40);
          *(v20 + 40) = v19;
        }

        v21 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v14 inSection:v12];
        [*(*(a1[5] + 8) + 40) addObjectsFromArray:v21];
      }

      v22 = [v6 insertedIndexes];
      if ([v22 count])
      {
        v23 = *(a1[6] + 8);
        v24 = *(v23 + 40);
        if (v24)
        {
          v25 = v24;
          v26 = *(v23 + 40);
          *(v23 + 40) = v25;
        }

        else
        {
          v27 = [MEMORY[0x1E695DF70] array];
          v28 = *(a1[6] + 8);
          v26 = *(v28 + 40);
          *(v28 + 40) = v27;
        }

        v29 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v22 inSection:v10];
        [*(*(a1[6] + 8) + 40) addObjectsFromArray:v29];
      }

      v30 = [v6 changedIndexes];
      if ([v30 count])
      {
        v31 = *(a1[7] + 8);
        v32 = *(v31 + 40);
        v63 = v22;
        v64 = v14;
        if (v32)
        {
          v33 = v32;
          v34 = *(v31 + 40);
          *(v31 + 40) = v33;
        }

        else
        {
          v35 = [MEMORY[0x1E695DF70] array];
          v36 = *(a1[7] + 8);
          v34 = *(v36 + 40);
          *(v36 + 40) = v35;
        }

        v62 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v30 inSection:v10];
        [*(*(a1[7] + 8) + 40) addObjectsFromArray:?];
        v37 = [v6 fetchResultAfterChanges];
        v38 = [MEMORY[0x1E696AD50] indexSet];
        v39 = [MEMORY[0x1E696AD50] indexSet];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __54__PXPhotosDataSourceChange__prepareIncrementalDetails__block_invoke_2;
        v65[3] = &unk_1E77367B8;
        v40 = v37;
        v41 = a1[4];
        v60 = v40;
        v66 = v40;
        v67 = v41;
        v42 = v38;
        v68 = v42;
        v43 = v39;
        v69 = v43;
        [v30 enumerateIndexesUsingBlock:v65];
        if ([v42 count])
        {
          v44 = *(a1[8] + 8);
          v45 = *(v44 + 40);
          if (v45)
          {
            v46 = v45;
            v47 = *(v44 + 40);
            *(v44 + 40) = v46;
          }

          else
          {
            v48 = [MEMORY[0x1E695DF70] array];
            v49 = *(a1[8] + 8);
            v47 = *(v49 + 40);
            *(v49 + 40) = v48;
          }

          v50 = *(*(a1[8] + 8) + 40);
          v51 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v42 inSection:v10];
          [v50 addObjectsFromArray:v51];
        }

        if ([v43 count])
        {
          v52 = *(a1[9] + 8);
          v53 = *(v52 + 40);
          if (v53)
          {
            v54 = v53;
            v55 = *(v52 + 40);
            *(v52 + 40) = v54;
          }

          else
          {
            v56 = [MEMORY[0x1E695DF70] array];
            v57 = *(a1[9] + 8);
            v55 = *(v57 + 40);
            *(v57 + 40) = v56;
          }

          v58 = *(*(a1[9] + 8) + 40);
          v59 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v43 inSection:v10];
          [v58 addObjectsFromArray:v59];
        }

        v22 = v63;
        v14 = v64;
      }
    }
  }
}

void __54__PXPhotosDataSourceChange__prepareIncrementalDetails__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) objectIDAtIndex:a2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 136));
  v5 = [WeakRetained contentOrThumbnailChangedForPHAssetOID:v8];

  if (v5)
  {
    [*(a1 + 48) addIndex:a2];
  }

  v6 = objc_loadWeakRetained((*(a1 + 40) + 136));
  v7 = [v6 favoriteStateChangedForPHAssetOID:v8];

  if (v7)
  {
    [*(a1 + 56) addIndex:a2];
  }
}

- (void)prepareIfNeeded
{
  if (self->_prepared)
  {
    return;
  }

  obj = self;
  objc_sync_enter(obj);
  if (!self->_prepared)
  {
    v3 = obj;
    collectionListChangeDetails = obj->_collectionListChangeDetails;
    if (!collectionListChangeDetails)
    {
      if (![(NSDictionary *)obj->_assetCollectionChangeDetails count])
      {
LABEL_8:
        self->_prepared = 1;
        goto LABEL_9;
      }

      v3 = obj;
      collectionListChangeDetails = obj->_collectionListChangeDetails;
    }

    v5 = [(NSDictionary *)v3->_assetCollectionChangeDetails allValues];
    v6 = [(PXPhotosDataSourceChange *)obj _shouldPerformFullReloadForCollectionListChangeNotifications:collectionListChangeDetails collectionChangeNotifications:v5];

    if (!v6)
    {
      [(PXPhotosDataSourceChange *)obj _prepareIncrementalDetails];
    }

    goto LABEL_8;
  }

LABEL_9:
  objc_sync_exit(obj);
}

- (id)description
{
  v24.receiver = self;
  v24.super_class = PXPhotosDataSourceChange;
  v23 = [(PXPhotosDataSourceChange *)&v24 description];
  v21 = MEMORY[0x1E696AEC0];
  v3 = [(PXPhotosDataSourceChange *)self hasIncrementalChanges];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v20 = v4;
  v22 = [(PXPhotosDataSourceChange *)self deletedSections];
  v19 = [v22 count];
  v5 = [(PXPhotosDataSourceChange *)self insertedSections];
  v18 = [v5 count];
  v6 = [(PXPhotosDataSourceChange *)self changedSections];
  v7 = [v6 count];
  v8 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
  v9 = [v8 count];
  v10 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
  v11 = [v10 count];
  v12 = [(PXPhotosDataSourceChange *)self changedIndexPaths];
  v13 = [v12 count];
  v14 = [(PXPhotosDataSourceChange *)self contentChangedIndexPaths];
  v15 = [v21 stringWithFormat:@" hasIncremental:%@ sections:(%lu, %lu, %lu) indexPaths:(%lu, %lu, %lu, %lu) (del, ins, change, contentChange)", v20, v19, v18, v7, v9, v11, v13, objc_msgSend(v14, "count")];

  v16 = [v23 stringByAppendingString:v15];

  return v16;
}

- (NSArray)favoriteChangedIndexPaths
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  favoriteChangedIndexPaths = self->_favoriteChangedIndexPaths;

  return favoriteChangedIndexPaths;
}

- (NSArray)contentChangedIndexPaths
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  contentChangedIndexPaths = self->_contentChangedIndexPaths;

  return contentChangedIndexPaths;
}

- (NSArray)changedIndexPaths
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  changedIndexPaths = self->_changedIndexPaths;

  return changedIndexPaths;
}

- (NSArray)insertedIndexPaths
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  insertedIndexPaths = self->_insertedIndexPaths;

  return insertedIndexPaths;
}

- (NSArray)deletedIndexPaths
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  deletedIndexPaths = self->_deletedIndexPaths;

  return deletedIndexPaths;
}

- (NSIndexSet)changedSections
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  changedSections = self->_changedSections;

  return changedSections;
}

- (NSIndexSet)insertedSections
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  insertedSections = self->_insertedSections;

  return insertedSections;
}

- (NSIndexSet)deletedSections
{
  [(PXPhotosDataSourceChange *)self prepareIfNeeded];
  deletedSections = self->_deletedSections;

  return deletedSections;
}

- (PXPhotosDataSourceChange)initWithIncrementalChanges:(id)a3 assetCollectionChangeDetails:(id)a4 sectionsWithKeyAssetChanges:(id)a5 previousCollectionsCount:(int64_t)a6 assetCollectionToSectionCache:(id)a7 originatingPhotoLibraryChange:(id)a8 fromIdentifier:(int64_t)a9 toIdentifier:(int64_t)a10
{
  v29 = a3;
  v17 = a4;
  v28 = a5;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = PXPhotosDataSourceChange;
  v20 = [(PXPhotosDataSourceChange *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_previousCollectionsCount = a6;
    objc_storeStrong(&v20->_collectionListChangeDetails, a3);
    objc_storeStrong(&v21->_assetCollectionChangeDetails, a4);
    objc_storeStrong(&v21->_assetCollectionToSectionCache, a7);
    objc_storeWeak(&v21->_originatingPhotoLibraryChange, v19);
    v22 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v29 originatingChange:v19];
    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __225__PXPhotosDataSourceChange_initWithIncrementalChanges_assetCollectionChangeDetails_sectionsWithKeyAssetChanges_previousCollectionsCount_assetCollectionToSectionCache_originatingPhotoLibraryChange_fromIdentifier_toIdentifier___block_invoke;
    v30[3] = &unk_1E7734930;
    v31 = v18;
    v32 = v23;
    v33 = v19;
    v24 = v23;
    [v17 enumerateKeysAndObjectsUsingBlock:v30];
    v25 = [[off_1E77218B0 alloc] initWithFromDataSourceIdentifier:a9 toDataSourceIdentifier:a10 sectionChanges:v22 itemChangeDetailsBySection:v24 subitemChangeDetailsByItemBySection:0];
    sectionedDataSourceChangeDetails = v21->_sectionedDataSourceChangeDetails;
    v21->_sectionedDataSourceChangeDetails = v25;

    objc_storeStrong(&v21->_sectionsWithKeyAssetChanges, a5);
  }

  return v21;
}

void __225__PXPhotosDataSourceChange_initWithIncrementalChanges_assetCollectionChangeDetails_sectionsWithKeyAssetChanges_previousCollectionsCount_assetCollectionToSectionCache_originatingPhotoLibraryChange_fromIdentifier_toIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 objectForKeyedSubscript:a2];
  v7 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v6 originatingChange:*(a1 + 48)];

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
}

- (PXPhotosDataSourceChange)initWithFromIdentifier:(int64_t)a3 toIdentifier:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = PXPhotosDataSourceChange;
  v6 = [(PXPhotosDataSourceChange *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_prepared = 1;
    v8 = [off_1E77218B0 alloc];
    v9 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v10 = [v8 initWithFromDataSourceIdentifier:a3 toDataSourceIdentifier:a4 sectionChanges:v9 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];
    sectionedDataSourceChangeDetails = v7->_sectionedDataSourceChangeDetails;
    v7->_sectionedDataSourceChangeDetails = v10;
  }

  return v7;
}

@end