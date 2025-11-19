@interface UICollectionViewDragAndDropController
@end

@implementation UICollectionViewDragAndDropController

void __81___UICollectionViewDragAndDropController_beginReorderingForItemAtIndexPath_cell___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 _updateRowsAtIndexPaths:v2 updateAction:0];
}

void __79___UICollectionViewDragAndDropController_rebaseCellAppearanceStatesForUpdates___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = (*(*(a1 + 40) + 16))();
  if (v11)
  {
    [(_UICollectionViewSubviewCollection *)*(a1 + 32) setView:v10 ofKind:v9 inCategory:a2 atIndexPath:v12];
  }
}

void __71___UICollectionViewDragAndDropController__rollbackCurrentDropInsertion__block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 _updateRowsAtIndexPaths:v2 updateAction:1];
}

uint64_t __121___UICollectionViewDragAndDropController_dragSourceController_willBeginAnimatingCancelForItemsAtIndexPaths_withAnimator___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _cellAppearanceStateForIndexPath:{*(*(&v10 + 1) + 8 * v6), v10}];
        v8 = v7;
        if (v7)
        {
          [v7 setDragState:7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _updateCellAppearancesForItemsAtIndexPaths:*(a1 + 32)];
}

void __124___UICollectionViewDragAndDropController_insertPlaceholderForItemAtIndexPath_forDragItem_reuseIdentifier_cellUpdateHandler___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 _updateRowsAtIndexPaths:v2 updateAction:0];
}

void __71___UICollectionViewDragAndDropController_placeholderContextDidDismiss___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 _updateRowsAtIndexPaths:v2 updateAction:1];
}

void __101___UICollectionViewDragAndDropController_placeholderContext_didCommitInsertionWithDataSourceUpdates___block_invoke(id *a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101___UICollectionViewDragAndDropController_placeholderContext_didCommitInsertionWithDataSourceUpdates___block_invoke_2;
  v7[3] = &unk_1E7100388;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  *&v5 = a1[6];
  *(&v5 + 1) = v4;
  *&v6 = v2;
  *(&v6 + 1) = v3;
  v8 = v6;
  v9 = v5;
  [v2 performBatchUpdates:v7 completion:0];
}

void __101___UICollectionViewDragAndDropController_placeholderContext_didCommitInsertionWithDataSourceUpdates___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _isConnectedToDiffableDataSource])
  {
    v2 = [[UICollectionViewUpdateItem alloc] initWithAction:0 forIndexPath:*(a1 + 40)];
    [*(a1 + 32) setExpectedDiffableUpdateItem:v2];

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setExpectedDiffableUpdateItem:0];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v3 = *(a1 + 32);
  v5[0] = *(a1 + 48);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 _updateWithUpdates:v4 updateAction:0];
}

@end