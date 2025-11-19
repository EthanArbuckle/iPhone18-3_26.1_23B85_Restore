@interface PXArrayChangeDetails
@end

@implementation PXArrayChangeDetails

void __94__PXArrayChangeDetails_PhotoKit__changeDetailsFromFetchResultChangeDetails_originatingChange___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] objectIDAtIndex:a2];
  if (v4)
  {
    v6 = v4;
    v5 = [a1[5] contentOrThumbnailChangedForPHAssetOID:v4];
    v4 = v6;
    if (v5)
    {
      [a1[6] addIndex:a2];
      v4 = v6;
    }
  }
}

@end