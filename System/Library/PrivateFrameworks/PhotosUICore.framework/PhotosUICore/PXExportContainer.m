@interface PXExportContainer
+ (id)containersForRootCollection:(id)a3 destinationURL:(id)a4 uniquifier:(id)a5 includeRootName:(BOOL)a6;
+ (void)_traverseStartingAt:(id)a3 prefix:(id)a4 storeIn:(id)a5 uniquifier:(id)a6;
- (PHFetchResult)assets;
- (PXExportContainer)init;
- (id)_initWithCollection:(id)a3;
@end

@implementation PXExportContainer

- (PHFetchResult)assets
{
  if ([(PHCollection *)self->_collection canContainAssets])
  {
    v3 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_collection options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXExportContainer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_containersForRootCollection_destinationURL_);
  [v4 handleFailureInMethod:a2 object:self file:@"PXExportContainer.m" lineNumber:98 description:{@"Use class factory method %@", v5}];

  return 0;
}

- (id)_initWithCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXExportContainer;
  v6 = [(PXExportContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
  }

  return v7;
}

+ (void)_traverseStartingAt:(id)a3 prefix:(id)a4 storeIn:(id)a5 uniquifier:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[PXExportContainer alloc] _initWithCollection:v9];
  [v13 setUrl:v10];
  v27 = v13;
  [v11 addObject:v13];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v9;
  obj = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v9 options:0];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if ([v18 canContainCollections])
        {
          if ([v18 isTrashed])
          {
            continue;
          }

          v19 = [v18 localizedTitle];
          v20 = [PXDragAndDropUtilities sanitizedFileNameForString:v19];

          v21 = [v10 copy];
          v22 = [v21 URLByAppendingPathComponent:v20];

          if (v12)
          {
            v23 = [v12 ensureUniqueFileURL:v22];

            v22 = v23;
          }

          [a1 _traverseStartingAt:v18 prefix:v22 storeIn:v11 uniquifier:v12];
        }

        else
        {
          v20 = [[PXExportContainer alloc] _initWithCollection:v18];
          v24 = [v18 localizedTitle];
          v22 = [PXDragAndDropUtilities sanitizedFileNameForString:v24];

          v25 = [v10 URLByAppendingPathComponent:v22];
          if (v12)
          {
            v26 = [v12 ensureUniqueFileURL:v25];

            v25 = v26;
          }

          [v20 setUrl:v25];
          [v11 addObject:v20];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }
}

+ (id)containersForRootCollection:(id)a3 destinationURL:(id)a4 uniquifier:(id)a5 includeRootName:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v10 canContainAssets])
  {
    v14 = [[PXExportContainer alloc] _initWithCollection:v10];
    v11 = v11;
    v15 = v11;
    if (v6)
    {
      v16 = [v10 localizedTitle];
      v17 = [PXDragAndDropUtilities sanitizedFileNameForString:v16];

      v15 = [v11 URLByAppendingPathComponent:v17];

      if (v12)
      {
        v18 = [v12 ensureUniqueFileURL:v15];

        v15 = v18;
      }
    }

    [v14 setUrl:v15];
    [v13 addObject:v14];
  }

  else
  {
    if (v6)
    {
      v19 = [v10 localizedTitle];
      v20 = [PXDragAndDropUtilities sanitizedFileNameForString:v19];

      v21 = [v11 URLByAppendingPathComponent:v20];

      if (v12)
      {
        v22 = [v12 ensureUniqueFileURL:v21];

        v21 = v22;
      }

      v11 = v21;
    }

    [a1 _traverseStartingAt:v10 prefix:v11 storeIn:v13 uniquifier:v12];
  }

  return v13;
}

@end