@interface _UICollectionViewMultiSelectController
- (BOOL)_allowsBandSelectionStartingAtPoint:(CGPoint)point multiSelectInteraction:(id)interaction;
- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionAtPoint:(CGPoint)point;
- (BOOL)_isUsingTableLayoutSPI;
- (BOOL)_point:(CGPoint)_point liesBeyondFrame:(CGRect)frame inDirection:(double)direction;
- (BOOL)_shouldBeginInteractionAtIndexPath:(id)path;
- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)point;
- (BOOL)_testTouchPolicyAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)interaction:(id)interaction shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)isInMultiSelectMode;
- (BOOL)isInMultiselectInteraction;
- (BOOL)multiSelectInteraction:(id)interaction shouldShowBandForSelectionStartingAtPoint:(CGPoint)point;
- (BOOL)multiSelectInteractionGestureShouldPreventDragLiftGesture:(id)gesture;
- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)point;
- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)path;
- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)point;
- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction ofType:(int64_t)type atPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)supportsMultiSelectInteraction:(id)interaction;
- (UICollectionView)collectionView;
- (_UICollectionViewMultiSelectController)initWithCollectionView:(id)view;
- (id)_antecedentIndexPathsForLayoutAttributes:(id)attributes inDirection:(double)direction;
- (id)_autoScrollAssistantForIndexPaths:(id)paths;
- (id)_boundingScrollViewForIndexPath:(id)path;
- (id)_collectionViewDelegate;
- (id)_indexPathsWithinRect:(CGRect)rect;
- (id)childScrollViewAtLocation:(CGPoint)location;
- (id)indexPathsBetweenIndexPath:(id)path andIndexPath:(id)indexPath;
- (int64_t)_hitTestForSystemEditControlAtPoint:(CGPoint)point;
- (int64_t)axisConstraintAtIndexPath:(id)path;
- (int64_t)axisConstraintAtPoint:(CGPoint)point;
- (int64_t)axisConstraintForSingleFingerPanGestureAtPoint:(CGPoint)point;
- (void)_autoScrollAtIndexPaths:(id)paths fromPoint:(CGPoint)point;
- (void)_deselectIndexPaths:(id)paths;
- (void)_extendSelectionToPoint:(CGPoint)point;
- (void)_performWithPrewarmingCache:(id)cache;
- (void)_selectIndexPaths:(id)paths;
- (void)_updateContentMasksForVisibleCells;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection;
- (void)clearSelectionState;
- (void)collectionViewDidUpdateVisibleCells;
- (void)dealloc;
- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction appendSelectionAtPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction;
- (void)multiSelectInteraction:(id)interaction selectItemsWithinRect:(CGRect)rect leadingPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction toggleSelectionWithinRect:(CGRect)rect leadingPoint:(CGPoint)point;
- (void)selectedIndexPathsChanged:(id)changed;
- (void)uninstallFromCollectionView;
- (void)updateSelectedIndexPaths:(id)paths;
- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point keepCurrentSelection:(BOOL)selection;
@end

@implementation _UICollectionViewMultiSelectController

- (void)clearSelectionState
{
  [(_UICollectionViewMultiSelectController *)self setSelectionState:0];
  multiSelectInteraction = [(_UICollectionViewMultiSelectController *)self multiSelectInteraction];
  if ([multiSelectInteraction isEnabled])
  {
    [multiSelectInteraction setEnabled:0];
    [multiSelectInteraction setEnabled:1];
  }
}

- (void)collectionViewDidUpdateVisibleCells
{
  contentMaskCache = [(_UICollectionViewMultiSelectController *)self contentMaskCache];

  if (contentMaskCache)
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
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  isInMultiselectInteraction = [selectionState isInMultiselectInteraction];

  return isInMultiselectInteraction;
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

- (_UICollectionViewMultiSelectController)initWithCollectionView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _UICollectionViewMultiSelectController;
  v5 = [(_UICollectionViewMultiSelectController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, viewCopy);
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

- (int64_t)axisConstraintForSingleFingerPanGestureAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];
  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v7];
  if (v8 == 1)
  {
    if (v7)
    {
      collectionViewLayout = [collectionView collectionViewLayout];
      v10 = [collectionViewLayout _supportsSwipeActionsForIndexPath:v7];

      v8 = ~v10 & 1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (int64_t)axisConstraintAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  _hasOrthogonalScrollingSections = [collectionViewLayout _hasOrthogonalScrollingSections];

  if ((_hasOrthogonalScrollingSections & 1) != 0 || (computedAxisConstraint = self->_computedAxisConstraint, computedAxisConstraint == 4))
  {
    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    collectionViewLayout2 = [collectionView2 collectionViewLayout];
    _hasOrthogonalScrollingSections2 = [collectionViewLayout2 _hasOrthogonalScrollingSections];

    if ((_hasOrthogonalScrollingSections2 & 1) != 0 || (-[_UICollectionViewMultiSelectController collectionView](self, "collectionView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 collectionViewLayout], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "_layoutAxis"), v13, v12, v14 >= 4))
    {
      v15 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:pathCopy];
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

- (int64_t)axisConstraintAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v7];
  return v8;
}

- (id)_autoScrollAssistantForIndexPaths:(id)paths
{
  v23 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  anyObject = [pathsCopy anyObject];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = pathsCopy;
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

        section = [*(*(&v18 + 1) + 8 * i) section];
        if (section != [anyObject section])
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
  _autoScrollAssistant = [WeakRetained _autoScrollAssistant];

  if (v12)
  {
    v15 = objc_loadWeakRetained(&self->_collectionView);
    v16 = [v15 _autoScrollAssistantForIndexPath:anyObject];

    _autoScrollAssistant = v16;
  }

  return _autoScrollAssistant;
}

- (id)_boundingScrollViewForIndexPath:(id)path
{
  if (path)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    v5 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:v4];
    scrollView = [v5 scrollView];
  }

  else
  {
    scrollView = [(_UICollectionViewMultiSelectController *)self collectionView];
  }

  return scrollView;
}

- (id)childScrollViewAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  v8 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v7];

  return v8;
}

- (void)_autoScrollAtIndexPaths:(id)paths fromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:paths];
  if (v7)
  {
    v14 = v7;
    scrollView = [v7 scrollView];
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    [scrollView convertPoint:collectionView fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    [v14 autoScrollFromPoint:{v11, v13}];
    v7 = v14;
  }
}

- (id)_antecedentIndexPathsForLayoutAttributes:(id)attributes inDirection:(double)direction
{
  v39 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v6 = [MEMORY[0x1E695DFA8] set];
  indexPath = [attributesCopy indexPath];
  v8 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:indexPath];
  v9 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:indexPath];
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

  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  [collectionView2 contentScaleFactor];
  v15 = v14;

  [attributesCopy frame];
  v33 = attributesCopy;
  [collectionViewLayout _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:attributesCopy frame:?];
  v31 = collectionViewLayout;
  v20 = [collectionViewLayout _layoutAttributesForElementsInProjectedRect:UIRectInsetEdges(v10 withProjectionVector:v16 projectionDistance:{v17, v18, v19, v15)}];
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
        indexPath2 = [v25 indexPath];
        section = [indexPath2 section];
        section2 = [indexPath section];

        if (section == section2 && ![v25 representedElementCategory])
        {
          indexPath3 = [v25 indexPath];
          [v6 addObject:indexPath3];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v22);
  }

  return v6;
}

- (BOOL)_point:(CGPoint)_point liesBeyondFrame:(CGRect)frame inDirection:(double)direction
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = _point.y;
  v11 = _point.x;
  v12 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtPoint:?];
  if (direction < 0.0)
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

- (id)indexPathsBetweenIndexPath:(id)path andIndexPath:(id)indexPath
{
  v66 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  indexPathCopy = indexPath;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  v10 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];
  [v10 frame];
  v54 = v10;
  [collectionViewLayout _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v10 frame:?];
  v59 = v12;
  v60 = v11;
  v13 = v11 + v12 * 0.5;
  v58 = v14;
  v16 = v15;
  v17 = v15 + v14 * 0.5;
  collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v55 = indexPathCopy;
  v19 = [collectionView2 layoutAttributesForItemAtIndexPath:indexPathCopy];

  [v19 frame];
  [collectionViewLayout _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v19 frame:?];
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

  v31 = [collectionViewLayout _extendedAttributesQueryIncludingOrthogonalScrollingRegions:{v28, v30, fmax(v27 - v28, 1.0), fmax(v29 - v30, 1.0)}];
  v56 = pathCopy;
  if ([(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:pathCopy]== 1)
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
          [collectionViewLayout _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v39 frame:?];
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          indexPath = [v39 indexPath];
          [v26 addObject:indexPath];

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

- (void)_extendSelectionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (selectionState)
  {
    selectionState2 = [(_UICollectionViewMultiSelectController *)self selectionState];
    startIndexPath = [selectionState2 startIndexPath];

    if (startIndexPath)
    {
      if ((*&self->_flags & 4) == 0)
      {
        collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
        v14 = [collectionView _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

        v10 = v14;
        if (v14)
        {
          selectionState3 = [(_UICollectionViewMultiSelectController *)self selectionState];
          startIndexPath2 = [selectionState3 startIndexPath];

          v13 = [(_UICollectionViewMultiSelectController *)self indexPathsBetweenIndexPath:startIndexPath2 andIndexPath:v14];
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
  contentMaskCache = [(_UICollectionViewMultiSelectController *)self contentMaskCache];
  if (contentMaskCache)
  {
    strongToStrongObjectsMapTable = contentMaskCache;
    if ((flags & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [(_UICollectionViewMultiSelectController *)self setContentMaskCache:strongToStrongObjectsMapTable];
  }

  *&self->_flags &= ~1u;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = collectionView;
  if (collectionView)
  {
    v9 = [collectionView _identityTracker:1];
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewMultiSelectController.m" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"identityTracker != nil"}];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    visibleCells = [v8 visibleCells];
    v11 = [visibleCells countByEnumeratingWithState:&v26 objects:v32 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          _layoutAttributes = [v15 _layoutAttributes];
          indexPath = [_layoutAttributes indexPath];

          v18 = [(_UIIndexPathIdentityTracker *)v9 identifierForIndexPath:indexPath];
          v19 = [strongToStrongObjectsMapTable objectForKey:v18];

          if (!v19)
          {
            v20 = _UIImageForView(v15);
            if (v20)
            {
              [strongToStrongObjectsMapTable setObject:v20 forKey:v18];
            }

            else
            {
              ++v25;
            }
          }
        }

        v12 = [visibleCells countByEnumeratingWithState:&v26 objects:v32 count:16];
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

- (id)_indexPathsWithinRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v10 = collectionViewLayout;
  v11 = 0;
  v46 = collectionView;
  if (collectionView && collectionViewLayout)
  {
    contentMaskCache = [(_UICollectionViewMultiSelectController *)selfCopy contentMaskCache];

    v13 = !contentMaskCache && ([(_UICollectionViewMultiSelectController *)selfCopy _updateContentMasksForVisibleCells], [(UIMultiSelectInteraction *)selfCopy->_multiSelectInteraction activeGestureType]== 8) && (*&selfCopy->_flags & 2) == 0;
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
      v45 = selfCopy;
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
          indexPath = [v21 indexPath];
          if (v21)
          {
            if ((v21[288] & 1) != 0 && ([v21 isHidden] & 1) == 0)
            {
              [v21 alpha];
              if (v23 > 0.0)
              {
                _existingListAttributes = [(UICollectionViewLayoutAttributes *)v21 _existingListAttributes];

                [v21 frame];
                [v10 _orthogonalFrameWithOffsetElidedForItemWithLayoutAttributes:v21 frame:?];
                if (_existingListAttributes)
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

                v33 = [(_UIIndexPathIdentityTracker *)v47 identifierForIndexPath:indexPath];
                contentMaskCache2 = [(_UICollectionViewMultiSelectController *)v45 contentMaskCache];
                v35 = [contentMaskCache2 objectForKey:v33];

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
                  [v15 addObject:indexPath];
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

          selfCopy = v45;
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
      [(_UICollectionViewMultiSelectController *)selfCopy setContentMaskCache:0];
    }

LABEL_32:
    v11 = v15;
  }

  return v11;
}

- (void)multiSelectInteraction:(id)interaction selectItemsWithinRect:(CGRect)rect leadingPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = [(_UICollectionViewMultiSelectController *)self _indexPathsWithinRect:interaction, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v8];
  [(_UICollectionViewMultiSelectController *)self _autoScrollAtIndexPaths:v8 fromPoint:x, y];
}

- (void)multiSelectInteraction:(id)interaction toggleSelectionWithinRect:(CGRect)rect leadingPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v18 = [(_UICollectionViewMultiSelectController *)self _indexPathsWithinRect:interaction, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v8 = MEMORY[0x1E695DFD8];
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  originallySelectedIndexPaths = [selectionState originallySelectedIndexPaths];
  v11 = [v8 setWithArray:originallySelectedIndexPaths];

  v12 = [v18 mutableCopy];
  [v12 intersectSet:v11];
  v13 = [v11 mutableCopy];
  [v13 unionSet:v18];
  [v13 minusSet:v12];
  v14 = MEMORY[0x1E695DFA8];
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v17 = [v14 setWithArray:indexPathsForSelectedItems];

  [v17 minusSet:v13];
  [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v13];
  [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v17];
  [(_UICollectionViewMultiSelectController *)self _autoScrollAtIndexPaths:v18 fromPoint:x, y];
}

- (void)_selectIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DFD8];
  pathsCopy = paths;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = indexPathsForSelectedItems;
  if (indexPathsForSelectedItems)
  {
    v9 = indexPathsForSelectedItems;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v4 setWithArray:v9];

  v11 = [pathsCopy mutableCopy];
  [v11 minusSet:v10];
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___UICollectionViewMultiSelectController__selectIndexPaths___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v15 = v11;
  selfCopy = self;
  v13 = v11;
  [selectionState ignoreSelectionChangedNotificationsWithBlock:v14];
}

- (void)_deselectIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DFD8];
  pathsCopy = paths;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = [v4 setWithArray:indexPathsForSelectedItems];

  v9 = [pathsCopy mutableCopy];
  [v9 intersectSet:v8];
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___UICollectionViewMultiSelectController__deselectIndexPaths___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v13 = v9;
  selfCopy = self;
  v11 = v9;
  [selectionState ignoreSelectionChangedNotificationsWithBlock:v12];
}

- (void)updateSelectedIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DFD8];
  pathsCopy = paths;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v12 = [v4 setWithArray:indexPathsForSelectedItems];

  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  v9 = [selectionState pathsToSelectForInterpolatedIndexPaths:pathsCopy];

  selectionState2 = [(_UICollectionViewMultiSelectController *)self selectionState];
  v11 = [selectionState2 pathsToDeselectForInterpolatedIndexPaths:pathsCopy currentlySelectedIndexPaths:v12];

  [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v9];
  [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v11];
}

- (void)selectedIndexPathsChanged:(id)changed
{
  changedCopy = changed;
  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (selectionState)
  {
    selectionState2 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [(UIMultiSelectInteractionState *)selectionState2 updateStateWithDifferenceFromCurrentSelection:changedCopy];
  }

  else
  {
    selectionState2 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:changedCopy];

    [(_UICollectionViewMultiSelectController *)self setSelectionState:selectionState2];
  }
}

- (id)_collectionViewDelegate
{
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  delegate = [collectionView delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    delegate2 = [collectionView2 delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (BOOL)_isUsingTableLayoutSPI
{
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)_hitTestForSystemEditControlAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v6 = [collectionView indexPathForItemAtPoint:{x, y}];
  if (v6)
  {
    v7 = [collectionView cellForItemAtIndexPath:v6];
    if (!v7)
    {
      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _viewForMultiSelectAccessory = [v7 _viewForMultiSelectAccessory];
      if (_viewForMultiSelectAccessory)
      {
        tableViewCell2 = _viewForMultiSelectAccessory;
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        tableViewCell = [v7 tableViewCell];
        v12 = [tableViewCell editingData:0];
        tableViewCell2 = [v12 editControl:0];

        if (!tableViewCell2)
        {
          tableViewCell2 = [v7 tableViewCell];
          [tableViewCell2 convertPoint:collectionView fromView:{x, y}];
          v23 = v22;
          v25 = v24;
          [tableViewCell2 frame];
          v27.x = v23;
          v27.y = v25;
          if (CGRectContainsPoint(v28, v27))
          {
            [tableViewCell2 frame];
            v26 = vabdd_f64(CGRectGetMinX(v29), x);
            [tableViewCell2 frame];
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
        [tableViewCell2 convertPoint:collectionView fromView:{x, y}];
        v14 = v13;
        v16 = v15;
        [tableViewCell2 bounds];
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

- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction
{
  selectionEndIndexPath = [(_UICollectionViewMultiSelectController *)self selectionEndIndexPath];
  if (!selectionEndIndexPath)
  {
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

    v9 = [indexPathsForSelectedItems sortedArrayUsingSelector:sel_compare_];

    if ((direction & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      [v9 lastObject];
    }

    else
    {
      [v9 firstObject];
    }
    v74 = ;

    selectionEndIndexPath = v74;
    if (!v74)
    {
      return;
    }
  }

  v75 = selectionEndIndexPath;
  collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];

  v12 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v75];
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [WeakRetained visibleBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:v75];
  collectionView3 = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (v24 == collectionView3)
  {
    goto LABEL_17;
  }

  v26 = [(_UICollectionViewMultiSelectController *)self axisConstraintAtIndexPath:v75];
  if (v26 == 2)
  {

    if (direction - 1 >= 2)
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
      collectionView3 = [(_UICollectionViewMultiSelectController *)self collectionView];
      [v24 visibleBounds];
      [collectionView3 convertRect:v24 fromView:?];
      v17 = v27;
      v19 = v28;
      v21 = v29;
      v23 = v30;
      goto LABEL_17;
    }

    if (direction && direction != 3)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v31 = v21 + v21;
  v32 = 1.0;
  v33 = v19 - v23;
  v34 = v23 + v23;
  if (direction == 2)
  {
    v35 = v23 + v23;
  }

  else
  {
    v35 = v23;
  }

  if (direction == 2)
  {
    v36 = -1.0;
  }

  else
  {
    v33 = v19;
    v36 = v14;
  }

  if (direction == 3)
  {
    v35 = v23;
    v37 = v21 + v21;
  }

  else
  {
    v37 = v21;
  }

  if (direction == 3)
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
  if (direction != 1)
  {
    v34 = v23;
    v32 = v14;
  }

  if (direction)
  {
    v31 = v21;
  }

  else
  {
    v34 = v23;
  }

  if (direction)
  {
    v39 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (direction)
  {
    v40 = v13;
  }

  else
  {
    v40 = -1.0;
  }

  if (direction > 1)
  {
    v41 = v37;
  }

  else
  {
    v35 = v34;
    v41 = v31;
  }

  if (direction <= 1)
  {
    v42 = v19;
  }

  else
  {
    v42 = v33;
  }

  if (direction <= 1)
  {
    v43 = v39;
  }

  else
  {
    v43 = v17;
  }

  if (direction <= 1)
  {
    v44 = v40;
  }

  else
  {
    v32 = v36;
    v44 = v38;
  }

  v45 = [collectionViewLayout _layoutAttributesForNextItemInDirection:v75 fromIndexPath:v44 constrainedToRect:{v32, v43, v42, v41, v35}];
  indexPath = [v45 indexPath];
  if (indexPath)
  {
    v47 = [(_UICollectionViewMultiSelectController *)self _boundingScrollViewForIndexPath:indexPath];
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
    startIndexPath = [v67 startIndexPath];

    if (v61)
    {
      v69 = objc_loadWeakRetained(&self->_collectionView);
      [v69 _scrollToItemAtPresentationIndexPath:indexPath atScrollPosition:v61 additionalInsets:0 animated:{0.0, 0.0, 0.0, 0.0}];
    }

    selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
    [selectionState setEndIndexPath:indexPath];

    v71 = [(_UICollectionViewMultiSelectController *)self indexPathsBetweenIndexPath:startIndexPath andIndexPath:indexPath];
    [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v71];
  }
}

- (BOOL)supportsMultiSelectInteraction:(id)interaction
{
  _collectionViewDelegate = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];

  if (_collectionViewDelegate)
  {
    return 1;
  }

  v6 = dyld_program_sdk_at_least();
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = collectionView;
  if (v6)
  {
    allowsMultipleSelectionDuringEditing = [collectionView allowsMultipleSelectionDuringEditing];
  }

  else
  {
    allowsMultipleSelectionDuringEditing = [collectionView _allowsMultipleSelectionDuringEditing];
  }

  v5 = allowsMultipleSelectionDuringEditing;

  return v5;
}

- (BOOL)isInMultiSelectMode
{
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (![(_UICollectionViewMultiSelectController *)self _isUsingTableLayoutSPI])
  {
    if (dyld_program_sdk_at_least())
    {
      _allowsEffectiveMultipleSelection = [collectionView _allowsEffectiveMultipleSelection];
    }

    else
    {
      _allowsEffectiveMultipleSelection = [collectionView allowsMultipleSelection];
    }

    goto LABEL_8;
  }

  if ([collectionView isEditing])
  {
    _allowsEffectiveMultipleSelection = [collectionView allowsSelectionDuringEditing];
LABEL_8:
    isEditing = _allowsEffectiveMultipleSelection;
    goto LABEL_9;
  }

  v5 = [UIViewController viewControllerForView:collectionView];
  isEditing = [v5 isEditing];

LABEL_9:
  return isEditing;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  multiSelectInteraction = [(_UICollectionViewMultiSelectController *)self multiSelectInteraction];
  activeGestureType = [multiSelectInteraction activeGestureType];

  if ([(_UICollectionViewMultiSelectController *)self isInMultiSelectMode])
  {
    if (!dyld_program_sdk_at_least() || (activeGestureType - 1) > 1)
    {
      return;
    }

    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    if (([collectionView _isEditing] & 1) == 0)
    {
      collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
      _allowsMultipleSelectionDuringEditing = [collectionView2 _allowsMultipleSelectionDuringEditing];

      if (!_allowsMultipleSelectionDuringEditing)
      {
        return;
      }

      collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
      [collectionView setEditing:1];
    }

    goto LABEL_14;
  }

  if (selectionCopy)
  {
    collectionView3 = [(_UICollectionViewMultiSelectController *)self collectionView];
    indexPathsForSelectedItems = [collectionView3 indexPathsForSelectedItems];

    v11 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:indexPathsForSelectedItems];
    [(_UICollectionViewMultiSelectController *)self setSelectionState:v11];
  }

  v12 = dyld_program_sdk_at_least();
  collectionView4 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v14 = collectionView4;
  if (v12)
  {
    [collectionView4 setEditing:1];
  }

  else
  {
    [collectionView4 setAllowsMultipleSelection:1];
  }

  if (selectionCopy)
  {
    v15 = MEMORY[0x1E695DFD8];
    collectionView = [(_UICollectionViewMultiSelectController *)self selectionState];
    originallySelectedIndexPaths = [collectionView originallySelectedIndexPaths];
    v17 = [v15 setWithArray:originallySelectedIndexPaths];
    [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v17];

LABEL_14:
  }
}

- (BOOL)_shouldBeginInteractionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  LOBYTE(selfCopy) = [(_UICollectionViewMultiSelectController *)selfCopy _shouldBeginInteractionAtIndexPath:v7];
  return selfCopy;
}

- (BOOL)_shouldBeginInteractionAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(_UICollectionViewMultiSelectController *)self isInMultiSelectMode])
  {
    v5 = 1;
  }

  else if (pathCopy)
  {
    _collectionViewDelegate = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    v5 = [_collectionViewDelegate collectionView:collectionView shouldBeginMultipleSelectionInteractionAtIndexPath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)interaction:(id)interaction shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = point.y;
  v8 = point.x;
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

- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point keepCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if (x == *MEMORY[0x1E695F050] && y == *(MEMORY[0x1E695F050] + 8))
  {
    v13 = 0;
  }

  else
  {
    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v13 = [collectionView2 indexPathForItemAtPoint:{x, y}];
  }

  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];

  if (!selectionState)
  {
    if (selectionCopy)
    {
      v15 = [[UIMultiSelectInteractionState alloc] initWithCurrentSelection:indexPathsForSelectedItems];
    }

    else
    {
      v15 = objc_alloc_init(UIMultiSelectInteractionState);
    }

    v16 = v15;
    [(_UICollectionViewMultiSelectController *)self setSelectionState:v15];
  }

  selectionState2 = [(_UICollectionViewMultiSelectController *)self selectionState];
  [selectionState2 beginMultiselectInteraction];

  if ([interactionCopy activeGestureType] == 5 || objc_msgSend(interactionCopy, "activeGestureType") == 6 || objc_msgSend(interactionCopy, "activeGestureType") == 7)
  {
    v18 = [interactionCopy activeGestureType] != 5;
    selectionState3 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [selectionState3 beginSelectingWithStartingIndexPath:v13 otherSelectedIndexPaths:indexPathsForSelectedItems keepCurrentSelection:v18];
  }

  else
  {
    selectionState3 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [selectionState3 updateStateWithStartingIndexPath:v13 otherSelectedIndexPaths:indexPathsForSelectedItems];
  }

  selectionState4 = [(_UICollectionViewMultiSelectController *)self selectionState];
  startIndexPath = [selectionState4 startIndexPath];

  if (startIndexPath)
  {
    selectionState5 = [(_UICollectionViewMultiSelectController *)self selectionState];
    startIndexPath2 = [selectionState5 startIndexPath];

    collectionView3 = [(_UICollectionViewMultiSelectController *)self collectionView];
    collectionViewLayout = [collectionView3 collectionViewLayout];

    v26 = [collectionViewLayout layoutAttributesForItemAtIndexPath:startIndexPath2];
    [v26 frame];
    v29 = v28 + v27 * 0.5;
    v32 = v31 + v30 * 0.5;
    selectionState6 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [selectionState6 setStartPoint:{v29, v32}];

    selectionState7 = [(_UICollectionViewMultiSelectController *)self selectionState];
    originallySelectedIndexPaths = [selectionState7 originallySelectedIndexPaths];

    if (!originallySelectedIndexPaths)
    {
      selectionState8 = [(_UICollectionViewMultiSelectController *)self selectionState];
      [selectionState8 setOriginallySelectedIndexPaths:indexPathsForSelectedItems];
    }

    v13 = startIndexPath2;
  }

  collectionView4 = [(_UICollectionViewMultiSelectController *)self collectionView];
  delegate = [collectionView4 delegate];

  if (objc_opt_respondsToSelector())
  {
    collectionView5 = [(_UICollectionViewMultiSelectController *)self collectionView];
    [delegate collectionView:collectionView5 didBeginMultipleSelectionInteractionAtIndexPath:v13];

    selectionState9 = [(_UICollectionViewMultiSelectController *)self selectionState];
    collectionView6 = [(_UICollectionViewMultiSelectController *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView6 indexPathsForSelectedItems];
    v43 = [selectionState9 stillValidForSelectedIndexPaths:indexPathsForSelectedItems2];

    if ((v43 & 1) == 0)
    {
      v44 = MEMORY[0x1E695DFD8];
      selectionState10 = [(_UICollectionViewMultiSelectController *)self selectionState];
      allSelectedIndexPaths = [selectionState10 allSelectedIndexPaths];
      v47 = [v44 setWithArray:allSelectedIndexPaths];
      [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v47];
    }
  }
}

- (void)_performWithPrewarmingCache:(id)cache
{
  flags = self->_flags;
  *&self->_flags = flags | 2;
  (*(cache + 2))(cache, a2);
  *&self->_flags = *&self->_flags & 0xFD | flags & 2;
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction ofType:(int64_t)type atPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v8 = point.y;
  v9 = point.x;
  interactionCopy = interaction;
  if (![(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtPoint:v9, v8])
  {
    goto LABEL_11;
  }

  isInMultiSelectMode = [(_UICollectionViewMultiSelectController *)self isInMultiSelectMode];
  if (type != 5)
  {
    if (type)
    {
      v14 = 1;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (![(_UICollectionViewMultiSelectController *)self _allowsBandSelectionStartingAtPoint:interactionCopy multiSelectInteraction:v9, v8])
  {
LABEL_9:
    if (isInMultiSelectMode)
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
  if (isInMultiSelectMode && (v18[3] & 1) != 0)
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

- (BOOL)_allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (v7)
  {
    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    v10 = [collectionViewLayout _allowsPanningAcrossConstrainedAxisToBeginMultiSelectInteractionInSection:{objc_msgSend(v7, "section")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_testTouchPolicyAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = point.y;
  v7 = point.x;
  v9 = [(_UICollectionViewMultiSelectController *)self _hitTestForSystemEditControlAtPoint:?];
  if (v9 == 3)
  {
    return 1;
  }

  if (v9 != 1)
  {
    return 0;
  }

  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  if (![collectionView _isEditing])
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

    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    _layoutAxis = [collectionViewLayout _layoutAxis];

    if (_layoutAxis != 2)
    {
      if (_layoutAxis == 1)
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

- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  self->_computedAxisConstraint = 4;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(UIMultiSelectInteractionState *)self->_selectionState allSelectedIndexPaths:interaction];
  v7 = [v5 setWithArray:v6];
  v8 = [(_UICollectionViewMultiSelectController *)self _autoScrollAssistantForIndexPaths:v7];
  [v8 stop];

  _collectionViewDelegate = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    _collectionViewDelegate2 = [(_UICollectionViewMultiSelectController *)self _collectionViewDelegate];
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    [_collectionViewDelegate2 collectionViewDidEndMultipleSelectionInteraction:collectionView];
  }

  selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
  [selectionState endMultiselectInteraction];

  [(_UICollectionViewMultiSelectController *)self setContentMaskCache:0];
}

- (BOOL)shouldAllowSelectionExtensionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  LOBYTE(selfCopy) = [(_UICollectionViewMultiSelectController *)selfCopy shouldAllowSelectionExtensionAtIndexPath:v7];
  return selfCopy;
}

- (BOOL)shouldAllowSelectionExtensionAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    pathCopy = [indexPathsForSelectedItems lastObject];
  }

  collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems2 count])
  {
    v9 = [(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldAllowSelectionAppendageAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (dyld_program_sdk_at_least())
  {

    return [(_UICollectionViewMultiSelectController *)self _shouldBeginInteractionAtPoint:x, y];
  }

  else
  {

    return [(_UICollectionViewMultiSelectController *)self shouldAllowSelectionExtensionAtPoint:x, y];
  }
}

- (void)multiSelectInteraction:(id)interaction appendSelectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v13 = [collectionView indexPathForItemAtPoint:{x, y}];

  v8 = v13;
  if (v13)
  {
    selectionState = [(_UICollectionViewMultiSelectController *)self selectionState];
    isSelecting = [selectionState isSelecting];

    v11 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    if (isSelecting)
    {
      [(_UICollectionViewMultiSelectController *)self _selectIndexPaths:v11];
    }

    else
    {
      [(_UICollectionViewMultiSelectController *)self _deselectIndexPaths:v11];
    }

    selectionState2 = [(_UICollectionViewMultiSelectController *)self selectionState];
    [selectionState2 setStartIndexPath:v13];

    v8 = v13;
  }
}

- (BOOL)multiSelectInteractionGestureShouldPreventDragLiftGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(_UICollectionViewMultiSelectController *)self _isUsingTableLayoutSPI])
  {
    v5 = 1;
  }

  else
  {
    collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
    [gestureCopy locationInView:collectionView];
    v8 = v7;
    v10 = v9;

    v5 = [(_UICollectionViewMultiSelectController *)self _hitTestForSystemEditControlAtPoint:v8, v10]== 3;
  }

  return v5;
}

- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x1E695DFD8];
  interactionCopy = interaction;
  v8 = [v7 set];
  [(_UICollectionViewMultiSelectController *)self updateSelectedIndexPaths:v8];

  [(_UICollectionViewMultiSelectController *)self didEndMultiSelectInteraction:interactionCopy atPoint:x, y];
}

- (BOOL)multiSelectInteraction:(id)interaction shouldShowBandForSelectionStartingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  v8 = [collectionView _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  if (v8)
  {
    collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    v11 = [collectionViewLayout _wantsBandSelectionVisualsInSection:{objc_msgSend(v8, "section")}];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_allowsBandSelectionStartingAtPoint:(CGPoint)point multiSelectInteraction:(id)interaction
{
  y = point.y;
  x = point.x;
  collectionView = [(_UICollectionViewMultiSelectController *)self collectionView];
  _allowsBandSelectionForMultipleSelection = [collectionView _allowsBandSelectionForMultipleSelection];

  if (!_allowsBandSelectionForMultipleSelection)
  {
    return 0;
  }

  collectionView2 = [(_UICollectionViewMultiSelectController *)self collectionView];
  v10 = [collectionView2 hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
  }

  else
  {
    collectionView3 = [(_UICollectionViewMultiSelectController *)self collectionView];
    v13 = [collectionView3 _indexPathOfItemNearestToPoint:x intersectingRect:{y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

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