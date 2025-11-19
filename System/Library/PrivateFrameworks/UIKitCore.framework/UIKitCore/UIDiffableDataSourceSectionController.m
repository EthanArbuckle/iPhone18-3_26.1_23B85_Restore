@interface UIDiffableDataSourceSectionController
@end

@implementation UIDiffableDataSourceSectionController

void __163___UIDiffableDataSourceSectionController___applySnapshot_toSection_animatingDifferences_viewPropertyAnimator_animationsProvider_isOnDiffableApplyQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = *(a1 + 48);
  v6 = WeakRetained;
  if (v2 == 1)
  {
    if (v3)
    {
      [WeakRetained _onApplyQueue_applyDifferencesFromSnapshot:v5 viewPropertyAnimator:*(a1 + 32) customAnimationsProvider:*(a1 + 56)];
    }

    else
    {
      [WeakRetained _onApplyQueue_applyDifferencesFromSnapshot:v5 animatingDifferences:*(a1 + 73) completion:*(a1 + 64)];
    }
  }

  else if (v3)
  {
    [WeakRetained _applyDifferencesFromSnapshot:v5 viewPropertyAnimator:*(a1 + 32) customAnimationsProvider:*(a1 + 56)];
  }

  else
  {
    [WeakRetained applyDifferencesFromSnapshot:v5 animatingDifferences:*(a1 + 73) completion:*(a1 + 64)];
  }
}

uint64_t __76___UIDiffableDataSourceSectionController__configureCell_forItem_inSnapshot___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _performDisclosureAction:a2 forItem:v5];

  return v7;
}

void __77___UIDiffableDataSourceSectionController__configureForItemRenderersIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained configureCell:v5 forItem:v8];
  }
}

@end