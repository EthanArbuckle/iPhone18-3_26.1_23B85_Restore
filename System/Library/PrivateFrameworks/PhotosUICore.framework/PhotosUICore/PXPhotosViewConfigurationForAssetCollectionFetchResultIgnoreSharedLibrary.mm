@interface PXPhotosViewConfigurationForAssetCollectionFetchResultIgnoreSharedLibrary
@end

@implementation PXPhotosViewConfigurationForAssetCollectionFetchResultIgnoreSharedLibrary

void ___PXPhotosViewConfigurationForAssetCollectionFetchResultIgnoreSharedLibrary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 32))
  {
    [v3 setPhotoLibrary:?];
    v3 = v10;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = [v3 photoLibrary];
  v7 = [PXContentFilterState defaultFilterStateForContainerCollection:v5 photoLibrary:v6];

  v8 = [v7 predicateForUseCase:v4];
  [v10 setFilterPredicate:v8];

  [v10 setIgnoreSharedLibraryFilters:*(a1 + 65)];
  if (*(a1 + 65) == 1)
  {
    [v10 setLibraryFilterState:0];
    [v10 setLibraryFilter:0];
  }

  if (*(a1 + 48))
  {
    v9 = [PXPeopleUtilities peopleArrayFromFastEnumeration:?];
    [v10 setFilterPersons:v9];
  }

  else
  {
    [v10 setFilterPersons:?];
  }

  [v10 setFilterSocialGroup:*(a1 + 56)];
}

PXPhotoKitAssetsDataSourceManager *___PXPhotosViewConfigurationForAssetCollectionFetchResultIgnoreSharedLibrary_block_invoke_2(uint64_t a1)
{
  v2 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:*(a1 + 32) containerCollection:*(a1 + 40) options:*(a1 + 80)];
  (*(*(a1 + 64) + 16))();
  [(PXPhotosDataSourceConfiguration *)v2 setFetchPropertySets:*(a1 + 48)];
  [(PXPhotosDataSourceConfiguration *)v2 setExistingKeyAssetsFetchResults:*(a1 + 56)];
  [(PXPhotosDataSourceConfiguration *)v2 setWantsCurationByDefault:*(a1 + 88)];
  [(PXPhotosDataSourceConfiguration *)v2 setAssetContainerProvider:*(a1 + 72)];
  [(PXPhotosDataSourceConfiguration *)v2 setReverseSortOrder:*(a1 + 89)];
  v3 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v2];
  v4 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v3];

  return v4;
}

@end