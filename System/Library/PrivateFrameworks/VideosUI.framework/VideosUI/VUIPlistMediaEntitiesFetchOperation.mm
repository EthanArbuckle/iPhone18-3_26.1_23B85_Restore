@interface VUIPlistMediaEntitiesFetchOperation
- (VUIPlistMediaEntitiesFetchOperation)init;
- (VUIPlistMediaEntitiesFetchOperation)initWithMediaLibrary:(id)library requests:(id)requests;
- (id)_collectionsFetchResponseWithRequest:(id)request error:(id *)error;
- (id)_fetchResponseWithMediaEntities:(id)entities request:(id)request;
- (id)_itemsFetchResponseWithRequest:(id)request error:(id *)error;
- (id)_mediaEntityKindForRequest:(id)request;
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

- (VUIPlistMediaEntitiesFetchOperation)initWithMediaLibrary:(id)library requests:(id)requests
{
  libraryCopy = library;
  requestsCopy = requests;
  v9 = requestsCopy;
  if (libraryCopy)
  {
    if (requestsCopy)
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
    vui_deepCopy = [v9 vui_deepCopy];
    requests = v10->_requests;
    v10->_requests = vui_deepCopy;

    objc_storeStrong(&v10->_mediaLibrary, library);
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
  selfCopy = self;
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
        mediaEntityTypes = [v11 mediaEntityTypes];
        allObjects = [mediaEntityTypes allObjects];
        firstObject = [allObjects firstObject];
        subtype = [firstObject subtype];

        if (subtype == 1)
        {
          v20 = v9;
          v16 = &v20;
          v17 = [(VUIPlistMediaEntitiesFetchOperation *)selfCopy _collectionsFetchResponseWithRequest:v11 error:&v20];
          v3 = v10;
        }

        else
        {
          v3 = v10;
          if (subtype)
          {
            v6 = v9;
LABEL_16:

            v3 = 0;
            goto LABEL_17;
          }

          v21 = v9;
          v16 = &v21;
          v17 = [(VUIPlistMediaEntitiesFetchOperation *)selfCopy _itemsFetchResponseWithRequest:v11 error:&v21];
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

  [(VUIPlistMediaEntitiesFetchOperation *)selfCopy setResponses:v3];
  [(VUIPlistMediaEntitiesFetchOperation *)selfCopy setError:v6];
  [(VUIAsynchronousOperation *)selfCopy finishExecutionIfPossible];
}

- (id)_mediaEntityKindForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy _isItemsFetch])
  {
    v4 = VUIPlistMediaItemKind();
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([requestCopy _isShowsFetch])
  {
    v4 = VUIPlistShowMediaKind();
    goto LABEL_7;
  }

  if ([requestCopy _isSeasonsFetch])
  {
    v4 = VUIPlistSeasonMediaKind();
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to determine the VUIMediaEntityKind to use for this request: %@", requestCopy}];
  v5 = 0;
LABEL_8:

  return v5;
}

- (id)_itemsFetchResponseWithRequest:(id)request error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  selfCopy = self;
  mediaLibrary = [(VUIPlistMediaEntitiesFetchOperation *)self mediaLibrary];
  database = [mediaLibrary database];
  mediaEntityTypes = [requestCopy mediaEntityTypes];
  allObjects = [mediaEntityTypes allObjects];
  firstObject = [allObjects firstObject];

  v11 = +[VUIMediaEntityType movie];

  v27 = firstObject;
  if (firstObject == v11)
  {
    movies = [database movies];
  }

  else
  {
    v12 = +[VUIMediaEntityType movieRental];

    if (firstObject == v12)
    {
      movies = [database movieRentals];
    }

    else
    {
      v13 = +[VUIMediaEntityType homeVideo];

      if (firstObject == v13)
      {
        movies = [database homeVideos];
      }

      else
      {
        v14 = +[VUIMediaEntityType episode];

        if (firstObject != v14)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media entity type!"];
          v15 = 0;
          goto LABEL_11;
        }

        movies = [database episodes];
      }
    }
  }

  v15 = movies;
LABEL_11:
  v29 = database;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  properties = [requestCopy properties];
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

        v24 = [[VUIPlistMediaItem alloc] initWithMediaLibrary:mediaLibrary databaseItem:*(*(&v30 + 1) + 8 * i) requestedProperties:properties];
        [v17 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  v25 = [(VUIPlistMediaEntitiesFetchOperation *)selfCopy _fetchResponseWithMediaEntities:v17 request:requestCopy];

  return v25;
}

- (id)_collectionsFetchResponseWithRequest:(id)request error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  mediaLibrary = [(VUIPlistMediaEntitiesFetchOperation *)self mediaLibrary];
  database = [mediaLibrary database];
  properties = [requestCopy properties];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mediaEntityTypes = [requestCopy mediaEntityTypes];
  allObjects = [mediaEntityTypes allObjects];
  firstObject = [allObjects firstObject];

  v13 = +[VUIMediaEntityType show];

  if (firstObject == v13)
  {
    v29 = firstObject;
    selfCopy2 = self;
    v31 = database;
    shows = [database shows];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [shows countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(shows);
          }

          v20 = [[VUIPlistShowMediaCollection alloc] initWithMediaLibrary:mediaLibrary databaseShow:*(*(&v36 + 1) + 8 * i) requestedProperties:properties];
          [v9 addObject:v20];
        }

        v17 = [shows countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = +[VUIMediaEntityType season];

    if (firstObject != v14)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media entity type!"];
      goto LABEL_20;
    }

    v29 = firstObject;
    selfCopy2 = self;
    v31 = database;
    shows = [database seasons];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [shows countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(shows);
          }

          v25 = [[VUIPlistSeasonMediaCollection alloc] initWithMediaLibrary:mediaLibrary databaseSeason:*(*(&v32 + 1) + 8 * j) requestedProperties:properties];
          [v9 addObject:v25];
        }

        v22 = [shows countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }
  }

  self = selfCopy2;
  database = v31;
  firstObject = v29;
LABEL_20:
  v26 = [v9 copy];
  v27 = [(VUIPlistMediaEntitiesFetchOperation *)self _fetchResponseWithMediaEntities:v26 request:requestCopy];

  return v27;
}

- (id)_fetchResponseWithMediaEntities:(id)entities request:(id)request
{
  entitiesCopy = entities;
  requestCopy = request;
  predicate = [requestCopy predicate];
  v9 = entitiesCopy;
  v10 = v9;
  v11 = v9;
  if (predicate)
  {
    v11 = [v9 filteredArrayUsingPredicate:predicate];
  }

  v33 = v10;
  v12 = [(VUIPlistMediaEntitiesFetchOperation *)self _mediaEntityKindForRequest:requestCopy];
  v13 = [requestCopy _manualSortDescriptorsWithMediaEntityKind:v12 propertiesRequiredForSort:0];
  v14 = v11;
  v15 = v14;
  v16 = v14;
  if (v13)
  {
    v16 = [v14 sortedArrayUsingDescriptors:v13];
  }

  v29 = v13;
  v17 = [requestCopy _sortIndexPropertyKeyWithMediaEntityKind:v12];
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
  groupingKeyPath = [requestCopy groupingKeyPath];
  v32 = predicate;
  if (groupingKeyPath)
  {
    groupingSortComparator = [requestCopy groupingSortComparator];
    v20 = [VUIMediaLibraryUtilities groupingForMediaEntities:v16 groupingKeyPath:groupingKeyPath groupingSortComparator:groupingSortComparator performDefaultSort:1 sortIndexPropertyKey:v17];

    if ([requestCopy _shouldGenerateGroupingSortIndexes])
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
  mediaEntityTypes = [requestCopy mediaEntityTypes];
  allObjects = [mediaEntityTypes allObjects];
  firstObject = [allObjects firstObject];
  -[VUIMediaEntityFetchResponse setMediaEntitySubtype:](v22, "setMediaEntitySubtype:", [firstObject subtype]);

  [(VUIMediaEntityFetchResponse *)v22 setMediaEntities:v16];
  [(VUIMediaEntityFetchResponse *)v22 setSortIndexes:v28];
  [(VUIMediaEntityFetchResponse *)v22 setGrouping:v20];
  [(VUIMediaEntityFetchResponse *)v22 setGroupingSortIndexes:v21];

  return v22;
}

@end