@interface _UITableViewSubviewManager
- (id)indexPathForPrefetchedCell:(id *)a1;
- (id)prefetchedCellAtIndexPath:(id *)a1;
- (uint64_t)preventReuseOfCell:(uint64_t)result;
- (uint64_t)shouldDeferReuseOfCell:(uint64_t)result;
- (void)cellReadyForReuse:(void *)a3 withIndexPath:(char)a4 didEndDisplaying:;
- (void)filterPrefetchedCells:(id *)a1;
- (void)initWithTableView:(void *)a1;
- (void)rebasePrefetchedCellIndexPathsWithMapping:(id *)a1;
- (void)removeAllPrefetchedCells;
- (void)resumeReuseOfCell:(id *)a1;
- (void)setReorderingCell:(id *)a1;
- (void)storePrefetchedCell:(void *)a3 forIndexPath:;
@end

@implementation _UITableViewSubviewManager

- (void)removeAllPrefetchedCells
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 && [a1[5] count])
  {
    v2 = [a1[5] copy];
    [a1[5] removeAllObjects];
    [a1[6] removeAllObjects];
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54___UITableViewSubviewManager_removeAllPrefetchedCells__block_invoke;
    v20[3] = &unk_1E7123950;
    v4 = WeakRetained;
    v21 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v20];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = [a1[5] count];
    v7 = [a1[6] count];
    if (has_internal_diagnostics)
    {
      if (v6 == v7)
      {
LABEL_6:

        return;
      }

      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = [a1[5] count];
        v10 = [a1[6] count];
        v11 = a1[5];
        v12 = a1[6];
        *buf = 134218754;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
      }
    }

    else
    {
      if (v6 == v7)
      {
        goto LABEL_6;
      }

      v13 = *(__UILogGetCategoryCachedImpl("Assert", &removeAllPrefetchedCells___s_category) + 8);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v15 = a1[5];
      v8 = v13;
      v16 = [v15 count];
      v17 = [a1[6] count];
      v18 = a1[5];
      v19 = a1[6];
      *buf = 134218754;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
    }

    goto LABEL_6;
  }
}

- (void)initWithTableView:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = _UITableViewSubviewManager;
  v3 = objc_msgSendSuper2(&v14, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 2, a2);
    v5 = [MEMORY[0x1E696AB50] set];
    v6 = v4[3];
    v4[3] = v5;

    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
    v8 = v4[4];
    v4[4] = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = v4[5];
    v4[5] = v9;

    v11 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    v12 = v4[6];
    v4[6] = v11;
  }

  return v4;
}

- (uint64_t)shouldDeferReuseOfCell:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = NSStringFromSelector(sel_shouldDeferReuseOfCell_);
      [v5 handleFailureInMethod:sel_shouldDeferReuseOfCell_ object:v3 file:@"_UITableViewSubviewManager.m" lineNumber:81 description:{@"UITableView internal inconsistency: cell should not be nil in %@", v6}];
    }

    v4 = *(v3 + 24);

    return [v4 containsObject:a2];
  }

  return result;
}

- (void)cellReadyForReuse:(void *)a3 withIndexPath:(char)a4 didEndDisplaying:
{
  if (a1)
  {
    if (!a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = NSStringFromSelector(sel_cellReadyForReuse_withIndexPath_didEndDisplaying_);
      [v10 handleFailureInMethod:sel_cellReadyForReuse_withIndexPath_didEndDisplaying_ object:a1 file:@"_UITableViewSubviewManager.m" lineNumber:87 description:{@"UITableView internal inconsistency: cell should not be nil in %@", v11}];
    }

    if (([(_UITableViewSubviewManager *)a1 shouldDeferReuseOfCell:a2]& 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_cellReadyForReuse_withIndexPath_didEndDisplaying_ object:a1 file:@"_UITableViewSubviewManager.m" lineNumber:88 description:{@"UITableView internal inconsistency: cells that are not prevented from being reused should not be deferred from being reused: %@", a2}];
    }

    v8 = [_UITableViewCellReuseParameters alloc];
    v9 = a3;
    if (v8 && (v14.receiver = v8, v14.super_class = _UITableViewCellReuseParameters, (v13 = objc_msgSendSuper2(&v14, sel_init)) != 0))
    {
      objc_storeStrong(v13 + 2, a3);
      *(v13 + 8) = a4;
    }

    else
    {
      v13 = 0;
    }

    [*(a1 + 32) setObject:v13 forKey:a2];
  }
}

- (uint64_t)preventReuseOfCell:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = NSStringFromSelector(sel_preventReuseOfCell_);
      [v5 handleFailureInMethod:sel_preventReuseOfCell_ object:v3 file:@"_UITableViewSubviewManager.m" lineNumber:95 description:{@"UITableView internal inconsistency: cell should not be nil in %@", v6}];
    }

    v4 = *(v3 + 24);

    return [v4 addObject:a2];
  }

  return result;
}

- (void)resumeReuseOfCell:(id *)a1
{
  if (a1)
  {
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = NSStringFromSelector(sel_resumeReuseOfCell_);
      [v6 handleFailureInMethod:sel_resumeReuseOfCell_ object:a1 file:@"_UITableViewSubviewManager.m" lineNumber:101 description:{@"UITableView internal inconsistency: cell should not be nil in %@", v7}];
    }

    if (([(_UITableViewSubviewManager *)a1 shouldDeferReuseOfCell:a2]& 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_resumeReuseOfCell_ object:a1 file:@"_UITableViewSubviewManager.m" lineNumber:102 description:{@"UITableView internal inconsistency: attempted to resume reuse of a cell that was never prevented from being reused: %@", a2}];
    }

    [a1[3] removeObject:a2];
    if (([a1[3] containsObject:a2] & 1) == 0)
    {
      v4 = [a1[4] objectForKey:a2];
      if (v4)
      {
        v9 = v4;
        [a1[4] removeObjectForKey:a2];
        WeakRetained = objc_loadWeakRetained(a1 + 2);
        [WeakRetained _reuseTableViewCell:a2 withIndexPath:v9[2] didEndDisplaying:*(v9 + 8)];

        v4 = v9;
      }
    }
  }
}

- (void)setReorderingCell:(id *)a1
{
  if (a1)
  {
    v4 = a1 + 1;
    v5 = a1[1];
    if (v5 != a2)
    {
      v6 = v5;
      if (v5)
      {
        [(_UITableViewSubviewManager *)a1 resumeReuseOfCell:v5];
      }

      objc_storeStrong(v4, a2);
      v5 = v6;
      if (a2)
      {
        [a1[3] addObject:a2];
        v5 = v6;
      }
    }
  }
}

- (void)storePrefetchedCell:(void *)a3 forIndexPath:
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [*(a1 + 48) objectForKey:a2];

  if (has_internal_diagnostics)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    v13 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IP(%ld, %ld)", objc_msgSend(a3, "section"), objc_msgSend(a3, "row")];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [*(a1 + 48) objectForKey:a2];
    v17 = [v16 section];
    v18 = [*(a1 + 48) objectForKey:a2];
    v19 = [v15 stringWithFormat:@"IP(%ld, %ld)", v17, objc_msgSend(v18, "row")];
    v20 = *(a1 + 40);
    *buf = 138413058;
    v46 = v14;
    v47 = 2112;
    v48 = v19;
    v49 = 2112;
    v50 = a2;
    v51 = 2112;
    v52 = v20;
    _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: cell prefetched for %@ already stored for %@. Cell: %@; Prefetched Cells: %@", buf, 0x2Au);
LABEL_21:

LABEL_22:
    goto LABEL_4;
  }

  if (v7)
  {
    v30 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1315) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = MEMORY[0x1E696AEC0];
      v13 = v30;
      v14 = [v31 stringWithFormat:@"IP(%ld, %ld)", objc_msgSend(a3, "section"), objc_msgSend(a3, "row")];
      v32 = MEMORY[0x1E696AEC0];
      v16 = [*(a1 + 48) objectForKey:a2];
      v33 = [v16 section];
      v18 = [*(a1 + 48) objectForKey:a2];
      v19 = [v32 stringWithFormat:@"IP(%ld, %ld)", v33, objc_msgSend(v18, "row")];
      v34 = *(a1 + 40);
      *buf = 138413058;
      v46 = v14;
      v47 = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = a2;
      v51 = 2112;
      v52 = v34;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: cell prefetched for %@ already stored for %@. Cell: %@; Prefetched Cells: %@", buf, 0x2Au);
      goto LABEL_21;
    }
  }

LABEL_4:
  v8 = os_variant_has_internal_diagnostics();
  v9 = [*(a1 + 40) objectForKey:a3];

  if (v8)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v21 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IP(%ld, %ld)", objc_msgSend(a3, "section"), objc_msgSend(a3, "row")];
    v23 = [*(a1 + 40) objectForKey:a3];
    v24 = *(a1 + 40);
    *buf = 138413058;
    v46 = v22;
    v47 = 2112;
    v48 = v23;
    v49 = 2112;
    v50 = a2;
    v51 = 2112;
    v52 = v24;
    _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: cell already prefetched for %@. Existing: %@; New: %@; Prefetched Cells: %@", buf, 0x2Au);
LABEL_25:

LABEL_26:
    goto LABEL_6;
  }

  if (v9)
  {
    v35 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A2090) + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = MEMORY[0x1E696AEC0];
      v21 = v35;
      v22 = [v36 stringWithFormat:@"IP(%ld, %ld)", objc_msgSend(a3, "section"), objc_msgSend(a3, "row")];
      v23 = [*(a1 + 40) objectForKey:a3];
      v37 = *(a1 + 40);
      *buf = 138413058;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = a2;
      v51 = 2112;
      v52 = v37;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: cell already prefetched for %@. Existing: %@; New: %@; Prefetched Cells: %@", buf, 0x2Au);
      goto LABEL_25;
    }
  }

LABEL_6:
  [*(a1 + 40) setObject:a2 forKey:a3];
  [*(a1 + 48) setObject:a3 forKey:a2];
  v10 = os_variant_has_internal_diagnostics();
  v11 = [*(a1 + 40) count];
  v12 = [*(a1 + 48) count];
  if (v10)
  {
    if (v11 != v12)
    {
      v25 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = [*(a1 + 40) count];
        v27 = [*(a1 + 48) count];
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
        *buf = 134218754;
        v46 = v26;
        v47 = 2048;
        v48 = v27;
        v49 = 2112;
        v50 = v28;
        v51 = 2112;
        v52 = v29;
        _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
      }

      goto LABEL_29;
    }
  }

  else if (v11 != v12)
  {
    v38 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A2098) + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v25 = v38;
      v41 = [v40 count];
      v42 = [*(a1 + 48) count];
      v43 = *(a1 + 40);
      v44 = *(a1 + 48);
      *buf = 134218754;
      v46 = v41;
      v47 = 2048;
      v48 = v42;
      v49 = 2112;
      v50 = v43;
      v51 = 2112;
      v52 = v44;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
LABEL_29:
    }
  }
}

- (id)prefetchedCellAtIndexPath:(id *)a1
{
  if (a1)
  {
    a1 = [a1[5] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (id)indexPathForPrefetchedCell:(id *)a1
{
  if (a1)
  {
    a1 = [a1[6] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)rebasePrefetchedCellIndexPathsWithMapping:(id *)a1
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && [a1[5] count])
  {
    v4 = [a1[5] copy];
    [a1[5] removeAllObjects];
    [a1[6] removeAllObjects];
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72___UITableViewSubviewManager_rebasePrefetchedCellIndexPathsWithMapping___block_invoke;
    v22[3] = &unk_1E7123CD8;
    v24 = a2;
    v22[4] = a1;
    v6 = WeakRetained;
    v23 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v22];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = [a1[5] count];
    v9 = [a1[6] count];
    if (has_internal_diagnostics)
    {
      if (v8 == v9)
      {
LABEL_6:

        return;
      }

      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = [a1[5] count];
        v12 = [a1[6] count];
        v13 = a1[5];
        v14 = a1[6];
        *buf = 134218754;
        v26 = v11;
        v27 = 2048;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v14;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
      }
    }

    else
    {
      if (v8 == v9)
      {
        goto LABEL_6;
      }

      v15 = *(__UILogGetCategoryCachedImpl("Assert", &rebasePrefetchedCellIndexPathsWithMapping____s_category) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v17 = a1[5];
      v10 = v15;
      v18 = [v17 count];
      v19 = [a1[6] count];
      v20 = a1[5];
      v21 = a1[6];
      *buf = 134218754;
      v26 = v18;
      v27 = 2048;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
    }

    goto LABEL_6;
  }
}

- (void)filterPrefetchedCells:(id *)a1
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 && [a1[5] count])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__198;
    v32 = __Block_byref_object_dispose__198;
    v33 = 0;
    v4 = a1[5];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52___UITableViewSubviewManager_filterPrefetchedCells___block_invoke;
    v27[3] = &unk_1E7123D00;
    v27[4] = a2;
    v27[5] = &v28;
    [v4 enumerateKeysAndObjectsUsingBlock:v27];
    if (!v29[5])
    {
LABEL_7:
      _Block_object_dispose(&v28, 8);

      return;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v6 = v29[5];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __52___UITableViewSubviewManager_filterPrefetchedCells___block_invoke_2;
    v24 = &unk_1E7123D28;
    v25 = a1;
    v7 = WeakRetained;
    v26 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v21];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v9 = a1[5];
    if (has_internal_diagnostics)
    {
      v11 = [v9 count];
      if (v11 == [a1[6] count])
      {
        goto LABEL_6;
      }

      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = [a1[5] count];
        v14 = [a1[6] count];
        v15 = a1[5];
        v16 = a1[6];
        *buf = 134218754;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v16;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
      }
    }

    else
    {
      v10 = [v9 count];
      if (v10 == [a1[6] count])
      {
LABEL_6:

        goto LABEL_7;
      }

      v12 = *(__UILogGetCategoryCachedImpl("Assert", &filterPrefetchedCells____s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = [a1[5] count];
        v18 = [a1[6] count];
        v19 = a1[5];
        v20 = a1[6];
        *buf = 134218754;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        v38 = 2112;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: prefetchedCells (%ld) and indexPathsForPrefetchedCells (%ld) are out of sync. prefetchedCells=%@; indexPathsForPrefetchedCells=%@", buf, 0x2Au);
      }
    }

    goto LABEL_6;
  }
}

@end