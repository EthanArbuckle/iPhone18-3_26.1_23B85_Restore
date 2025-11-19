@interface _UICollectionViewLayoutSwipeActionsModule
- (BOOL)_canIgnoreInvalidationContext:(id)a3;
- (BOOL)_canSwipeItemAtIndexPath:(id)a3;
- (BOOL)hasActiveSwipe;
- (BOOL)swipeActionController:(id)a3 insertActionsView:(id)a4 forItemAtIndexPath:(id)a5;
- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4;
- (UICollectionViewLayout)host;
- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4;
- (_UICollectionViewLayoutSwipeActionsModule)initWithHost:(id)a3;
- (id)_cellWithCustomGroupingAtIndexPath:(id)a3;
- (id)gestureRecognizerViewForSwipeActionController:(id)a3;
- (id)itemContainerViewForSwipeActionController:(id)a3;
- (id)propertyAnimatorForCollectionViewUpdates:(id)a3 withCustomAnimator:(id)a4;
- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4;
- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4;
- (id)swipeViewManipulatorForSwipeActionController:(id)a3;
- (int64_t)layoutDirectionForSwipeActionController:(id)a3;
- (int64_t)swipeActionsStyleForSwipedItemAtIndexPath:(id)a3;
- (void)_invalidateSwipeActionsLayoutRefreshingActiveConfigurations:(BOOL)a3;
- (void)_performForcedCollectionViewLayoutPreservingExistingLayoutAttributes;
- (void)_transformLayoutAttributes:(id)a3 ofSeparatorAtBottom:(BOOL)a4 forSwipeOccurrence:(id)a5 isDisappearing:(BOOL)a6;
- (void)_updateSwipeActionsConfiguration:(id)a3 forIndexPath:(id)a4;
- (void)editingStateDidChange;
- (void)finalizeCollectionViewUpdate:(id)a3;
- (void)processLayoutInvalidationWithContext:(id)a3 updateConfigurations:(BOOL)a4;
- (void)revealTrailingSwipeActionsForIndexPath:(id)a3;
- (void)swipeActionController:(id)a3 didBeginSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 swipeOccurrence:(id)a4 didChangeStateFrom:(int64_t)a5 to:(int64_t)a6;
- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4;
- (void)swipeItemAtIndexPath:(id)a3 direction:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)transformCellLayoutAttributes:(id)a3 isDisappearing:(BOOL)a4;
- (void)transformDecorationLayoutAttributes:(id)a3 isDisappearing:(BOOL)a4;
- (void)updateWithDataSourceTranslator:(id)a3;
@end

@implementation _UICollectionViewLayoutSwipeActionsModule

- (BOOL)hasActiveSwipe
{
  v2 = [(UISwipeActionController *)self->_swipeActionController swipedIndexPaths];
  v3 = [v2 count] != 0;

  return v3;
}

- (_UICollectionViewLayoutSwipeActionsModule)initWithHost:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UICollectionViewLayoutSwipeActionsModule;
  v5 = [(_UICollectionViewLayoutSwipeActionsModule *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_host, v4);
    v7 = [v4 collectionView];
    v8 = [v7 traitCollection];
    v9 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [v8 userInterfaceIdiom]);

    v10 = -[UISwipeActionController initWithSwipeActionHost:style:]([UISwipeActionController alloc], "initWithSwipeActionHost:style:", v6, [v9 defaultCollectionViewCompositionalLayoutSwipeStyle]);
    swipeActionController = v6->_swipeActionController;
    v6->_swipeActionController = v10;
  }

  return v6;
}

- (void)_performForcedCollectionViewLayoutPreservingExistingLayoutAttributes
{
  flags = self->_flags;
  *&self->_flags = flags | 4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v5 = [WeakRetained collectionView];
  [v5 layoutIfNeeded];

  *&self->_flags = *&self->_flags & 0xFB | flags & 4;
}

- (BOOL)_canSwipeItemAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v6 = [WeakRetained collectionView];

  v7 = [v6 _reorderedItems];
  v8 = [v7 count];

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [v6 _isCellInvolvedInDragOrDropAnimationAtIndexPath:v4] ^ 1;
  }

  return v9;
}

- (void)swipeItemAtIndexPath:(id)a3 direction:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v10 = a6;
  if ([(_UICollectionViewLayoutSwipeActionsModule *)self _canSwipeItemAtIndexPath:v11])
  {
    [(UISwipeActionController *)self->_swipeActionController swipeItemAtIndexPath:v11 configuration:0 direction:a4 animated:v7 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, 0);
  }
}

- (void)revealTrailingSwipeActionsForIndexPath:(id)a3
{
  swipeActionController = self->_swipeActionController;
  v5 = a3;
  [(_UICollectionViewLayoutSwipeActionsModule *)self swipeItemAtIndexPath:v5 direction:[(UISwipeActionController *)swipeActionController _swipeDirectionForLeadingEdge:0] animated:1 completion:0];
}

- (int64_t)swipeActionsStyleForSwipedItemAtIndexPath:(id)a3
{
  v3 = [(UISwipeActionController *)self->_swipeActionController _existingSwipeOccurrenceForIndexPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _styleFromConfiguration];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v4 = [WeakRetained collectionView];

  return v4;
}

- (id)itemContainerViewForSwipeActionController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v4 = [WeakRetained collectionView];

  return v4;
}

- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (![WeakRetained _supportsSwipeActionsForIndexPath:v5])
  {
    goto LABEL_10;
  }

  v7 = [WeakRetained _leadingSwipeActionsConfigurationForIndexPath:v5];
  if (v7)
  {
    v8 = v7;
LABEL_4:
    [(_UICollectionViewLayoutSwipeActionsModule *)self _updateSwipeActionsConfiguration:v8 forIndexPath:v5];
    goto LABEL_11;
  }

  v9 = [WeakRetained collectionView];
  v10 = [v9 cellForItemAtIndexPath:v5];

  if (!v10 || ([v10 contentView], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v13 = [v10 contentView];
  v8 = [v13 _leadingSwipeActionsConfiguration];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_11:

  return v8;
}

- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if (![WeakRetained _supportsSwipeActionsForIndexPath:v5])
  {
    goto LABEL_10;
  }

  v7 = [WeakRetained _trailingSwipeActionsConfigurationForIndexPath:v5];
  if (v7)
  {
    v8 = v7;
LABEL_4:
    [(_UICollectionViewLayoutSwipeActionsModule *)self _updateSwipeActionsConfiguration:v8 forIndexPath:v5];
    goto LABEL_11;
  }

  v9 = [WeakRetained collectionView];
  v10 = [v9 cellForItemAtIndexPath:v5];

  if (!v10 || ([v10 contentView], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v13 = [v10 contentView];
  v8 = [v13 _trailingSwipeActionsConfiguration];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_11:

  return v8;
}

- (void)_updateSwipeActionsConfiguration:(id)a3 forIndexPath:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  [WeakRetained _updateStyleForSwipeActionsConfiguration:v11 indexPath:v7];

  if ([v11 _swipeActionsStyle] != 1)
  {
    v9 = [(_UICollectionViewLayoutSwipeActionsModule *)self _cellWithCustomGroupingAtIndexPath:v7];

    if (v9)
    {
      [v11 _setSwipeActionsStyle:1];
    }
  }
}

- (id)_cellWithCustomGroupingAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v6 = [WeakRetained collectionView];
  v7 = [v6 cellForItemAtIndexPath:v4];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [v7 _layoutAttributes];
  v9 = [(UICollectionViewLayoutAttributes *)v8 _existingListAttributes];

  if (v9 && (*(v9 + 8) & 2) != 0 && *(v9 + 24) != 15)
  {
    v10 = v7;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = v7;
  if ([v10 _backgroundViewConfigurationGrouping] <= 1)
  {

LABEL_8:
    v10 = 0;
  }

LABEL_11:

LABEL_12:

  return v10;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v4 = [WeakRetained collectionView];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  return v5;
}

- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v8 = [WeakRetained collectionView];

  v9 = [v8 indexPathForItemAtPoint:{x, y}];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(UISwipeActionController *)self->_swipeActionController swipeOccurrences];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (([v17 _hasAmbiguousIndexPath] & 1) == 0)
          {
            v18 = [v17 indexPath];
            v19 = [v8 _visibleDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:v18];

            if (v19)
            {
              if (([v19 isHidden] & 1) == 0)
              {
                [v19 convertPoint:v8 fromView:{x, y}];
                if ([v19 pointInside:0 withEvent:?])
                {
                  v11 = [v17 indexPath];

                  goto LABEL_17;
                }
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v7 = [WeakRetained collectionView];
  v8 = [v7 cellForItemAtIndexPath:v5];

  return v8;
}

- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v7 = [WeakRetained collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v53 = v10;
  v54 = v12;
  v56 = v14;
  [v7 safeAreaInsets];
  v51 = v18;
  v52 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v7 accessoryViewAtEdge:3];
  v24 = v23;
  if (v23)
  {
    [v23 frame];
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = v16;
    v62.origin.y = v11;
    v62.size.width = v13;
    v62.size.height = v15;
    v26 = MaxX - CGRectGetMinX(v62);
    if (v20 < v26)
    {
      v20 = v26;
    }
  }

  v27 = [v7 accessoryViewAtEdge:5];
  if (v27)
  {
    v63.origin.x = v16;
    v63.origin.y = v11;
    v63.size.width = v13;
    v63.size.height = v15;
    v28 = CGRectGetMaxX(v63);
    [v27 frame];
    v29 = v28 - CGRectGetMinX(v64);
    if (v22 < v29)
    {
      v22 = v29;
    }
  }

  v30 = [WeakRetained layoutAttributesForDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:{v5, *&v22}];
  [v30 frame];
  if (v30)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
  }

  else
  {
    v38 = v15;
    v36 = v11;
    v35 = v16;
    if (os_variant_has_internal_diagnostics())
    {
      v49 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v59 = v5;
        _os_log_fault_impl(&dword_188A29000, v49, OS_LOG_TYPE_FAULT, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
      }
    }

    else
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_extraInsetsForItemAtIndexPath____s_category) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v5;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
      }
    }

    v37 = v13;
  }

  v40 = v9 + v20;
  v41 = v54 - (v20 + v50);
  v42 = v56 - (v52 + v51);
  v65.origin.x = v40;
  v65.origin.y = v53 + v52;
  v65.size.width = v41;
  v65.size.height = v42;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v35;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v55 = CGRectGetMinX(v66);
  v67.origin.x = v35;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v43 = CGRectGetMaxX(v67);
  v68.origin.x = v40;
  v68.origin.y = v53 + v52;
  v68.size.width = v41;
  v68.size.height = v42;
  v44 = CGRectGetMaxX(v68);

  v45 = 0.0;
  v46 = fmax(MinX - v55, 0.0);
  v47 = fmax(v43 - v44, 0.0);
  v48 = 0.0;
  result.right = v47;
  result.bottom = v45;
  result.left = v46;
  result.top = v48;
  return result;
}

- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v7 = ([WeakRetained isEditing] & 1) == 0 && -[_UICollectionViewLayoutSwipeActionsModule _canSwipeItemAtIndexPath:](self, "_canSwipeItemAtIndexPath:", v5);

  return v7;
}

- (BOOL)swipeActionController:(id)a3 insertActionsView:(id)a4 forItemAtIndexPath:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v10 = [WeakRetained collectionView];

  v11 = objc_loadWeakRetained(&self->_host);
  _UIInvalidateSwipeActionsLayoutForDecorationViewAtIndexPath(v11, v8);

  _UIPerformImmediateCollectionViewLayoutAndVisibleCellsUpdate(v10);
  v12 = [v10 _visibleDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:v8];
  v13 = v12;
  if (v12)
  {
    [v12 setClipsToBounds:1];
    [v13 addSubview:v7];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v16 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Swipe actions view was not created for index path: %@", &v17, 0xCu);
    }
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_insertActionsView_forItemAtIndexPath____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Swipe actions view was not created for index path: %@", &v17, 0xCu);
    }
  }

  return v13 != 0;
}

- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4
{
  if ([a3 _isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:a4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_host);
    [WeakRetained _willBeginSwiping];
  }
}

- (void)swipeActionController:(id)a3 didBeginSwipeForItemAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 _existingSwipeOccurrenceForIndexPath:v5];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = v5;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Unable to get swipe occurrence for swipe at index path: %@", &v18, 0xCu);
      }
    }
  }

  else if (!v6)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &swipeActionController_didBeginSwipeForItemAtIndexPath____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Unable to get swipe occurrence for swipe at index path: %@", &v18, 0xCu);
    }
  }

  v7 = [v6 swipedView];
  v8 = [(UIView *)v7 _safeMaskView];
  if (!_UISolariumSwipeActionsEnabled() || ([(UIView *)v7 _safeMaskView], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, [(UIView *)v7 _safeMaskView], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    v13 = [_UICollectionViewLayoutSwipeMaskView alloc];
    [v7 bounds];
    v14 = [(UIView *)v13 initWithFrame:?];

    v15 = +[UIColor blackColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v7 _setSafeMaskView:v14];
    v8 = v14;
  }

  _UIUpdateMaskViewClippingFromView(v8, v7);
}

- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _existingSwipeOccurrenceForIndexPath:v7];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v8)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unable to get swipe occurrence for ended swipe at index path: %@", &v18, 0xCu);
      }
    }
  }

  else if (!v8)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1200) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unable to get swipe occurrence for ended swipe at index path: %@", &v18, 0xCu);
    }
  }

  [v8 setSwipedViewMaskWasRemoved:1];
  v9 = [v8 _hasAmbiguousIndexPath];
  v10 = [v8 swipedView];
  WeakRetained = v10;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v18 = 138412290;
          v19 = WeakRetained;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Swiped view was of unexpected class or nil: %@", &v18, 0xCu);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F498) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = WeakRetained;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Swiped view was of unexpected class or nil: %@", &v18, 0xCu);
        }
      }

      [(UIView *)WeakRetained _setSafeMaskView:?];
    }
  }

  else
  {
    [(UIView *)v10 _setSafeMaskView:?];

    if ([v8 _didReloadData])
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_host);
    v13 = [v8 indexPath];
    _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(WeakRetained, v13);
  }

LABEL_12:
  if ([v6 _isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:v7])
  {
    v14 = objc_loadWeakRetained(&self->_host);
    [v14 _didEndSwiping];
  }
}

- (void)swipeActionController:(id)a3 swipeOccurrence:(id)a4 didChangeStateFrom:(int64_t)a5 to:(int64_t)a6
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  switch(a6)
  {
    case 5:
      goto LABEL_12;
    case 4:
      v40 = [v11 currentAction];
      v41 = [v40 style];

      if (v41 == 1)
      {
        break;
      }

LABEL_12:
      [(_UICollectionViewLayoutSwipeActionsModule *)self _performForcedCollectionViewLayoutPreservingExistingLayoutAttributes];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_3;
      v45[3] = &unk_1E70F3C60;
      v45[4] = self;
      v46 = v12;
      [v46 resetAnimated:1 completion:v45];

      break;
    case 3:
      v13 = [v11 currentAction];
      v14 = [v13 style];

      if (v14 == 1)
      {
        v15 = [v12 swipedView];
        v16 = [(UIView *)v15 _safeMaskView];
        v17 = [v16 layer];
        v18 = [v17 presentationLayer];
        if (v18)
        {
          v19 = [v17 animationKeys];
          v20 = [v19 count];

          if (v20)
          {
            [v18 position];
            [v17 setPosition:?];
            [v17 removeAllAnimations];
          }
        }

        if (!v15 || !v16)
        {
          v42 = [MEMORY[0x1E696AAA8] currentHandler];
          WeakRetained = objc_loadWeakRetained(&self->_host);
          v44 = [WeakRetained collectionView];
          [v42 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:524 description:{@"UICollectionView internal inconsistency: did not receive a swiped view or mask as expected for swipe occurrence %@.\nCollection View: %@, swiped view: %@, mask: %@", v12, v44, v15, v16}];
        }

        v58[0] = v16;
        v58[1] = v15;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        v22 = [_UISwipeAnimationFactory animatorForTentativeWithOccurrence:v12 additivelyAnimatedViews:v21];

        v23 = objc_loadWeakRetained(&self->_host);
        v24 = [v23 collectionView];

        [(_UICollectionViewLayoutSwipeActionsModule *)self _performForcedCollectionViewLayoutPreservingExistingLayoutAttributes];
        v25 = [v12 lockActionViewForAnimation];
        [v25 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = [v25 superview];
        [v32 bounds];
        Width = CGRectGetWidth(v59);

        v34 = objc_loadWeakRetained(&self->_host);
        v35 = [v12 indexPath];
        _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(v34, v35);

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke;
        v50[3] = &unk_1E70FFF08;
        v36 = v25;
        v54 = v27;
        v55 = v29;
        v56 = Width;
        v57 = v31;
        v51 = v36;
        v52 = v24;
        v37 = v12;
        v53 = v37;
        v38 = v24;
        [v22 addAnimations:v50];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __105___UICollectionViewLayoutSwipeActionsModule_swipeActionController_swipeOccurrence_didChangeStateFrom_to___block_invoke_2;
        v47[3] = &unk_1E71003B0;
        v48 = v37;
        v49 = v36;
        v39 = v36;
        [v22 addCompletion:v47];
        [v22 startAnimation];
      }

      break;
  }
}

- (void)editingStateDidChange
{
  v3 = +[UIView areAnimationsEnabled];
  swipeActionController = self->_swipeActionController;

  [(UISwipeActionController *)swipeActionController resetSwipedItemAnimated:v3 completion:0];
}

- (void)processLayoutInvalidationWithContext:(id)a3 updateConfigurations:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(_UICollectionViewLayoutSwipeActionsModule *)self _canIgnoreInvalidationContext:v8];
  v7 = v8;
  if (!v6)
  {
    if ([v8 _intent] == 3)
    {
      [(UISwipeActionController *)self->_swipeActionController reloadData];
      *&self->_flags &= 0xFCu;
LABEL_7:
      v7 = v8;
      goto LABEL_9;
    }

    v7 = v8;
    if (!v8 || (v8[112] & 8) == 0)
    {
      [(_UICollectionViewLayoutSwipeActionsModule *)self _invalidateSwipeActionsLayoutRefreshingActiveConfigurations:v4];
      goto LABEL_7;
    }

    *&self->_flags |= 2u;
  }

LABEL_9:
}

- (BOOL)_canIgnoreInvalidationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 _intent];
  if (v5 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0xE42) != 0)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (v5 != 5)
  {
    if (v5 == 15)
    {
      v6 = (*&self->_flags & 2) == 0;
      goto LABEL_13;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  if ([v4 invalidateEverything])
  {
    goto LABEL_8;
  }

  v7 = [v4 invalidatedItemIndexPaths];
  if ([v7 count])
  {
    v6 = 0;
  }

  else
  {
    v8 = [v4 invalidatedSupplementaryIndexPaths];
    v6 = [v8 count] == 0;
  }

LABEL_13:
  return v6;
}

- (void)_invalidateSwipeActionsLayoutRefreshingActiveConfigurations:(BOOL)a3
{
  if ((*&self->_flags & 1) == 0)
  {
    if ([(_UICollectionViewLayoutSwipeActionsModule *)self hasActiveSwipe])
    {
      *&self->_flags = *&self->_flags & 0xFC | 1;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __105___UICollectionViewLayoutSwipeActionsModule__invalidateSwipeActionsLayoutRefreshingActiveConfigurations___block_invoke;
      v5[3] = &unk_1E70F35E0;
      v5[4] = self;
      v6 = a3;
      dispatch_async(MEMORY[0x1E69E96A0], v5);
    }
  }
}

- (void)updateWithDataSourceTranslator:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"dataSourceTranslator != nil"}];
  }

  swipeActionController = self->_swipeActionController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___UICollectionViewLayoutSwipeActionsModule_updateWithDataSourceTranslator___block_invoke;
  v9[3] = &unk_1E70FFBD8;
  v10 = v5;
  v7 = v5;
  [(UISwipeActionController *)swipeActionController rebaseUnambiguousSwipeOccurrencesWithBlock:v9];
}

- (void)finalizeCollectionViewUpdate:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ((*(v5 + 216) & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"update != nil"}];
  }

  v7 = [(UISwipeActionController *)self->_swipeActionController swipeOccurrences];
  v8 = [v7 copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [v14 indexPath];
        v16 = [v6 finalIndexPathForInitialIndexPath:v15];
        if (!v16)
        {
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v18 = [v14 _hasAmbiguousIndexPath];
          if (has_internal_diagnostics)
          {
            if ((v18 & 1) == 0)
            {
              v19 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v28 = v14;
                _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
              }
            }
          }

          else if ((v18 & 1) == 0)
          {
            v20 = *(__UILogGetCategoryCachedImpl("Assert", &finalizeCollectionViewUpdate____s_category) + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v14;
              _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
            }
          }

          [v14 resetAnimated:0 completion:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v21 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      v11 = v21;
    }

    while (v21);
  }

LABEL_22:
}

- (void)transformCellLayoutAttributes:(id)a3 isDisappearing:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7 || (v7[72] & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = NSStringFromSelector(a2);
    [v42 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:732 description:{@"-%@ should only be called with layout attributes for cells", v43}];
  }

  swipeActionController = self->_swipeActionController;
  v10 = [v8 indexPath];
  v11 = [(UISwipeActionController *)swipeActionController _existingSwipeOccurrenceForIndexPath:v10];

  if (v11)
  {
    if ((*&self->_flags & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_host);
      v13 = [WeakRetained collectionView];
      v14 = [v8 indexPath];
      v15 = [v13 cellForItemAtIndexPath:v14];

      v16 = [v15 _layoutAttributes];
      if (v16)
      {
        v17 = v16;
        [v16 alpha];
        [v8 setAlpha:?];
        if (v8)
        {
          v8[72] = v8[72] & 0xFFFFFFEF | (16 * ((v17[72] >> 4) & 1));
        }

        [v17 center];
        [v8 setCenter:?];

        goto LABEL_33;
      }
    }

    v18 = [v11 _hasAmbiguousIndexPath];
    if (v4 && v18)
    {
      [v8 setAlpha:1.0];
      v19 = [v11 swipedViewMaskWasRemoved];
      if (v8 && (v19 & 1) == 0)
      {
        v8[72] &= ~0x10u;
      }

      goto LABEL_33;
    }

    if ((v4 | v18))
    {
      goto LABEL_33;
    }

    v20 = [v11 swipedViewMaskWasRemoved];
    if (v8 && (v20 & 1) == 0)
    {
      v8[72] &= ~0x10u;
    }

    v21 = [v11 state] == 3 || objc_msgSend(v11, "state") == 4;
    v22 = objc_loadWeakRetained(&self->_host);
    v23 = [v22 collectionView];
    if ([v23 _flipsHorizontalAxis])
    {
      v24 = -1.0;
    }

    else
    {
      v24 = 1.0;
    }

    if (!v21 || ([v11 currentAction], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "style"), v25, v26 != 1))
    {
      [v8 center];
      v38 = v37;
      v40 = v39;
      [v11 offset];
      [v8 setCenter:{v38 + v24 * v41, v40}];
      goto LABEL_33;
    }

    v27 = objc_loadWeakRetained(&self->_host);
    v28 = [v8 indexPath];
    v29 = [v27 layoutAttributesForDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:v28];

    if (os_variant_has_internal_diagnostics())
    {
      if (v29)
      {
LABEL_29:
        [v29 bounds];
        Width = CGRectGetWidth(v50);
        v31 = [v11 direction];
        v32 = -Width;
        if (v31)
        {
          v32 = Width;
        }

        v33 = v24 * v32;
        [v8 center];
        v35 = v34;
        [v29 center];
        [v8 setCenter:{v36 + v33, v35}];

        goto LABEL_33;
      }

      v44 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
LABEL_41:

        goto LABEL_29;
      }

      v45 = [v8 indexPath];
      *buf = 138412290;
      v48 = v45;
      _os_log_fault_impl(&dword_188A29000, v44, OS_LOG_TYPE_FAULT, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
    }

    else
    {
      if (v29)
      {
        goto LABEL_29;
      }

      v46 = *(__UILogGetCategoryCachedImpl("Assert", &transformCellLayoutAttributes_isDisappearing____s_category) + 8);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v44 = v46;
      v45 = [v8 indexPath];
      *buf = 138412290;
      v48 = v45;
      _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "Missing layout attributes for swipe actions view at index path: %@", buf, 0xCu);
    }

    goto LABEL_41;
  }

LABEL_33:
}

- (void)transformDecorationLayoutAttributes:(id)a3 isDisappearing:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v35 = v7;
  if (!v7 || (v7[288] & 2) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = NSStringFromSelector(a2);
    [v33 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:787 description:{@"-%@ should only be called with layout attributes for decoration views", v34}];

    v7 = v35;
  }

  swipeActionController = self->_swipeActionController;
  v9 = [v7 indexPath];
  v10 = [(UISwipeActionController *)swipeActionController _existingSwipeOccurrenceForIndexPath:v9];

  WeakRetained = objc_loadWeakRetained(&self->_host);
  v12 = [WeakRetained collectionView];

  v13 = [v35 indexPath];
  v14 = [v12 _globalIndexPathForItemAtIndexPath:v13];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v16 = [v12 _indexPathForGlobalIndex:v14 + 1];
    if (v16)
    {
      v15 = [(UISwipeActionController *)self->_swipeActionController _existingSwipeOccurrenceForIndexPath:v16];
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = [(_UILabelConfiguration *)v35 _content];
  v18 = v17;
  if (v17 == @"UICollectionViewListLayoutElementKindSwipeActions" || v17 && (v19 = [(__CFString *)v17 isEqual:@"UICollectionViewListLayoutElementKindSwipeActions"], v18, v19))
  {
    if (v4)
    {
      if (v10)
      {
        if ([v10 _hasAmbiguousIndexPath])
        {
          [v35 frame];
          [v35 setFrame:?];
          [v35 setAlpha:1.0];
          if (v35)
          {
            v35[72] |= 0x10u;
          }
        }
      }
    }

    else if (v10)
    {
      v26 = [v10 _hasAmbiguousIndexPath];
      [v35 setHidden:v26];
      if ((v26 & 1) == 0)
      {
        v27 = [v35 indexPath];
        v28 = [(_UICollectionViewLayoutSwipeActionsModule *)self _cellWithCustomGroupingAtIndexPath:v27];

        if (v28)
        {
          -[UICollectionViewLayoutAttributes _setMaskedCorners:](v35, [v28 _effectiveMaskedCornersForSystemBackgroundView]);
        }
      }
    }

    else
    {
      [v35 setHidden:1];
    }

    goto LABEL_43;
  }

  v20 = v18;
  v21 = v20;
  if (v20 == @"UICollectionViewListLayoutElementKindBottomSeparator")
  {

    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  if (v20 && @"UICollectionViewListLayoutElementKindBottomSeparator")
  {
    v22 = [(__CFString *)v20 isEqual:@"UICollectionViewListLayoutElementKindBottomSeparator"];

    if (v22)
    {
      if (v10)
      {
LABEL_22:
        v23 = self;
        v24 = v35;
        v25 = 1;
LABEL_41:
        v29 = v10;
LABEL_42:
        [(_UICollectionViewLayoutSwipeActionsModule *)v23 _transformLayoutAttributes:v24 ofSeparatorAtBottom:v25 forSwipeOccurrence:v29 isDisappearing:v4];
        goto LABEL_43;
      }

LABEL_29:
      if (!v15)
      {
        goto LABEL_43;
      }

      v23 = self;
      v24 = v35;
      v25 = 1;
      v29 = v15;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v30 = v21;
  v31 = v30;
  if (v30 == @"UICollectionViewListLayoutElementKindTopSeparator")
  {
    v32 = 1;
  }

  else
  {
    if (!v21 || !@"UICollectionViewListLayoutElementKindTopSeparator")
    {

      goto LABEL_43;
    }

    v32 = [(__CFString *)v30 isEqual:@"UICollectionViewListLayoutElementKindTopSeparator"];
  }

  if (v32 && v10)
  {
    v23 = self;
    v24 = v35;
    v25 = 0;
    goto LABEL_41;
  }

LABEL_43:
}

- (void)_transformLayoutAttributes:(id)a3 ofSeparatorAtBottom:(BOOL)a4 forSwipeOccurrence:(id)a5 isDisappearing:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v25 = a3;
  v11 = a5;
  if (!v11)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UICollectionViewLayoutSwipeActionsModule.m" lineNumber:857 description:{@"Invalid parameter not satisfying: %@", @"swipeOccurrence != nil"}];
  }

  v12 = [v11 _hasAmbiguousIndexPath];
  v13 = v12 & v6;
  if (_UISolariumSwipeActionsEnabled())
  {
    v14 = 1;
    if (!v13)
    {
LABEL_5:
      if ((v12 | v6) & 1 | !v14)
      {
        goto LABEL_17;
      }

      [v11 offset];
      v16 = v15;
      [v25 alpha];
      v18 = -v16;
      if (v16 >= 0.0)
      {
        v18 = v16;
      }

      if (v18 > 0.0)
      {
        v17 = 0.0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = [v11 _style] == 2;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  if (v14)
  {
    v17 = 0.0;
LABEL_15:
    [v25 setAlpha:v17];
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  v20 = [v25 indexPath];
  v21 = [WeakRetained finalLayoutAttributesForDisappearingItemAtIndexPath:v20];

  [v25 frame];
  v23 = v22;
  [v21 frame];
  [v25 setFrame:v23];
  [v25 setAlpha:1.0];

LABEL_17:
}

- (id)propertyAnimatorForCollectionViewUpdates:(id)a3 withCustomAnimator:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UISwipeActionController *)self->_swipeActionController currentSwipeOccurrence];
  v9 = v8;
  if (!v8 || ([v8 currentAction], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "style"), v10, v11 != 1))
  {
    v38 = 0;
    v26 = v7;
    goto LABEL_34;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (!v13)
  {
    v26 = v7;
LABEL_33:

    v38 = v13;
    goto LABEL_34;
  }

  v53 = self;
  v54 = v6;
  v14 = v9;
  v55 = v7;
  v15 = 0;
  v56 = 0;
  v16 = *v70;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v70 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v69 + 1) + 8 * i);
      if ([v18 updateAction] == 1)
      {
        if (v18 && v18[6] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v18[1];
          v20 = [v14 indexPath];
          LOBYTE(v19) = v19 == [v20 section];

          v15 |= v19;
        }

        else
        {
          v21 = [v18 indexPathBeforeUpdate];
          v22 = [v14 indexPath];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            v56 = [v12 count] == 1;
            v15 = 1;
          }
        }
      }
    }

    v13 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
  }

  while (v13);

  if (!v56)
  {
    goto LABEL_27;
  }

  v9 = v14;
  v24 = [v14 swipedView];
  v25 = [(UIView *)v24 _safeMaskView];

  v7 = v55;
  if (!v25)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v49 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        WeakRetained = objc_loadWeakRetained(&v53->_host);
        v51 = [WeakRetained collectionView];
        v52 = [v14 swipedView];
        *buf = 138412802;
        v75 = v51;
        v76 = 2112;
        v77 = v14;
        v78 = 2112;
        v79 = v52;
        _os_log_fault_impl(&dword_188A29000, v49, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: missing maskView for swipe occurrence. Collection view: %@; Swipe occurrence: %@; Swiped view: %@", buf, 0x20u);
      }
    }

    else
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4A0) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = objc_loadWeakRetained(&v53->_host);
        v42 = [v41 collectionView];
        v43 = [v14 swipedView];
        *buf = 138412802;
        v75 = v42;
        v76 = 2112;
        v77 = v14;
        v78 = 2112;
        v79 = v43;
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: missing maskView for swipe occurrence. Collection view: %@; Swipe occurrence: %@; Swiped view: %@", buf, 0x20u);
      }
    }

LABEL_27:
    v13 = 0;
    v38 = 0;
    v6 = v54;
    v7 = v55;
    v26 = v55;
    v9 = v14;
    if ((v15 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v26 = v55;
  v6 = v54;
  if (!v55)
  {
    v73 = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    v26 = [_UISwipeAnimationFactory animatorForCollapseWithAdditivelyAnimatedViews:v27];
  }

  [v25 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [v25 bounds];
  v35 = v34;
  v37 = v36;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke;
  v59[3] = &unk_1E70F6C80;
  v13 = v25;
  v60 = v13;
  v61 = v29;
  v62 = v31;
  v63 = v33;
  v64 = 0;
  v65 = v35;
  v66 = v37;
  v67 = v33;
  v68 = 0;
  [v26 addAnimations:v59];

  v38 = v13;
  if (v15)
  {
LABEL_28:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v45 = [v9 _hasAmbiguousIndexPath];
    if (has_internal_diagnostics)
    {
      if ((v45 & 1) == 0)
      {
        v47 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v75 = v14;
          _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
        }

        v6 = v54;
        v7 = v55;
        v9 = v14;
      }
    }

    else if ((v45 & 1) == 0)
    {
      v48 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F4A8) + 8);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v75 = v9;
        _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "The swipe occurrence should already be marked as having an ambiguous index path: %@", buf, 0xCu);
      }
    }

    if (!v26)
    {
      v26 = +[_UISwipeAnimationFactory animatorForGenericUpdates];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __105___UICollectionViewLayoutSwipeActionsModule_propertyAnimatorForCollectionViewUpdates_withCustomAnimator___block_invoke_49;
    v57[3] = &unk_1E70F5DB8;
    v58 = v9;
    [v26 addCompletion:v57];
    v12 = v58;
    goto LABEL_33;
  }

LABEL_34:

  return v26;
}

- (id)swipeViewManipulatorForSwipeActionController:(id)a3
{
  v4 = [_UICollectionViewLayoutSwipeViewManipulator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v6 = [WeakRetained collectionView];
  v7 = [(_UICollectionViewLayoutSwipeViewManipulator *)v4 initWithCollectionView:v6 swipeActionsModule:self];

  return v7;
}

- (UICollectionViewLayout)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end