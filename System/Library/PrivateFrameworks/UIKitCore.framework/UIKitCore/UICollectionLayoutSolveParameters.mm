@interface UICollectionLayoutSolveParameters
@end

@implementation UICollectionLayoutSolveParameters

void __65___UICollectionLayoutSolveParameters_invalidatedAuxillaryOffsets__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    if (![a2 length])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_setIndexes_forElementKind_ object:v3 file:@"_UICollectionLayoutHelpers.m" lineNumber:1670 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:a3];
    [*(v3 + 8) setObject:v7 forKeyedSubscript:a2];
  }
}

@end