@interface PXMappingAudioAssetFetchResult
@end

@implementation PXMappingAudioAssetFetchResult

void __62___PXMappingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = (*(*(*(a1 + 32) + 16) + 16))();
  (*(v6 + 16))(v6, v7, a3, a4);
}

void __50___PXMappingAudioAssetFetchResult_containsObject___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = (*(*(a1[5] + 16) + 16))();
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end