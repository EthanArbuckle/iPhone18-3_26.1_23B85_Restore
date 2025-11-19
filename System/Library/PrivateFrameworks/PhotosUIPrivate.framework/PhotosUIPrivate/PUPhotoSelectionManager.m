@interface PUPhotoSelectionManager
- (BOOL)areAllAssetsSelectedInAssetCollection:(id)a3;
- (BOOL)areAllAssetsSelectedInAssetCollections:(id)a3;
- (BOOL)isAnyAssetSelected;
- (BOOL)isAnyAssetSelectedInAssetCollection:(id)a3;
- (BOOL)isAnyAssetSelectedInAssetCollections:(id)a3;
- (BOOL)isAssetAtIndexSelected:(unint64_t)a3 inAssetCollection:(id)a4;
- (NSArray)selectedAssetCollections;
- (NSDictionary)selectedAssetsByAssetCollection;
- (NSOrderedSet)orderedSelectedAssets;
- (NSSet)selectedAssets;
- (PHAssetCollectionDataSource)dataSource;
- (PUPhotoSelectionManager)init;
- (PUPhotoSelectionManager)initWithOptions:(int64_t)a3;
- (PXAssetMediaTypeCount)requestAssetsMediaTypeCount;
- (PXSelectionSnapshot)selectionSnapshot;
- (id)_selectionEntryForAssetCollection:(id)a3 createIfNeeded:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedSelectionString;
- (id)selectedAssetIndexesWithAssetCollectionOrdering:(id)a3;
- (id)selectedAssetsWithAssetCollectionOrdering:(id)a3;
- (void)_endSelectionChange;
- (void)_selectFirstAssetInAssetCollections:(id)a3;
- (void)deselectAllAssets;
- (void)deselectAllAssetsInAssetCollections:(id)a3;
- (void)deselectAssetAtIndex:(unint64_t)a3 inAssetCollection:(id)a4;
- (void)deselectAssetsAtIndexes:(id)a3 inAssetCollection:(id)a4;
- (void)enumerateSelectedAssetsWithAssetCollectionOrdering:(id)a3 block:(id)a4;
- (void)handlePhotoLibraryChange:(id)a3;
- (void)invalidateAllAssetIndexes;
- (void)registerChangeObserver:(id)a3;
- (void)selectAllAssetsInAssetCollections:(id)a3;
- (void)selectAssetAtIndex:(unint64_t)a3 inAssetCollection:(id)a4;
- (void)selectAssetsAtIndexes:(id)a3 inAssetCollection:(id)a4;
- (void)selectInitialAssetsInAssetCollections:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation PUPhotoSelectionManager

- (PHAssetCollectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = [+[PUPhotoSelectionManager allocWithZone:](PUPhotoSelectionManager initWithOptions:"initWithOptions:", self->_options];
  v5 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_selectionEntriesByAssetCollection;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectForKey:v11];
        v13 = [v12 copyWithZone:a3];
        [v5 setObject:v13 forKey:v11];
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  objc_storeStrong(&v18->_selectionEntriesByAssetCollection, v5);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  objc_storeWeak(&v18->_dataSource, WeakRetained);

  if ([(PUPhotoSelectionManager *)v18 _shouldUniqueAssets])
  {
    v15 = [(NSMutableSet *)self->_uniqueAssetSelection copy];
    uniqueAssetSelection = v18->_uniqueAssetSelection;
    v18->_uniqueAssetSelection = v15;
  }

  return v18;
}

- (void)_endSelectionChange
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = self->_selectionChangeCount - 1;
  self->_selectionChangeCount = v2;
  if (!v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(NSHashTable *)self->_changeObservers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) photoSelectionManagerSelectionDidChange:self];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)invalidateAllAssetIndexes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_selectionEntriesByAssetCollection;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:*(*(&v9 + 1) + 8 * v7) createIfNeeded:0, v9];
        [v8 invalidateAllAssetIndexes];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)handlePhotoLibraryChange:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_selectionEntriesByAssetCollection;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v4 changeDetailsForObject:v11];
        if ([v12 objectWasDeleted])
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DF70] array];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)self->_selectionEntriesByAssetCollection removeObjectForKey:*(*(&v28 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }

  if ([(PUPhotoSelectionManager *)self _shouldUniqueAssets])
  {
    [(PUPhotoSelectionManager *)self invalidateAllAssetIndexes];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_selectionEntriesByAssetCollection;
  v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:*(*(&v24 + 1) + 8 * k) createIfNeeded:0, v24];
        [v23 handlePhotoLibraryChange:v4];
      }

      v20 = [(NSMapTable *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }
}

- (PXAssetMediaTypeCount)requestAssetsMediaTypeCount
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(PUPhotoSelectionManager *)self selectedAssets];
  v26 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v26)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        v27 = v6;
        v28 = v3;
        v29 = v5;
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 playbackStyle];
        v13 = [v11 location];

        if (v13)
        {
          v14 = v4 + 1;
        }

        else
        {
          v14 = v4;
        }

        v15 = [v11 descriptionProperties];
        v16 = [v15 assetDescription];
        v17 = [v16 length];

        v18 = v17 == 0;
        v5 = v29;
        if (!v18)
        {
          v5 = v29 + 1;
        }

        v19 = [v11 descriptionProperties];
        v20 = [v19 accessibilityDescription];
        v21 = [v20 length];

        v18 = v21 == 0;
        v4 = v14;
        v6 = v27;
        v3 = v28;
        if (!v18)
        {
          v6 = v27 + 1;
        }

        if ((v12 - 1) < 3)
        {
          ++v9;
        }

        if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          ++v8;
        }

        if (v12 == 5)
        {
          ++v7;
        }

        if (v12 == 3)
        {
          v3 = v28 + 1;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v26);
  }

  retstr->var0 = v9;
  retstr->var1 = v8;
  retstr->var2 = v7;
  retstr->var3 = v3;
  retstr->var4 = 0;
  retstr->var5 = v4;
  retstr->var6 = 0;
  retstr->var7 = v5;
  retstr->var8 = v6;
  return result;
}

- (id)localizedSelectionString
{
  v2 = [(PUPhotoSelectionManager *)self selectedAssets];
  v3 = [v2 allObjects];

  v4 = PLLocalizedSelectionMessageForItems();

  return v4;
}

- (PXSelectionSnapshot)selectionSnapshot
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoSelectionManager *)self dataSource];
  v4 = [v3 assetCollectionsFetchResult];

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [(NSMapTable *)self->_selectionEntriesByAssetCollection keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectForKey:*(*(&v40 + 1) + 8 * i)];
        v12 = [v11 fetchResult];
        v13 = [v11 assetCollection];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  v30 = v4;
  v14 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v4 options:4];
  v29 = v5;
  [v14 setExistingAssetCollectionFetchResults:v5];
  v28 = v14;
  v15 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v14];
  v27 = [objc_alloc(MEMORY[0x1E69C37D0]) initWithImmutablePhotosDataSource:v15 withChange:0];
  v31 = [v27 identifier];
  v32 = objc_alloc_init(MEMORY[0x1E69C4580]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(NSMapTable *)self->_selectionEntriesByAssetCollection keyEnumerator];
  v16 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v36 + 1) + 8 * j);
        v21 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectForKey:v20];
        v22 = [v15 sectionForAssetCollection:v20];
        v23 = [v21 selectedIndexes];

        if (v23)
        {
          v24 = v22 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __44__PUPhotoSelectionManager_selectionSnapshot__block_invoke;
          v34[3] = &unk_1E7B7C350;
          v35 = v21;
          [v32 modifyItemIndexSetForDataSourceIdentifier:v31 section:v22 usingBlock:v34];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v17);
  }

  v25 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:v27 selectedIndexPaths:v32];

  return v25;
}

void __44__PUPhotoSelectionManager_selectionSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedIndexes];
  [v3 addIndexes:v4];
}

- (NSArray)selectedAssetCollections
{
  selectionEntriesByAssetCollection = self->_selectionEntriesByAssetCollection;
  if (selectionEntriesByAssetCollection)
  {
    selectionEntriesByAssetCollection = [selectionEntriesByAssetCollection count];
    if (selectionEntriesByAssetCollection)
    {
      selectionEntriesByAssetCollection = NSAllMapTableKeys(self->_selectionEntriesByAssetCollection);
    }
  }

  return selectionEntriesByAssetCollection;
}

- (NSDictionary)selectedAssetsByAssetCollection
{
  v20 = *MEMORY[0x1E69E9840];
  selectionEntriesByAssetCollection = self->_selectionEntriesByAssetCollection;
  if (selectionEntriesByAssetCollection && [(NSMapTable *)selectionEntriesByAssetCollection count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMapTable count](self->_selectionEntriesByAssetCollection, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(NSMapTable *)self->_selectionEntriesByAssetCollection keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectForKey:v10];
          v12 = [v11 selectedAssets];
          v13 = [v12 copy];
          [v4 setObject:v13 forKeyedSubscript:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSOrderedSet)orderedSelectedAssets
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) selectedAssets];
        if (v9)
        {
          [v3 addObjectsFromArray:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)selectedAssets
{
  if ([(PUPhotoSelectionManager *)self _shouldUniqueAssets])
  {
    v3 = [(NSMutableSet *)self->_uniqueAssetSelection copy];
  }

  else
  {
    v4 = [(PUPhotoSelectionManager *)self orderedSelectedAssets];
    v3 = [v4 set];
  }

  return v3;
}

- (id)selectedAssetsWithAssetCollectionOrdering:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:*(*(&v14 + 1) + 8 * i) createIfNeeded:0, v14];
        v12 = [v11 selectedAssets];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)enumerateSelectedAssetsWithAssetCollectionOrdering:(id)a3 block:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:*(*(&v17 + 1) + 8 * i) createIfNeeded:0];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __84__PUPhotoSelectionManager_enumerateSelectedAssetsWithAssetCollectionOrdering_block___block_invoke;
        v13[3] = &unk_1E7B7C328;
        v14 = v7;
        v15 = &v21;
        v16 = &v25;
        [v11 enumerateSelectedAssetsWithBlock:v13];
        if (*(v26 + 24) == 1)
        {

          goto LABEL_11;
        }

        ++*(v22 + 6);
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

uint64_t __84__PUPhotoSelectionManager_enumerateSelectedAssetsWithAssetCollectionOrdering_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (id)selectedAssetIndexesWithAssetCollectionOrdering:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:*(*(&v17 + 1) + 8 * i) createIfNeeded:0, v17];
        v12 = [v11 selectedIndexes];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x1E696AC90] indexSet];
        }

        v15 = v14;

        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)areAllAssetsSelectedInAssetCollections:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (![(PUPhotoSelectionManager *)self areAllAssetsSelectedInAssetCollection:*(*(&v11 + 1) + 8 * v8), v11])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v9 = 1;
        goto LABEL_11;
      }
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)areAllAssetsSelectedInAssetCollection:(id)a3
{
  v3 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:a3 createIfNeeded:0];
  v4 = [v3 selectedIndexes];
  v5 = [v4 count];

  if (v5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = [v3 fetchResult];
    v7 = [v6 count];

    v8 = v7 == v5;
  }

  return v8;
}

- (BOOL)isAnyAssetSelectedInAssetCollections:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(PUPhotoSelectionManager *)self isAnyAssetSelectedInAssetCollection:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)isAnyAssetSelectedInAssetCollection:(id)a3
{
  v3 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:a3 createIfNeeded:0];
  v4 = [v3 selectedIndexes];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)isAssetAtIndexSelected:(unint64_t)a3 inAssetCollection:(id)a4
{
  v5 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:a4 createIfNeeded:0];
  LOBYTE(a3) = [v5 isIndexSelected:a3];

  return a3;
}

- (BOOL)isAnyAssetSelected
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoSelectionManager *)self _shouldUniqueAssets])
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_uniqueAssetSelection count]!= 0;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectEnumerator];
    v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = [*(*(&v10 + 1) + 8 * i) selectedIndexes];
          v8 = [v7 count];

          if (v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)deselectAllAssets
{
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  [(NSMapTable *)self->_selectionEntriesByAssetCollection removeAllObjects];
  [(NSMutableSet *)self->_uniqueAssetSelection removeAllObjects];

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)deselectAllAssetsInAssetCollections:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:v10 createIfNeeded:0, v15];
        v12 = MEMORY[0x1E696AC90];
        v13 = [v11 fetchResult];
        v14 = [v12 indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];

        [(PUPhotoSelectionManager *)self deselectAssetsAtIndexes:v14 inAssetCollection:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)deselectAssetsAtIndexes:(id)a3 inAssetCollection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v8 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:v7 createIfNeeded:0];
  [v8 deselectAssetsAtIndexes:v6];
  if ([(PUPhotoSelectionManager *)self _shouldUniqueAssets])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (v14 != v8)
          {
            [v14 invalidateAllAssetIndexes];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)deselectAssetAtIndex:(unint64_t)a3 inAssetCollection:(id)a4
{
  v6 = a4;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [(PUPhotoSelectionManager *)self deselectAssetsAtIndexes:v7 inAssetCollection:v6];

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)_selectFirstAssetInAssetCollections:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:v10 createIfNeeded:1, v15];
        v12 = [v11 fetchResult];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
          [(PUPhotoSelectionManager *)self selectAssetsAtIndexes:v14 inAssetCollection:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)selectInitialAssetsInAssetCollections:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v5, 0, sizeof(v5));
  if ([v4 countByEnumeratingWithState:v5 objects:v6 count:16] && !objc_msgSend(**(&v5[0] + 1), "px_shouldSelectAllAssetsWhenSharing"))
  {
    [(PUPhotoSelectionManager *)self _selectFirstAssetInAssetCollections:v4];
  }

  else
  {
    [(PUPhotoSelectionManager *)self selectAllAssetsInAssetCollections:v4];
  }
}

- (void)selectAllAssetsInAssetCollections:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:v10 createIfNeeded:1, v15];
        v12 = MEMORY[0x1E696AC90];
        v13 = [v11 fetchResult];
        v14 = [v12 indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];

        [(PUPhotoSelectionManager *)self selectAssetsAtIndexes:v14 inAssetCollection:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)selectAssetsAtIndexes:(id)a3 inAssetCollection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v8 = [(PUPhotoSelectionManager *)self _selectionEntryForAssetCollection:v7 createIfNeeded:1];
  [v8 selectAssetsAtIndexes:v6];
  if ([(PUPhotoSelectionManager *)self _shouldUniqueAssets])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (v14 != v8)
          {
            [v14 invalidateAllAssetIndexes];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (void)selectAssetAtIndex:(unint64_t)a3 inAssetCollection:(id)a4
{
  v6 = a4;
  [(PUPhotoSelectionManager *)self _beginSelectionChange];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [(PUPhotoSelectionManager *)self selectAssetsAtIndexes:v7 inAssetCollection:v6];

  [(PUPhotoSelectionManager *)self _endSelectionChange];
}

- (id)_selectionEntryForAssetCollection:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMapTable *)self->_selectionEntriesByAssetCollection objectForKey:v6];
  v8 = [(PUPhotoSelectionManager *)self _shouldUniqueAssets];
  if (!v7)
  {
    if (v4 || v8)
    {
      if (v8)
      {
        uniqueAssetSelection = self->_uniqueAssetSelection;
      }

      else
      {
        uniqueAssetSelection = 0;
      }

      v10 = MEMORY[0x1E6978830];
      v11 = uniqueAssetSelection;
      v12 = [v10 fetchOptionsWithPhotoLibrary:0 orObject:v6];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      if (WeakRetained)
      {
        v14 = objc_loadWeakRetained(&self->_dataSource);
        v15 = [v14 assetsInAssetCollection:v6];
      }

      else
      {
        v15 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v12];
      }

      v7 = [[PUPhotoSelectionEntry alloc] initWithAssetCollection:v6 fetchResult:v15 uniqueSelectedAssets:v11];
      [(NSMapTable *)self->_selectionEntriesByAssetCollection setObject:v7 forKey:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)unregisterChangeObserver:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPhotoSelectionManager.m" lineNumber:94 description:{@"%s must be called on the main thread", "-[PUPhotoSelectionManager unregisterChangeObserver:]"}];
  }

  [(NSHashTable *)self->_changeObservers removeObject:v6];
}

- (void)registerChangeObserver:(id)a3
{
  v10 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoSelectionManager.m" lineNumber:85 description:{@"%s must be called on the main thread", "-[PUPhotoSelectionManager registerChangeObserver:]"}];
  }

  changeObservers = self->_changeObservers;
  if (!changeObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_changeObservers;
    self->_changeObservers = v6;

    changeObservers = self->_changeObservers;
  }

  if ([(NSHashTable *)changeObservers containsObject:v10])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPhotoSelectionManager.m" lineNumber:89 description:{@"can't register an observer instance more than once: %@", v10}];
  }

  [(NSHashTable *)self->_changeObservers addObject:v10];
}

- (PUPhotoSelectionManager)initWithOptions:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = PUPhotoSelectionManager;
  v4 = [(PUPhotoSelectionManager *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    selectionEntriesByAssetCollection = v5->_selectionEntriesByAssetCollection;
    v5->_selectionEntriesByAssetCollection = v6;

    if ([(PUPhotoSelectionManager *)v5 _shouldUniqueAssets])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      uniqueAssetSelection = v5->_uniqueAssetSelection;
      v5->_uniqueAssetSelection = v8;
    }
  }

  return v5;
}

- (PUPhotoSelectionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoSelectionManager.m" lineNumber:66 description:{@"Do not use this initializer, use the designated one instead."}];

  return 0;
}

@end