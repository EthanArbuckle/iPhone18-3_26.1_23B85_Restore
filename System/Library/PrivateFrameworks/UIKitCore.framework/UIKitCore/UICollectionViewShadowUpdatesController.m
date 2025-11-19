@interface UICollectionViewShadowUpdatesController
@end

@implementation UICollectionViewShadowUpdatesController

void __91___UICollectionViewShadowUpdatesController__findShadowUpdateForIdentifier_inShadowUpdates___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

void __85___UICollectionViewShadowUpdatesController__findInsertShadowUpdateForFinalIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if (![v12 updateAction])
  {
    v7 = [*(a1 + 32) updateMap];
    v8 = [(UICollectionViewUpdateItem *)v12 _indexPath];
    if (v12)
    {
      v9 = v12[11];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v7 finalIndexPathForIndexPath:v8 startingAtUpdateWithIdentifier:v10];

    if ([v11 isEqual:*(a1 + 40)])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

@end