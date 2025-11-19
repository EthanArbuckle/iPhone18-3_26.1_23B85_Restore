@interface UIDiffableDataSourceSectionSnapshotRebaser
@end

@implementation UIDiffableDataSourceSectionSnapshotRebaser

id __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIDiffableDataSourceSectionSnapshotRebaser _rebaseForInitialSnapshot:finalSnapshot:initialSectionSnapshots:dataSourceDiffer:shouldPerformChildSnapshotMoves:]_block_invoke"];
    [v7 handleFailureInFunction:v8 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentier"}];
  }

  v4 = [*(a1 + 32) objectForKey:v3];
  if (!v4)
  {
    v5 = [*(a1 + 40) objectForKey:v3];
    v4 = [v5 copy];

    if (v4)
    {
      [*(a1 + 32) setObject:v4 forKey:v3];
    }
  }

  return v4;
}

void __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 + a3) > *(a1 + 64))
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(deleteRange) <= beforeIdentifiersCount"}];
  }

  v6 = [*(a1 + 40) sectionIndexesForItemIndexRange:{a2, a3}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_3;
  v13[3] = &unk_1E70F3428;
  v7 = *(a1 + 40);
  v16 = a2;
  v17 = a3;
  v18 = *(a1 + 72);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 32);
  v12 = v8;
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  [v6 enumerateIndexesUsingBlock:v13];
}

void __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) dataSourceSnapshot];
  v5 = [v4 rangeForSection:a2];
  v7 = v6;

  v17.location = v5;
  v17.length = v7;
  v8 = NSIntersectionRange(*(a1 + 64), v17);
  if (v8.length)
  {
    if ([*(a1 + 32) numberOfSections] <= a2)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex < beforeState.numberOfSections"}];
    }

    v9 = [*(a1 + 32) sectionIdentifiers];
    v15 = [v9 objectAtIndexedSubscript:a2];

    v10 = (*(*(a1 + 56) + 16))();
    v11 = v10;
    if (v10)
    {
      if (v5 == v8.location && v7 == v8.length)
      {
        [v10 deleteAllItems];
      }

      else
      {
        v12 = [*(a1 + 48) array];
        v13 = [v12 subarrayWithRange:{v8.location, v8.length}];

        [v11 deleteItems:v13 orphanDisposition:1];
      }
    }
  }
}

void __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 + a3) > *(a1 + 72))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(insertRange) <= afterIdentifiersCount"}];
  }

  v6 = [*(a1 + 40) sectionIndexesForItemIndexRange:{a2, a3}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_5;
  v14[3] = &unk_1E70F3478;
  v7 = *(a1 + 40);
  v18 = a2;
  v19 = a3;
  v20 = *(a1 + 80);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 32);
  v13 = v8;
  v17 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  [v6 enumerateIndexesUsingBlock:v14];
}

void __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_5(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) dataSourceSnapshot];
  v5 = [v4 rangeForSection:a2];
  v7 = v6;

  v19.location = v5;
  v19.length = v7;
  v8 = NSIntersectionRange(*(a1 + 72), v19);
  if (!v8.length)
  {
    return;
  }

  if ([*(a1 + 32) numberOfSections] <= a2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 88) object:*(a1 + 40) file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex < afterState.numberOfSections"}];
  }

  v9 = [*(a1 + 32) sections];
  v17 = [v9 objectAtIndexedSubscript:a2];

  v10 = (*(*(a1 + 64) + 16))();
  if (v10)
  {
    v11 = [*(a1 + 48) array];
    v12 = [v11 subarrayWithRange:{v8.location, v8.length}];

    v13 = [v12 firstObject];
    v14 = [*(a1 + 56) _identifierBeforeIdentifier:v13];
    if (([v10 containsItem:v14] & 1) == 0)
    {

      v14 = 0;
    }

    v15 = [*(a1 + 56) _identifierAfterIdentifier:v13];
    if ([v10 containsItem:v15])
    {
      if (v15)
      {
        [v10 insertItems:v12 beforeItem:v15];

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (v14)
    {
      [v10 insertItems:v12 afterItem:v14 insertionMode:1];
    }

    else
    {
      [v10 appendItems:v12];
    }

    goto LABEL_15;
  }

LABEL_16:
}

@end