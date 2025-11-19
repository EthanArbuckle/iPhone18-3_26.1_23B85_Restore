@interface PUPXSharePresentation
- (id)createActivitySharingControllerWithContext:(id)a3;
- (id)createActivitySharingControllerWithContext:(id)a3 selectedAssetIndexSet:(id)a4;
@end

@implementation PUPXSharePresentation

- (id)createActivitySharingControllerWithContext:(id)a3 selectedAssetIndexSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  if ([v6 count])
  {
    v8 = [v5 assetCollectionsFetchResult];
    v9 = [v8 firstObject];
    [(PUPhotoSelectionManager *)v7 selectAssetsAtIndexes:v6 inAssetCollection:v9];
  }

  v10 = [v5 assetCollectionsFetchResult];
  v11 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:v10 selectionManager:v7];
  v12 = [v5 activities];
  [(PUActivitySharingConfiguration *)v11 setActivities:v12];

  v13 = [v5 excludedActivityTypes];
  [(PUActivitySharingConfiguration *)v11 setExcludedActivityTypes:v13];

  v14 = [v5 keyAsset];
  [(PUActivitySharingConfiguration *)v11 setKeyAsset:v14];

  v15 = [v5 person];
  [(PUActivitySharingConfiguration *)v11 setPerson:v15];

  -[PUActivitySharingConfiguration setSourceOrigin:](v11, "setSourceOrigin:", [v5 sourceOrigin]);
  v16 = [v5 photosDataSource];
  [(PUActivitySharingConfiguration *)v11 setPhotosDataSource:v16];

  v17 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v11];

  return v17;
}

- (id)createActivitySharingControllerWithContext:(id)a3
{
  v4 = MEMORY[0x1E696AC90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PUPXSharePresentation *)self createActivitySharingControllerWithContext:v5 selectedAssetIndexSet:v6];

  return v7;
}

@end