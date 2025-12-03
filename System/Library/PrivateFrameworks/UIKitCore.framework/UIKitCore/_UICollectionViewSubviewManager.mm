@interface _UICollectionViewSubviewManager
- (BOOL)enqueueViewForReuse:(uint64_t)reuse;
- (_UICollectionViewSubviewCollection)allVisibleViewsSubviewCollection;
- (id)allVisibleViews;
- (id)allVisibleViewsHashTable;
- (id)dequeueReusableViewWithReuseIdentifier:(void *)identifier elementKind:(uint64_t)kind elementCategory:;
- (id)visibleCellAtIndexPath:(id *)path;
- (id)visibleViewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:;
- (id)visibleViewWithLayoutAttributes:(id *)attributes;
- (uint64_t)enumerateAllViewsInReuseQueueWithEnumerator:(uint64_t)result;
- (uint64_t)hasVisibleCells;
- (uint64_t)indexPathsForVisibleCells;
- (uint64_t)indexPathsForVisibleDecorationsOfKind:(uint64_t *)kind;
- (uint64_t)indexPathsForVisibleSupplementariesOfKind:(uint64_t *)kind;
- (uint64_t)isViewInReuseQueue:(uint64_t)queue;
- (uint64_t)removeAllVisibleViews;
- (uint64_t)replaceVisibleViewsWithoutCopyingWithContentsOfSubviewCollection:(uint64_t)result;
- (uint64_t)setVisibleCell:(uint64_t)cell atIndexPath:;
- (uint64_t)updateVisibleCellsUsingFilter:(uint64_t)result;
- (uint64_t)visibleCells;
- (uint64_t)visibleDecorationOfKind:(uint64_t)kind atIndexPath:;
- (uint64_t)visibleDecorationsOfKind:(uint64_t *)kind;
- (uint64_t)visibleSupplementariesOfKind:(uint64_t *)kind;
- (uint64_t)visibleSupplementaryOfKind:(uint64_t)kind atIndexPath:;
- (void)_getElementKindReuseQueues:(void *)queues reuseQueue:(uint64_t)queue forReuseIdentifier:(void *)identifier elementKind:(int)kind creatingIfNecessary:;
- (void)ensureViewIsRemovedFromReuseQueue:(uint64_t)queue;
- (void)initWithCollectionView:(void *)view;
- (void)removeAllDequeuedViewsWithEnumerator:(uint64_t)enumerator;
@end

@implementation _UICollectionViewSubviewManager

- (uint64_t)indexPathsForVisibleCells
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] indexPathsForCells];
    v1 = vars8;
  }

  return self;
}

- (_UICollectionViewSubviewCollection)allVisibleViewsSubviewCollection
{
  if (self)
  {
    v2 = objc_alloc_init(_UICollectionViewSubviewCollection);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67___UICollectionViewSubviewManager_allVisibleViewsSubviewCollection__block_invoke;
    v5[3] = &unk_1E70FFC98;
    v3 = v2;
    v6 = v3;
    [(_UICollectionViewSubviewCollection *)*(self + 8) enumerateAllViewsWithEnumerator:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allVisibleViews
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] allViews];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)visibleCells
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] cells];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)hasVisibleCells
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(self + 8);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50___UICollectionViewSubviewManager_hasVisibleCells__block_invoke;
    v4[3] = &unk_1E711CE68;
    v4[4] = &v5;
    [(_UICollectionViewSubviewCollection *)v1 enumerateCellsWithEnumerator:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)allVisibleViewsHashTable
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] allViewsHashTable];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)removeAllVisibleViews
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      [v2[1] removeAllObjects];
      [v2[2] removeAllObjects];
      [v2[3] removeAllObjects];
    }

    v3 = *(v1 + 40);

    return [v3 _subviewManagerDidUpdateVisibleCells];
  }

  return result;
}

- (void)initWithCollectionView:(void *)view
{
  if (!view)
  {
    return 0;
  }

  v14.receiver = view;
  v14.super_class = _UICollectionViewSubviewManager;
  v3 = objc_msgSendSuper2(&v14, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[5] = a2;
    v5 = objc_alloc_init(_UICollectionViewSubviewCollection);
    v6 = v4[1];
    v4[1] = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:5];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:5];
    v12 = v4[4];
    v4[4] = v11;
  }

  return v4;
}

- (uint64_t)setVisibleCell:(uint64_t)cell atIndexPath:
{
  if (result)
  {
    v3 = result;
    [(_UICollectionViewSubviewCollection *)*(result + 8) setCell:a2 atIndexPath:cell];
    v4 = *(v3 + 40);

    return [v4 _subviewManagerDidUpdateVisibleCells];
  }

  return result;
}

- (uint64_t)replaceVisibleViewsWithoutCopyingWithContentsOfSubviewCollection:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [(_UICollectionViewSubviewCollection *)a2 transferAllViewsWithoutCopyingToSubviewCollection:?];
    v3 = *(v2 + 40);

    return [v3 _subviewManagerDidUpdateVisibleCells];
  }

  return result;
}

- (id)visibleCellAtIndexPath:(id *)path
{
  if (path)
  {
    path = [(_UICollectionViewSubviewCollection *)path[1] cellAtIndexPath:a2];
    v2 = vars8;
  }

  return path;
}

- (uint64_t)visibleSupplementaryOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] supplementaryOfKind:a2 atIndexPath:kind];
    v3 = vars8;
  }

  return self;
}

- (uint64_t)visibleSupplementariesOfKind:(uint64_t *)kind
{
  if (kind)
  {
    kind = [(_UICollectionViewSubviewCollection *)kind[1] supplementariesOfKind:a2];
    v2 = vars8;
  }

  return kind;
}

- (uint64_t)visibleDecorationOfKind:(uint64_t)kind atIndexPath:
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] decorationOfKind:a2 atIndexPath:kind];
    v3 = vars8;
  }

  return self;
}

- (uint64_t)visibleDecorationsOfKind:(uint64_t *)kind
{
  if (kind)
  {
    kind = [(_UICollectionViewSubviewCollection *)kind[1] decorationsOfKind:a2];
    v2 = vars8;
  }

  return kind;
}

- (id)visibleViewOfKind:(uint64_t)kind inCategory:(uint64_t)category atIndexPath:
{
  if (self)
  {
    self = [(_UICollectionViewSubviewCollection *)self[1] viewOfKind:a2 inCategory:kind atIndexPath:category];
    v4 = vars8;
  }

  return self;
}

- (id)visibleViewWithLayoutAttributes:(id *)attributes
{
  attributesCopy = attributes;
  if (attributes)
  {
    representedElementKind = [a2 representedElementKind];
    representedElementCategory = [a2 representedElementCategory];
    indexPath = [a2 indexPath];
    attributesCopy = [(_UICollectionViewSubviewManager *)attributesCopy visibleViewOfKind:representedElementKind inCategory:representedElementCategory atIndexPath:indexPath];
  }

  return attributesCopy;
}

- (uint64_t)indexPathsForVisibleSupplementariesOfKind:(uint64_t *)kind
{
  if (kind)
  {
    kind = [(_UICollectionViewSubviewCollection *)kind[1] indexPathsForSupplementariesOfKind:a2];
    v2 = vars8;
  }

  return kind;
}

- (uint64_t)indexPathsForVisibleDecorationsOfKind:(uint64_t *)kind
{
  if (kind)
  {
    kind = [(_UICollectionViewSubviewCollection *)kind[1] indexPathsForDecorationsOfKind:a2];
    v2 = vars8;
  }

  return kind;
}

- (uint64_t)updateVisibleCellsUsingFilter:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [(_UICollectionViewSubviewCollection *)*(result + 8) updateCellsUsingFilter:a2];
    v3 = *(v2 + 40);

    return [v3 _subviewManagerDidUpdateVisibleCells];
  }

  return result;
}

- (id)dequeueReusableViewWithReuseIdentifier:(void *)identifier elementKind:(uint64_t)kind elementCategory:
{
  selfCopy = self;
  if (!self)
  {
    goto LABEL_11;
  }

  if (a2)
  {
    if (!identifier)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_dequeueReusableViewWithReuseIdentifier_elementKind_elementCategory_ object:selfCopy file:@"_UICollectionViewSubviewManager.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

    if (!identifier)
    {
LABEL_4:
      if (kind)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel_dequeueReusableViewWithReuseIdentifier_elementKind_elementCategory_ object:selfCopy file:@"_UICollectionViewSubviewManager.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil || elementCategory == UICollectionElementCategoryCell"}];
      }
    }
  }

  v14 = 0;
  v15 = 0;
  [(_UICollectionViewSubviewManager *)selfCopy _getElementKindReuseQueues:&v14 reuseQueue:a2 forReuseIdentifier:identifier elementKind:0 creatingIfNecessary:?];
  v8 = v15;
  v9 = v14;
  selfCopy = [v9 lastObject];
  if (selfCopy)
  {
    [v9 removeObjectAtIndex:{objc_msgSend(v9, "count") - 1}];
    if (![v9 count])
    {
      [v8 removeObjectForKey:a2];
    }

    v10 = selfCopy;
  }

LABEL_11:

  return selfCopy;
}

- (void)_getElementKindReuseQueues:(void *)queues reuseQueue:(uint64_t)queue forReuseIdentifier:(void *)identifier elementKind:(int)kind creatingIfNecessary:
{
  if (!self)
  {
    return;
  }

  if (a2)
  {
    if (queues)
    {
      goto LABEL_4;
    }

LABEL_20:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__getElementKindReuseQueues_reuseQueue_forReuseIdentifier_elementKind_creatingIfNecessary_ object:self file:@"_UICollectionViewSubviewManager.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"reuseQueueForIdentifier != nil"}];

    if (queue)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__getElementKindReuseQueues_reuseQueue_forReuseIdentifier_elementKind_creatingIfNecessary_ object:self file:@"_UICollectionViewSubviewManager.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"reuseQueuesForElementKind != nil"}];

  if (!queues)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (queue)
  {
    goto LABEL_5;
  }

LABEL_21:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__getElementKindReuseQueues_reuseQueue_forReuseIdentifier_elementKind_creatingIfNecessary_ object:self file:@"_UICollectionViewSubviewManager.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_5:
  identifierCopy = @"UICollectionElementKindCell";
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v21 = identifierCopy;
  v13 = [*(self + 16) objectForKeyedSubscript:?];
  if (v13)
  {
    goto LABEL_10;
  }

  if (kind)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    [*(self + 16) setObject:v13 forKeyedSubscript:v21];
LABEL_10:
    v14 = [v13 objectForKeyedSubscript:queue];
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = kind == 0;
    }

    if (!v15)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:5];
      [v13 setObject:v14 forKeyedSubscript:queue];
    }

    v16 = v13;
    *a2 = v13;
    v17 = v14;
    *queues = v14;
  }
}

- (BOOL)enqueueViewForReuse:(uint64_t)reuse
{
  v34 = *MEMORY[0x1E69E9840];
  if (!reuse)
  {
    return 0;
  }

  reuseIdentifier = [a2 reuseIdentifier];
  _layoutAttributes = [a2 _layoutAttributes];
  _content = [(_UILabelConfiguration *)_layoutAttributes _content];

  v7 = 0;
  if (reuseIdentifier && _content)
  {
    v26 = 0;
    v27 = 0;
    [(_UICollectionViewSubviewManager *)reuse _getElementKindReuseQueues:&v26 reuseQueue:reuseIdentifier forReuseIdentifier:_content elementKind:1 creatingIfNecessary:?];
    v8 = v27;
    v9 = v26;
    v10 = *(reuse + 40);
    if (os_variant_has_internal_diagnostics())
    {
      if (!v10)
      {
        v22 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: attempted to reuse view for a nil collection view", buf, 2u);
        }
      }
    }

    else if (!v10)
    {
      v25 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1254) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: attempted to reuse view for a nil collection view", buf, 2u);
      }
    }

    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      _layoutAttributes2 = [a2 _layoutAttributes];
      [currentHandler handleFailureInMethod:sel_enqueueViewForReuse_ object:reuse file:@"_UICollectionViewSubviewManager.m" lineNumber:264 description:{@"UICollectionView internal inconsistency: expected reuse queue for view. Collection view: %@; view: %@; layout attributes: %@", v10, a2, _layoutAttributes2}];
    }

    [v10 bounds];
    Width = CGRectGetWidth(v35);
    [v10 bounds];
    v12 = Width * CGRectGetHeight(v36);
    [a2 bounds];
    v13 = CGRectGetWidth(v37);
    [a2 bounds];
    v14 = v13 * CGRectGetHeight(v38);
    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    v15 = vcvtpd_s64_f64(v12 * 1.5 / v14) + 1;
    v16 = [v9 count];
    v17 = v16 >= v15;
    v7 = v16 < v15;
    if (v17)
    {
      goto LABEL_18;
    }

    if (([v9 containsObject:a2] & 1) == 0)
    {
      [v9 addObject:a2];
      goto LABEL_18;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v19 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      _layoutAttributes3 = [a2 _layoutAttributes];
      *buf = 138412802;
      v29 = v10;
      v30 = 2112;
      v31 = a2;
      v32 = 2112;
      v33 = _layoutAttributes3;
      _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: attempted to queue view that is already in the reuse queue. Collection view: %@; view: %@; layout attributes: %@", buf, 0x20u);
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0010) + 8);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        goto LABEL_19;
      }

      v19 = v18;
      _layoutAttributes3 = [a2 _layoutAttributes];
      *buf = 138412802;
      v29 = v10;
      v30 = 2112;
      v31 = a2;
      v32 = 2112;
      v33 = _layoutAttributes3;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: attempted to queue view that is already in the reuse queue. Collection view: %@; view: %@; layout attributes: %@", buf, 0x20u);
    }

LABEL_16:
    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (uint64_t)isViewInReuseQueue:(uint64_t)queue
{
  if (!queue)
  {
    return 0;
  }

  reuseIdentifier = [a2 reuseIdentifier];
  _layoutAttributes = [a2 _layoutAttributes];
  _content = [(_UILabelConfiguration *)_layoutAttributes _content];

  v7 = 0;
  if (reuseIdentifier && _content)
  {
    v11 = 0;
    v12 = 0;
    [(_UICollectionViewSubviewManager *)queue _getElementKindReuseQueues:&v11 reuseQueue:reuseIdentifier forReuseIdentifier:_content elementKind:0 creatingIfNecessary:?];
    v8 = v12;
    v9 = v11;
    v7 = [v9 containsObject:a2];
  }

  return v7;
}

- (uint64_t)enumerateAllViewsInReuseQueueWithEnumerator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_enumerateAllViewsInReuseQueueWithEnumerator_ object:v3 file:@"_UICollectionViewSubviewManager.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v4 = *(v3 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79___UICollectionViewSubviewManager_enumerateAllViewsInReuseQueueWithEnumerator___block_invoke;
    v6[3] = &unk_1E70FFCC0;
    v6[4] = a2;
    return [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

- (void)ensureViewIsRemovedFromReuseQueue:(uint64_t)queue
{
  if (queue)
  {
    reuseIdentifier = [a2 reuseIdentifier];
    _layoutAttributes = [a2 _layoutAttributes];
    _content = [(_UILabelConfiguration *)_layoutAttributes _content];

    if (reuseIdentifier && _content)
    {
      v10 = 0;
      v11 = 0;
      [(_UICollectionViewSubviewManager *)queue _getElementKindReuseQueues:&v10 reuseQueue:reuseIdentifier forReuseIdentifier:_content elementKind:0 creatingIfNecessary:?];
      v7 = v11;
      v8 = v10;
      v9 = v8;
      if (v8)
      {
        [v8 removeObject:a2];
        if (![v9 count])
        {
          [v7 removeObjectForKey:reuseIdentifier];
        }
      }
    }
  }
}

- (void)removeAllDequeuedViewsWithEnumerator:(uint64_t)enumerator
{
  v17 = *MEMORY[0x1E69E9840];
  if (enumerator)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_removeAllDequeuedViewsWithEnumerator_ object:enumerator file:@"_UICollectionViewSubviewManager.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];
    }

    v4 = *(enumerator + 24);
    if ([v4 count])
    {
      v15 = 0;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
LABEL_7:
        v9 = 0;
        while (1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(a2 + 16))(a2, *(*(&v11 + 1) + 8 * v9), &v15);
          if (v15)
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
            if (v7)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      [v5 removeAllObjects];
    }
  }
}

@end