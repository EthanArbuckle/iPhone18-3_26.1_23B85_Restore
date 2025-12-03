@interface PXPhotoKitCollectionMenuNode
+ (id)rootNodeForAssetCollectionsContainingAsset:(id)asset excludedAssetCollection:(id)collection;
- (NSArray)childNodes;
- (NSString)localizedTitle;
- (PXPhotoKitCollectionMenuNode)init;
- (PXPhotoKitCollectionMenuNode)initWithCollection:(id)collection;
- (void)addChildNode:(id)node;
- (void)sortChildNodes;
@end

@implementation PXPhotoKitCollectionMenuNode

- (void)sortChildNodes
{
  v24 = *MEMORY[0x1E69E9840];
  collection = [(PXPhotoKitCollectionMenuNode *)self collection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = collection;

    if (v4 && [(NSMutableDictionary *)self->_childNodesByLocalIdentifier count]>= 2)
    {
      photoLibrary = [v4 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v7 = MEMORY[0x1E696AE18];
      allKeys = [(NSMutableDictionary *)self->_childNodesByLocalIdentifier allKeys];
      v9 = [v7 predicateWithFormat:@"localIdentifier in (%@)", allKeys];
      [librarySpecificFetchOptions setPredicate:v9];

      v10 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v4 options:librarySpecificFetchOptions];
      [(NSMutableArray *)self->_childNodes removeAllObjects];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            childNodesByLocalIdentifier = self->_childNodesByLocalIdentifier;
            localIdentifier = [*(*(&v19 + 1) + 8 * v15) localIdentifier];
            v18 = [(NSMutableDictionary *)childNodesByLocalIdentifier objectForKey:localIdentifier];

            [(NSMutableArray *)self->_childNodes addObject:v18];
            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {

    v4 = 0;
  }
}

- (void)addChildNode:(id)node
{
  childNodesByLocalIdentifier = self->_childNodesByLocalIdentifier;
  nodeCopy = node;
  collection = [nodeCopy collection];
  localIdentifier = [collection localIdentifier];
  [(NSMutableDictionary *)childNodesByLocalIdentifier setObject:nodeCopy forKey:localIdentifier];

  [(NSMutableArray *)self->_childNodes addObject:nodeCopy];
}

- (NSArray)childNodes
{
  v2 = [(NSMutableArray *)self->_childNodes copy];

  return v2;
}

- (NSString)localizedTitle
{
  collection = [(PXPhotoKitCollectionMenuNode *)self collection];
  localizedTitle = [collection localizedTitle];

  return localizedTitle;
}

- (PXPhotoKitCollectionMenuNode)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionMenuNode.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXPhotoKitCollectionMenuNode init]"}];

  abort();
}

- (PXPhotoKitCollectionMenuNode)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = PXPhotoKitCollectionMenuNode;
  v6 = [(PXPhotoKitCollectionMenuNode *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    if ([collectionCopy canContainAssets])
    {
      v8 = @"rectangle.stack";
    }

    else
    {
      v8 = @"folder";
    }

    objc_storeStrong(&v7->_symbolName, v8);
    v9 = objc_opt_new();
    childNodes = v7->_childNodes;
    v7->_childNodes = v9;

    v11 = objc_opt_new();
    childNodesByLocalIdentifier = v7->_childNodesByLocalIdentifier;
    v7->_childNodesByLocalIdentifier = v11;
  }

  return v7;
}

+ (id)rootNodeForAssetCollectionsContainingAsset:(id)asset excludedAssetCollection:(id)collection
{
  v45 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  collectionCopy = collection;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v27 = librarySpecificFetchOptions;
  v10 = [MEMORY[0x1E6978760] fetchRootAlbumCollectionListWithOptions:librarySpecificFetchOptions];
  firstObject = [v10 firstObject];

  v26 = firstObject;
  v32 = [[self alloc] initWithCollection:firstObject];
  v12 = objc_opt_new();
  v28 = collectionCopy;
  v29 = assetCopy;
  [MEMORY[0x1E6978650] px_fetchContainingCollectionsForAsset:assetCopy excludedAssetCollection:collectionCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v33)
  {
    v31 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v13;
        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = v32;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = [v14 px_fetchAncestryIncludingRoot:0];
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          do
          {
            v20 = 0;
            v21 = v15;
            do
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v35 + 1) + 8 * v20);
              if ([v22 canContainCollections])
              {
                localIdentifier = [v22 localIdentifier];
                v15 = [v12 objectForKeyedSubscript:localIdentifier];

                if (v15)
                {
                  goto LABEL_16;
                }

                v15 = [[self alloc] initWithCollection:v22];
                localIdentifier2 = [v22 localIdentifier];
                [v12 setObject:v15 forKeyedSubscript:localIdentifier2];
              }

              else
              {
                v15 = [[self alloc] initWithCollection:v22];
              }

              [v21 addChildNode:v15];
LABEL_16:

              ++v20;
              v21 = v15;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v18);
        }

        v13 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v33);
  }

  return v32;
}

@end