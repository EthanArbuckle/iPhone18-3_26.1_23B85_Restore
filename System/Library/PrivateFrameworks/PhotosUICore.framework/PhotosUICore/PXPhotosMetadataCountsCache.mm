@interface PXPhotosMetadataCountsCache
- (PXPhotosMetadataCountsCache)initWithAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts;
@end

@implementation PXPhotosMetadataCountsCache

- (PXPhotosMetadataCountsCache)initWithAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts
{
  v9.receiver = self;
  v9.super_class = PXPhotosMetadataCountsCache;
  result = [(PXPhotosMetadataCountsCache *)&v9 init];
  if (result)
  {
    v7 = *&counts->var0;
    result->_assetCounts.othersCount = counts->var2;
    *&result->_assetCounts.photosCount = v7;
    v8 = *&assetCounts->var0;
    result->_guestAssetCounts.othersCount = assetCounts->var2;
    *&result->_guestAssetCounts.photosCount = v8;
  }

  return result;
}

@end