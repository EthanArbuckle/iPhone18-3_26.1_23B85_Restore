@interface VUIPlistMediaEntitiesFetchOperation
- (VUIPlistMediaEntitiesFetchOperation)init;
- (VUIPlistMediaEntitiesFetchOperation)initWithMediaLibrary:(id)a3 requests:(id)a4;
- (id)_collectionsFetchResponseWithRequest:(id)a3 error:(id *)a4;
- (id)_fetchResponseWithMediaEntities:(id)a3 request:(id)a4;
- (id)_itemsFetchResponseWithRequest:(id)a3 error:(id *)a4;
- (id)_mediaEntityKindForRequest:(id)a3;
- (void)executionDidBegin;
@end

@implementation VUIPlistMediaEntitiesFetchOperation

- (VUIPlistMediaEntitiesFetchOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIPlistMediaEntitiesFetchOperation)initWithMediaLibrary:(id)a3 requests:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requests"}];
LABEL_3:
  v14.receiver = self;
  v14.super_class = VUIPlistMediaEntitiesFetchOperation;
  v10 = [(VUIPlistMediaEntitiesFetchOperation *)&v14 init];
  if (v10)
  {
    v11 = [v9 vui_deepCopy];
    requests = v10->_requests;
    v10->_requests = v11;

    objc_storeStrong(&v10->_mediaLibrary, a3);
  }

  return v10;
}

- (void)executionDidBegin
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = self;
  obj = [(VUIPlistMediaEntitiesFetchOperation *)self requests];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        v10 = v3;
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v8);
        v12 = [v11 mediaEntityTypes];
        v13 = [v12 allObjects];
        v14 = [v13 firstObject];
        v15 = [v14 subtype];

        if (v15 == 1)
        {
          v20 = v9;
          v16 = &v20;
          v17 = [(VUIPlistMediaEntitiesFetchOperation *)v19 _collectionsFetchResponseWithRequest:v11 error:&v20];
          v3 = v10;
        }

        else
        {
          v3 = v10;
          if (v15)
          {
            v6 = v9;
LABEL_16:

            v3 = 0;
            goto LABEL_17;
          }

          v21 = v9;
          v16 = &v21;
          v17 = [(VUIPlistMediaEntitiesFetchOperation *)v19 _itemsFetchResponseWithRequest:v11 error:&v21];
        }

        v6 = *v16;

        if (!v17)
        {
          goto LABEL_16;
        }

        [v3 addObject:v17];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  [(VUIPlistMediaEntitiesFetchOperation *)v19 setResponses:v3];
  [(VUIPlistMediaEntitiesFetchOperation *)v19 setError:v6];
  [(VUIAsynchronousOperation *)v19 finishExecutionIfPossible];
}

- (id)_mediaEntityKindForRequest:(id)a3
{
  v3 = a3;
  if ([v3 _isItemsFetch])
  {
    v4 = VUIPlistMediaItemKind();
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([v3 _isShowsFetch])
  {
    v4 = VUIPlistShowMediaKind();
    goto LABEL_7;
  }

  if ([v3 _isSeasonsFetch])
  {
    v4 = VUIPlistSeasonMediaKind();
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to determine the VUIMediaEntityKind to use for this request: %@", v3}];
  v5 = 0;
LABEL_8:

  return v5;
}

- (id)_itemsFetchResponseWithRequest:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = self;
  v6 = [(VUIPlistMediaEntitiesFetchOperation *)self mediaLibrary];
  v7 = [v6 database];
  v8 = [v5 mediaEntityTypes];
  v9 = [v8 allObjects];
  v10 = [v9 firstObject];

  v11 = +[VUIMediaEntityType movie];

  v27 = v10;
  if (v10 == v11)
  {
    v16 = [v7 movies];
  }

  else
  {
    v12 = +[VUIMediaEntityType movieRental];

    if (v10 == v12)
    {
      v16 = [v7 movieRentals];
    }

    else
    {
      v13 = +[VUIMediaEntityType homeVideo];

      if (v10 == v13)
      {
        v16 = [v7 homeVideos];
      }

      else
      {
        v14 = +[VUIMediaEntityType episode];

        if (v10 != v14)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media entity type!"];
          v15 = 0;
          goto LABEL_11;
        }

        v16 = [v7 episodes];
      }
    }
  }

  v15 = v16;
LABEL_11:
  v29 = v7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [v5 properties];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[VUIPlistMediaItem alloc] initWithMediaLibrary:v6 databaseItem:*(*(&v30 + 1) + 8 * i) requestedProperties:v18];
        [v17 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  v25 = [(VUIPlistMediaEntitiesFetchOperation *)v28 _fetchResponseWithMediaEntities:v17 request:v5];

  return v25;
}

- (id)_collectionsFetchResponseWithRequest:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(VUIPlistMediaEntitiesFetchOperation *)self mediaLibrary];
  v7 = [v6 database];
  v8 = [v5 properties];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v5 mediaEntityTypes];
  v11 = [v10 allObjects];
  v12 = [v11 firstObject];

  v13 = +[VUIMediaEntityType show];

  if (v12 == v13)
  {
    v29 = v12;
    v30 = self;
    v31 = v7;
    v15 = [v7 shows];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [[VUIPlistShowMediaCollection alloc] initWithMediaLibrary:v6 databaseShow:*(*(&v36 + 1) + 8 * i) requestedProperties:v8];
          [v9 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = +[VUIMediaEntityType season];

    if (v12 != v14)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media entity type!"];
      goto LABEL_20;
    }

    v29 = v12;
    v30 = self;
    v31 = v7;
    v15 = [v7 seasons];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = [[VUIPlistSeasonMediaCollection alloc] initWithMediaLibrary:v6 databaseSeason:*(*(&v32 + 1) + 8 * j) requestedProperties:v8];
          [v9 addObject:v25];
        }

        v22 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }
  }

  self = v30;
  v7 = v31;
  v12 = v29;
LABEL_20:
  v26 = [v9 copy];
  v27 = [(VUIPlistMediaEntitiesFetchOperation *)self _fetchResponseWithMediaEntities:v26 request:v5];

  return v27;
}

- (id)_fetchResponseWithMediaEntities:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 predicate];
  v9 = v6;
  v10 = v9;
  v11 = v9;
  if (v8)
  {
    v11 = [v9 filteredArrayUsingPredicate:v8];
  }

  v33 = v10;
  v12 = [(VUIPlistMediaEntitiesFetchOperation *)self _mediaEntityKindForRequest:v7];
  v13 = [v7 _manualSortDescriptorsWithMediaEntityKind:v12 propertiesRequiredForSort:0];
  v14 = v11;
  v15 = v14;
  v16 = v14;
  if (v13)
  {
    v16 = [v14 sortedArrayUsingDescriptors:v13];
  }

  v29 = v13;
  v17 = [v7 _sortIndexPropertyKeyWithMediaEntityKind:v12];
  if (v17)
  {
    v27 = [VUIMediaLibraryUtilities sortIndexesForMediaEntities:v16 sortIndexPropertyKey:v17];
  }

  else
  {
    v27 = 0;
  }

  v30 = v15;
  v31 = v12;
  v18 = [v7 groupingKeyPath];
  v32 = v8;
  if (v18)
  {
    v19 = [v7 groupingSortComparator];
    v20 = [VUIMediaLibraryUtilities groupingForMediaEntities:v16 groupingKeyPath:v18 groupingSortComparator:v19 performDefaultSort:1 sortIndexPropertyKey:v17];

    if ([v7 _shouldGenerateGroupingSortIndexes])
    {
      v21 = [VUIMediaLibraryUtilities sortIndexesForGrouping:v20];
      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
LABEL_13:
  v22 = objc_alloc_init(VUIMediaEntityFetchResponse);
  v23 = [v7 mediaEntityTypes];
  v24 = [v23 allObjects];
  v25 = [v24 firstObject];
  -[VUIMediaEntityFetchResponse setMediaEntitySubtype:](v22, "setMediaEntitySubtype:", [v25 subtype]);

  [(VUIMediaEntityFetchResponse *)v22 setMediaEntities:v16];
  [(VUIMediaEntityFetchResponse *)v22 setSortIndexes:v28];
  [(VUIMediaEntityFetchResponse *)v22 setGrouping:v20];
  [(VUIMediaEntityFetchResponse *)v22 setGroupingSortIndexes:v21];

  return v22;
}

@end