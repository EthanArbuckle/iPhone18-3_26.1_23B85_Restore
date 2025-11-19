@interface PXDisplayAssetIndexSubfetchResult
@end

@implementation PXDisplayAssetIndexSubfetchResult

void *__52___PXDisplayAssetIndexSubfetchResult_indexOfObject___block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  if (result[6] == a2)
  {
    *(*(result[4] + 8) + 24) = *(*(result[5] + 8) + 24);
    *a3 = 1;
  }

  ++*(*(result[5] + 8) + 24);
  return result;
}

uint64_t __67___PXDisplayAssetIndexSubfetchResult_initWithFetchResult_indexSet___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  *v3 = a2;
  *(v2 + 24) = v3 + 1;
  return result;
}

@end