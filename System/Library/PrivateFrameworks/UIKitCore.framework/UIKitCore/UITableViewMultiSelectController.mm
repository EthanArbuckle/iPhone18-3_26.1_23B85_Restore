@interface UITableViewMultiSelectController
@end

@implementation UITableViewMultiSelectController

void __55___UITableViewMultiSelectController__selectIndexPaths___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) tableView];
        LOBYTE(v12) = 0;
        [v8 _selectRowAtIndexPath:v7 animated:0 scrollPosition:0 notifyDelegate:1 isCellMultiSelect:1 deselectPrevious:0 performCustomSelectionAction:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 40) tableView];
  v10 = [v9 indexPathsForSelectedRows];
  v11 = [*(a1 + 40) currentSelectionState];
  [v11 setAllSelectedIndexPaths:v10];
}

void __57___UITableViewMultiSelectController__deselectIndexPaths___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [*(a1 + 40) allObjects];
  [v2 _deselectRowsAtIndexPaths:v3 animated:1 notifyDelegate:1];

  v6 = [*(a1 + 32) tableView];
  v4 = [v6 indexPathsForSelectedRows];
  v5 = [*(a1 + 32) currentSelectionState];
  [v5 setAllSelectedIndexPaths:v4];
}

@end