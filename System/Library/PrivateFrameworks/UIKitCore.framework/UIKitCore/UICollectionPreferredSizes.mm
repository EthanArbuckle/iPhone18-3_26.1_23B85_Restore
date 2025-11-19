@interface UICollectionPreferredSizes
@end

@implementation UICollectionPreferredSizes

void __90___UICollectionPreferredSizes_preferredSizesApplyingFrameOffset_supplementaryBaseOffsets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) rangeForElementKind:a2];
  if (v7)
  {
    v8 = v6 + v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[_UICollectionPreferredSizes alloc] initWithSizes:*(a3 + 16) indexes:0 supplementarySizesDict:v8 frameOffset:0 supplementaryBaseOffsets:?];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:a2];
}

void __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [[_UICollectionPreferredSize alloc] initWithOriginalSize:*(a3 + 56) fittingSize:*(a3 + 8) layoutSize:*(a3 + 16) additionalData:*(a3 + 24), *(a3 + 32)];
    *(v5 + 48) = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
}

void __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(_UICollectionPreferredSizes *)a3 copyByDirtyingPreferredSizes];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
}

void __46___UICollectionPreferredSizes_largestItemSize__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(_UICollectionPreferredSizes *)*(a1 + 32) objectAtIndexedSubscript:a2];
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0uLL;
  }

  *(*(*(a1 + 40) + 8) + 32) = vmaxnmq_f64(v4, *(*(*(a1 + 40) + 8) + 32));
}

@end