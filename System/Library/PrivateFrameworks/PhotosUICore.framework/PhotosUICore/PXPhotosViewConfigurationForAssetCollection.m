@interface PXPhotosViewConfigurationForAssetCollection
@end

@implementation PXPhotosViewConfigurationForAssetCollection

id ___PXPhotosViewConfigurationForAssetCollection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([v2 px_isRegularAlbum])
  {

LABEL_4:
    v4 = 32;
    goto LABEL_6;
  }

  v3 = [v2 px_isMemory];

  if (v3)
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_6:
  v5 = *(a1 + 64);
  v6 = v4 | 0x1010;
  if (v5 != 3)
  {
    if (v5 == 1)
    {
      v6 = v4 | 0x101010;
    }

    if (v5 == 2)
    {
      v4 += 4198416;
    }

    else
    {
      v4 = v6;
    }
  }

  LOWORD(v8) = *(a1 + 72);
  return [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:*(a1 + 32) existingAssetsFetchResult:*(a1 + 40) existingKeyAssetsFetchResult:*(a1 + 48) fetchPropertySets:*(a1 + 56) basePredicate:0 options:v4 ignoreSharedLibraryFilters:v8 reverseSortOrder:?];
}

@end