@interface PXPhotosViewConfigurationWithPhotosDataSourceProvider
@end

@implementation PXPhotosViewConfigurationWithPhotosDataSourceProvider

PXPhotoKitAssetsDataSourceManager *___PXPhotosViewConfigurationWithPhotosDataSourceProvider_block_invoke(uint64_t a1)
{
  v2 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSourceProvider:*(a1 + 32)];
  [(PXPhotoKitAssetsDataSourceManager *)v2 setLibraryFilter:*(a1 + 48)];
  [(PXPhotoKitAssetsDataSourceManager *)v2 setIgnoreSharedLibraryFilters:*(a1 + 64)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PXPhotosViewConfigurationWithPhotosDataSourceProvider_block_invoke_2;
  v6[3] = &unk_1E774A6E0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [(PXPhotoKitAssetsDataSourceManager *)v2 performChanges:v6];

  return v2;
}

void ___PXPhotosViewConfigurationWithPhotosDataSourceProvider_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [PXContentFilterState defaultFilterStateForContainerCollection:0 photoLibrary:v3];
  v5 = [v6 predicateForUseCase:*(a1 + 40)];
  [v4 setFilterPredicate:v5];
}

@end