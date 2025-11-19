@interface UIDataSourceUpdateMap
@end

@implementation UIDataSourceUpdateMap

uint64_t __67___UIDataSourceUpdateMap_updateMapByRevertingUpdateWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 88);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

uint64_t __54___UIDataSourceUpdateMap__oldGlobalItemMapDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) finalSnapshot];
  v5 = *(a1 + 32);
  v6 = [v5 initialSnapshot];
  v7 = [v6 indexPathForGlobalIndex:a2];
  v8 = [v5 finalIndexPathForInitialIndexPath:v7];
  v9 = [v4 globalIndexForIndexPath:v8];

  return v9;
}

uint64_t __54___UIDataSourceUpdateMap__newGlobalItemMapDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) initialSnapshot];
  v5 = *(a1 + 32);
  v6 = [v5 finalSnapshot];
  v7 = [v6 indexPathForGlobalIndex:a2];
  v8 = [v5 initialIndexPathForFinalIndexPath:v7];
  v9 = [v4 globalIndexForIndexPath:v8];

  return v9;
}

void __51___UIDataSourceUpdateMap__findUpdateForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v11 = v7;
  if (v7)
  {
    v8 = *(v7 + 11);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 isEqual:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __45___UIDataSourceUpdateMap_submapBeforeUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 88);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[11];
  }

  v6 = v5;
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t __44___UIDataSourceUpdateMap_submapAfterUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 88);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[11];
  }

  v6 = v5;
  v7 = [v4 isEqual:v6];

  return v7;
}

@end