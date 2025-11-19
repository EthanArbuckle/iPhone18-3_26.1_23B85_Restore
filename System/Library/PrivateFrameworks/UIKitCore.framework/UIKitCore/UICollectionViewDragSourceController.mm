@interface UICollectionViewDragSourceController
@end

@implementation UICollectionViewDragSourceController

void __82___UICollectionViewDragSourceController_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) indexPathsForSelectedItems];
  v2 = [v5 sortedArrayUsingSelector:sel_compare_];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    [(_UICollectionViewDragAndDropController *)v3 dragSourceController:v4 willBeginLiftForItemsAtIndexPaths:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __93___UICollectionViewDragSourceController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      v8 = WeakRetained;
      v6 = objc_loadWeakRetained(WeakRetained + 3);
      [(_UICollectionViewDragAndDropController *)v6 dragSourceController:v8 didCancelLiftForItemsAtIndexPaths:*(a1 + 32)];

      v7 = v8[4];
      v8[4] = 0;

      v5 = v8[5];
      v8[5] = 0;
    }

    else
    {
      if (a2)
      {
        goto LABEL_7;
      }

      v8 = WeakRetained;
      v5 = objc_loadWeakRetained(WeakRetained + 3);
      [(_UICollectionViewDragAndDropController *)v5 dragSourceController:v8 didCompleteLiftForItemsAtIndexPaths:*(a1 + 32)];
    }

    WeakRetained = v8;
  }

LABEL_7:
}

void __92___UICollectionViewDragSourceController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  v5[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  if (WeakRetained)
  {
    [WeakRetained _decrementSessionRefCount];
  }
}

void __95___UICollectionViewDragSourceController__addDragItemsToExistingSession_forDataSourceIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [(_UICollectionViewDragSourceController *)*(a1 + 32) dragState];
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  WeakRetained = 0;
  if (v3)
  {
LABEL_3:
    v8 = WeakRetained;
    v9 = v14;
    v10 = v6;
    v11 = [[_UICollectionViewSourcePrivateLocalObject alloc] initWithIndexPath:v10 collectionView:v8];

    [v9 _setPrivateLocalContext:v11];
    v12 = [v4 dragItemsWithRebasableIndexPaths];
    [v12 compact];

    v13 = [v4 dragItemsWithRebasableIndexPaths];
    [v13 addPointer:v9];
  }

LABEL_4:
}

@end