@interface PXSortOnceCollectionAction
+ (id)assetDateIntervalOfCollection:(id)collection;
+ (id)collections:(id)collections sortedByTag:(int64_t)tag;
+ (id)makeFetchOptionsWithPhotoLibrary:(id)library;
- (NSArray)sortedChildCollections;
- (PXSortOnceCollectionAction)initWithCollection:(id)collection sortType:(int64_t)type;
- (id)makeFetchOptions;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXSortOnceCollectionAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXSortOnceCollectionAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
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

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXSortOnceCollectionAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
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
    fetchedObjects = [(PHFetchResult *)self->_initialFetchResult fetchedObjects];
    v6 = [v4 collections:fetchedObjects sortedByTag:{-[PXSortOnceCollectionAction sortType](self, "sortType")}];
    v7 = self->_sortedChildCollections;
    self->_sortedChildCollections = v6;

    sortedChildCollections = self->_sortedChildCollections;
  }

  return sortedChildCollections;
}

- (PXSortOnceCollectionAction)initWithCollection:(id)collection sortType:(int64_t)type
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  v16.receiver = self;
  v16.super_class = PXSortOnceCollectionAction;
  v9 = [(PXPhotosAction *)&v16 initWithPhotoLibrary:photoLibrary];

  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    v9->_sortType = type;
    v10 = MEMORY[0x1E6978758];
    collection = [(PXSortOnceCollectionAction *)v9 collection];
    makeFetchOptions = [(PXSortOnceCollectionAction *)v9 makeFetchOptions];
    v13 = [v10 fetchCollectionsInCollectionList:collection options:makeFetchOptions];
    initialFetchResult = v9->_initialFetchResult;
    v9->_initialFetchResult = v13;
  }

  return v9;
}

- (id)makeFetchOptions
{
  v3 = objc_opt_class();
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v5 = [v3 makeFetchOptionsWithPhotoLibrary:photoLibrary];

  return v5;
}

+ (id)collections:(id)collections sortedByTag:(int64_t)tag
{
  v29 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  v7 = objc_opt_new();
  if ((tag - 1) <= 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = collectionsCopy;
    v8 = collectionsCopy;
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
          v14 = [self assetDateIntervalOfCollection:v13];
          uuid = [v13 uuid];
          [v7 setObject:v14 forKeyedSubscript:uuid];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    collectionsCopy = v19;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__PXSortOnceCollectionAction_collections_sortedByTag___block_invoke;
  v20[3] = &unk_1E7736CD8;
  v22 = (tag - 1) < 2;
  v21 = v7;
  v23 = tag != 2;
  v16 = v7;
  v17 = [collectionsCopy sortedArrayUsingComparator:v20];

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

+ (id)assetDateIntervalOfCollection:(id)collection
{
  v45[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  v6 = [self makeFetchOptionsWithPhotoLibrary:photoLibrary];

  if (![collectionCopy canContainAssets])
  {
    if ([collectionCopy canContainCollections])
    {
      v12 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:collectionCopy options:v6];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v38 = v6;
        v39 = collectionCopy;
        creationDate2 = 0;
        creationDate = 0;
        v17 = *v41;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = [self assetDateIntervalOfCollection:{*(*(&v40 + 1) + 8 * i), v38, v39}];
            v20 = v19;
            if (v19)
            {
              startDate = [v19 startDate];
              v22 = startDate;
              if (!creationDate || [startDate compare:creationDate] == -1)
              {
                v23 = v22;

                creationDate = v23;
              }

              endDate = [v20 endDate];
              v25 = endDate;
              if (!creationDate2 || [endDate compare:creationDate2] == 1)
              {
                v26 = v25;
                v27 = creationDate2;
                v28 = v16;
                v29 = creationDate;
                v30 = v17;
                selfCopy = self;
                v32 = v12;
                v33 = v26;

                v34 = v33;
                v12 = v32;
                self = selfCopy;
                v17 = v30;
                creationDate = v29;
                v16 = v28;
                creationDate2 = v34;
              }
            }
          }

          v16 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v16);
        v6 = v38;
        collectionCopy = v39;
        goto LABEL_20;
      }
    }

    creationDate = 0;
    creationDate2 = 0;
    goto LABEL_30;
  }

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v45[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  [v6 setSortDescriptors:v8];

  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:v6];
  firstObject = [v9 firstObject];
  creationDate = [firstObject creationDate];

  v12 = v9;
  lastObject = [v9 lastObject];
  creationDate2 = [lastObject creationDate];

LABEL_20:
  if (creationDate && creationDate2)
  {
    v35 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:creationDate endDate:creationDate2];
LABEL_25:
    v36 = v35;
    goto LABEL_31;
  }

  if (creationDate)
  {
    v35 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:creationDate duration:0.0];
    goto LABEL_25;
  }

  if (creationDate2)
  {
    v36 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:creationDate2 duration:0.0];
    creationDate = 0;
    goto LABEL_31;
  }

  creationDate = 0;
LABEL_30:
  v36 = 0;
LABEL_31:

  return v36;
}

+ (id)makeFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeUserSmartAlbums:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];

  return librarySpecificFetchOptions;
}

@end