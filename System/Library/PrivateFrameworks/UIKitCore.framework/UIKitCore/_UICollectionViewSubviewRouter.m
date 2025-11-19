@interface _UICollectionViewSubviewRouter
- (id)description;
- (id)initWithContainer:(void *)a1;
- (uint64_t)setContainer:(uint64_t)result;
- (uint64_t)shouldAddSubview:(uint64_t *)a3 atPosition:(uint64_t)a4 relativeTo:(int)a5 creatingBookmarkIfNecessary:;
- (uint64_t)shouldBringSubviewToFront:(uint64_t)result;
- (uint64_t)shouldExchangeSubviewAtIndex:(unint64_t)a3 withSubviewAtIndex:;
- (void)_addControlledSubview:(uint64_t)a3 atPosition:(uint64_t)a4 relativeTo:;
- (void)_adjustTargetPosition:(uint64_t)a3 forAddingUncontrolledSubviewWithBookmark:(uint64_t)a4 relativeTo:;
- (void)_performManagedUpdateWithView:(uint64_t)a3 position:(uint64_t)a4 relativeTo:;
- (void)addContainerView:(uint64_t)a1;
- (void)addControlledSubview:(int64_t)a3 zIndex:(int64_t)a4 orderMode:;
- (void)enumerateBookmarksWithEnumerator:(uint64_t)a1;
- (void)willRemoveSubview:(uint64_t)a1;
@end

@implementation _UICollectionViewSubviewRouter

- (id)initWithContainer:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a2 subviews];
    v5 = [v4 count];

    if (v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_initWithContainer_ object:v2 file:@"_UICollectionViewSubviewRouter.m" lineNumber:38 description:{@"_UICollectionViewSubviewRouter should be initialized with a view containing zero subviews. View: %@", a2}];
    }

    v13.receiver = v2;
    v13.super_class = _UICollectionViewSubviewRouter;
    v6 = objc_msgSendSuper2(&v13, sel_init);
    v2 = v6;
    if (v6)
    {
      v6[5] = a2;
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
      v8 = *(v2 + 1);
      *(v2 + 1) = v7;

      v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
      v10 = *(v2 + 2);
      *(v2 + 2) = v9;

      *(v2 + 32) = dyld_program_sdk_at_least() ^ 1;
    }
  }

  return v2;
}

- (uint64_t)setContainer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 subviews];
    v5 = [v4 count];

    if (v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_setContainer_ object:v3 file:@"_UICollectionViewSubviewRouter.m" lineNumber:50 description:{@"UICollectionView internal inconsistency: the _UICollectionViewSubviewRouter's view should initially contain zero subviews. View: %@", a2}];
    }

    *(v3 + 40) = a2;
    [*(v3 + 8) removeAllObjects];
    v6 = *(v3 + 16);

    return [v6 removeAllObjects];
  }

  return result;
}

- (void)addControlledSubview:(int64_t)a3 zIndex:(int64_t)a4 orderMode:
{
  if (!a1)
  {
    return;
  }

  v8 = *(a1 + 40);
  v9 = v8;
  if (!a2 || !v8)
  {
    goto LABEL_41;
  }

  if (*(a1 + 32) != 1)
  {
    if (a4 == -10000)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:sel_addControlledSubview_zIndex_orderMode_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:70 description:{@"UICollectionView internal inconsistency: a controlled subview must specify its position in relation to containers. View: %@", a2}];
    }

    v24 = [*(a1 + 16) objectForKey:a2];
    v25 = v24;
    if (v24)
    {
      if (v24[2] == a3 && v24[3] == a4)
      {
        v26 = 0;
LABEL_28:
        v46 = 0;
        v47 = &v46;
        v48 = 0x3032000000;
        v49 = __Block_byref_object_copy__189;
        v50 = __Block_byref_object_dispose__189;
        v51 = 0;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __72___UICollectionViewSubviewRouter_addControlledSubview_zIndex_orderMode___block_invoke;
        v36[3] = &unk_1E7122FF8;
        v36[7] = a4;
        v36[8] = a3;
        v37 = v26;
        v36[4] = &v46;
        v36[5] = &v38;
        v36[6] = &v42;
        [(_UICollectionViewSubviewRouter *)a1 enumerateBookmarksWithEnumerator:v36];
        v27 = v47[5];
        if (!v27)
        {
          v28 = objc_opt_self();
          if (a4 == -10000)
          {
            v32 = v28;
            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            [v33 handleFailureInMethod:sel_bookmarkForControlledSubviewsWithZIndex_orderMode_ object:v32 file:@"_UICollectionViewSubviewRouter.m" lineNumber:550 description:@"UICollectionView internal inconsistency: a controlled subview bookmark must specify its position in relation to containers."];
          }

          v29 = objc_alloc_init(_UICollectionViewSubviewRouterBookmark);
          if (v29)
          {
            v29->_zIndex = a3;
            v29->_orderMode = a4;
            v29->_count = 1;
          }

          v30 = v47[5];
          v47[5] = v29;

          [*(a1 + 8) insertObject:v47[5] atIndex:v43[3]];
          v27 = v47[5];
        }

        [*(a1 + 16) setObject:v27 forKey:a2];
        [(_UICollectionViewSubviewRouter *)a1 _performManagedUpdateWithView:a2 position:v39[3] relativeTo:0];
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);

        goto LABEL_41;
      }

      --v24[1];
    }

    v26 = 1;
    goto LABEL_28;
  }

  objc_opt_class();
  v10 = objc_opt_class();
  v11 = *(a1 + 40);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_40;
  }

  v13 = [(UIView *)v11 _subviewAtIndex:?];
  if (!v13)
  {
    goto LABEL_35;
  }

  v34 = v9;
  v35 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1;
  while (1)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = [v13 _layoutAttributes];
      v19 = [v18 zIndex];

      if (v19 > v35)
      {
        goto LABEL_18;
      }

      v16 |= v13 == a2;
      v15 = 1;
      goto LABEL_13;
    }

    if (![v13 isMemberOfClass:v10])
    {
      break;
    }

    v16 |= v13 == a2;
LABEL_13:
    v17 = v14;
LABEL_14:
    v20 = [(UIView *)v12 _subviewAtIndex:?];

    v13 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  if (dyld_program_sdk_at_least() & 1) != 0 || ((v15 ^ 1))
  {
    goto LABEL_14;
  }

LABEL_18:
  v9 = v34;
  if ((v17 & 0x8000000000000000) == 0)
  {
    v21 = v17 + ((v16 & 1) == 0);
    v22 = v12;
    v23 = a2;
    goto LABEL_38;
  }

LABEL_35:
  if ([v12 __isKindOfUIScrollView])
  {
    [v12 _addContentSubview:a2 atBack:1];
  }

  else
  {
    v22 = v12;
    v23 = a2;
    v21 = 0;
LABEL_38:
    [v22 insertSubview:v23 atIndex:v21];
  }

LABEL_40:
LABEL_41:
}

- (void)enumerateBookmarksWithEnumerator:(uint64_t)a1
{
  v4 = 0;
  v5 = 0;
  v8 = 0;
  do
  {
    if (v4 >= [*(a1 + 8) count])
    {
      break;
    }

    v6 = [*(a1 + 8) objectAtIndexedSubscript:v4];
    v7 = v6;
    if (v6 && *(v6 + 8))
    {
      (*(a2 + 16))(a2, v6, v4, v5, &v8);
      v5 += v7[1];
      ++v4;
    }

    else
    {
      [*(a1 + 8) removeObjectAtIndex:v4];
    }
  }

  while (v8 != 1);
}

- (void)_performManagedUpdateWithView:(uint64_t)a3 position:(uint64_t)a4 relativeTo:
{
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  objc_storeStrong(v7, a2);
  [v7[2] _addSubview:a2 positioned:a3 relativeTo:a4];
  v9 = *v7;
  *v7 = v8;
}

- (void)_addControlledSubview:(uint64_t)a3 atPosition:(uint64_t)a4 relativeTo:
{
  v8 = [*(a1 + 16) objectForKey:a2];
  if (!v8)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:sel__addControlledSubview_atPosition_relativeTo_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:148 description:@"UICollectionView internal inconsistency: expected view bookmark for adding controlled subview"];
  }

  if ((a3 + 3) > 1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78___UICollectionViewSubviewRouter__addControlledSubview_atPosition_relativeTo___block_invoke;
    v19[3] = &unk_1E7123020;
    v21 = &v22;
    v12 = v8;
    v20 = v12;
    [(_UICollectionViewSubviewRouter *)a1 enumerateBookmarksWithEnumerator:v19];
    v13 = v23[3];
    if (a3 == -1)
    {
      if (v8)
      {
        v16 = v12[1];
      }

      else
      {
        v16 = 0;
      }

      v15 = v13 + v16 - 1;
    }

    else
    {
      if (v8)
      {
        v14 = v12[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = fmax(v13, fmin(a3, (v13 + v14 - 1)));
    }

    [(_UICollectionViewSubviewRouter *)a1 _performManagedUpdateWithView:a2 position:v15 relativeTo:0];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v9 = [*(a1 + 16) objectForKey:a4];
    v10 = v9;
    if (v9)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel__addControlledSubview_atPosition_relativeTo_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:152 description:@"UICollectionView internal inconsistency: relative updates for controlled subviews should share a common bookmark"];
    }

    [(_UICollectionViewSubviewRouter *)a1 _performManagedUpdateWithView:a2 position:a3 relativeTo:a4];
  }
}

- (void)addContainerView:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      [*(a1 + 40) insertSubview:a2 atIndex:0];
    }

    else
    {
      [(_UICollectionViewSubviewRouter *)a1 addControlledSubview:a2 zIndex:0 orderMode:0];
    }
  }
}

- (uint64_t)shouldAddSubview:(uint64_t *)a3 atPosition:(uint64_t)a4 relativeTo:(int)a5 creatingBookmarkIfNecessary:
{
  if (!a1)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = v10;
  v12 = 0;
  if (a2 && v10)
  {
    if ((*(a1 + 32) & 1) != 0 || *(a1 + 24) == a2 || (*(v10 + 98) & 0x80) != 0)
    {
      v12 = 1;
    }

    else
    {
      v13 = [*(a1 + 16) objectForKey:a2];
      v14 = v13;
      if (v13 || a5)
      {
        if ((v13 || (+[_UICollectionViewSubviewRouterBookmark bookmarkForUncontrolledSubview](), v14 = objc_claimAutoreleasedReturnValue(), [*(a1 + 16) setObject:v14 forKey:a2], v14)) && v14[3] == -10000)
        {
          [(_UICollectionViewSubviewRouter *)a1 _adjustTargetPosition:a3 forAddingUncontrolledSubviewWithBookmark:v14 relativeTo:a4];
          v12 = 1;
        }

        else
        {
          v16 = [*(a1 + 16) objectForKey:a4];
          v17 = v16;
          if (!v16 || v14 == v16)
          {
            [(_UICollectionViewSubviewRouter *)a1 _addControlledSubview:a2 atPosition:*a3 relativeTo:a4];
          }

          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (void)_adjustTargetPosition:(uint64_t)a3 forAddingUncontrolledSubviewWithBookmark:(uint64_t)a4 relativeTo:
{
  v8 = [a1[5] subviews];
  v9 = [v8 count];

  v10 = [a1[2] objectForKey:a4];
  v11 = *a2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = -1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __108___UICollectionViewSubviewRouter__adjustTargetPosition_forAddingUncontrolledSubviewWithBookmark_relativeTo___block_invoke;
  v22 = &unk_1E7123048;
  v26 = &v39;
  v27 = &v35;
  v23 = a3;
  v24 = a1;
  v28 = &v31;
  v29 = v11;
  v30 = v9;
  v12 = v10;
  v25 = v12;
  [(_UICollectionViewSubviewRouter *)a1 enumerateBookmarksWithEnumerator:?];
  v13 = [a1[1] count];
  v14 = v36;
  v15 = v36[3];
  if ((v15 & 0x8000000000000000) != 0)
  {
    if (v11 <= -3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    v36[3] = v16;
    if (v11 <= -3)
    {
      v17 = 0;
    }

    else
    {
      v17 = v9;
    }

    v32[3] = v17;
  }

  else if (v15 > v13)
  {
    v36[3] = v13;
  }

  if ((v40[3] & 0x8000000000000000) == 0)
  {
    [a1[1] removeObjectAtIndex:?];
    v14 = v36;
    v18 = v36[3];
    if (v40[3] < v18)
    {
      v36[3] = v18 - 1;
      v32[3] -= *(a3 + 8);
    }
  }

  [a1[1] insertObject:a3 atIndex:v14[3]];
  *a2 = v32[3];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
}

- (uint64_t)shouldBringSubviewToFront:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [*(result + 40) subviews];
    v5 = [v4 count];

    v6 = v5;
    return [(_UICollectionViewSubviewRouter *)v3 shouldAddSubview:a2 atPosition:&v6 relativeTo:0 creatingBookmarkIfNecessary:0];
  }

  return result;
}

- (uint64_t)shouldExchangeSubviewAtIndex:(unint64_t)a3 withSubviewAtIndex:
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = v6;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_29;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v9 = [v6 subviews];
    v10 = v9;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v11 = [v9 count];
    v8 = 0;
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v11 <= a2)
    {
      goto LABEL_28;
    }

    v12 = [v10 count];
    v8 = 0;
    if (a2 == a3 || v12 <= a3)
    {
      goto LABEL_28;
    }

    v13 = *(a1 + 16);
    v14 = [v10 objectAtIndexedSubscript:a2];
    v15 = [v13 objectForKey:v14];

    v16 = *(a1 + 16);
    v17 = [v10 objectAtIndexedSubscript:a3];
    v18 = [v16 objectForKey:v17];

    if (!v15 || !v18)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:sel_shouldExchangeSubviewAtIndex_withSubviewAtIndex_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:387 description:@"UICollectionView internal inconsistency: attempted to exchange subviews that do not have an associated _UICollectionViewSubviewRouterBookmark. Please file a bug against UICollectionView."];
    }

    if (v15 == v18)
    {
      if (!v15 || v15[3] != -10000)
      {
LABEL_25:
        v8 = 1;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_26;
      }

      v8 = 0;
      if (v15[3] != -10000 || !v18)
      {
        goto LABEL_27;
      }
    }

    if (v18[3] == -10000)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = -1;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = -1;
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __82___UICollectionViewSubviewRouter_shouldExchangeSubviewAtIndex_withSubviewAtIndex___block_invoke;
      v25 = &unk_1E7123070;
      v28 = &v34;
      v26 = v15;
      v29 = &v30;
      v27 = v18;
      [(_UICollectionViewSubviewRouter *)a1 enumerateBookmarksWithEnumerator:?];
      if (v35[3] < 0 || v31[3] < 0)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:sel_shouldExchangeSubviewAtIndex_withSubviewAtIndex_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:411 description:@"UICollectionView internal inconsistency: attempted to exchange subviews that do not have an associated _UICollectionViewSubviewRouterBookmark index. Please file a bug against UICollectionView."];
      }

      [*(a1 + 8) exchangeObjectAtIndex:v22 withObjectAtIndex:{v23, v24, v25}];

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
      goto LABEL_25;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  v8 = 1;
LABEL_29:

  return v8;
}

- (void)willRemoveSubview:(uint64_t)a1
{
  if (a1 && (*(a1 + 32) & 1) == 0)
  {
    v4 = [*(a1 + 16) objectForKey:a2];
    v7 = v4;
    if (v4)
    {
      v5 = *(v4 + 8);
      if (!v5)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:sel_willRemoveSubview_ object:a1 file:@"_UICollectionViewSubviewRouter.m" lineNumber:425 description:@"UICollectionView internal inconsistency: attempted to remove a subview from an empty _UICollectionViewSubviewRouterBookmark. Please file a bug against UICollectionView."];

        v4 = v7;
        v5 = v7[1];
      }

      *(v4 + 8) = v5 - 1;
    }

    [*(a1 + 16) removeObjectForKey:a2];
  }
}

- (id)description
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self)
  {
    v5 = self->_container;
    useLegacyRouting = self->_useLegacyRouting;
  }

  else
  {
    v5 = 0;
    useLegacyRouting = 0;
  }

  v7 = [v3 stringWithFormat:@"<%@: %p container = %@ legacyRouting = %d; bookmarks = {", v4, self, v5, useLegacyRouting];;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = self->_bookmarks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [*(*(&v34 + 1) + 8 * v12) description];
        v16 = [v14 stringWithFormat:@"\n    %@", v15];
        v7 = [v13 stringByAppendingString:v16];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v17 = [v7 stringByAppendingString:@"\n} subviews = {"];;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (self)
  {
    container = self->_container;
  }

  else
  {
    container = 0;
  }

  v19 = [(UIView *)container subviews];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      v24 = v17;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v30 + 1) + 8 * v23);
        v26 = [(NSMapTable *)self->_subviewToBookmarkMap objectForKey:v25];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n    <%@: %p bookmark: %p>", v25, objc_opt_class(), v26];
        v17 = [v24 stringByAppendingString:v27];

        ++v23;
        v24 = v17;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v28 = [v17 stringByAppendingString:@"\n}>"];

  return v28;
}

@end