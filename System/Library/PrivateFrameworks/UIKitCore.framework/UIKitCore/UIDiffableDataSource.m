@interface UIDiffableDataSource
@end

@implementation UIDiffableDataSource

void __36____UIDiffableDataSource_initialize__block_invoke()
{
  objc_opt_class();

  _CVCDiffableDataSourceInitializeWithUpdateItemClass();
}

id __34____UIDiffableDataSource_snapshot__block_invoke(uint64_t a1)
{
  v1 = [[off_1E70ECC70 alloc] initWithState:*(*(a1 + 32) + 120)];

  return v1;
}

uint64_t __47____UIDiffableDataSource__performOnApplyQueue___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  atomic_fetch_add_explicit((*(a1 + 32) + 232), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

void __70____UIDiffableDataSource__onApplyQueue_reloadFromSnapshot_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _computeCurrentTransactionForFinalSnapshot:*(a1 + 40) withDataSourceDiffer:0];
  [*(a1 + 32) _notifyWillApplyForCurrentTransactionIfNeeded];
  v2 = [off_1E70ECC68 alloc];
  v3 = [*(a1 + 40) state];
  v9 = [v2 initWithStateAdvancingGenerationID:v3];

  [*(a1 + 32) _commitStateAtomically:v9];
  [*(a1 + 32) _commitRebasedSectionSnapshotsFromCurrentTransactionIfNeeded];
  [*(a1 + 32) _notifyDidApplyForCurrentTransactionIfNeeded];
  v4 = [*(a1 + 32) isSuppressingViewUpdates];
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) viewUpdater];
    [v5 _reloadData];
  }

  [*(a1 + 32) _resetCurrentTransaction];
  v6 = *(a1 + 48);
  if (v6)
  {
    if (v4)
    {
      v7 = *(*(a1 + 32) + 256);
      v8 = _Block_copy(v6);
      [v7 addObject:v8];
    }

    else
    {
      v6[2]();
    }
  }
}

uint64_t __103____UIDiffableDataSource__applyDifferencesFromSnapshot_animatingDifferences_completion_isOnApplyQueue___block_invoke(uint64_t a1)
{
  v2 = dyld_program_sdk_at_least();
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
LABEL_5:

    return [v4 _onApplyQueue_applyDifferencesFromSnapshot:v5 viewPropertyAnimator:0 customAnimationsProvider:0 animated:v6 completion:v3];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v8 = *(a1 + 48);

  return [v4 _onApplyQueue_reloadFromSnapshot:v5 completion:v8];
}

void __98____UIDiffableDataSource__applyDifferencesFromSnapshot_toSection_animatingDifferences_completion___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98____UIDiffableDataSource__applyDifferencesFromSnapshot_toSection_animatingDifferences_completion___block_invoke_2;
  v9[3] = &unk_1E70FCE50;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12 = *(a1 + 72);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 _performApplyWithoutRebasingSectionSnapshots:v9];
}

void *__135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 40) state];
  v4 = [_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:v2 afterDataSourceState:v3];

  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [*(a1 + 32) _computeCurrentTransactionForFinalSnapshot:*(a1 + 40) withDataSourceDiffer:v4];
  kdebug_trace();
  if (*(a1 + 48))
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

void __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 72) == 1 && (v4 = (a1 + 32), [*(a1 + 32) _validReloadOrReconfigureViewUpdatesInSnapshot:*(a1 + 40)], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 count];
    [*v4 _notifyWillApplyForCurrentTransactionIfNeeded];
    if (v7)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = (a1 + 32);
    [*(a1 + 32) _notifyWillApplyForCurrentTransactionIfNeeded];
    v6 = 0;
  }

  v9 = 0;
  v8 = *(a1 + 56);
LABEL_7:
  v10 = _Block_copy(v8);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 73);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_3;
  v27[3] = &unk_1E70F3590;
  v27[4] = v11;
  v16 = [v11 _commitNewDataSource:v12 withViewUpdates:v3 viewPropertyAnimator:v13 customAnimationsProvider:v14 animated:v15 commitAlongsideHandler:v27 completion:v10];
  [*(a1 + 32) _notifyDidApplyForCurrentTransactionIfNeeded];
  [*(a1 + 32) _resetCurrentTransaction];
  if (v9)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + 56);
      if (v17)
      {
        dispatch_async(MEMORY[0x1E69E96A0], v17);
      }
    }

    else
    {
      v18 = [[off_1E70ECB58 alloc] initWithState:*(*v4 + 15)];
      v19 = [*v4 _transactionForReloadUpdatesWithSnapshot:v18];
      v20 = *(*v4 + 7);
      *(*v4 + 7) = v19;

      if (dyld_program_sdk_at_least())
      {
        v21 = *(a1 + 32);
        v22 = [v21[15] dataSourceSnapshot];
        [v21 _performReloadOrReconfigureUpdateWithItems:v6 dataSourceSnapshot:v22 animated:*(a1 + 73) completion:*(a1 + 56)];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_4;
        v23[3] = &unk_1E70F3798;
        v23[4] = *(a1 + 32);
        v24 = v6;
        v26 = *(a1 + 73);
        v25 = *(a1 + 56);
        [UIView performWithoutAnimation:v23];
      }

      [*v4 _resetCurrentTransaction];
    }
  }
}

void __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2[15] dataSourceSnapshot];
  [v2 _performReloadOrReconfigureUpdateWithItems:v3 dataSourceSnapshot:v4 animated:*(a1 + 56) completion:*(a1 + 48)];
}

void __135____UIDiffableDataSource__onApplyQueue_applyDifferencesFromSnapshot_viewPropertyAnimator_customAnimationsProvider_animated_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pendingSnapshotUpdates];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"_UIDiffableDataSourceImpl.m" lineNumber:924 description:{@"Invalid parameter not satisfying: %@", @"snapshot.pendingSnapshotUpdates.count == 1"}];
  }

  v6 = [v3 pendingSnapshotUpdates];
  v8 = [v6 firstObject];

  [*(a1 + 32) _commitUpdate:v8 snapshot:v3 animated:*(a1 + 72) animator:*(a1 + 40) customAnimationsProvider:*(a1 + 48) completion:*(a1 + 56)];
}

uint64_t __103____UIDiffableDataSource__commitUpdate_snapshot_animated_animator_customAnimationsProvider_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _commitStateAtomically:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _commitRebasedSectionSnapshotsFromCurrentTransactionIfNeeded];
}

void __152____UIDiffableDataSource__commitNewDataSource_withViewUpdates_viewPropertyAnimator_customAnimationsProvider_animated_commitAlongsideHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [off_1E70ECC68 alloc];
  v3 = [*(a1 + 32) state];
  v5 = [v2 initWithStateAdvancingGenerationID:v3];

  [*(a1 + 40) _commitStateAtomically:v5];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void __53____UIDiffableDataSource__snapshotWithHandlerAtomic___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __76____UIDiffableDataSource__registerItemRenderers_rendererIdentifierProvider___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[__UIDiffableDataSource _registerItemRenderers:rendererIdentifierProvider:]_block_invoke"];
    [v11 handleFailureInFunction:v12 file:@"_UIDiffableDataSourceImpl.m" lineNumber:1176 description:@"Failed to generate a new cell."];
  }

  v13 = *(WeakRetained + 3);
  if ([v13 count] == 1)
  {
    v14 = [v13 objectEnumerator];
    v15 = [v14 allObjects];
    v16 = [v15 firstObject];
  }

  else
  {
    v14 = _Block_copy(*(WeakRetained + 4));
    v15 = (v14)[2](v14, v7);
    if (!v15)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[__UIDiffableDataSource _registerItemRenderers:rendererIdentifierProvider:]_block_invoke"];
      [v26 handleFailureInFunction:v27 file:@"_UIDiffableDataSourceImpl.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"rendererIdentifier"}];
    }

    v16 = [v13 objectForKey:v15];
  }

  v17 = v16;

  if (!v17)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[__UIDiffableDataSource _registerItemRenderers:rendererIdentifierProvider:]_block_invoke"];
    [v22 handleFailureInFunction:v23 file:@"_UIDiffableDataSourceImpl.m" lineNumber:1189 description:{@"No registered item renderer found for identifier %@", v7}];
  }

  v18 = [v17 cellReuseIdentifier];
  v19 = [v9 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v8];

  if (!v19)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[__UIDiffableDataSource _registerItemRenderers:rendererIdentifierProvider:]_block_invoke"];
    [v24 handleFailureInFunction:v25 file:@"_UIDiffableDataSourceImpl.m" lineNumber:1191 description:{@"Invalid parameter not satisfying: %@", @"cell"}];
  }

  v20 = [v17 handler];
  (v20)[2](v20, v7, v19);

  return v19;
}

NSDiffableDataSourceSectionSnapshot *__68____UIDiffableDataSource__reorderingTransactionForReorderingUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UIDiffableDataSourceImpl.m" lineNumber:1412 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v4 = [*(a1 + 32) associatedSectionControllerForSectionIdentifier:v3];
  v5 = v4;
  if (!v4 || ([v4 snapshotForSection:v3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([*(a1 + 40) indexOfSectionIdentifier:v3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v7 = [*(a1 + 40) itemIdentifiersInSectionWithIdentifier:v3];
    }

    v6 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
    [(NSDiffableDataSourceSectionSnapshot *)v6 appendItems:v7];
  }

  return v6;
}

@end