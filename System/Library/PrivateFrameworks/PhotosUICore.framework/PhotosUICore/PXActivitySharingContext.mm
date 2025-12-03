@interface PXActivitySharingContext
- (PXActivitySharingContext)init;
- (PXActivitySharingContext)initWithAssetCollection:(id)collection assetsDataSource:(id)source;
- (PXActivitySharingContext)initWithAssetCollection:(id)collection photosDataSource:(id)source;
@end

@implementation PXActivitySharingContext

- (PXActivitySharingContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXActivitySharingContext init]"}];

  abort();
}

- (PXActivitySharingContext)initWithAssetCollection:(id)collection assetsDataSource:(id)source
{
  collectionCopy = collection;
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetsDataSource", v14}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [sourceCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetsDataSource", v14, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  photosDataSource = [sourceCopy photosDataSource];
  v10 = [(PXActivitySharingContext *)self initWithAssetCollection:collectionCopy photosDataSource:photosDataSource];

  return v10;
}

- (PXActivitySharingContext)initWithAssetCollection:(id)collection photosDataSource:(id)source
{
  v23[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = PXActivitySharingContext;
  v9 = [(PXActivitySharingContext *)&v22 init];
  if (v9)
  {
    v10 = collectionCopy;
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXActivitySharingContext.m" lineNumber:21 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollection", v20, px_descriptionForAssertionMessage}];
      }
    }

    v11 = objc_alloc(MEMORY[0x1E69788E0]);
    v23[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    photoLibrary = [v10 photoLibrary];
    v14 = [v11 initWithObjects:v12 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:@"Share Sheet Photos Collection" registerIfNeeded:0];

    assetCollectionsFetchResult = v9->_assetCollectionsFetchResult;
    v9->_assetCollectionsFetchResult = v14;
    v16 = v14;

    objc_storeStrong(&v9->_photosDataSource, source);
  }

  return v9;
}

@end