@interface PXSortOnceCollectionAction
+ (id)assetDateIntervalOfCollection:(id)a3;
+ (id)collections:(id)a3 sortedByTag:(int64_t)a4;
+ (id)makeFetchOptionsWithPhotoLibrary:(id)a3;
- (NSArray)sortedChildCollections;
- (PXSortOnceCollectionAction)initWithCollection:(id)a3 sortType:(int64_t)a4;
- (id)makeFetchOptions;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXSortOnceCollectionAction

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXSortOnceCollectionAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __42__PXSortOnceCollectionAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978758];
  v3 = [*(a1 + 32) collection];
  v4 = [*(a1 + 32) makeFetchOptions];
  v10 = [v2 fetchCollectionsInCollectionList:v3 options:v4];

  v5 = MEMORY[0x1E6978768];
  v6 = [*(a1 + 32) collection];
  v7 = [v5 changeRequestForCollectionList:v6 childCollections:v10];

  v8 = [*(a1 + 32) initialFetchResult];
  [v7 removeChildCollections:v8];
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  [v7 insertChildCollections:v8 atIndexes:v9];
}

- (void)performAction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXSortOnceCollectionAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __44__PXSortOnceCollectionAction_performAction___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978768];
  v3 = [*(a1 + 32) collection];
  v4 = [*(a1 + 32) initialFetchResult];
  v7 = [v2 changeRequestForCollectionList:v3 childCollections:v4];

  v5 = [*(a1 + 32) sortedChildCollections];
  [v7 removeChildCollections:v5];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  [v7 insertChildCollections:v5 atIndexes:v6];
}

- (NSArray)sortedChildCollections
{
  sortedChildCollections = self->_sortedChildCollections;
  if (!sortedChildCollections)
  {
    v4 = objc_opt_class();
    v5 = [(PHFetchResult *)self->_initialFetchResult fetchedObjects];
    v6 = [v4 collections:v5 sortedByTag:{-[PXSortOnceCollectionAction sortType](self, "sortType")}];
    v7 = self->_sortedChildCollections;
    self->_sortedChildCollections = v6;

    sortedChildCollections = self->_sortedChildCollections;
  }

  return sortedChildCollections;
}

- (PXSortOnceCollectionAction)initWithCollection:(id)a3 sortType:(int64_t)a4
{
  v7 = a3;
  v8 = [v7 photoLibrary];
  v16.receiver = self;
  v16.super_class = PXSortOnceCollectionAction;
  v9 = [(PXPhotosAction *)&v16 initWithPhotoLibrary:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    v9->_sortType = a4;
    v10 = MEMORY[0x1E6978758];
    v11 = [(PXSortOnceCollectionAction *)v9 collection];
    v12 = [(PXSortOnceCollectionAction *)v9 makeFetchOptions];
    v13 = [v10 fetchCollectionsInCollectionList:v11 options:v12];
    initialFetchResult = v9->_initialFetchResult;
    v9->_initialFetchResult = v13;
  }

  return v9;
}

- (id)makeFetchOptions
{
  v3 = objc_opt_class();
  v4 = [(PXPhotosAction *)self photoLibrary];
  v5 = [v3 makeFetchOptionsWithPhotoLibrary:v4];

  return v5;
}

+ (id)collections:(id)a3 sortedByTag:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  if ((a4 - 1) <= 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [a1 assetDateIntervalOfCollection:v13];
          v15 = [v13 uuid];
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v6 = v19;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__PXSortOnceCollectionAction_collections_sortedByTag___block_invoke;
  v20[3] = &unk_1E7736CD8;
  v22 = (a4 - 1) < 2;
  v21 = v7;
  v23 = a4 != 2;
  v16 = v7;
  v17 = [v6 sortedArrayUsingComparator:v20];

  return v17;
}

uint64_t __54__PXSortOnceCollectionAction_collections_sortedByTag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uuid];
  v8 = [v6 uuid];
  v9 = v8;
  v10 = *(a1 + 40) != 1 || v7 == 0;
  v31 = v6;
  if (v10)
  {
    v11 = 0;
    v15 = v8 != 0;
    if (*(a1 + 40))
    {
      v12 = 0;
      if (!v8)
      {
        goto LABEL_34;
      }

      goto LABEL_12;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_34;
  }

  v13 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v14 = v13;
  v15 = v9 != 0;
  if (*(a1 + 40) != 1 || !v9)
  {
    v11 = 0;
    if (v13)
    {
      v17 = -1;
      goto LABEL_49;
    }

    goto LABEL_22;
  }

  v11 = v13;
LABEL_12:
  v16 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v12 = v16;
  if (v11 && v16)
  {
    if (*(a1 + 41))
    {
      [v11 startDate];
    }

    else
    {
      [v11 endDate];
    }
    v18 = ;
    v19 = v5;
    if (*(a1 + 41))
    {
      [v12 startDate];
    }

    else
    {
      [v12 endDate];
    }
    v20 = ;
    v17 = [v18 compare:v20];

    if (v17)
    {
      v14 = v11;
      v11 = v12;
      v5 = v19;
      goto LABEL_49;
    }

    v15 = 1;
    v5 = v19;
    v6 = v31;
    goto LABEL_34;
  }

  if (v16)
  {
    if (v11)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_31;
  }

  if (v11)
  {
    v17 = -1;
LABEL_31:
    v14 = v11;
    v11 = v16;
    goto LABEL_49;
  }

  v15 = 1;
  v11 = 0;
LABEL_34:
  v21 = [v5 localizedTitle];
  v22 = [v6 localizedTitle];
  v23 = v22;
  if (v21 && v22)
  {
    v24 = [v21 length];
    v25 = [MEMORY[0x1E695DF58] currentLocale];
    v17 = [v21 compare:v23 options:577 range:0 locale:{v24, v25}];
  }

  else if (v21)
  {
    v17 = -1;
  }

  else
  {
    v17 = v22 != 0;
  }

  if (v17)
  {
    v26 = 1;
  }

  else
  {
    v26 = v7 == 0;
  }

  v27 = !v26;
  if ((v27 & v15) == 1)
  {
    v17 = [v7 compare:v9];
  }

  v14 = v11;
  v11 = v12;
  v5 = v30;
LABEL_49:
  if (*(a1 + 41))
  {
    v28 = v17;
  }

  else
  {
    v28 = -v17;
  }

  return v28;
}

+ (id)assetDateIntervalOfCollection:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [a1 makeFetchOptionsWithPhotoLibrary:v5];

  if (![v4 canContainAssets])
  {
    if ([v4 canContainCollections])
    {
      v12 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v4 options:v6];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v38 = v6;
        v39 = v4;
        v14 = 0;
        v11 = 0;
        v17 = *v41;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = [a1 assetDateIntervalOfCollection:{*(*(&v40 + 1) + 8 * i), v38, v39}];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 startDate];
              v22 = v21;
              if (!v11 || [v21 compare:v11] == -1)
              {
                v23 = v22;

                v11 = v23;
              }

              v24 = [v20 endDate];
              v25 = v24;
              if (!v14 || [v24 compare:v14] == 1)
              {
                v26 = v25;
                v27 = v14;
                v28 = v16;
                v29 = v11;
                v30 = v17;
                v31 = a1;
                v32 = v12;
                v33 = v26;

                v34 = v33;
                v12 = v32;
                a1 = v31;
                v17 = v30;
                v11 = v29;
                v16 = v28;
                v14 = v34;
              }
            }
          }

          v16 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v16);
        v6 = v38;
        v4 = v39;
        goto LABEL_20;
      }
    }

    v11 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v45[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  [v6 setSortDescriptors:v8];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v6];
  v10 = [v9 firstObject];
  v11 = [v10 creationDate];

  v12 = v9;
  v13 = [v9 lastObject];
  v14 = [v13 creationDate];

LABEL_20:
  if (v11 && v14)
  {
    v35 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v14];
LABEL_25:
    v36 = v35;
    goto LABEL_31;
  }

  if (v11)
  {
    v35 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 duration:0.0];
    goto LABEL_25;
  }

  if (v14)
  {
    v36 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v14 duration:0.0];
    v11 = 0;
    goto LABEL_31;
  }

  v11 = 0;
LABEL_30:
  v36 = 0;
LABEL_31:

  return v36;
}

+ (id)makeFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludeUserSmartAlbums:1];
  [v3 setWantsIncrementalChangeDetails:0];

  return v3;
}

@end