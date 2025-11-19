@interface TVListViewController
@end

@implementation TVListViewController

uint64_t __59___TVListViewController_updateWithViewElement_cellMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v13 = v7;
    v7 = [v7 numberOfItems];
    v8 = v13;
    if (v7)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a3];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = v13;
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

void __76___TVListViewController_didUpdateCollectionViewByNeedingReload_focusUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 tv_associatedIKViewElement];
  v5 = [v6 appDocument];

  if (!v5)
  {
    [*(a1 + 32) addIndex:a3];
  }
}

void __46___TVListViewController__delayedUpdatePreview__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46___TVListViewController__delayedUpdatePreview__block_invoke_2;
  v2[3] = &unk_279D6E770;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

uint64_t __46___TVListViewController__delayedUpdatePreview__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained[169] isEqual:*(a1 + 32)];
    v3 = v5;
    if (WeakRetained)
    {
      WeakRetained = [v5 _updatedPreviewWithItemAtIndexPath:*(a1 + 32)];
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

@end