@interface _UICollectionViewSubviewCollection
- (_UICollectionViewSubviewCollection)init;
- (id)allViews;
- (id)allViewsHashTable;
- (id)cellAtIndexPath:(id *)path;
- (id)cells;
- (id)decorationOfKind:(uint64_t)kind atIndexPath:;
- (id)decorationsOfKind:(uint64_t)kind;
- (id)description;
- (id)indexPathsForCells;
- (id)indexPathsForDecorationsOfKind:(uint64_t)kind;
- (id)indexPathsForSupplementariesOfKind:(uint64_t)kind;
- (id)supplementariesOfKind:(uint64_t)kind;
- (id)supplementaryOfKind:(uint64_t)kind atIndexPath:;
- (id)viewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:;
- (uint64_t)containsView:(uint64_t)view;
- (uint64_t)enumerateCellsWithEnumerator:(uint64_t)result;
- (uint64_t)enumerateDecorationsWithEnumerator:(uint64_t)result;
- (uint64_t)enumerateSupplementariesWithEnumerator:(uint64_t)result;
- (uint64_t)setCell:(uint64_t)cell atIndexPath:;
- (void)enumerateAllViewsWithEnumerator:(uint64_t)enumerator;
- (void)enumerateAuxillariesWithEnumerator:(uint64_t)enumerator;
- (void)enumerateDecorationsOfElementKind:(uint64_t)kind enumerator:;
- (void)enumerateSupplementariesOfElementKind:(uint64_t)kind enumerator:;
- (void)removeViewForDecorationOfKind:(uint64_t)kind atIndexPath:;
- (void)removeViewForSupplementaryOfKind:(uint64_t)kind atIndexPath:;
- (void)removeViewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:;
- (void)setView:(uint64_t)view forDecorationOfKind:(uint64_t)kind atIndexPath:;
- (void)setView:(uint64_t)view forSupplementaryOfKind:(uint64_t)kind atIndexPath:;
- (void)setView:(uint64_t)view ofKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:;
- (void)transferAllViewsWithoutCopyingToSubviewCollection:(id *)collection;
- (void)updateCellsUsingFilter:(uint64_t)filter;
- (void)updateDecorationsUsingFilter:(uint64_t)filter;
- (void)updateSupplementariesUsingFilter:(uint64_t)filter;
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
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(self + 8), "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56___UICollectionViewSubviewCollection_indexPathsForCells__block_invoke;
    v5[3] = &unk_1E71050D0;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)self enumerateCellsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allViews
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self[2], "count") + objc_msgSend(self[1], "count") + objc_msgSend(self[3], "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46___UICollectionViewSubviewCollection_allViews__block_invoke;
    v5[3] = &unk_1E70FFC98;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)self enumerateAllViewsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cells
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(self + 8), "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43___UICollectionViewSubviewCollection_cells__block_invoke;
    v5[3] = &unk_1E71050D0;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)self enumerateCellsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allViewsHashTable
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:{objc_msgSend(self[2], "count") + objc_msgSend(self[1], "count") + objc_msgSend(self[3], "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55___UICollectionViewSubviewCollection_allViewsHashTable__block_invoke;
    v5[3] = &unk_1E70FFC98;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)self enumerateAllViewsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)setCell:(uint64_t)cell atIndexPath:
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
      if (!cell)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *v11 = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v11, 2u);
        }
      }
    }

    else if (!cell)
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D998) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v10, 2u);
      }
    }

    return [*(v5 + 8) setObject:a2 forKeyedSubscript:cell];
  }

  return result;
}

- (void)setView:(uint64_t)view forSupplementaryOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
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
      if (!view)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v18 = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Element kind cannot be nil", v18, 2u);
        }
      }
    }

    else if (!view)
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
      if (!kind)
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v16, 2u);
        }
      }
    }

    else if (!kind)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9B0) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v15, 2u);
      }
    }

    v8 = [*(self + 16) objectForKeyedSubscript:view];
    if (!v8)
    {
      v8 = objc_opt_new();
      [*(self + 16) setObject:v8 forKeyedSubscript:view];
    }

    [v8 setObject:a2 forKeyedSubscript:kind];
  }
}

- (void)setView:(uint64_t)view forDecorationOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
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
      if (!view)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *v18 = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Element kind cannot be nil", v18, 2u);
        }
      }
    }

    else if (!view)
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
      if (!kind)
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Index path cannot be nil", v16, 2u);
        }
      }
    }

    else if (!kind)
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D9C8) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Index path cannot be nil", v15, 2u);
      }
    }

    v8 = [*(self + 24) objectForKeyedSubscript:view];
    if (!v8)
    {
      v8 = objc_opt_new();
      [*(self + 24) setObject:v8 forKeyedSubscript:view];
    }

    [v8 setObject:a2 forKeyedSubscript:kind];
  }
}

- (void)setView:(uint64_t)view ofKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:
{
  if (self)
  {
    switch(kind)
    {
      case 2:
        if (!view)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel_setView_ofKind_inCategory_atIndexPath_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        [(_UICollectionViewSubviewCollection *)self setView:a2 forDecorationOfKind:view atIndexPath:category];
        break;
      case 1:
        if (!view)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:sel_setView_ofKind_inCategory_atIndexPath_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        [(_UICollectionViewSubviewCollection *)self setView:a2 forSupplementaryOfKind:view atIndexPath:category];
        break;
      case 0:

        [(_UICollectionViewSubviewCollection *)self setCell:a2 atIndexPath:category];
        break;
    }
  }
}

- (void)transferAllViewsWithoutCopyingToSubviewCollection:(id *)collection
{
  if (collection)
  {
    objc_storeStrong(a2 + 1, collection[1]);
    objc_storeStrong(a2 + 2, collection[2]);
    objc_storeStrong(a2 + 3, collection[3]);
    v4 = objc_opt_new();
    v5 = collection[1];
    collection[1] = v4;

    v6 = objc_opt_new();
    v7 = collection[2];
    collection[2] = v6;

    v8 = objc_opt_new();
    v9 = collection[3];
    collection[3] = v8;
  }
}

- (void)removeViewForSupplementaryOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    v4 = [*(self + 16) objectForKeyedSubscript:a2];
    [v4 removeObjectForKey:kind];
  }
}

- (void)removeViewForDecorationOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    v4 = [*(self + 24) objectForKeyedSubscript:a2];
    [v4 removeObjectForKey:kind];
  }
}

- (void)removeViewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:
{
  if (!self)
  {
    return;
  }

  if (kind == 2)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_removeViewOfKind_inCategory_atIndexPath_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
    }

    v8 = self[3];
  }

  else
  {
    if (kind != 1)
    {
      if (!kind)
      {
        v7 = self[1];

        [v7 removeObjectForKey:category];
      }

      return;
    }

    if (!a2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_removeViewOfKind_inCategory_atIndexPath_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
    }

    v8 = self[2];
  }

  v11 = [v8 objectForKeyedSubscript:a2];
  [v11 removeObjectForKey:category];
}

- (id)cellAtIndexPath:(id *)path
{
  if (path)
  {
    path = [path[1] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return path;
}

- (uint64_t)enumerateCellsWithEnumerator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateCellsWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
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

- (id)supplementaryOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    v4 = [*(self + 16) objectForKeyedSubscript:a2];
    v5 = [v4 objectForKeyedSubscript:kind];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decorationOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    v4 = [*(self + 24) objectForKeyedSubscript:a2];
    v5 = [v4 objectForKeyedSubscript:kind];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:
{
  if (self)
  {
    selfCopy = self;
    switch(kind)
    {
      case 2:
        if (!a2)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel_viewOfKind_inCategory_atIndexPath_ object:selfCopy file:@"_UICollectionViewSubviewCollection.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        self = [(_UICollectionViewSubviewCollection *)selfCopy decorationOfKind:a2 atIndexPath:category];
        break;
      case 1:
        if (!a2)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:sel_viewOfKind_inCategory_atIndexPath_ object:selfCopy file:@"_UICollectionViewSubviewCollection.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"kind != nil"}];
        }

        self = [(_UICollectionViewSubviewCollection *)selfCopy supplementaryOfKind:a2 atIndexPath:category];
        break;
      case 0:
        self = [self[1] objectForKeyedSubscript:category];
        break;
    }

    v4 = vars8;
  }

  return self;
}

- (id)supplementariesOfKind:(uint64_t)kind
{
  if (kind)
  {
    v2 = [*(kind + 16) objectForKeyedSubscript:a2];
    allValues = [v2 allValues];
    v4 = allValues;
    v5 = MEMORY[0x1E695E0F0];
    if (allValues)
    {
      v5 = allValues;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decorationsOfKind:(uint64_t)kind
{
  if (kind)
  {
    v2 = [*(kind + 24) objectForKeyedSubscript:a2];
    allValues = [v2 allValues];
    v4 = allValues;
    v5 = MEMORY[0x1E695E0F0];
    if (allValues)
    {
      v5 = allValues;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathsForSupplementariesOfKind:(uint64_t)kind
{
  if (kind)
  {
    v2 = [*(kind + 16) objectForKeyedSubscript:a2];
    allKeys = [v2 allKeys];
    v4 = allKeys;
    v5 = MEMORY[0x1E695E0F0];
    if (allKeys)
    {
      v5 = allKeys;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathsForDecorationsOfKind:(uint64_t)kind
{
  if (kind)
  {
    v2 = [*(kind + 24) objectForKeyedSubscript:a2];
    allKeys = [v2 allKeys];
    v4 = allKeys;
    v5 = MEMORY[0x1E695E0F0];
    if (allKeys)
    {
      v5 = allKeys;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateSupplementariesWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
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

- (void)enumerateSupplementariesOfElementKind:(uint64_t)kind enumerator:
{
  if (self)
  {
    if (a2)
    {
      if (kind)
      {
LABEL_4:
        v6 = [*(self + 16) objectForKeyedSubscript:a2];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __87___UICollectionViewSubviewCollection_enumerateSupplementariesOfElementKind_enumerator___block_invoke;
        v9[3] = &unk_1E7104FB8;
        v9[4] = kind;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];

        return;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateSupplementariesOfElementKind_enumerator_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (kind)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_enumerateSupplementariesOfElementKind_enumerator_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateDecorationsWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewCollection.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
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

- (void)enumerateDecorationsOfElementKind:(uint64_t)kind enumerator:
{
  if (self)
  {
    if (a2)
    {
      if (kind)
      {
LABEL_4:
        v6 = [*(self + 24) objectForKeyedSubscript:a2];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __83___UICollectionViewSubviewCollection_enumerateDecorationsOfElementKind_enumerator___block_invoke;
        v9[3] = &unk_1E7104FB8;
        v9[4] = kind;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];

        return;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateDecorationsOfElementKind_enumerator_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (kind)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_enumerateDecorationsOfElementKind_enumerator_ object:self file:@"_UICollectionViewSubviewCollection.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];

    goto LABEL_4;
  }
}

- (void)enumerateAuxillariesWithEnumerator:(uint64_t)enumerator
{
  if (enumerator)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateAuxillariesWithEnumerator_ object:enumerator file:@"_UICollectionViewSubviewCollection.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
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
    [(_UICollectionViewSubviewCollection *)enumerator enumerateSupplementariesWithEnumerator:v6];
    if ((v8[3] & 1) == 0)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __73___UICollectionViewSubviewCollection_enumerateAuxillariesWithEnumerator___block_invoke_2;
      v5[3] = &unk_1E7105008;
      v5[4] = a2;
      [(_UICollectionViewSubviewCollection *)enumerator enumerateDecorationsWithEnumerator:v5];
    }

    _Block_object_dispose(&v7, 8);
  }
}

- (void)enumerateAllViewsWithEnumerator:(uint64_t)enumerator
{
  if (enumerator)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateAllViewsWithEnumerator_ object:enumerator file:@"_UICollectionViewSubviewCollection.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
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
    [(_UICollectionViewSubviewCollection *)enumerator enumerateCellsWithEnumerator:v7];
    if ((v9[3] & 1) == 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_2;
      v6[3] = &unk_1E7104FE0;
      v6[4] = a2;
      v6[5] = &v8;
      [(_UICollectionViewSubviewCollection *)enumerator enumerateSupplementariesWithEnumerator:v6];
      if ((v9[3] & 1) == 0)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_3;
        v5[3] = &unk_1E7104FE0;
        v5[4] = a2;
        v5[5] = &v8;
        [(_UICollectionViewSubviewCollection *)enumerator enumerateDecorationsWithEnumerator:v5];
      }
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (uint64_t)containsView:(uint64_t)view
{
  if (view)
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
    [(_UICollectionViewSubviewCollection *)view enumerateAllViewsWithEnumerator:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)updateCellsUsingFilter:(uint64_t)filter
{
  if (filter)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_updateCellsUsingFilter_ object:filter file:@"_UICollectionViewSubviewCollection.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(filter + 8), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61___UICollectionViewSubviewCollection_updateCellsUsingFilter___block_invoke;
    v9[3] = &unk_1E7105080;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)filter enumerateCellsWithEnumerator:v9];
    v6 = *(filter + 8);
    *(filter + 8) = v5;
    v7 = v5;
  }
}

- (void)updateSupplementariesUsingFilter:(uint64_t)filter
{
  if (filter)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_updateSupplementariesUsingFilter_ object:filter file:@"_UICollectionViewSubviewCollection.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(filter + 16), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71___UICollectionViewSubviewCollection_updateSupplementariesUsingFilter___block_invoke;
    v9[3] = &unk_1E71050A8;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)filter enumerateSupplementariesWithEnumerator:v9];
    v6 = *(filter + 16);
    *(filter + 16) = v5;
    v7 = v5;
  }
}

- (void)updateDecorationsUsingFilter:(uint64_t)filter
{
  if (filter)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_updateDecorationsUsingFilter_ object:filter file:@"_UICollectionViewSubviewCollection.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(filter + 24), "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___UICollectionViewSubviewCollection_updateDecorationsUsingFilter___block_invoke;
    v9[3] = &unk_1E71050A8;
    v11 = a2;
    v5 = v4;
    v10 = v5;
    [(_UICollectionViewSubviewCollection *)filter enumerateDecorationsWithEnumerator:v9];
    v6 = *(filter + 24);
    *(filter + 24) = v5;
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