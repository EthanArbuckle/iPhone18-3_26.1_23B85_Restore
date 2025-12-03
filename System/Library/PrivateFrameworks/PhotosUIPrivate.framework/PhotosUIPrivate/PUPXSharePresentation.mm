@interface PUPXSharePresentation
- (id)createActivitySharingControllerWithContext:(id)context;
- (id)createActivitySharingControllerWithContext:(id)context selectedAssetIndexSet:(id)set;
@end

@implementation PUPXSharePresentation

- (id)createActivitySharingControllerWithContext:(id)context selectedAssetIndexSet:(id)set
{
  contextCopy = context;
  setCopy = set;
  v7 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  if ([setCopy count])
  {
    assetCollectionsFetchResult = [contextCopy assetCollectionsFetchResult];
    firstObject = [assetCollectionsFetchResult firstObject];
    [(PUPhotoSelectionManager *)v7 selectAssetsAtIndexes:setCopy inAssetCollection:firstObject];
  }

  assetCollectionsFetchResult2 = [contextCopy assetCollectionsFetchResult];
  v11 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:assetCollectionsFetchResult2 selectionManager:v7];
  activities = [contextCopy activities];
  [(PUActivitySharingConfiguration *)v11 setActivities:activities];

  excludedActivityTypes = [contextCopy excludedActivityTypes];
  [(PUActivitySharingConfiguration *)v11 setExcludedActivityTypes:excludedActivityTypes];

  keyAsset = [contextCopy keyAsset];
  [(PUActivitySharingConfiguration *)v11 setKeyAsset:keyAsset];

  person = [contextCopy person];
  [(PUActivitySharingConfiguration *)v11 setPerson:person];

  -[PUActivitySharingConfiguration setSourceOrigin:](v11, "setSourceOrigin:", [contextCopy sourceOrigin]);
  photosDataSource = [contextCopy photosDataSource];
  [(PUActivitySharingConfiguration *)v11 setPhotosDataSource:photosDataSource];

  v17 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v11];

  return v17;
}

- (id)createActivitySharingControllerWithContext:(id)context
{
  v4 = MEMORY[0x1E696AC90];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  v7 = [(PUPXSharePresentation *)self createActivitySharingControllerWithContext:contextCopy selectedAssetIndexSet:v6];

  return v7;
}

@end