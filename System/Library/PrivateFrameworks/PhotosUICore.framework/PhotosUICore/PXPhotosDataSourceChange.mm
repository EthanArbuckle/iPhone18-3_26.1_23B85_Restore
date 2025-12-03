@interface PXPhotosDataSourceChange
- (BOOL)_shouldPerformFullReloadForCollectionListChangeNotifications:(id)notifications collectionChangeNotifications:(id)changeNotifications;
- (BOOL)affectsSectionsInRange:(_NSRange)range;
- (NSArray)changedIndexPaths;
- (NSArray)contentChangedIndexPaths;
- (NSArray)deletedIndexPaths;
- (NSArray)favoriteChangedIndexPaths;
- (NSArray)insertedIndexPaths;
- (NSIndexSet)changedSections;
- (NSIndexSet)deletedSections;
- (NSIndexSet)insertedSections;
- (PHChange)originatingPhotoLibraryChange;
- (PXPhotosDataSourceChange)initWithFromIdentifier:(int64_t)identifier toIdentifier:(int64_t)toIdentifier;
- (PXPhotosDataSourceChange)initWithIncrementalChanges:(id)changes assetCollectionChangeDetails:(id)details sectionsWithKeyAssetChanges:(id)assetChanges previousCollectionsCount:(int64_t)count assetCollectionToSectionCache:(id)cache originatingPhotoLibraryChange:(id)change fromIdentifier:(int64_t)identifier toIdentifier:(int64_t)self0;
- (id)description;
- (id)indexPathAfterApplyingIncrementalChangesToIndexPath:(id)path;
- (id)indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:(id)path;
- (void)_prepareIncrementalDetails;
- (void)prepareIfNeeded;
@end

@implementation PXPhotosDataSourceChange

- (PHChange)originatingPhotoLibraryChange
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingPhotoLibraryChange);

  return WeakRetained;
}

- (id)indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath:(id)path
{
  pathCopy = path;
  if ([(PXPhotosDataSourceChange *)self hasIncrementalChanges])
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"[self hasIncrementalChanges] == YES"}];

    if (pathCopy)
    {
LABEL_3:
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__68023;
      v30 = __Block_byref_object_dispose__68024;
      v31 = 0;
      insertedIndexPaths = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
      if (([insertedIndexPaths containsObject:pathCopy] & 1) == 0)
      {
        insertedSections = [(PXPhotosDataSourceChange *)self insertedSections];
        v9 = [insertedSections containsIndex:{objc_msgSend(pathCopy, "px_section")}];

        if (v9)
        {
          goto LABEL_10;
        }

        objc_storeStrong(v27 + 5, path);
        insertedIndexPaths2 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];

        if (insertedIndexPaths2)
        {
          v11 = v27[5];
          insertedIndexPaths3 = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
          v13 = [v11 px_alteredIndexPathAfterDeletingItemsAtIndexPaths:insertedIndexPaths3];
          v14 = v27[5];
          v27[5] = v13;
        }

        insertedSections2 = [(PXPhotosDataSourceChange *)self insertedSections];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke;
        v25[3] = &unk_1E7734980;
        v25[4] = &v26;
        [insertedSections2 enumerateIndexesWithOptions:2 usingBlock:v25];

        deletedSections = [(PXPhotosDataSourceChange *)self deletedSections];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __89__PXPhotosDataSourceChange_indexPathAfterRevertingIncrementalChangeDetailsFromIndexPath___block_invoke_2;
        v24[3] = &unk_1E7734980;
        v24[4] = &v26;
        [deletedSections enumerateIndexesUsingBlock:v24];

        deletedIndexPaths = [(PXPhotosDataSourceChange *)self deletedIndexPaths];

        if (!deletedIndexPaths)
        {
          goto LABEL_10;
        }

        v18 = v27[5];
        insertedIndexPaths = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
        v19 = [v18 px_alteredIndexPathAfterInsertingItemsAtIndexPaths:insertedIndexPaths];
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

- (id)indexPathAfterApplyingIncrementalChangesToIndexPath:(id)path
{
  pathCopy = path;
  if ([(PXPhotosDataSourceChange *)self hasIncrementalChanges])
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"[self hasIncrementalChanges] == YES"}];

    if (pathCopy)
    {
LABEL_3:
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__68023;
      v30 = __Block_byref_object_dispose__68024;
      v31 = 0;
      deletedIndexPaths = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
      if (([deletedIndexPaths containsObject:pathCopy] & 1) == 0)
      {
        deletedSections = [(PXPhotosDataSourceChange *)self deletedSections];
        v9 = [deletedSections containsIndex:{objc_msgSend(pathCopy, "px_section")}];

        if (v9)
        {
          goto LABEL_10;
        }

        objc_storeStrong(v27 + 5, path);
        deletedIndexPaths2 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];

        if (deletedIndexPaths2)
        {
          v11 = v27[5];
          deletedIndexPaths3 = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
          v13 = [v11 px_alteredIndexPathAfterDeletingItemsAtIndexPaths:deletedIndexPaths3];
          v14 = v27[5];
          v27[5] = v13;
        }

        deletedSections2 = [(PXPhotosDataSourceChange *)self deletedSections];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke;
        v25[3] = &unk_1E7734980;
        v25[4] = &v26;
        [deletedSections2 enumerateIndexesWithOptions:2 usingBlock:v25];

        insertedSections = [(PXPhotosDataSourceChange *)self insertedSections];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __80__PXPhotosDataSourceChange_indexPathAfterApplyingIncrementalChangesToIndexPath___block_invoke_2;
        v24[3] = &unk_1E7734980;
        v24[4] = &v26;
        [insertedSections enumerateIndexesUsingBlock:v24];

        insertedIndexPaths = [(PXPhotosDataSourceChange *)self insertedIndexPaths];

        if (!insertedIndexPaths)
        {
          goto LABEL_10;
        }

        v18 = v27[5];
        deletedIndexPaths = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
        v19 = [v18 px_alteredIndexPathAfterInsertingItemsAtIndexPaths:deletedIndexPaths];
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

- (BOOL)affectsSectionsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v64 = *MEMORY[0x1E69E9840];
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:333 description:@"Must have a valid location"];

    if (length)
    {
      goto LABEL_3;
    }

LABEL_28:
    v36 = 0;
    return v36 & 1;
  }

  if (!range.length)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSourceChange.m" lineNumber:334 description:@"Must have a valid length"];
  }

  deletedSections = [(PXPhotosDataSourceChange *)self deletedSections];
  insertedSections = [(PXPhotosDataSourceChange *)self insertedSections];
  changedSections = [(PXPhotosDataSourceChange *)self changedSections];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  deletedIndexPaths = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
  v9 = [deletedIndexPaths countByEnumeratingWithState:&v57 objects:v63 count:16];
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
          objc_enumerationMutation(deletedIndexPaths);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v57 + 1) + 8 * i), "px_section")}];
      }

      v10 = [deletedIndexPaths countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v10);
  }

  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  insertedIndexPaths = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
  v15 = [insertedIndexPaths countByEnumeratingWithState:&v53 objects:v62 count:16];
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
          objc_enumerationMutation(insertedIndexPaths);
        }

        [indexSet2 addIndex:{objc_msgSend(*(*(&v53 + 1) + 8 * j), "px_section")}];
      }

      v16 = [insertedIndexPaths countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v16);
  }

  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  changedIndexPaths = [(PXPhotosDataSourceChange *)self changedIndexPaths];
  v21 = [changedIndexPaths countByEnumeratingWithState:&v49 objects:v61 count:16];
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
          objc_enumerationMutation(changedIndexPaths);
        }

        [indexSet3 addIndex:{objc_msgSend(*(*(&v49 + 1) + 8 * k), "px_section")}];
      }

      v22 = [changedIndexPaths countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v22);
  }

  v25 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
  [v25 addIndex:{objc_msgSend(v25, "lastIndex") + 1}];
  v45 = [v25 px_indexSetAdjustedForDeletions:deletedSections];
  v44 = [v45 px_indexSetAdjustedForInsertions:insertedSections];
  px_coveringRange = [v25 px_coveringRange];
  v28 = v27;
  px_coveringRange2 = [v45 px_coveringRange];
  v40 = v30;
  v41 = px_coveringRange2;
  px_coveringRange3 = [v44 px_coveringRange];
  v33 = v32;
  v43 = [deletedSections intersectsIndexesInRange:{px_coveringRange, v28}];
  v42 = [indexSet intersectsIndexesInRange:{px_coveringRange, v28}];
  v34 = [insertedSections intersectsIndexesInRange:{v41, v40}];
  v35 = [indexSet3 intersectsIndexesInRange:{px_coveringRange3, v33}];
  LOBYTE(px_coveringRange) = [changedSections intersectsIndexesInRange:{px_coveringRange3, v33}];
  v36 = v43 | v42 | v34 | v35 | px_coveringRange | [indexSet3 intersectsIndexesInRange:{px_coveringRange3, v33}];

  return v36 & 1;
}

- (BOOL)_shouldPerformFullReloadForCollectionListChangeNotifications:(id)notifications collectionChangeNotifications:(id)changeNotifications
{
  v32 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  changeNotificationsCopy = changeNotifications;
  if (!notificationsCopy)
  {
    goto LABEL_5;
  }

  insertedIndexes = [notificationsCopy insertedIndexes];
  v8 = [insertedIndexes count];
  removedIndexes = [notificationsCopy removedIndexes];
  v10 = [removedIndexes count];

  if (![notificationsCopy hasIncrementalChanges])
  {
    v11 = 1;
    goto LABEL_20;
  }

  v11 = 1;
  if (([notificationsCopy hasMoves] & 1) == 0 && v10 + v8 <= 20)
  {
LABEL_5:
    v25 = changeNotificationsCopy;
    v26 = notificationsCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = changeNotificationsCopy;
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
          insertedIndexes2 = [v18 insertedIndexes];
          v20 = [insertedIndexes2 count];
          removedIndexes2 = [v18 removedIndexes];
          v22 = [removedIndexes2 count];

          if (![v18 hasIncrementalChanges])
          {
            v11 = 1;
            goto LABEL_19;
          }

          hasMoves = [v18 hasMoves];
          v11 = 1;
          if (hasMoves)
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

    changeNotificationsCopy = v25;
    notificationsCopy = v26;
  }

LABEL_20:

  return v11;
}

- (void)_prepareIncrementalDetails
{
  v47 = *MEMORY[0x1E69E9840];
  p_collectionListChangeDetails = &self->_collectionListChangeDetails;
  removedIndexes = [(PHFetchResultChangeDetails *)self->_collectionListChangeDetails removedIndexes];
  insertedIndexes = [(PHFetchResultChangeDetails *)*p_collectionListChangeDetails insertedIndexes];
  changedIndexes = [(PHFetchResultChangeDetails *)*p_collectionListChangeDetails changedIndexes];
  previousCollectionsCount = self->_previousCollectionsCount;
  v8 = [insertedIndexes count] + previousCollectionsCount;
  v9 = v8 - [removedIndexes count];
  v10 = [(NSDictionary *)self->_assetCollectionToSectionCache count];
  if (v9 == v10)
  {
    objc_storeStrong(&self->_deletedSections, removedIndexes);
    objc_storeStrong(&self->_insertedSections, insertedIndexes);
    objc_storeStrong(&self->_changedSections, changedIndexes);
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
      v16 = [insertedIndexes count];
      v17 = [removedIndexes count];
      allKeys = [(NSDictionary *)self->_assetCollectionToSectionCache allKeys];
      *buf = 134219010;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v45 = v16;
      *v46 = 2048;
      *&v46[2] = v17;
      *&v46[10] = 2112;
      *&v46[12] = allKeys;
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

    allValues = [(NSDictionary *)v3->_assetCollectionChangeDetails allValues];
    v6 = [(PXPhotosDataSourceChange *)obj _shouldPerformFullReloadForCollectionListChangeNotifications:collectionListChangeDetails collectionChangeNotifications:allValues];

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
  hasIncrementalChanges = [(PXPhotosDataSourceChange *)self hasIncrementalChanges];
  v4 = @"NO";
  if (hasIncrementalChanges)
  {
    v4 = @"YES";
  }

  v20 = v4;
  deletedSections = [(PXPhotosDataSourceChange *)self deletedSections];
  v19 = [deletedSections count];
  insertedSections = [(PXPhotosDataSourceChange *)self insertedSections];
  v18 = [insertedSections count];
  changedSections = [(PXPhotosDataSourceChange *)self changedSections];
  v7 = [changedSections count];
  deletedIndexPaths = [(PXPhotosDataSourceChange *)self deletedIndexPaths];
  v9 = [deletedIndexPaths count];
  insertedIndexPaths = [(PXPhotosDataSourceChange *)self insertedIndexPaths];
  v11 = [insertedIndexPaths count];
  changedIndexPaths = [(PXPhotosDataSourceChange *)self changedIndexPaths];
  v13 = [changedIndexPaths count];
  contentChangedIndexPaths = [(PXPhotosDataSourceChange *)self contentChangedIndexPaths];
  v15 = [v21 stringWithFormat:@" hasIncremental:%@ sections:(%lu, %lu, %lu) indexPaths:(%lu, %lu, %lu, %lu) (del, ins, change, contentChange)", v20, v19, v18, v7, v9, v11, v13, objc_msgSend(contentChangedIndexPaths, "count")];

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

- (PXPhotosDataSourceChange)initWithIncrementalChanges:(id)changes assetCollectionChangeDetails:(id)details sectionsWithKeyAssetChanges:(id)assetChanges previousCollectionsCount:(int64_t)count assetCollectionToSectionCache:(id)cache originatingPhotoLibraryChange:(id)change fromIdentifier:(int64_t)identifier toIdentifier:(int64_t)self0
{
  changesCopy = changes;
  detailsCopy = details;
  assetChangesCopy = assetChanges;
  cacheCopy = cache;
  changeCopy = change;
  v34.receiver = self;
  v34.super_class = PXPhotosDataSourceChange;
  v20 = [(PXPhotosDataSourceChange *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_previousCollectionsCount = count;
    objc_storeStrong(&v20->_collectionListChangeDetails, changes);
    objc_storeStrong(&v21->_assetCollectionChangeDetails, details);
    objc_storeStrong(&v21->_assetCollectionToSectionCache, cache);
    objc_storeWeak(&v21->_originatingPhotoLibraryChange, changeCopy);
    v22 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:changesCopy originatingChange:changeCopy];
    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(detailsCopy, "count")}];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __225__PXPhotosDataSourceChange_initWithIncrementalChanges_assetCollectionChangeDetails_sectionsWithKeyAssetChanges_previousCollectionsCount_assetCollectionToSectionCache_originatingPhotoLibraryChange_fromIdentifier_toIdentifier___block_invoke;
    v30[3] = &unk_1E7734930;
    v31 = cacheCopy;
    v32 = v23;
    v33 = changeCopy;
    v24 = v23;
    [detailsCopy enumerateKeysAndObjectsUsingBlock:v30];
    v25 = [[off_1E77218B0 alloc] initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:toIdentifier sectionChanges:v22 itemChangeDetailsBySection:v24 subitemChangeDetailsByItemBySection:0];
    sectionedDataSourceChangeDetails = v21->_sectionedDataSourceChangeDetails;
    v21->_sectionedDataSourceChangeDetails = v25;

    objc_storeStrong(&v21->_sectionsWithKeyAssetChanges, assetChanges);
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

- (PXPhotosDataSourceChange)initWithFromIdentifier:(int64_t)identifier toIdentifier:(int64_t)toIdentifier
{
  v13.receiver = self;
  v13.super_class = PXPhotosDataSourceChange;
  v6 = [(PXPhotosDataSourceChange *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_prepared = 1;
    v8 = [off_1E77218B0 alloc];
    changeDetailsWithNoIncrementalChanges = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v10 = [v8 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:toIdentifier sectionChanges:changeDetailsWithNoIncrementalChanges itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];
    sectionedDataSourceChangeDetails = v7->_sectionedDataSourceChangeDetails;
    v7->_sectionedDataSourceChangeDetails = v10;
  }

  return v7;
}

@end