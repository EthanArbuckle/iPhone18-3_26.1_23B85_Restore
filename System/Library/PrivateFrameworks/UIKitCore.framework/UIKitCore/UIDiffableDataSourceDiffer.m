@interface UIDiffableDataSourceDiffer
@end

@implementation UIDiffableDataSourceDiffer

id __42___UIDiffableDataSourceDiffer_description__block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"section %@ contents:[", v9];
  v11 = [v7 rangeForSection:a3];
  if (v11 < v11 + v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = v11;
    do
    {
      v16 = [v8 objectAtIndexedSubscript:v15];
      if (v15 > v13)
      {
        [v10 appendString:{@", "}];
      }

      [v10 appendFormat:@"%@", v16];

      ++v15;
      --v14;
    }

    while (v14);
  }

  [v10 appendString:@"]\n"];

  return v10;
}

void __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexPathForGlobalIndex:a2];
  v6 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_UIDiffableDataSourceDiffer.m" lineNumber:182 description:@"Failed to convert global index to indexPath."];

    v3 = 0;
  }

  if (([*(a1 + 48) containsIndex:{objc_msgSend(v3, "section")}] & 1) == 0)
  {
    v4 = [[UICollectionViewUpdateItem alloc] initWithAction:0 forIndexPath:v6];
    [*(a1 + 56) addObject:v4];
  }
}

void __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexPathForGlobalIndex:a2];
  v6 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_UIDiffableDataSourceDiffer.m" lineNumber:191 description:@"Failed to convert global index to indexPath."];

    v3 = 0;
  }

  if (([*(a1 + 48) containsIndex:{objc_msgSend(v3, "section")}] & 1) == 0)
  {
    v4 = [[UICollectionViewUpdateItem alloc] initWithAction:1 forIndexPath:v6];
    [*(a1 + 56) addObject:v4];
  }
}

void __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a2];
  v4 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:0 finalIndexPath:v5 updateAction:0];
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) addIndex:a2];
}

void __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a2];
  v4 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v5 finalIndexPath:0 updateAction:1];
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) addIndex:a2];
}

uint64_t __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = [v7 indexPathBeforeUpdate];
    [v8 indexPathBeforeUpdate];
  }

  else
  {
    v9 = [v7 indexPathAfterUpdate];
    [v8 indexPathAfterUpdate];
  }
  v10 = ;
  v11 = [v9 section];
  if (v11 == [v10 section])
  {
    if (v7)
    {
      v12 = v7[6];
      if (v8 && v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8[6] != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_11:
          v14 = -1;
          goto LABEL_15;
        }

        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIDiffableDataSourceDiffer.m" lineNumber:367 description:@"Deleting the same section. Invalidate updates."];

        v12 = v7[6];
      }

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }
    }

    if (v8 && v8[6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7)
      {
        if (v7[6] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_15;
      }

LABEL_23:
      v14 = 1;
      goto LABEL_15;
    }

    v17 = [v9 item];
    if (v17 > [v10 item])
    {
      goto LABEL_23;
    }

    v18 = [v9 item];
    if (v18 >= [v10 item])
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v15 = [v9 section];
    if (v15 > [v10 section])
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }
  }

LABEL_15:

  return v14;
}

uint64_t __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3[6];
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = v3[1];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {

      return [v5 _deleteSection:v6];
    }
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = 0;
  }

  return [v5 _decrementSectionCount:v6];
}

uint64_t __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_2_54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3[3];
    if (v3[6] == 0x7FFFFFFFFFFFFFFFLL)
    {

      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(v5 + 24);
      }

      else
      {
        v6 = 0;
      }

      v7 = [v6 dataSourceSnapshot];
      v8 = [v7 numberOfItemsInSection:v4];

      v9 = *(*(*(a1 + 40) + 8) + 40);

      return [v9 _insertSection:v4 withInitialCount:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *(*(*(a1 + 40) + 8) + 40);

  return [v11 _incrementSectionCount:v4];
}

@end