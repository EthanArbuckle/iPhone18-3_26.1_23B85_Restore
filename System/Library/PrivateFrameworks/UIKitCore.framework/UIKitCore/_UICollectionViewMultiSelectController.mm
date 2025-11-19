@interface _UICollectionViewMultiSelectController
- (BOOL)_allowsBandSelectionStartingAtPoint:(CGPoint)a3 multiSelectInteraction:(id)a4;
- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionAtPoint:(CGPoint)a3;
- (BOOL)_isUsingTableLayoutSPI;
- (BOOL)_point:(CGPoint)a3 liesBeyondFrame:(CGRect)a4 inDirection:(double)a5;
- (BOOL)_shouldBeginInteractionAtIndexPath:(id)a3;
- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)a3;
- (BOOL)_testTouchPolicyAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4;
- (BOOL)interaction:(id)a3 shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (BOOL)isInMultiSelectMode;
- (BOOL)isInMultiselectInteraction;
- (BOOL)multiSelectInteraction:(id)a3 shouldShowBandForSelectionStartingAtPoint:(CGPoint)a4;
- (BOOL)multiSelectInteractionGestureShouldPreventDragLiftGesture:(id)a3;
- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)a3;
- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)a3;
- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)a3;
- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 ofType:(int64_t)a4 atPoint:(CGPoint)a5 withVelocity:(CGPoint)a6;
- (BOOL)supportsMultiSelectInteraction:(id)a3;
- (UICollectionView)collectionView;
- (_UICollectionViewMultiSelectController)initWithCollectionView:(id)a3;
- (id)_antecedentIndexPathsForLayoutAttributes:(id)a3 inDirection:(double)a4;
- (id)_autoScrollAssistantForIndexPaths:(id)a3;
- (id)_boundingScrollViewForIndexPath:(id)a3;
- (id)_collectionViewDelegate;
- (id)_indexPathsWithinRect:(CGRect)a3;
- (id)childScrollViewAtLocation:(CGPoint)a3;
- (id)indexPathsBetweenIndexPath:(id)a3 andIndexPath:(id)a4;
- (int64_t)_hitTestForSystemEditControlAtPoint:(CGPoint)a3;
- (int64_t)axisConstraintAtIndexPath:(id)a3;
- (int64_t)axisConstraintAtPoint:(CGPoint)a3;
- (int64_t)axisConstraintForSingleFingerPanGestureAtPoint:(CGPoint)a3;
- (void)_autoScrollAtIndexPaths:(id)a3 fromPoint:(CGPoint)a4;
- (void)_deselectIndexPaths:(id)a3;
- (void)_extendSelectionToPoint:(CGPoint)a3;
- (void)_performWithPrewarmingCache:(id)a3;
- (void)_selectIndexPaths:(id)a3;
- (void)_updateContentMasksForVisibleCells;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3;
- (void)clearSelectionState;
- (void)collectionViewDidUpdateVisibleCells;
- (void)dealloc;
- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)multiSelectInteraction:(id)a3 appendSelectionAtPoint:(CGPoint)a4;
- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4;
- (void)multiSelectInteraction:(id)a3 selectItemsWithinRect:(CGRect)a4 leadingPoint:(CGPoint)a5;
- (void)multiSelectInteraction:(id)a3 toggleSelectionWithinRect:(CGRect)a4 leadingPoint:(CGPoint)a5;
- (void)selectedIndexPathsChanged:(id)a3;
- (void)uninstallFromCollectionView;
- (void)updateSelectedIndexPaths:(id)a3;
- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 keepCurrentSelection:(BOOL)a5;
@end

@implementation _UICollectionViewMultiSelectController

- (void)clearSelectionState
{
  [(_UICollectionViewMultiSelectController *)self setSelectionState:0];
  v3 = [(_UICollectionViewMultiSelectController *)self multiSelectInteraction];
  if ([v3 isEnabled])
  {
    [v3 setEnabled:0];
    [v3 setEnabled:1];
  }
}

- (void)collectionViewDidUpdateVisibleCells
{
  v3 = [(_UICollectionViewMultiSelectController *)self contentMaskCache];

  if (v3)
  {
    if ((*&self->_flags & 1) == 0)
    {
      *&self->_flags |= 1u;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __77___UICollectionViewMultiSelectController_collectionViewDidUpdateVisibleCells__block_invoke;
      v4[3] = &unk_1E70F3590;
      v4[4] = self;
      [UIApp _performBlockAfterCATransactionCommits:v4];
    }
  }
}

- (BOOL)isInMultiselectInteraction
{
  v2 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v3 = [v2 isInMultiselectInteraction];

  return v3;
}

- (void)dealloc
{
  [(_UICollectionViewMultiSelectController *)self uninstallFromCollectionView];
  v3.receiver = self;
  v3.super_class = _UICollectionViewMultiSelectController;
  [(_UICollectionViewMultiSelectController *)&v3 dealloc];
}

- (void)uninstallFromCollectionView
{
  if (self->_multiSelectInteraction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    [WeakRetained removeInteraction:self->_multiSelectInteraction];
  }
}

- (_UICollectionViewMultiSelectController)initWithCollectionView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UICollectionViewMultiSelectController;
  v5 = [(_UICollectionViewMultiSelectController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    v7 = objc_alloc_init(UIMultiSelectInteraction);
    multiSelectInteraction = v6->_multiSelectInteraction;
    v6->_multiSelectInteraction = v7;

    [(UIMultiSelectInteraction *)v6->_multiSelectInteraction setDelegate:v6];
    [(UIMultiSelectInteraction *)v6->_multiSelectInteraction setEnabled:0];
    WeakRetained = objc_loadWeakRetained(&v6->_collectionView);
    [WeakRetained addInteraction:v6->_multiSelectInteraction];

    v6->_computedAxisConstraint = 4;
  }

  return v6;
}

- (int64_t)axisConstraintForSingleFingerPanGestureAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];
  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v7];
  if (v8 == 1)
  {
    if (v7)
    {
      v9 = [v6 collectionViewLayout];
      v10 = [v9 _supportsSwipeActionsForIndexPath:v7];

      v8 = ~v10 & 1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (int64_t)axisConstraintAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  v7 = [v6 _hasOrthogonalScrollingSections];

  if ((v7 & 1) != 0 || (computedAxisConstraint = self->_computedAxisConstraint, computedAxisConstraint == 4))
  {
    v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v10 = [v9 collectionViewLayout];
    v11 = [v10 _hasOrthogonalScrollingSections];

    if ((v11 & 1) != 0 || (-[_UICollectionViewMultiSelectController collectionView](self, "collectionView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 collectionViewLayout], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "_layoutAxis"), v13, v12, v14 >= 4))
    {
      v15 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v4];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      [v15 contentSize];
      if (v20 <= v17 || v21 > v19)
      {
        if (v21 <= v19 || v20 > v17)
        {
          if (v20 > v17 || v21 > v19)
          {
            computedAxisConstraint = 0;
          }

          else
          {
            computedAxisConstraint = 3;
          }
        }

        else
        {
          computedAxisConstraint = 1;
        }
      }

      else
      {
        computedAxisConstraint = 2;
      }
    }

    else
    {
      computedAxisConstraint = 3 - v14;
    }

    self->_computedAxisConstraint = computedAxisConstraint;
  }

  return computedAxisConstraint;
}

- (int64_t)axisConstraintAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v7];
  return v8;
}

- (id)_autoScrollAssistantForIndexPaths:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 anyObject];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) section];
        if (v11 != [v5 section])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v14 = [WeakRetained _autoScrollAssistant];

  if (v12)
  {
    v15 = objc_loadWeakRetained(&self->_collectionView);
    v16 = [v15 _autoScrollAssistantForIndexPath:v5];

    v14 = v16;
  }

  return v14;
}

- (id)_boundingScrollViewForIndexPath:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    v5 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:v4];
    v6 = [v5 scrollView];
  }

  else
  {
    v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  }

  return v6;
}

- (id)childScrollViewAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  v8 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v7];

  return v8;
}

- (void)_autoScrollAtIndexPaths:(id)a3 fromPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:a3];
  if (v7)
  {
    v14 = v7;
    v8 = [v7 scrollView];
    v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
    [v8 convertPoint:v9 fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    [v14 autoScrollFromPoint:{v11, v13}];
    v7 = v14;
  }
}

- (id)_antecedentIndexPathsForLayoutAttributes:(id)a3 inDirection:(double)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [v5 indexPath];
  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v7];
  v9 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v7];
  v32 = v9;
  if (v8 == 2)
  {
    [v9 bounds];
    v10 = 10;
  }

  else if (v8 == 1)
  {
    [v9 bounds];
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v12 = [v11 collectionViewLayout];

  v13 = [(_UICollectionViewMultiSelectController *)self collectionView];
  [v13 contentScaleFactor];
  v15 = v14;

  [v5 frame];
  v33 = v5;
  [v12 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v5 frame:?];
  v31 = v12;
  v20 = [v12 _layoutAttributesForElementsInProjectedRect:UIRectInsetEdges(v10 withProjectionVector:v16 projectionDistance:{v17, v18, v19, v15)}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * i);
        v26 = [v25 indexPath];
        v27 = [v26 section];
        v28 = [v7 section];

        if (v27 == v28 && ![v25 representedElementCategory])
        {
          v29 = [v25 indexPath];
          [v6 addObject:v29];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v22);
  }

  return v6;
}

- (BOOL)_point:(CGPoint)a3 liesBeyondFrame:(CGRect)a4 inDirection:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtPoint:?];
  if (a5 < 0.0)
  {
    if (v12 == 2)
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      return v11 < CGRectGetMinX(v18);
    }

    if (v12 == 1)
    {
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      return v10 < CGRectGetMinY(v16);
    }

    return 0;
  }

  if (v12 == 2)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v14 = v11 <= CGRectGetMaxX(v19);
  }

  else
  {
    if (v12 != 1)
    {
      return 0;
    }

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v14 = v10 <= CGRectGetMaxY(v17);
  }

  return !v14;
}

- (id)indexPathsBetweenIndexPath:(id)a3 andIndexPath:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v9 = [v8 collectionViewLayout];

  v10 = [v9 layoutAttributesForItemAtIndexPath:v6];
  [v10 frame];
  v54 = v10;
  [v9 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v10 frame:?];
  v59 = v12;
  v60 = v11;
  v13 = v11 + v12 * 0.5;
  v58 = v14;
  v16 = v15;
  v17 = v15 + v14 * 0.5;
  v18 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v55 = v7;
  v19 = [v18 layoutAttributesForItemAtIndexPath:v7];

  [v19 frame];
  [v9 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v19 frame:?];
  v22 = v21 + v20 * 0.5;
  v25 = v24 + v23 * 0.5;
  v26 = [MEMORY[0x1E695DFA8] set];
  if (v22 >= v13)
  {
    v27 = v22;
  }

  else
  {
    v27 = v13;
  }

  if (v22 >= v13)
  {
    v28 = v13;
  }

  else
  {
    v28 = v22;
  }

  if (v25 >= v17)
  {
    v29 = v25;
  }

  else
  {
    v29 = v17;
  }

  if (v25 >= v17)
  {
    v30 = v17;
  }

  else
  {
    v30 = v25;
  }

  v31 = [v9 _extendedAttributesQueryIncludingOrthogonalScrollingRegions:{v28, v30, fmax(v27 - v28, 1.0), fmax(v29 - v30, 1.0)}];
  v56 = v6;
  if ([(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v6]== 1)
  {
    v32 = v25 < v17;
  }

  else
  {
    v32 = v22 < v13;
  }

  v61 = 0u;
  v62 = 0u;
  if (v32)
  {
    v33 = -1.0;
  }

  else
  {
    v33 = 1.0;
  }

  v63 = 0uLL;
  v64 = 0uLL;
  v34 = v31;
  v35 = [v34 countByEnumeratingWithState:&v61 objects:v65 count:16];
  v57 = -v33;
  if (v35)
  {
    v36 = v35;
    v37 = *v62;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v61 + 1) + 8 * i);
        if (![v39 representedElementCategory])
        {
          [v39 frame];
          [v9 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v39 frame:?];
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v48 = [v39 indexPath];
          [v26 addObject:v48];

          if ([(_UICollectionViewMultiSelectController *)self _point:v41 liesBeyondFrame:v43 inDirection:v60, v16, v59, v58, v33])
          {
            v49 = [(_UICollectionViewMultiSelectController *)self _antecedentIndexPathsForLayoutAttributes:v39 inDirection:v57];
            [v26 unionSet:v49];
          }

          if ([(_UICollectionViewMultiSelectController *)self _point:v22 liesBeyondFrame:v25 inDirection:v41, v43, v45, v47, v33])
          {
            v50 = [(_UICollectionViewMultiSelectController *)self _antecedentIndexPathsForLayoutAttributes:v39 inDirection:v33];
            [v26 unionSet:v50];
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v36);
  }

  if ([(_UICollectionViewMultiSelectController *)self _point:v22 liesBeyondFrame:v25 inDirection:v60, v16, v59, v58, v33])
  {
    v51 = [(_UICollectionViewMultiSelectController *)self _antecedentIndexPathsForLayoutAttributes:v54 inDirection:v57];
    [v26 minusSet:v51];

    v52 = [(_UICollectionViewMultiSelectController *)self _antecedentIndexPathsForLayoutAttributes:v19 inDirection:v33];
    [v26 minusSet:v52];
  }

  [v26 addObject:v56];
  [v26 addObject:v55];

  return v26;
}

- (void)_extendSelectionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (v6)
  {
    v7 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v8 = [v7 startIndexPath];

    if (v8)
    {
      if ((*&self->_flags & 4) == 0)
      {
        v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
        v14 = [v9 _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

        v10 = v14;
        if (v14)
        {
          v11 = [(_UICollectionViewMultiSelectController *)self selectionState];
          v12 = [v11 startIndexPath];

          v13 = [(_UICollectionViewMultiSelectController *)self indexPathsBetweenIndexPath:v12 andIndexPath:v14];
          if ([v13 count])
          {
            *&self->_flags |= 4u;
            [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v13];
            *&self->_flags &= ~4u;
            [(_UICollectionViewMultiSelectController *)self _autoScrollAtIndexPaths:v13 fromPoint:x, y];
          }

          v10 = v14;
        }
      }
    }
  }
}

- (void)_updateContentMasksForVisibleCells
{
  v33 = *MEMORY[0x1E69E9840];
  flags = self->_flags;
  v5 = [(_UICollectionViewMultiSelectController *)self contentMaskCache];
  if (v5)
  {
    v6 = v5;
    if ((flags & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [(_UICollectionViewMultiSelectController *)self setContentMaskCache:v6];
  }

  *&self->_flags &= ~1u;
  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _identityTracker:1];
    if (!v9)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"_UICollectionViewMultiSelectController.m" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"identityTracker != nil"}];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v8 visibleCells];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v24 = v8;
      v25 = 0;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v15 _layoutAttributes];
          v17 = [v16 indexPath];

          v18 = [(_UIIndexPathIdentityTracker *)v9 identifierForIndexPath:v17];
          v19 = [v6 objectForKey:v18];

          if (!v19)
          {
            v20 = _UIImageForView(v15);
            if (v20)
            {
              [v6 setObject:v20 forKey:v18];
            }

            else
            {
              ++v25;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v12);

      v8 = v24;
      if (v25)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v23 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v31 = v24;
            _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "UIKit was unable to determine the content area of some of the visible cells in %@. This should never happen.", buf, 0xCu);
          }

          v8 = v24;
        }

        else
        {
          v21 = *(__UILogGetCategoryCachedImpl("Assert", &_updateContentMasksForVisibleCells___s_category) + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v24;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "UIKit was unable to determine the content area of some of the visible cells in %@. This should never happen.", buf, 0xCu);
          }
        }
      }
    }

    else
    {
    }
  }

LABEL_27:
}

- (id)_indexPathsWithinRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v53 = *MEMORY[0x1E69E9840];
  v8 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  v10 = v9;
  v11 = 0;
  v46 = v8;
  if (v8 && v9)
  {
    v12 = [(_UICollectionViewMultiSelectController *)v7 contentMaskCache];

    v13 = !v12 && ([(_UICollectionViewMultiSelectController *)v7 _updateContentMasksForVisibleCells], [(UIMultiSelectInteraction *)v7->_multiSelectInteraction activeGestureType]== 8) && (*&v7->_flags & 2) == 0;
    v47 = [v46 _identityTracker:0];
    if ([v10 _hasOrthogonalScrollingSections])
    {
      [v10 _extendedAttributesQueryIncludingOrthogonalScrollingRegions:{x, y, width, height}];
    }

    else
    {
      [v10 layoutAttributesForElementsInRect:{x, y, width, height}];
    }
    v14 = ;
    if ([v14 count])
    {
      v44 = v13;
      v45 = v7;
      v15 = [MEMORY[0x1E695DFA8] set];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v43 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = v17;
      v19 = *v49;
      while (1)
      {
        v20 = 0;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v48 + 1) + 8 * v20);
          v22 = [v21 indexPath];
          if (v21)
          {
            if ((v21[288] & 1) != 0 && ([v21 isHidden] & 1) == 0)
            {
              [v21 alpha];
              if (v23 > 0.0)
              {
                v24 = [(UICollectionViewLayoutAttributes *)v21 _existingListAttributes];

                [v21 frame];
                [v10 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v21 frame:?];
                if (v24)
                {
                  goto LABEL_24;
                }

                v29 = v25;
                v30 = v26;
                v31 = v27;
                v32 = v28;
                v55.origin.x = x;
                v55.origin.y = y;
                v55.size.width = width;
                v55.size.height = height;
                v59.origin.x = v29;
                v59.origin.y = v30;
                v59.size.width = v31;
                v59.size.height = v32;
                if (CGRectContainsRect(v55, v59))
                {
                  goto LABEL_24;
                }

                v33 = [(_UIIndexPathIdentityTracker *)v47 identifierForIndexPath:v22];
                v34 = [(_UICollectionViewMultiSelectController *)v45 contentMaskCache];
                v35 = [v34 objectForKey:v33];

                if (v35)
                {
                  v56.origin.x = x;
                  v56.origin.y = y;
                  v56.size.width = width;
                  v56.size.height = height;
                  v36 = CGRectGetWidth(v56);
                  v57.origin.x = x;
                  v57.origin.y = y;
                  v57.size.width = width;
                  v57.size.height = height;
                  v37 = CGRectGetHeight(v57);
                  [v46 _currentScreenScale];
                  v39 = [v35 _hasVisibleContentInRect:x - v29 atScale:{y - v30, v36, v37, v38}];

                  if ((v39 & 1) == 0)
                  {
                    goto LABEL_25;
                  }

LABEL_24:
                  [v15 addObject:v22];
                  goto LABEL_25;
                }

                v58.origin.x = x;
                v58.origin.y = y;
                v58.size.width = width;
                v58.size.height = height;
                v60.origin.x = v29;
                v60.origin.y = v30;
                v60.size.width = v31;
                v60.size.height = v32;
                v40 = CGRectIntersectsRect(v58, v60);

                if (v40)
                {
                  goto LABEL_24;
                }
              }
            }
          }

LABEL_25:

          ++v20;
        }

        while (v18 != v20);
        v41 = [v16 countByEnumeratingWithState:&v48 objects:v52 count:16];
        v18 = v41;
        if (!v41)
        {
LABEL_30:

          v7 = v45;
          v14 = v43;
          if (v44)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }
    }

    v15 = 0;
    if (v13)
    {
LABEL_31:
      [(_UICollectionViewMultiSelectController *)v7 setContentMaskCache:0];
    }

LABEL_32:
    v11 = v15;
  }

  return v11;
}

- (void)multiSelectInteraction:(id)a3 selectItemsWithinRect:(CGRect)a4 leadingPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = [(_UICollectionViewMultiSelectController *)self _indexPathsWithinRect:a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v8];
  [(_UICollectionViewMultiSelectController *)self _autoScrollAtIndexPaths:v8 fromPoint:x, y];
}

- (void)multiSelectInteraction:(id)a3 toggleSelectionWithinRect:(CGRect)a4 leadingPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v18 = [(_UICollectionViewMultiSelectController *)self _indexPathsWithinRect:a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v10 = [v9 originallySelectedIndexPaths];
  v11 = [v8 setWithArray:v10];

  v12 = [v18 mutableCopy];
  [v12 intersectSet:v11];
  v13 = [v11 mutableCopy];
  [v13 unionSet:v18];
  [v13 minusSet:v12];
  v14 = MEMORY[0x1E695DFA8];
  v15 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v16 = [v15 indexPathsForSelectedItems];
  v17 = [v14 setWithArray:v16];

  [v17 minusSet:v13];
  [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v13];
  [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v17];
  [(_UICollectionViewMultiSelectController *)self _autoScrollAtIndexPaths:v18 fromPoint:x, y];
}

- (void)_selectIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v4 setWithArray:v9];

  v11 = [v5 mutableCopy];
  [v11 minusSet:v10];
  v12 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___UICollectionViewMultiSelectController__selectIndexPaths___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v15 = v11;
  v16 = self;
  v13 = v11;
  [v12 ignoreSelectionChangedNotificationsWithBlock:v14];
}

- (void)_deselectIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v4 setWithArray:v7];

  v9 = [v5 mutableCopy];
  [v9 intersectSet:v8];
  v10 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___UICollectionViewMultiSelectController__deselectIndexPaths___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v13 = v9;
  v14 = self;
  v11 = v9;
  [v10 ignoreSelectionChangedNotificationsWithBlock:v12];
}

- (void)updateSelectedIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v12 = [v4 setWithArray:v7];

  v8 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v9 = [v8 pathsToSelectForInterpolatedIndexPaths:v5];

  v10 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v11 = [v10 pathsToDeselectForInterpolatedIndexPaths:v5 currentlySelectedIndexPaths:v12];

  [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v9];
  [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v11];
}

- (void)selectedIndexPathsChanged:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (v5)
  {
    v6 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [(UIMultiSelectInteractionState *)v6 updateStateWithDifferenceFromCurrentSelection:v4];
  }

  else
  {
    v6 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v4];

    [(_UICollectionViewMultiSelectController *)self setSelectionState:v6];
  }
}

- (id)_collectionViewDelegate
{
  v3 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v7 = [v6 delegate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isUsingTableLayoutSPI
{
  v2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v3 = [v2 collectionViewLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)_hitTestForSystemEditControlAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v6 = [v5 indexPathForItemAtPoint:{x, y}];
  if (v6)
  {
    v7 = [v5 cellForItemAtIndexPath:v6];
    if (!v7)
    {
      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 _viewForMultiSelectAccessory];
      if (v8)
      {
        v9 = v8;
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v7 tableViewCell];
        v12 = [v11 editingData:0];
        v9 = [v12 editControl:0];

        if (!v9)
        {
          v9 = [v7 tableViewCell];
          [v9 convertPoint:v5 fromView:{x, y}];
          v23 = v22;
          v25 = v24;
          [v9 frame];
          v27.x = v23;
          v27.y = v25;
          if (CGRectContainsPoint(v28, v27))
          {
            [v9 frame];
            v26 = vabdd_f64(CGRectGetMinX(v29), x);
            [v9 frame];
            if (fmin(v26, vabdd_f64(CGRectGetMaxX(v30), x)) >= 70.0)
            {
              v10 = 1;
            }

            else
            {
              v10 = 3;
            }
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_13;
        }

LABEL_10:
        [v9 convertPoint:v5 fromView:{x, y}];
        v14 = v13;
        v16 = v15;
        [v9 bounds];
        if (sqrt((v18 + v17 * 0.5 - v14) * (v18 + v17 * 0.5 - v14) + (v20 + v19 * 0.5 - v16) * (v20 + v19 * 0.5 - v16)) >= 35.0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }

LABEL_13:

        goto LABEL_15;
      }
    }

    v10 = 1;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4
{
  v6 = [(_UICollectionViewMultiSelectController *)self selectionEndIndexPath];
  if (!v6)
  {
    v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v8 = [v7 indexPathsForSelectedItems];

    v9 = [v8 sortedArrayUsingSelector:sel_compare_];

    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      [v9 lastObject];
    }

    else
    {
      [v9 firstObject];
    }
    v74 = ;

    v6 = v74;
    if (!v74)
    {
      return;
    }
  }

  v75 = v6;
  v10 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v11 = [v10 collectionViewLayout];

  v12 = [v11 layoutAttributesForItemAtIndexPath:v75];
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained visibleBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v75];
  v25 = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (v24 == v25)
  {
    goto LABEL_17;
  }

  v26 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v75];
  if (v26 == 2)
  {

    if (a4 - 1 >= 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v26 != 1)
    {
      if (v26)
      {
LABEL_17:

        goto LABEL_18;
      }

LABEL_16:
      v25 = [(_UICollectionViewMultiSelectController *)self collectionView];
      [v24 visibleBounds];
      [v25 convertRect:v24 fromView:?];
      v17 = v27;
      v19 = v28;
      v21 = v29;
      v23 = v30;
      goto LABEL_17;
    }

    if (a4 && a4 != 3)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v31 = v21 + v21;
  v32 = 1.0;
  v33 = v19 - v23;
  v34 = v23 + v23;
  if (a4 == 2)
  {
    v35 = v23 + v23;
  }

  else
  {
    v35 = v23;
  }

  if (a4 == 2)
  {
    v36 = -1.0;
  }

  else
  {
    v33 = v19;
    v36 = v14;
  }

  if (a4 == 3)
  {
    v35 = v23;
    v37 = v21 + v21;
  }

  else
  {
    v37 = v21;
  }

  if (a4 == 3)
  {
    v33 = v19;
    v36 = v14;
    v38 = 1.0;
  }

  else
  {
    v38 = v13;
  }

  v39 = v17 - v21;
  if (a4 != 1)
  {
    v34 = v23;
    v32 = v14;
  }

  if (a4)
  {
    v31 = v21;
  }

  else
  {
    v34 = v23;
  }

  if (a4)
  {
    v39 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (a4)
  {
    v40 = v13;
  }

  else
  {
    v40 = -1.0;
  }

  if (a4 > 1)
  {
    v41 = v37;
  }

  else
  {
    v35 = v34;
    v41 = v31;
  }

  if (a4 <= 1)
  {
    v42 = v19;
  }

  else
  {
    v42 = v33;
  }

  if (a4 <= 1)
  {
    v43 = v39;
  }

  else
  {
    v43 = v17;
  }

  if (a4 <= 1)
  {
    v44 = v40;
  }

  else
  {
    v32 = v36;
    v44 = v38;
  }

  v45 = [v11 _layoutAttributesForNextItemInDirection:v75 fromIndexPath:v44 constrainedToRect:{v32, v43, v42, v41, v35}];
  v46 = [v45 indexPath];
  if (v46)
  {
    v47 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v46];
    [v47 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v73 = v54;
    [v45 frame];
    x = v77.origin.x;
    y = v77.origin.y;
    width = v77.size.width;
    height = v77.size.height;
    MinY = CGRectGetMinY(v77);
    v72 = v49;
    v78.origin.x = v49;
    v78.origin.y = v51;
    v78.size.width = v53;
    v78.size.height = v73;
    if (MinY >= CGRectGetMinY(v78))
    {
      v60 = x;
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      MaxY = CGRectGetMaxY(v79);
      v80.origin.x = v49;
      v80.origin.y = v51;
      v80.size.width = v53;
      v80.size.height = v73;
      v62 = v53;
      if (MaxY <= CGRectGetMaxY(v80))
      {
        v61 = 0;
      }

      else
      {
        v61 = 4;
      }
    }

    else
    {
      v60 = x;
      v61 = 1;
      v62 = v53;
    }

    v64 = v60;
    v81.origin.x = v60;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    MinX = CGRectGetMinX(v81);
    v82.origin.x = v72;
    v82.origin.y = v51;
    v82.size.width = v62;
    v82.size.height = v73;
    if (MinX >= CGRectGetMinX(v82))
    {
      v83.origin.x = v64;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      MaxX = CGRectGetMaxX(v83);
      v84.origin.x = v72;
      v84.origin.y = v51;
      v84.size.width = v53;
      v84.size.height = v73;
      if (MaxX > CGRectGetMaxX(v84))
      {
        v61 |= 0x20uLL;
      }
    }

    else
    {
      v61 |= 8uLL;
    }

    v67 = [(_UICollectionViewMultiSelectController *)self selectionState:*&height];
    v68 = [v67 startIndexPath];

    if (v61)
    {
      v69 = objc_loadWeakRetained(&self->_collectionView);
      [v69 _scrollToItemAtPresentationIndexPath:v46 atScrollPosition:v61 additionalInsets:0 animated:{0.0, 0.0, 0.0, 0.0}];
    }

    v70 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [v70 setEndIndexPath:v46];

    v71 = [(_UICollectionViewMultiSelectController *)self indexPathsBetweenIndexPath:v68 andIndexPath:v46];
    [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v71];
  }
}

- (BOOL)supportsMultiSelectInteraction:(id)a3
{
  v4 = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];

  if (v4)
  {
    return 1;
  }

  v6 = dyld_program_sdk_at_least();
  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    v9 = [v7 _allowsMultipleSelectionDuringEditing];
  }

  v5 = v9;

  return v5;
}

- (BOOL)isInMultiSelectMode
{
  v3 = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (![(_UICollectionViewMultiSelectController *)self _isUsingTableLayoutSPI])
  {
    if (dyld_program_sdk_at_least())
    {
      v4 = [v3 _allowsEffectiveMultipleSelection];
    }

    else
    {
      v4 = [v3 allowsMultipleSelection];
    }

    goto LABEL_8;
  }

  if ([v3 isEditing])
  {
    v4 = [v3 allowsSelectionDuringEditing];
LABEL_8:
    v6 = v4;
    goto LABEL_9;
  }

  v5 = [UIViewController viewControllerForView:v3];
  v6 = [v5 isEditing];

LABEL_9:
  return v6;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UICollectionViewMultiSelectController *)self multiSelectInteraction];
  v6 = [v5 activeGestureType];

  if ([(_UICollectionViewMultiSelectController *)self isInMultiSelectMode])
  {
    if (!dyld_program_sdk_at_least() || (v6 - 1) > 1)
    {
      return;
    }

    v18 = [(_UICollectionViewMultiSelectController *)self collectionView];
    if (([v18 _isEditing] & 1) == 0)
    {
      v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
      v8 = [v7 _allowsMultipleSelectionDuringEditing];

      if (!v8)
      {
        return;
      }

      v18 = [(_UICollectionViewMultiSelectController *)self collectionView];
      [v18 setEditing:1];
    }

    goto LABEL_14;
  }

  if (v3)
  {
    v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v10 = [v9 indexPathsForSelectedItems];

    v11 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v10];
    [(_UICollectionViewMultiSelectController *)self setSelectionState:v11];
  }

  v12 = dyld_program_sdk_at_least();
  v13 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v14 = v13;
  if (v12)
  {
    [v13 setEditing:1];
  }

  else
  {
    [v13 setAllowsMultipleSelection:1];
  }

  if (v3)
  {
    v15 = MEMORY[0x1E695DFD8];
    v18 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v16 = [v18 originallySelectedIndexPaths];
    v17 = [v15 setWithArray:v16];
    [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v17];

LABEL_14:
  }
}

- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  LOBYTE(v5) = [(_UICollectionViewMultiSelectController *)v5 _shouldBeginInteractionAtIndexPath:v7];
  return v5;
}

- (BOOL)_shouldBeginInteractionAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(_UICollectionViewMultiSelectController *)self isInMultiSelectMode])
  {
    v5 = 1;
  }

  else if (v4)
  {
    v6 = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
    v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v5 = [v6 collectionView:v7 shouldBeginMultipleSelectionInteractionAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)interaction:(id)a3 shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  if ([(_UICollectionViewMultiSelectController *)self _isUsingTableLayoutSPI])
  {
    v10 = *MEMORY[0x1E695EFF8] == x && *(MEMORY[0x1E695EFF8] + 8) == y;
    v11 = fabs(y);
    v12 = fabs(x);
    if (!v10 && v11 <= v12)
    {
      return 0;
    }
  }

  return [(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtPoint:v8, v7];
}

- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 keepCurrentSelection:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v48 = a3;
  v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v10 = [v9 indexPathsForSelectedItems];

  if (x == *MEMORY[0x1E695F050] && y == *(MEMORY[0x1E695F050] + 8))
  {
    v13 = 0;
  }

  else
  {
    v12 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v13 = [v12 indexPathForItemAtPoint:{x, y}];
  }

  v14 = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (!v14)
  {
    if (v5)
    {
      v15 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:v10];
    }

    else
    {
      v15 = objc_alloc_init(UIMultiSelectInteractionState);
    }

    v16 = v15;
    [(_UICollectionViewMultiSelectController *)self setSelectionState:v15];
  }

  v17 = [(_UICollectionViewMultiSelectController *)self selectionState];
  [v17 beginMultiselectInteraction];

  if ([v48 activeGestureType] == 5 || objc_msgSend(v48, "activeGestureType") == 6 || objc_msgSend(v48, "activeGestureType") == 7)
  {
    v18 = [v48 activeGestureType] != 5;
    v19 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [v19 beginSelectingWithStartingIndexPath:v13 otherSelectedIndexPaths:v10 keepCurrentSelection:v18];
  }

  else
  {
    v19 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [v19 updateStateWithStartingIndexPath:v13 otherSelectedIndexPaths:v10];
  }

  v20 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v21 = [v20 startIndexPath];

  if (v21)
  {
    v22 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v23 = [v22 startIndexPath];

    v24 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v25 = [v24 collectionViewLayout];

    v26 = [v25 layoutAttributesForItemAtIndexPath:v23];
    [v26 frame];
    v29 = v28 + v27 * 0.5;
    v32 = v31 + v30 * 0.5;
    v33 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [v33 setStartPoint:{v29, v32}];

    v34 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v35 = [v34 originallySelectedIndexPaths];

    if (!v35)
    {
      v36 = [(_UICollectionViewMultiSelectController *)self selectionState];
      [v36 setOriginallySelectedIndexPaths:v10];
    }

    v13 = v23;
  }

  v37 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v38 = [v37 delegate];

  if (objc_opt_respondsToSelector())
  {
    v39 = [(_UICollectionViewMultiSelectController *)self collectionView];
    [v38 collectionView:v39 didBeginMultipleSelectionInteractionAtIndexPath:v13];

    v40 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v41 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v42 = [v41 indexPathsForSelectedItems];
    v43 = [v40 stillValidForSelectedIndexPaths:v42];

    if ((v43 & 1) == 0)
    {
      v44 = MEMORY[0x1E695DFD8];
      v45 = [(_UICollectionViewMultiSelectController *)self selectionState];
      v46 = [v45 allSelectedIndexPaths];
      v47 = [v44 setWithArray:v46];
      [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v47];
    }
  }
}

- (void)_performWithPrewarmingCache:(id)a3
{
  flags = self->_flags;
  *&self->_flags = flags | 2;
  (*(a3 + 2))(a3, a2);
  *&self->_flags = *&self->_flags & 0xFD | flags & 2;
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 ofType:(int64_t)a4 atPoint:(CGPoint)a5 withVelocity:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v12 = a3;
  if (![(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtPoint:v9, v8])
  {
    goto LABEL_11;
  }

  v13 = [(_UICollectionViewMultiSelectController *)self isInMultiSelectMode];
  if (a4 != 5)
  {
    if (a4)
    {
      v14 = 1;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (![(_UICollectionViewMultiSelectController *)self _allowsBandSelectionStartingAtPoint:v12 multiSelectInteraction:v9, v8])
  {
LABEL_9:
    if (v13)
    {
      v14 = [(_UICollectionViewMultiSelectController *)self _testTouchPolicyAtPoint:v9 withVelocity:v8, x, y];
      goto LABEL_12;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104___UICollectionViewMultiSelectController_shouldBeginMultiSelectInteraction_ofType_atPoint_withVelocity___block_invoke;
  v16[3] = &unk_1E7108E50;
  v16[4] = self;
  v16[5] = &v17;
  *&v16[6] = v9;
  *&v16[7] = v8;
  [(_UICollectionViewMultiSelectController *)self _performWithPrewarmingCache:v16];
  if (v13 && (v18[3] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    [(_UICollectionViewMultiSelectController *)self setContentMaskCache:0];
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);
LABEL_12:

  return v14;
}

- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  if (v7)
  {
    v8 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v9 = [v8 collectionViewLayout];
    v10 = [v9 _allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:{objc_msgSend(v7, "section")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_testTouchPolicyAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(_UICollectionViewMultiSelectController *)self _hitTestForSystemEditControlAtPoint:?];
  if (v9 == 3)
  {
    return 1;
  }

  if (v9 != 1)
  {
    return 0;
  }

  v10 = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (![v10 _isEditing])
  {

    return 0;
  }

  v11 = [(_UICollectionViewMultiSelectController *)self _allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionAtPoint:v7, v6];

  if (!v11)
  {
    return 0;
  }

  v12 = [(_UICollectionViewMultiSelectController *)self axisConstraintForSingleFingerPanGestureAtPoint:v7, v6];
  if (v12 == 1)
  {
LABEL_14:
    v16 = fabs(x);
    v17 = fabs(y);
    return v16 > v17;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      return 0;
    }

    v13 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v14 = [v13 collectionViewLayout];
    v15 = [v14 _layoutAxis];

    if (v15 != 2)
    {
      if (v15 == 1)
      {
        goto LABEL_10;
      }

      return 0;
    }

    goto LABEL_14;
  }

LABEL_10:
  v16 = fabs(y);
  v17 = fabs(x);
  return v16 > v17;
}

- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  self->_computedAxisConstraint = 4;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(UIMultiSelectInteractionState *)self->_selectionState allSelectedIndexPaths:a3];
  v7 = [v5 setWithArray:v6];
  v8 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:v7];
  [v8 stop];

  v9 = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
    v11 = [(_UICollectionViewMultiSelectController *)self collectionView];
    [v10 collectionViewDidEndMultipleSelectionInteraction:v11];
  }

  v12 = [(_UICollectionViewMultiSelectController *)self selectionState];
  [v12 endMultiselectInteraction];

  [(_UICollectionViewMultiSelectController *)self setContentMaskCache:0];
}

- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  LOBYTE(v5) = [(_UICollectionViewMultiSelectController *)v5 shouldAllowSelectionExtensionAtIndexPath:v7];
  return v5;
}

- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v4 = [v6 lastObject];
  }

  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  if ([v8 count])
  {
    v9 = [(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtIndexPath:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (dyld_program_sdk_at_least())
  {

    return [(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtPoint:x, y];
  }

  else
  {

    return [(_UICollectionViewMultiSelectController *)self shouldAllowSelectionExtensionAtPoint:x, y];
  }
}

- (void)multiSelectInteraction:(id)a3 appendSelectionAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v13 = [v7 indexPathForItemAtPoint:{x, y}];

  v8 = v13;
  if (v13)
  {
    v9 = [(_UICollectionViewMultiSelectController *)self selectionState];
    v10 = [v9 isSelecting];

    v11 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    if (v10)
    {
      [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v11];
    }

    else
    {
      [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v11];
    }

    v12 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [v12 setStartIndexPath:v13];

    v8 = v13;
  }
}

- (BOOL)multiSelectInteractionGestureShouldPreventDragLiftGesture:(id)a3
{
  v4 = a3;
  if ([(_UICollectionViewMultiSelectController *)self _isUsingTableLayoutSPI])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UICollectionViewMultiSelectController *)self collectionView];
    [v4 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v5 = [(_UICollectionViewMultiSelectController *)self _hitTestForSystemEditControlAtPoint:v8, v10]== 3;
  }

  return v5;
}

- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = MEMORY[0x1E695DFD8];
  v9 = a3;
  v8 = [v7 set];
  [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v8];

  [(_UICollectionViewMultiSelectController *)self didEndMultiSelectInteraction:v9 atPoint:x, y];
}

- (BOOL)multiSelectInteraction:(id)a3 shouldShowBandForSelectionStartingAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = [v7 _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  if (v8)
  {
    v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v10 = [v9 collectionViewLayout];
    v11 = [v10 _wantsBandSelectionVisualsInSection:{objc_msgSend(v8, "section")}];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_allowsBandSelectionStartingAtPoint:(CGPoint)a3 multiSelectInteraction:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = [v7 _allowsBandSelectionForMultipleSelection];

  if (!v8)
  {
    return 0;
  }

  v9 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v10 = [v9 hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
  }

  else
  {
    v12 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v13 = [v12 _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

    v11 = v13 != 0;
  }

  return v11;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end