@interface TVShelfViewController
@end

@implementation TVShelfViewController

uint64_t __60___TVShelfViewController_updateWithViewElement_cellMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 attributes];
  v3 = [v2 objectForKeyedSubscript:@"prominent"];
  v4 = [v3 BOOLValue];

  return v4;
}

void __77___TVShelfViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) indexPathForSnappedContent];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x277D75D18];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __77___TVShelfViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v5[3] = &unk_279D6E2F8;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v4 performWithoutAnimation:v5];
  }
}

void __72___TVShelfViewController_updateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __72___TVShelfViewController_updateFocusInContext_withAnimationCoordinator___block_invoke_2;
  v2[3] = &unk_279D6E770;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __72___TVShelfViewController_updateFocusInContext_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) nextFocusedIndexPath];
  [WeakRetained _didSettleOnItemAtIndexPath:v2];
}

void __47___TVShelfViewController__delayedUpdatePreview__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47___TVShelfViewController__delayedUpdatePreview__block_invoke_2;
  v2[3] = &unk_279D6E770;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __47___TVShelfViewController__delayedUpdatePreview__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didSettleOnItemAtIndexPath:*(a1 + 32)];
}

@end