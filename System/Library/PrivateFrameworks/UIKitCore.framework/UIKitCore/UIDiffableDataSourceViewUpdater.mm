@interface UIDiffableDataSourceViewUpdater
@end

@implementation UIDiffableDataSourceViewUpdater

uint64_t __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _performViewUpdates:v3];
}

uint64_t __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _expectedDiffableUpdateItem];
  if (v2)
  {
    (*(*(a1 + 64) + 16))();
    if (([*(a1 + 40) _doesExpectedUpdate:v2 matchActualUpdates:*(a1 + 48) allowingEmptyUpdates:1] & 1) == 0)
    {
      *(*(*(a1 + 104) + 8) + 24) = 2;
      [*(a1 + 32) reloadData];
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v3);
    }
  }

  else if (*(a1 + 112) == 1)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 80);
    if (v4)
    {
      [v5 _performBatchUpdates:v6 viewPropertyAnimator:v4 customAnimationsProvider:*(a1 + 88)];
    }

    else
    {
      [v5 performBatchUpdates:v6 completion:*(a1 + 96)];
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_4;
    v10[3] = &unk_1E70FE270;
    v16 = *(a1 + 113);
    v11 = *(a1 + 32);
    v7 = *(a1 + 64);
    v9 = *(a1 + 96);
    v8 = *(a1 + 104);
    v12 = v7;
    v15 = v8;
    v13 = v9;
    v14 = *(a1 + 80);
    [UIView performWithoutAnimation:v10];
  }
}

uint64_t __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72))
  {
LABEL_2:
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 2;
    [*(a1 + 32) reloadData];
    v2 = *(*(a1 + 48) + 16);

    return v2();
  }

  v4 = [*(a1 + 32) window];
  if (v4)
  {
  }

  else
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v5 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_10;
    }

    v9 = _UIInternalPreference_DiffableDataSourceSnapshotApplyBehaviorOutsideWindow;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_DiffableDataSourceSnapshotApplyBehaviorOutsideWindow)
    {
      goto LABEL_10;
    }

    while (v5 >= v9)
    {
      _UIInternalPreferenceSync(v5, &_UIInternalPreference_DiffableDataSourceSnapshotApplyBehaviorOutsideWindow, @"DiffableDataSourceSnapshotApplyBehaviorOutsideWindow", _UIInternalPreferenceUpdateInteger);
      v9 = _UIInternalPreference_DiffableDataSourceSnapshotApplyBehaviorOutsideWindow;
      if (v5 == _UIInternalPreference_DiffableDataSourceSnapshotApplyBehaviorOutsideWindow)
      {
        goto LABEL_10;
      }
    }

    if (qword_1ED48AAB0 == -1)
    {
      goto LABEL_2;
    }

    if (qword_1ED48AAB0 != 1)
    {
LABEL_10:
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  v6 = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);

  return [v6 performBatchUpdates:v7 completion:v8];
}

uint64_t __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_5(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _performViewUpdates:v3];
}

uint64_t __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) _expectedDiffableUpdateItem];
  if (v2)
  {
    (*(*(a1 + 56) + 16))();
    if (([*(a1 + 40) _doesExpectedUpdate:v2 matchActualUpdates:*(a1 + 48) allowingEmptyUpdates:0] & 1) == 0)
    {
      *(*(*(a1 + 88) + 8) + 24) = 2;
      [*(a1 + 32) reloadData];
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v3);
    }
  }

  else if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) performBatchUpdates:*(a1 + 72) completion:*(a1 + 80)];
  }

  else if ((*(a1 + 97) & 1) != 0 || ([*(a1 + 32) window], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 88) + 8) + 24) = 2;
    [*(a1 + 32) reloadData];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_8;
    v5[3] = &unk_1E70FE2C0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    [UIView performWithoutAnimation:v5];
  }
}

@end