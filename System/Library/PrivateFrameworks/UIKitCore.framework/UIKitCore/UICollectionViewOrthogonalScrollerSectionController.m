@interface UICollectionViewOrthogonalScrollerSectionController
@end

@implementation UICollectionViewOrthogonalScrollerSectionController

void __88___UICollectionViewOrthogonalScrollerSectionController_reconfigureScrollViewsForUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v14 integerValue];
  if (v6)
  {
    v7 = [v6 finalSectionIndexForInitialSectionIndex:v7];
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || ![*(a1 + 40) containsIndex:v7])
  {
    v10 = *(*(a1 + 56) + 32);
    if (v10)
    {
      [v10 addObject:v5];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
      v12 = *(a1 + 56);
      v13 = *(v12 + 32);
      *(v12 + 32) = v11;
    }
  }

  else
  {
    if (v5)
    {
      v5[271] = v7;
    }

    v8 = *(a1 + 48);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v8 setObject:v5 forKeyedSubscript:v9];
  }
}

@end