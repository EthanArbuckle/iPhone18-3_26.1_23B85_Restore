@interface _UICollectionViewSubviewCollection
- (_UICollectionViewSubviewCollection)init;
- (id)allViews;
- (id)allViewsHashTable;
- (id)cellAtIndexPath:(id *)a1;
- (id)cells;
- (id)decorationOfKind:(uint64_t)a3 atIndexPath:;
- (id)decorationsOfKind:(uint64_t)a1;
- (id)description;
- (id)indexPathsForCells;
- (id)indexPathsForDecorationsOfKind:(uint64_t)a1;
- (id)indexPathsForSupplementariesOfKind:(uint64_t)a1;
- (id)supplementariesOfKind:(uint64_t)a1;
- (id)supplementaryOfKind:(uint64_t)a3 atIndexPath:;
- (id)viewOfKind:(uint64_t)a3 inCategory:(uint64_t)a4 atIndexPath:;
- (uint64_t)containsView:(uint64_t)a1;
- (uint64_t)enumerateCellsWithEnumerator:(uint64_t)result;
- (uint64_t)enumerateDecorationsWithEnumerator:(uint64_t)result;
- (uint64_t)enumerateSupplementariesWithEnumerator:(uint64_t)result;
- (uint64_t)setCell:(uint64_t)a3 atIndexPath:;
- (void)enumerateAllViewsWithEnumerator:(uint64_t)a1;
- (void)enumerateAuxillariesWithEnumerator:(uint64_t)a1;
- (void)enumerateDecorationsOfElementKind:(uint64_t)a3 enumerator:;
- (void)enumerateSupplementariesOfElementKind:(uint64_t)a3 enumerator:;
- (void)removeViewForDecorationOfKind:(uint64_t)a3 atIndexPath:;
- (void)removeViewForSupplementaryOfKind:(uint64_t)a3 atIndexPath:;
- (void)removeViewOfKind:(uint64_t)a3 inCategory:(uint64_t)a4 atIndexPath:;
- (void)setView:(uint64_t)a3 forDecorationOfKind:(uint64_t)a4 atIndexPath:;
- (void)setView:(uint64_t)a3 forSupplementaryOfKind:(uint64_t)a4 atIndexPath:;
- (void)setView:(uint64_t)a3 ofKind:(uint64_t)a4 inCategory:(uint64_t)a5 atIndexPath:;
- (void)transferAllViewsWithoutCopyingToSubviewCollection:(id *)a1;
- (void)updateCellsUsingFilter:(uint64_t)a1;
- (void)updateDecorationsUsingFilter:(uint64_t)a1;
- (void)updateSupplementariesUsingFilter:(uint64_t)a1;
@end

@implementation _UICollectionViewSubviewCollection

- (_UICollectionViewSubviewCollection)init
{
  v10.receiver = self;
  v10.super_class = _UICollectionViewSubviewCollection;
  v2 = [(_UICollectionViewSubviewCollection *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cells = v2->_cells;
    v2->_cells = v3;

    v5 = objc_opt_new();
    supplementaries = v2->_supplementaries;
    v2->_supplementaries = v5;

    v7 = objc_opt_new();
    decorations = v2->_decorations;
    v2->_decorations = v7;
  }

  return v2;
}

- (id)indexPathsForCells
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 8), "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56___UICollectionViewSubviewCollection_indexPathsForCells__block_invoke;
    v5[3] = &unk_1E71050D0;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)a1 enumerateCellsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allViews
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[2], "count") + objc_msgSend(a1[1], "count") + objc_msgSend(a1[3], "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46___UICollectionViewSubviewCollection_allViews__block_invoke;
    v5[3] = &unk_1E70FFC98;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)a1 enumerateAllViewsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cells
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 8), "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43___UICollectionViewSubviewCollection_cells__block_invoke;
    v5[3] = &unk_1E71050D0;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)a1 enumerateCellsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allViewsHashTable
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:{objc_msgSend(a1[2], "count") + objc_msgSend(a1[1], "count") + objc_msgSend(a1[3], "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55___UICollectionViewSubviewCollection_allViewsHashTable__block_invoke;
    v5[3] = &unk_1E70FFC98;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)a1 enumerateAllViewsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)setCell:(uint64_t)a3 atIndexPath:
{
  if (result)
  {
    v5 = result;
    if (os_variant_has_internal_diagnostics())
    {
      if (!a2)
      {
        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *v13 = 0;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Cell cannot be nil", v13, 2u);
        }
      }
    }

    else if (!a2)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1061) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Cell cannot be nil", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a3)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *v11 = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v11, 2u);
        }
      }
    }

    else if (!a3)
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D998) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v10, 2u);
      }
    }

    return [*(v5 + 8) setObject:a2 forKeyedSubscript:a3];
  }

  return result;
}

- (void)setView:(uint64_t)a3 forSupplementaryOfKind:(uint64_t)a4 atIndexPath:
{
  if (a1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!a2)
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *v20 = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "View cannot be nil", v20, 2u);
        }
      }
    }

    else if (!a2)
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9A0) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "View cannot be nil", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a3)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v18 = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Element kind cannot be nil", v18, 2u);
        }
      }
    }

    else if (!a3)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9A8) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Element kind cannot be nil", v17, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a4)
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v16, 2u);
        }
      }
    }

    else if (!a4)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9B0) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v15, 2u);
      }
    }

    v8 = [*(a1 + 16) objectForKeyedSubscript:a3];
    if (!v8)
    {
      v8 = objc_opt_new();
      [*(a1 + 16) setObject:v8 forKeyedSubscript:a3];
    }

    [v8 setObject:a2 forKeyedSubscript:a4];
  }
}

- (void)setView:(uint64_t)a3 forDecorationOfKind:(uint64_t)a4 atIndexPath:
{
  if (a1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!a2)
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *v20 = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "View cannot be nil", v20, 2u);
        }
      }
    }

    else if (!a2)
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9B8) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "View cannot be nil", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a3)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v18 = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Element kind cannot be nil", v18, 2u);
        }
      }
    }

    else if (!a3)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9C0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Element kind cannot be nil", v17, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (!a4)
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v16, 2u);
        }
      }
    }

    else if (!a4)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9C8) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v15, 2u);
      }
    }

    v8 = [*(a1 + 24) objectForKeyedSubscript:a3];
    if (!v8)
    {
      v8 = objc_opt_new();
      [*(a1 + 24) setObject:v8 forKeyedSubscript:a3];
    }

    [v8 setObject:a2 forKeyedSubscript:a4];
  }
}

- (void)setView:(uint64_t)a3 ofKind:(uint64_t)a4 inCategory:(uint64_t)a5 atIndexPath:
{
  if (a1)
  {
    switch(a4)
    {
      case 2:
        if (!a3)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:sel_setView_ofKind_inCategory_atIndexPath_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        [(_UICollectionViewSubviewCollection *)a1 setView:a2 forDecorationOfKind:a3 atIndexPath:a5];
        break;
      case 1:
        if (!a3)
        {
          v9 = [MEMORY[0x1E696AAA8] currentHandler];
          [v9 handleFailureInMethod:sel_setView_ofKind_inCategory_atIndexPath_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        [(_UICollectionViewSubviewCollection *)a1 setView:a2 forSupplementaryOfKind:a3 atIndexPath:a5];
        break;
      case 0:

        [(_UICollectionViewSubviewCollection *)a1 setCell:a2 atIndexPath:a5];
        break;
    }
  }
}

- (void)transferAllViewsWithoutCopyingToSubviewCollection:(id *)a1
{
  if (a1)
  {
    objc_storeStrong(a2 + 1, a1[1]);
    objc_storeStrong(a2 + 2, a1[2]);
    objc_storeStrong(a2 + 3, a1[3]);
    v4 = objc_opt_new();
    v5 = a1[1];
    a1[1] = v4;

    v6 = objc_opt_new();
    v7 = a1[2];
    a1[2] = v6;

    v8 = objc_opt_new();
    v9 = a1[3];
    a1[3] = v8;
  }
}

- (void)removeViewForSupplementaryOfKind:(uint64_t)a3 atIndexPath:
{
  if (a1)
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:a2];
    [v4 removeObjectForKey:a3];
  }
}

- (void)removeViewForDecorationOfKind:(uint64_t)a3 atIndexPath:
{
  if (a1)
  {
    v4 = [*(a1 + 24) objectForKeyedSubscript:a2];
    [v4 removeObjectForKey:a3];
  }
}

- (void)removeViewOfKind:(uint64_t)a3 inCategory:(uint64_t)a4 atIndexPath:
{
  if (!a1)
  {
    return;
  }

  if (a3 == 2)
  {
    if (!a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_removeViewOfKind_inCategory_atIndexPath_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
    }

    v8 = a1[3];
  }

  else
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        v7 = a1[1];

        [v7 removeObjectForKey:a4];
      }

      return;
    }

    if (!a2)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_removeViewOfKind_inCategory_atIndexPath_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
    }

    v8 = a1[2];
  }

  v11 = [v8 objectForKeyedSubscript:a2];
  [v11 removeObjectForKey:a4];
}

- (id)cellAtIndexPath:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)enumerateCellsWithEnumerator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_enumerateCellsWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v4 = *(v3 + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67___UICollectionViewSubviewCollection_enumerateCellsWithEnumerator___block_invoke;
    v6[3] = &unk_1E70FFC48;
    v6[4] = a2;
    return [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

- (id)supplementaryOfKind:(uint64_t)a3 atIndexPath:
{
  if (a1)
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:a2];
    v5 = [v4 objectForKeyedSubscript:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decorationOfKind:(uint64_t)a3 atIndexPath:
{
  if (a1)
  {
    v4 = [*(a1 + 24) objectForKeyedSubscript:a2];
    v5 = [v4 objectForKeyedSubscript:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewOfKind:(uint64_t)a3 inCategory:(uint64_t)a4 atIndexPath:
{
  if (a1)
  {
    v7 = a1;
    switch(a3)
    {
      case 2:
        if (!a2)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:sel_viewOfKind_inCategory_atIndexPath_ object:v7 file:@"_UICollectionViewSubviewCollection.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        a1 = [(_UICollectionViewSubviewCollection *)v7 decorationOfKind:a2 atIndexPath:a4];
        break;
      case 1:
        if (!a2)
        {
          v9 = [MEMORY[0x1E696AAA8] currentHandler];
          [v9 handleFailureInMethod:sel_viewOfKind_inCategory_atIndexPath_ object:v7 file:@"_UICollectionViewSubviewCollection.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        a1 = [(_UICollectionViewSubviewCollection *)v7 supplementaryOfKind:a2 atIndexPath:a4];
        break;
      case 0:
        a1 = [a1[1] objectForKeyedSubscript:a4];
        break;
    }

    v4 = vars8;
  }

  return a1;
}

- (id)supplementariesOfKind:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 16) objectForKeyedSubscript:a2];
    v3 = [v2 allValues];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decorationsOfKind:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 24) objectForKeyedSubscript:a2];
    v3 = [v2 allValues];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathsForSupplementariesOfKind:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 16) objectForKeyedSubscript:a2];
    v3 = [v2 allKeys];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathsForDecorationsOfKind:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 24) objectForKeyedSubscript:a2];
    v3 = [v2 allKeys];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)enumerateSupplementariesWithEnumerator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_enumerateSupplementariesWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v4 = *(v3 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77___UICollectionViewSubviewCollection_enumerateSupplementariesWithEnumerator___block_invoke;
    v6[3] = &unk_1E70FFCC0;
    v6[4] = a2;
    return [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

- (void)enumerateSupplementariesOfElementKind:(uint64_t)a3 enumerator:
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
LABEL_4:
        v6 = [*(a1 + 16) objectForKeyedSubscript:a2];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __87___UICollectionViewSubviewCollection_enumerateSupplementariesOfElementKind_enumerator___block_invoke;
        v9[3] = &unk_1E7104FB8;
        v9[4] = a3;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];

        return;
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_enumerateSupplementariesOfElementKind_enumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (a3)
      {
        goto LABEL_4;
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:sel_enumerateSupplementariesOfElementKind_enumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];

    goto LABEL_4;
  }
}

- (uint64_t)enumerateDecorationsWithEnumerator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_enumerateDecorationsWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v4 = *(v3 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73___UICollectionViewSubviewCollection_enumerateDecorationsWithEnumerator___block_invoke;
    v6[3] = &unk_1E70FFCC0;
    v6[4] = a2;
    return [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

- (void)enumerateDecorationsOfElementKind:(uint64_t)a3 enumerator:
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
LABEL_4:
        v6 = [*(a1 + 24) objectForKeyedSubscript:a2];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __83___UICollectionViewSubviewCollection_enumerateDecorationsOfElementKind_enumerator___block_invoke;
        v9[3] = &unk_1E7104FB8;
        v9[4] = a3;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];

        return;
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_enumerateDecorationsOfElementKind_enumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (a3)
      {
        goto LABEL_4;
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:sel_enumerateDecorationsOfElementKind_enumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];

    goto LABEL_4;
  }
}

- (void)enumerateAuxillariesWithEnumerator:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_enumerateAuxillariesWithEnumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73___UICollectionViewSubviewCollection_enumerateAuxillariesWithEnumerator___block_invoke;
    v6[3] = &unk_1E7104FE0;
    v6[4] = a2;
    v6[5] = &v7;
    [(_UICollectionViewSubviewCollection *)a1 enumerateSupplementariesWithEnumerator:v6];
    if ((v8[3] & 1) == 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __73___UICollectionViewSubviewCollection_enumerateAuxillariesWithEnumerator___block_invoke_2;
      v5[3] = &unk_1E7105008;
      v5[4] = a2;
      [(_UICollectionViewSubviewCollection *)a1 enumerateDecorationsWithEnumerator:v5];
    }

    _Block_object_dispose(&v7, 8);
  }
}

- (void)enumerateAllViewsWithEnumerator:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_enumerateAllViewsWithEnumerator_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke;
    v7[3] = &unk_1E7105030;
    v7[4] = a2;
    v7[5] = &v8;
    [(_UICollectionViewSubviewCollection *)a1 enumerateCellsWithEnumerator:v7];
    if ((v9[3] & 1) == 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_2;
      v6[3] = &unk_1E7104FE0;
      v6[4] = a2;
      v6[5] = &v8;
      [(_UICollectionViewSubviewCollection *)a1 enumerateSupplementariesWithEnumerator:v6];
      if ((v9[3] & 1) == 0)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_3;
        v5[3] = &unk_1E7104FE0;
        v5[4] = a2;
        v5[5] = &v8;
        [(_UICollectionViewSubviewCollection *)a1 enumerateDecorationsWithEnumerator:v5];
      }
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (uint64_t)containsView:(uint64_t)a1
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51___UICollectionViewSubviewCollection_containsView___block_invoke;
    v4[3] = &unk_1E7105058;
    v4[4] = a2;
    v4[5] = &v5;
    [(_UICollectionViewSubviewCollection *)a1 enumerateAllViewsWithEnumerator:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)updateCellsUsingFilter:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_updateCellsUsingFilter_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 8), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61___UICollectionViewSubviewCollection_updateCellsUsingFilter___block_invoke;
    v9[3] = &unk_1E7105080;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)a1 enumerateCellsWithEnumerator:v9];
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v7 = v5;
  }
}

- (void)updateSupplementariesUsingFilter:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_updateSupplementariesUsingFilter_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 16), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71___UICollectionViewSubviewCollection_updateSupplementariesUsingFilter___block_invoke;
    v9[3] = &unk_1E71050A8;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)a1 enumerateSupplementariesWithEnumerator:v9];
    v6 = *(a1 + 16);
    *(a1 + 16) = v5;
    v7 = v5;
  }
}

- (void)updateDecorationsUsingFilter:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_updateDecorationsUsingFilter_ object:a1 file:@"_UICollectionViewSubviewCollection.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 24), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___UICollectionViewSubviewCollection_updateDecorationsUsingFilter___block_invoke;
    v9[3] = &unk_1E71050A8;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)a1 enumerateDecorationsWithEnumerator:v9];
    v6 = *(a1 + 24);
    *(a1 + 24) = v5;
    v7 = v5;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MutableReusableViewMapDescription(self->_cells);
  v6 = StringToMutableReusableViewMapMapDescription(self->_supplementaries);
  v7 = StringToMutableReusableViewMapMapDescription(self->_decorations);
  v8 = [v3 stringWithFormat:@"<%@ %p cells = %@ supplementaries = %@; decorations = %@>", v4, self, v5, v6, v7];;

  return v8;
}

@end