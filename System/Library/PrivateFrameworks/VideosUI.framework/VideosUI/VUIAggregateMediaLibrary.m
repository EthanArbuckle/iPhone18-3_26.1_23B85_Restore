@interface VUIAggregateMediaLibrary
- (BOOL)isInitialUpdateInProgress;
- (BOOL)isUpdating;
- (VUIAggregateMediaLibrary)initWithManager:(id)a3 deviceMediaLibrary:(id)a4 sidebandMediaLibrary:(id)a5;
- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (id)_imageLoadParamsForImageLoaderObject:(id)a3;
- (id)_imageLoaderIdentifier;
- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3;
- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4;
- (id)title;
- (unint64_t)connectionState;
- (void)connectWithCompletionHandler:(id)a3 progressHandler:(id)a4;
- (void)dealloc;
- (void)updateFromCloudWithReason:(int64_t)a3;
- (void)updateProgressWithCompletionHandler:(id)a3;
@end

@implementation VUIAggregateMediaLibrary

- (VUIAggregateMediaLibrary)initWithManager:(id)a3 deviceMediaLibrary:(id)a4 sidebandMediaLibrary:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(VUIAggregateLibraryIdentifier);
  v17.receiver = self;
  v17.super_class = VUIAggregateMediaLibrary;
  v13 = [(VUIMediaLibrary *)&v17 initWithIdentifier:v12 type:0 manager:v11];

  if (v13)
  {
    objc_storeStrong(&v13->_deviceMediaLibrary, a4);
    objc_storeStrong(&v13->_sidebandMediaLibrary, a5);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v13 selector:sel__deviceMediaLibraryContentsDidChange_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v9];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v13 selector:sel__sidebandMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v10];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAggregateMediaLibrary;
  [(VUIMediaLibraryImageLoader *)&v4 dealloc];
}

- (BOOL)isUpdating
{
  v3 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  if ([v3 isUpdating])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VUIAggregateMediaLibrary *)self sidebandMediaLibrary];
    v4 = [v5 isUpdating];
  }

  return v4;
}

- (BOOL)isInitialUpdateInProgress
{
  v3 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  if ([v3 isInitialUpdateInProgress])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VUIAggregateMediaLibrary *)self sidebandMediaLibrary];
    v4 = [v5 isInitialUpdateInProgress];
  }

  return v4;
}

- (void)updateProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  [v5 updateProgressWithCompletionHandler:v4];
}

- (void)updateFromCloudWithReason:(int64_t)a3
{
  v4 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  [v4 updateFromCloudWithReason:a3];
}

- (id)title
{
  v2 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v3 = [v2 title];

  return v3;
}

- (unint64_t)connectionState
{
  v2 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v3 = [v2 connectionState];

  return v3;
}

- (void)connectWithCompletionHandler:(id)a3 progressHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  [v8 connectWithCompletionHandler:v7 progressHandler:v6];
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = [(VUIMediaLibrary *)self manager];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__36;
  v32[4] = __Block_byref_object_dispose__36;
  v33 = 0;
  dispatch_group_enter(v5);
  v8 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke;
  v28[3] = &unk_1E87371F8;
  v9 = v7;
  v29 = v9;
  v31 = v32;
  v10 = v5;
  v30 = v10;
  v11 = [v8 enqueueMediaItemEntityTypesFetchWithCompletionHandler:v28];

  v12 = [(VUIAggregateMediaLibrary *)self sidebandMediaLibrary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2;
  v24[3] = &unk_1E87371F8;
  v13 = v9;
  v25 = v13;
  v27 = v32;
  v14 = v10;
  v26 = v14;
  v15 = [v12 enqueueMediaItemEntityTypesFetchWithCompletionHandler:v24];

  v16 = [v6 completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E8737220;
  v21 = v13;
  v22 = v4;
  v23 = v32;
  v17 = v13;
  v18 = v4;
  dispatch_group_notify(v14, v16, block);

  _Block_object_dispose(v32, 8);

  return v11;
}

void __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void __82__VUIAggregateMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    v15 = a1;
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v9 = [v8 mediaItemEntityTypes];
          v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v18;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v18 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [v2 addObject:*(*(&v17 + 1) + 8 * j)];
              }

              v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v11);
          }

          v5 |= [v8 areLocalMediaItemsAvailable];
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v14 = objc_alloc_init(VUIMediaItemEntityTypesFetchResponse);
    [(VUIMediaItemEntityTypesFetchResponse *)v14 setMediaItemEntityTypes:v2];
    [(VUIMediaItemEntityTypesFetchResponse *)v14 setLocalMediaItemsAvailable:v5 & 1];
    (*(*(v15 + 40) + 16))();
  }
}

- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = [(VUIMediaLibrary *)self manager];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__36;
  v38[4] = __Block_byref_object_dispose__36;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__36;
  v36[4] = __Block_byref_object_dispose__36;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__36;
  v34[4] = __Block_byref_object_dispose__36;
  v35 = 0;
  dispatch_group_enter(v8);
  v10 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke;
  v30[3] = &unk_1E8737248;
  v32 = v38;
  v33 = v34;
  v11 = v8;
  v31 = v11;
  v12 = [v10 enqueueFetchRequests:v6 completionHandler:v30];

  dispatch_group_enter(v11);
  v13 = [(VUIAggregateMediaLibrary *)self sidebandMediaLibrary];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2;
  v26[3] = &unk_1E8737248;
  v28 = v36;
  v29 = v34;
  v14 = v11;
  v27 = v14;
  v15 = [v13 enqueueFetchRequests:v6 completionHandler:v26];

  v16 = [v9 completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3;
  block[3] = &unk_1E8737298;
  v23 = v36;
  v24 = v38;
  v21 = v6;
  v22 = v7;
  v25 = v34;
  v17 = v7;
  v18 = v6;
  dispatch_group_notify(v14, v16, block);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);

  return v12;
}

void __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8737270;
  v9 = *(a1 + 48);
  v7 = *(a1 + 32);
  v4 = v2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v6];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, *(*(*(a1 + 64) + 8) + 40));
  }
}

void __67__VUIAggregateMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v37 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v37 mediaEntities];
  if ([v6 count])
  {
    [v5 addObjectsFromArray:v6];
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count] > a3)
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:a3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 mediaEntities];
      if ([v9 count])
      {
        [v5 addObjectsFromArray:v9];
      }
    }
  }

  if ([*(a1 + 32) count] > a3)
  {
    v35 = v6;
    v36 = v5;
    v10 = v5;
    v11 = [*(a1 + 32) objectAtIndex:a3];
    v12 = [v11 range];
    v14 = v13;
    v15 = [v11 predicate];

    if (v15)
    {
      v16 = [v11 predicate];
      v17 = [v10 filteredArrayUsingPredicate:v16];

      v10 = v17;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL || !v14)
    {
      v18 = v10;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v12 < v12 + v14)
      {
        do
        {
          if (v12 >= [v10 count])
          {
            break;
          }

          v19 = [v10 objectAtIndex:v12];
          [v18 addObject:v19];

          ++v12;
          --v14;
        }

        while (v14);
      }
    }

    v20 = v18;
    v21 = VUISidebandMediaItemKind();
    if ([v11 _isItemsFetch])
    {
      v22 = VUISidebandMediaItemKind();
    }

    else if ([v11 _isShowsFetch])
    {
      v22 = VUISidebandSeriesMediaCollectionKind();
    }

    else
    {
      if (![v11 _isSeasonsFetch])
      {
        goto LABEL_26;
      }

      v22 = VUISidebandSeasonMediaCollectionKind();
    }

    v23 = v22;

    v21 = v23;
LABEL_26:
    v24 = [v11 _manualSortDescriptorsWithMediaEntityKind:v21 propertiesRequiredForSort:0];
    v25 = v20;
    if (v24)
    {
      v25 = [v20 sortedArrayUsingDescriptors:v24];
    }

    v26 = [v11 _sortIndexPropertyKeyWithMediaEntityKind:v21];
    v33 = v24;
    if (v26)
    {
      v27 = [VUIMediaLibraryUtilities sortIndexesForMediaEntities:v25 sortIndexPropertyKey:v26];
    }

    else
    {
      v27 = 0;
    }

    v34 = v20;
    v28 = [v11 groupingKeyPath];
    if (v28)
    {
      v29 = [v11 groupingSortComparator];
      v30 = [VUIMediaLibraryUtilities groupingForMediaEntities:v25 groupingKeyPath:v28 groupingSortComparator:v29 performDefaultSort:1 sortIndexPropertyKey:v26];

      if ([v11 _shouldGenerateGroupingSortIndexes])
      {
        v31 = [VUIMediaLibraryUtilities sortIndexesForGrouping:v30];
LABEL_36:
        v32 = objc_alloc_init(VUIMediaEntityFetchResponse);
        [(VUIMediaEntityFetchResponse *)v32 setMediaEntities:v25];
        [(VUIMediaEntityFetchResponse *)v32 setSortIndexes:v27];
        [(VUIMediaEntityFetchResponse *)v32 setGrouping:v30];
        [(VUIMediaEntityFetchResponse *)v32 setGroupingSortIndexes:v31];
        [*(a1 + 40) addObject:v32];

        v6 = v35;
        v5 = v36;
        goto LABEL_37;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    goto LABEL_36;
  }

LABEL_37:
}

- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(VUIMediaLibrary *)self manager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__VUIAggregateMediaLibrary_saveMediaEntity_completionHandler___block_invoke;
    v9[3] = &unk_1E872D7E0;
    v10 = v5;
    [v6 _enqueueCompletionQueueBlock:v9];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v7;
}

- (id)_imageLoaderIdentifier
{
  v2 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v3 = [v2 _imageLoaderIdentifier];

  return v3;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)a3
{
  v4 = a3;
  v5 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v6 = [v5 _imageLoadParamsForImageLoaderObject:v4];

  return v6;
}

- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(VUIAggregateMediaLibrary *)self deviceMediaLibrary];
  v11 = [v10 _imageLoadOperationWithParams:v9 scaleToSize:v5 cropToFit:{width, height}];

  return v11;
}

@end