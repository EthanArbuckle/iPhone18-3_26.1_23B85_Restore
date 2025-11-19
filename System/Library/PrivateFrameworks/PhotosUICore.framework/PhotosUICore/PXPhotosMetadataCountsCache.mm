@interface PXPhotosMetadataCountsCache
- (PXPhotosMetadataCountsCache)initWithAssetCounts:(id *)a3 guestAssetCounts:(id *)a4;
@end

@implementation PXPhotosMetadataCountsCache

- (PXPhotosMetadataCountsCache)initWithAssetCounts:(id *)a3 guestAssetCounts:(id *)a4
{
  v9.receiver = self;
  v9.super_class = PXPhotosMetadataCountsCache;
  result = [(PXPhotosMetadataCountsCache *)&v9 init];
  if (result)
  {
    v7 = *&a3->var0;
    result->_assetCounts.othersCount = a3->var2;
    *&result->_assetCounts.photosCount = v7;
    v8 = *&a4->var0;
    result->_guestAssetCounts.othersCount = a4->var2;
    *&result->_guestAssetCounts.photosCount = v8;
  }

  return result;
}

@end