@interface UITableView
@end

@implementation UITableView

void __107__UITableView_VideosUI__vui_applyChangeSet_inSection_rowAnimation_updateDataSourceBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) deleteChange];
  [v3 _vui_applyDeleteChange:v4 inSection:*(a1 + 56) rowAnimation:*(a1 + 64)];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) insertChange];
  [v5 _vui_applyInsertChange:v6 inSection:*(a1 + 56) rowAnimation:*(a1 + 64)];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) moveChanges];
  [v7 _vui_applyMoveChanges:v8 inSection:*(a1 + 56) rowAnimation:*(a1 + 64)];
}

uint64_t __107__UITableView_VideosUI__vui_applyChangeSet_inSection_rowAnimation_updateDataSourceBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) updateChanges];
  [v2 _vui_applyUpdateChanges:v3 inSection:*(a1 + 56) rowAnimation:*(a1 + 64)];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __64__UITableView_VideosUI___vui_indexPathsWithIndexSet_andSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

@end