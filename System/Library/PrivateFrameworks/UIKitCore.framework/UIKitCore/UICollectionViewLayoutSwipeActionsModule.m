@interface UICollectionViewLayoutSwipeActionsModule
@end

@implementation UICollectionViewLayoutSwipeActionsModule

void __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  _UIPerformImmediateCollectionViewLayoutAndVisibleCellsUpdate(*(a1 + 40));
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) indexPath];
  _UIUpdateMaskViewFrameForSwipedCellAtIndexPath(v2, v3);
}

uint64_t __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) unlockActionViewForAnimation:*(result + 40)];
  }

  return result;
}

void __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = [*(a1 + 40) indexPath];
  _UIInvalidateSwipeActionsLayoutForDecorationViewAtIndexPath(WeakRetained, v2);
}

uint64_t __105___UICollectionViewLayoutSwipeActionsModule__invalidateSwipeActionsLayoutRefreshingActiveConfigurations___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8))
  {
    v2 = result;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __105___UICollectionViewLayoutSwipeActionsModule__invalidateSwipeActionsLayoutRefreshingActiveConfigurations___block_invoke_2;
    v3[3] = &unk_1E70F35E0;
    v4 = *(result + 40);
    v3[4] = v1;
    result = [UIView performWithoutAnimation:v3];
    *(*(v2 + 32) + 8) &= ~1u;
  }

  return result;
}

uint64_t __105___UICollectionViewLayoutSwipeActionsModule__invalidateSwipeActionsLayoutRefreshingActiveConfigurations___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  if (v1 == 1)
  {
    return [v2 reconfigureActiveSwipeOccurrences];
  }

  else
  {
    return [v2 updateLayout];
  }
}

uint64_t __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke(uint64_t a1)
{
  __asm { FMOV            V2.2D, #0.5 }

  [*(a1 + 32) setCenter:{vaddq_f64(*(a1 + 40), vmulq_f64(*(a1 + 56), _Q2))}];
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 32);

  return [v11 setBounds:{v7, v8, v9, v10}];
}

uint64_t __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke_49(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) resetAnimated:0 completion:0];
  }

  return result;
}

@end