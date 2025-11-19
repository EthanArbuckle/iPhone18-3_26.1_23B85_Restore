@interface UICollectionViewMultiSelectController
@end

@implementation UICollectionViewMultiSelectController

void __60___UICollectionViewMultiSelectController__selectIndexPaths___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) collectionView];
        [v8 _multiSelectInteractionSelectItemAtIndexPath:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 40) collectionView];
  v10 = [v9 indexPathsForSelectedItems];
  v11 = [*(a1 + 40) selectionState];
  [v11 setAllSelectedIndexPaths:v10];
}

void __62___UICollectionViewMultiSelectController__deselectIndexPaths___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) collectionView];
        [v8 _deselectItemAtIndexPath:v7 animated:0 notifyDelegate:1 isUserInitiated:1];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 40) collectionView];
  v10 = [v9 indexPathsForSelectedItems];
  v11 = [*(a1 + 40) selectionState];
  [v11 setAllSelectedIndexPaths:v10];
}

void __104___UICollectionViewMultiSelectController_shouldBeginMultiSelectInteraction_ofType_atPoint_withVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _indexPathsWithinRect:{round(*(a1 + 48) + -0.5), round(*(a1 + 56) + -0.5), 1.0, 1.0}];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 0;
}

@end