@interface PHFetchResult
@end

@implementation PHFetchResult

void __81__PHFetchResult_PhotosUICore__px_subfetchResultWithObjectsAtIndexes_objectClass___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsIndex:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

unint64_t __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || a3 == 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a2 + (a3 >> 1);
  }

  [*(a1 + 32) addIndex:v7];
  result = [*(a1 + 32) count];
  if (result >= 0x3E8)
  {
    *a4 = 1;
  }

  return result;
}

void __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_198(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
  v6 = (*(v4 + 16))(v4, v5);
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  ++*(*(*(a1 + 56) + 8) + 24);
}

void __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_2_201(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2 - 1];
  v12 = [v6 objectForKeyedSubscript:v7];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2 + a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v12)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (*(*(a1 + 48) + 16))())
  {
    [*(a1 + 40) addIndexesInRange:{a2, a3}];
  }
}

uint64_t __67__PHFetchResult_PhotosUICore__px_indexOfSortedAssetNearestToAsset___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  result = [a3 timeIntervalSinceDate:a1[4]];
  v7 = fabs(v6);
  if (v7 < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[6] + 8) + 24) = a2;
    *(*(a1[5] + 8) + 24) = v7;
  }

  return result;
}

@end