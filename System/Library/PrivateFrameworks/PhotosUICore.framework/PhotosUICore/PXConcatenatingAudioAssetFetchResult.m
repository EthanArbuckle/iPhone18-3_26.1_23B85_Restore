@interface PXConcatenatingAudioAssetFetchResult
@end

@implementation PXConcatenatingAudioAssetFetchResult

void __68___PXConcatenatingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___PXConcatenatingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke_2;
  v10[3] = &unk_1E7740F90;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = a4;
  [v6 enumerateObjectsUsingBlock:v10];

  objc_autoreleasePoolPop(v7);
}

uint64_t __68___PXConcatenatingAudioAssetFetchResult_enumerateObjectsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 48) = *a4;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __58___PXConcatenatingAudioAssetFetchResult_objectsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndex:a2];
  [v2 addObject:v3];
}

@end