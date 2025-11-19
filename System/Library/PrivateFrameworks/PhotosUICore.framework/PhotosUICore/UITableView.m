@interface UITableView
@end

@implementation UITableView

uint64_t __80__UITableView_PhotosUICore__px_performUpdatesForChangeDetails_dataSourceUpdate___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) deletedSections];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) deletedSections];
    [v3 deleteSections:v4 withRowAnimation:100];
  }

  v5 = [*(a1 + 32) insertedSections];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) insertedSections];
    [v6 insertSections:v7 withRowAnimation:100];
  }

  v8 = [*(a1 + 32) changedSections];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) changedSections];
    [v9 reloadSections:v10 withRowAnimation:100];
  }

  v11 = [*(a1 + 32) deletedItemsIndexPaths];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) deletedItemsIndexPaths];
    [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:0];
  }

  v14 = [*(a1 + 32) insertedItemsIndexPaths];

  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) insertedItemsIndexPaths];
    [v15 insertRowsAtIndexPaths:v16 withRowAnimation:0];
  }

  v17 = [*(a1 + 32) changedItemsIndexPaths];

  if (v17)
  {
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) changedItemsIndexPaths];
    [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:0];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__UITableView_PhotosUICore__px_performUpdatesForChangeDetails_dataSourceUpdate___block_invoke_2;
  v22[3] = &unk_1E773BB58;
  v20 = *(a1 + 32);
  v22[4] = *(a1 + 40);
  return [v20 enumerateMovedIndexPathsUsingBlock:v22];
}

@end