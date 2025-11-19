@interface TVCarouselView
@end

@implementation TVCarouselView

uint64_t __69___TVCarouselView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(a1 + 32) collectionToDatasourceIndexMap];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  v6 = MEMORY[0x277CBEB98];
  v7 = [*(*(a1 + 32) + 480) allValues];
  v8 = [v6 setWithArray:v7];

  [v5 minusSet:v8];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v10 = [v5 containsObject:v9];

  return v10;
}

uint64_t __74___TVCarouselView_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(*(a1 + 32) + 480) allValues];
  v4 = [v2 setWithArray:v3];

  v5 = MEMORY[0x277CBEB98];
  v6 = [*(a1 + 32) collectionToDatasourceIndexMap];
  v7 = [v6 allValues];
  v8 = [v5 setWithArray:v7];

  [v4 minusSet:v8];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v10 = [v4 containsObject:v9];

  return v10;
}

void __68___TVCarouselView__setContentOffsetForCollectionViewIndex_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collectionView];
  [v2 contentOffset];
  v4 = v3;

  [*(a1 + 32) _contentOffsetXForCollectionViewIndex:*(a1 + 40)];
  v6 = v5;
  v7 = [*(a1 + 32) _collectionView];
  [v7 setContentOffset:*(a1 + 48) animated:{v6, v4}];
}

void __94___TVCarouselView__updateCarouselWithDataSource_indicesToRemove_indicesToAdd_indicesToReload___block_invoke(id *a1)
{
  v2 = [a1[4] _collectionView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94___TVCarouselView__updateCarouselWithDataSource_indicesToRemove_indicesToAdd_indicesToReload___block_invoke_2;
  v8[3] = &unk_279D91AE0;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[8];
  [v2 performBatchUpdates:v8 completion:0];
}

void __94___TVCarouselView__updateCarouselWithDataSource_indicesToRemove_indicesToAdd_indicesToReload___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 480), *(*(a1 + 32) + 568));
  objc_storeStrong((*(a1 + 32) + 568), *(a1 + 40));
  v2 = [*(a1 + 32) _collectionView];
  [v2 deleteItemsAtIndexPaths:*(a1 + 48)];

  v3 = [*(a1 + 32) _collectionView];
  [v3 insertItemsAtIndexPaths:*(a1 + 56)];

  v4 = [*(a1 + 32) _collectionView];
  [v4 reloadItemsAtIndexPaths:*(a1 + 64)];
}

uint64_t __64___TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _contentOffsetXForCollectionViewIndex:*(a1 + 40)];
  v3 = v2;
  v4 = [*(a1 + 32) _collectionView];
  v5 = [*(a1 + 32) _collectionView];
  [v5 contentOffset];
  [v4 setContentOffset:0 animated:v3];

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  return [v6 _updateContentForNewCenterIndex:v7];
}

uint64_t __64___TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 40) inSection:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 440);
  *(v3 + 440) = v2;

  return MEMORY[0x2821F96F8]();
}

void __40___TVCarouselView__startAutoScrollTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x277CBEB88] currentRunLoop];
    v3 = [v2 currentMode];
    v4 = [v3 isEqualToString:*MEMORY[0x277D77228]];

    WeakRetained = v5;
    if ((v4 & 1) == 0)
    {
      [v5 _updateContentOffsetForFocusedIndex:objc_msgSend(v5 animated:{"_centerCollectionViewCellIndex") + 1, 1}];
      WeakRetained = v5;
    }
  }
}

void __39___TVCarouselView__stopAutoScrollTimer__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end