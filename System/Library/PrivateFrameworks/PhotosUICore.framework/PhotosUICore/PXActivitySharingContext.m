@interface PXActivitySharingContext
- (PXActivitySharingContext)init;
- (PXActivitySharingContext)initWithAssetCollection:(id)a3 assetsDataSource:(id)a4;
- (PXActivitySharingContext)initWithAssetCollection:(id)a3 photosDataSource:(id)a4;
@end

@implementation PXActivitySharingContext

- (PXActivitySharingContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXActivitySharingContext init]"}];

  abort();
}

- (PXActivitySharingContext)initWithAssetCollection:(id)a3 assetsDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetsDataSource", v14}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXActivitySharingContext.m" lineNumber:30 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetsDataSource", v14, v16}];

    goto LABEL_6;
  }

LABEL_3:
  v9 = [v8 photosDataSource];
  v10 = [(PXActivitySharingContext *)self initWithAssetCollection:v7 photosDataSource:v9];

  return v10;
}

- (PXActivitySharingContext)initWithAssetCollection:(id)a3 photosDataSource:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PXActivitySharingContext;
  v9 = [(PXActivitySharingContext *)&v22 init];
  if (v9)
  {
    v10 = v7;
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v10 px_descriptionForAssertionMessage];
        [v18 handleFailureInMethod:a2 object:v9 file:@"PXActivitySharingContext.m" lineNumber:21 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollection", v20, v21}];
      }
    }

    v11 = objc_alloc(MEMORY[0x1E69788E0]);
    v23[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v13 = [v10 photoLibrary];
    v14 = [v11 initWithObjects:v12 photoLibrary:v13 fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:@"Share Sheet Photos Collection" registerIfNeeded:0];

    assetCollectionsFetchResult = v9->_assetCollectionsFetchResult;
    v9->_assetCollectionsFetchResult = v14;
    v16 = v14;

    objc_storeStrong(&v9->_photosDataSource, a4);
  }

  return v9;
}

@end