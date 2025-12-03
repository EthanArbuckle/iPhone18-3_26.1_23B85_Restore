@interface PXExportContainer
+ (id)containersForRootCollection:(id)collection destinationURL:(id)l uniquifier:(id)uniquifier includeRootName:(BOOL)name;
+ (void)_traverseStartingAt:(id)at prefix:(id)prefix storeIn:(id)in uniquifier:(id)uniquifier;
- (PHFetchResult)assets;
- (PXExportContainer)init;
- (id)_initWithCollection:(id)collection;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_containersForRootCollection_destinationURL_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXExportContainer.m" lineNumber:98 description:{@"Use class factory method %@", v5}];

  return 0;
}

- (id)_initWithCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXExportContainer;
  v6 = [(PXExportContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
  }

  return v7;
}

+ (void)_traverseStartingAt:(id)at prefix:(id)prefix storeIn:(id)in uniquifier:(id)uniquifier
{
  v36 = *MEMORY[0x1E69E9840];
  atCopy = at;
  prefixCopy = prefix;
  inCopy = in;
  uniquifierCopy = uniquifier;
  v13 = [[PXExportContainer alloc] _initWithCollection:atCopy];
  [v13 setUrl:prefixCopy];
  v27 = v13;
  [inCopy addObject:v13];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = atCopy;
  obj = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:atCopy options:0];
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

          localizedTitle = [v18 localizedTitle];
          v20 = [PXDragAndDropUtilities sanitizedFileNameForString:localizedTitle];

          v21 = [prefixCopy copy];
          v22 = [v21 URLByAppendingPathComponent:v20];

          if (uniquifierCopy)
          {
            v23 = [uniquifierCopy ensureUniqueFileURL:v22];

            v22 = v23;
          }

          [self _traverseStartingAt:v18 prefix:v22 storeIn:inCopy uniquifier:uniquifierCopy];
        }

        else
        {
          v20 = [[PXExportContainer alloc] _initWithCollection:v18];
          localizedTitle2 = [v18 localizedTitle];
          v22 = [PXDragAndDropUtilities sanitizedFileNameForString:localizedTitle2];

          v25 = [prefixCopy URLByAppendingPathComponent:v22];
          if (uniquifierCopy)
          {
            v26 = [uniquifierCopy ensureUniqueFileURL:v25];

            v25 = v26;
          }

          [v20 setUrl:v25];
          [inCopy addObject:v20];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }
}

+ (id)containersForRootCollection:(id)collection destinationURL:(id)l uniquifier:(id)uniquifier includeRootName:(BOOL)name
{
  nameCopy = name;
  collectionCopy = collection;
  lCopy = l;
  uniquifierCopy = uniquifier;
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([collectionCopy canContainAssets])
  {
    v14 = [[PXExportContainer alloc] _initWithCollection:collectionCopy];
    lCopy = lCopy;
    v15 = lCopy;
    if (nameCopy)
    {
      localizedTitle = [collectionCopy localizedTitle];
      v17 = [PXDragAndDropUtilities sanitizedFileNameForString:localizedTitle];

      v15 = [lCopy URLByAppendingPathComponent:v17];

      if (uniquifierCopy)
      {
        v18 = [uniquifierCopy ensureUniqueFileURL:v15];

        v15 = v18;
      }
    }

    [v14 setUrl:v15];
    [v13 addObject:v14];
  }

  else
  {
    if (nameCopy)
    {
      localizedTitle2 = [collectionCopy localizedTitle];
      v20 = [PXDragAndDropUtilities sanitizedFileNameForString:localizedTitle2];

      v21 = [lCopy URLByAppendingPathComponent:v20];

      if (uniquifierCopy)
      {
        v22 = [uniquifierCopy ensureUniqueFileURL:v21];

        v21 = v22;
      }

      lCopy = v21;
    }

    [self _traverseStartingAt:collectionCopy prefix:lCopy storeIn:v13 uniquifier:uniquifierCopy];
  }

  return v13;
}

@end