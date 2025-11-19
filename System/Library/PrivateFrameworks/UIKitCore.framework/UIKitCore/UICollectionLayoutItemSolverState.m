@interface UICollectionLayoutItemSolverState
@end

@implementation UICollectionLayoutItemSolverState

void *__63___UICollectionLayoutItemSolverState__generateGeometricIndexer__block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2[10];
    v4 = a2[11];
    v5 = a2[12];
    v6 = a2[13];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v3 = 0.0;
  }

  return [(_UIRTree *)*(a1 + 32) insertFrame:a3 forIndex:v3, v4, v5, v6];
}

@end