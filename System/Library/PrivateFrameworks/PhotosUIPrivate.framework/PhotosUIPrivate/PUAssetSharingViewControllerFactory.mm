@interface PUAssetSharingViewControllerFactory
+ (id)makeSharingViewControllerWithAssets:(id)a3;
@end

@implementation PUAssetSharingViewControllerFactory

+ (id)makeSharingViewControllerWithAssets:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC90];
  v4 = a3;
  v5 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
  v6 = [v4 objectsAtIndexes:v5];

  v7 = PXMap();

  v8 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v7 title:0];
  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v8 options:0];
  v10 = MEMORY[0x1E6978650];
  v11 = MEMORY[0x1E6978760];
  v27[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v13 = [v11 transientCollectionListWithCollections:v12 title:0];
  v14 = [v10 fetchCollectionsInCollectionList:v13 options:0];

  v15 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  [(PUPhotoSelectionManager *)v15 selectAssetsAtIndexes:v16 inAssetCollection:v8];

  v17 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:v14 selectionManager:v15];
  v25 = v8;
  v26 = v9;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [(PUActivitySharingConfiguration *)v17 setAssetsFetchResultsByAssetCollection:v18];

  v19 = objc_alloc(MEMORY[0x1E69C3870]);
  v20 = [objc_alloc(MEMORY[0x1E69C3878]) initWithAssetCollection:v8 options:0];
  v21 = [v19 initWithPhotosDataSourceConfiguration:v20];
  [(PUActivitySharingConfiguration *)v17 setPhotosDataSource:v21];

  v22 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v17];
  v23 = [(PUActivitySharingController *)v22 activityViewController];

  return v23;
}

id __75__PUAssetSharingViewControllerFactory_makeSharingViewControllerWithAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end