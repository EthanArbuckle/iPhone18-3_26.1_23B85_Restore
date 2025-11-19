@interface UICollectionView
@end

@implementation UICollectionView

void __136__UICollectionView_VideosUI___vui_applyChangeSet_inSection_updateDataSourceBlock_applyChangeBlock_shouldWrapInUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DF6A8]);
    v3 = [*(a1 + 32) insertChange];
    [v2 setInsertChange:v3];

    v4 = [*(a1 + 32) deleteChange];
    [v2 setDeleteChange:v4];

    v5 = [*(a1 + 32) moveChanges];
    [v2 setMoveChanges:v5];

    if (*(a1 + 72) == 1)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DF6A8]);
      v7 = objc_alloc(MEMORY[0x1E69DF6A0]);
      v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:*(a1 + 64)];
      v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:*(a1 + 64)];
      v10 = [v7 initWithChangeKind:4 sourceIndexes:v8 destinationIndexes:v9];

      v18[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v6 setUpdateChanges:v11];

      [v10 setUpdateChangeSet:v2];
      v2 = v6;
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) deleteChange];
  [v12 _vui_applyDeleteChange:v13 inSection:*(a1 + 64) applyChangeBlock:*(a1 + 56)];

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) insertChange];
  [v14 _vui_applyInsertChange:v15 inSection:*(a1 + 64) applyChangeBlock:*(a1 + 56)];

  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) moveChanges];
  [v16 _vui_applyMoveChanges:v17 inSection:*(a1 + 64) applyChangeBlock:*(a1 + 56)];
}

uint64_t __136__UICollectionView_VideosUI___vui_applyChangeSet_inSection_updateDataSourceBlock_applyChangeBlock_shouldWrapInUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) updateChanges];
    [v2 _vui_applyUpdateChanges:v3 inSection:*(a1 + 72) applyChangeBlock:*(a1 + 48) updateDataSourceBlock:*(a1 + 56)];
  }

  result = *(a1 + 64);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __69__UICollectionView_VideosUI___vui_indexPathsWithIndexSet_andSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

@end