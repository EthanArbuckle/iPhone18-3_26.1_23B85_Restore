@interface UITableViewSubviewManager
@end

@implementation UITableViewSubviewManager

void __72___UITableViewSubviewManager_rebasePrefetchedCellIndexPathsWithMapping___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(a1 + 48) + 16))();
  v7 = v6;
  if (v6)
  {
    [*(*(a1 + 32) + 40) setObject:a3 forKey:v6];
    [*(*(a1 + 32) + 48) setObject:v7 forKey:a3];
  }

  else
  {
    [*(a1 + 40) _reusePrefetchedCell:a3 withIndexPath:a2];
  }
}

uint64_t __52___UITableViewSubviewManager_filterPrefetchedCells___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v7 setObject:a3 forKey:a2];
  }

  return result;
}

uint64_t __52___UITableViewSubviewManager_filterPrefetchedCells___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 40) removeObjectForKey:a2];
  [*(*(a1 + 32) + 48) removeObjectForKey:a3];
  v6 = *(a1 + 40);

  return [v6 _reusePrefetchedCell:a3 withIndexPath:a2];
}

@end