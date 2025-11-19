@interface _UIFocusScrollManager
- (BOOL)_scrollWithScrollRequest:(id)a3 onlyIfNecessary:(BOOL)a4;
- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4 targetOffset:(CGPoint)a5;
- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)a3 toShowRect:(CGRect)a4 targetOffset:(CGPoint)a5;
- (CGPoint)currentVelocityForScrollableContainer:(id)a3;
- (CGPoint)targetContentOffsetForScrollableContainer:(id)a3;
- (UIScreen)screen;
- (_UIFocusScrollManager)initWithScreen:(id)a3;
- (void)_ensureFocusItemIsOnscreenForScrollRequest:(id)a3;
- (void)animateOffsetOfEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4;
- (void)animateOffsetOfScrollableContainersInParentEnvironmentContainer:(id)a3 toShowFocusItem:(id)a4;
- (void)performScrollingIfNeededForFocusUpdateInContext:(id)a3;
@end

@implementation _UIFocusScrollManager

- (_UIFocusScrollManager)initWithScreen:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIFocusScrollManager;
  v5 = [(_UIFocusScrollManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_screen, v4);
    if (v4)
    {
      v7 = [[_UIFocusDisplayLinkScrollAnimator alloc] initWithScreen:v4];
      scrollAnimator = v6->_scrollAnimator;
      v6->_scrollAnimator = v7;

      [(_UIFocusDisplayLinkScrollAnimator *)v6->_scrollAnimator setDefaultConvergenceRate:_UIGetFocusEngineScrollConvergence()];
      v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      stackVisitedScrollingContainers = v6->_stackVisitedScrollingContainers;
      v6->_stackVisitedScrollingContainers = v9;
    }
  }

  return v6;
}

- (void)performScrollingIfNeededForFocusUpdateInContext:(id)a3
{
  v23 = a3;
  v4 = [v23 _commonEnvironmentScrollableContainer];
  v5 = [v23 _sourceItemInfo];
  v6 = [v5 item];
  v7 = [_UIFocusItemInfo infoWithItem:v6 useFallbackAncestorScroller:1];

  v8 = [v23 _destinationItemInfo];
  v9 = [v8 item];
  v10 = [_UIFocusItemInfo infoWithItem:v9 useFallbackAncestorScroller:1];

  v11 = [v23 _request];
  v12 = [v11 focusSystem];
  v13 = [v12 behavior];

  v14 = [v13 enforcesStrictTargetContentOffsetAdjustmentBehavior];
  v15 = [v13 scrollingMode];
  if (v15)
  {
    if (v15 == 1)
    {
      v18 = [v23 _request];
      v19 = [v18 isMovementRequest];

      if (!v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_12;
      }

      v16 = [v23 _request];
      v17 = [v16 shouldScrollIfNecessary];

      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  if (!v4)
  {
    v4 = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(v7, v10);
    if (!v4)
    {
      v4 = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(v10);
    }
  }

  v20 = [v4 scrollableContainer];
  CanScroll = _UIFocusEngineScrollableContainerCanScroll(v20);

  if (CanScroll)
  {
    v22 = [[_UIFocusScrollRequest alloc] initWithEnvironmentScrollableContainer:v4 focusItemInfo:v10 focusUpdateContext:v23];
    [(_UIFocusScrollManager *)self _ensureFocusItemIsOnscreenForScrollRequest:v22];
    [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v22 onlyIfNecessary:v14];
  }

LABEL_12:
}

- (CGPoint)targetContentOffsetForScrollableContainer:(id)a3
{
  v4 = a3;
  if ([(_UIFocusScrollManager *)self isScrollingScrollableContainer:v4])
  {
    [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator targetContentOffsetForScrollableContainer:v4];
  }

  else
  {
    [v4 contentOffset];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)currentVelocityForScrollableContainer:(id)a3
{
  [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator currentVelocityForScrollableContainer:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)animateOffsetOfEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      v7 = [v11 owningEnvironment];
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v7, v6);

      if (IsAncestorOfEnvironment)
      {
        v9 = [_UIFocusItemInfo infoWithItem:v6 useFallbackAncestorScroller:1];
        v10 = [[_UIFocusScrollRequest alloc] initWithEnvironmentScrollableContainer:v11 focusItemInfo:v9 targetContentOffsetValue:0];
        [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v10 onlyIfNecessary:1];
      }
    }
  }
}

- (void)animateOffsetOfScrollableContainersInParentEnvironmentContainer:(id)a3 toShowFocusItem:(id)a4
{
  v6 = a3;
  v7 = [_UIFocusItemInfo infoWithItem:a4 useFallbackAncestorScroller:1];
  v8 = [v7 ancestorEnvironmentScrollableContainers];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105___UIFocusScrollManager_animateOffsetOfScrollableContainersInParentEnvironmentContainer_toShowFocusItem___block_invoke;
  v17[3] = &unk_1E7108440;
  v9 = v6;
  v18 = v9;
  v10 = [v8 indexOfObjectPassingTest:v17];
  if (v10 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0;
    v12 = v10 + 1;
    do
    {
      v13 = [v8 objectAtIndexedSubscript:v11];
      v14 = [v13 scrollableContainer];
      CanScroll = _UIFocusEngineScrollableContainerCanScroll(v14);

      if (CanScroll)
      {
        v16 = [[_UIFocusScrollRequest alloc] initWithEnvironmentScrollableContainer:v13 focusItemInfo:v7 targetContentOffsetValue:0];
        [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v16 onlyIfNecessary:1];
      }

      ++v11;
    }

    while (v12 != v11);
  }
}

- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)a3 toShowFocusItem:(id)a4 targetOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  v9 = [_UIFocusItemInfo infoWithItem:a4 useFallbackAncestorScroller:1];
  v10 = [_UIFocusScrollRequest alloc];
  v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  v12 = [(_UIFocusScrollRequest *)v10 initWithEnvironmentScrollableContainer:v8 focusItemInfo:v9 targetContentOffsetValue:v11];

  [(_UIFocusScrollRequest *)v12 resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)a3 toShowRect:(CGRect)a4 targetOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v9 = a4.origin.y;
  v10 = a4.origin.x;
  v11 = a3;
  v12 = [_UIFocusScrollRequest alloc];
  v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  v14 = [(_UIFocusScrollRequest *)v12 initWithEnvironmentScrollableContainer:v11 focusItemFrame:v13 targetContentOffsetValue:v10, v9, width, height];

  [(_UIFocusScrollRequest *)v14 resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_scrollWithScrollRequest:(id)a3 onlyIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 environmentScrollableContainer];
  v8 = [v7 scrollableContainer];
  v9 = [v7 owningEnvironment];
  v10 = [v6 focusItemInfo];
  v11 = _UIFocusEnvironmentRootAncestorEnvironment(v9);

  if (!v11 || [(NSHashTable *)self->_stackVisitedScrollingContainers containsObject:v8])
  {
    goto LABEL_3;
  }

  v14 = [v10 item];
  IsFocusedOrContainsFocus = _UIFocusEnvironmentIsFocusedOrContainsFocus(v14);

  if (!IsFocusedOrContainsFocus)
  {
    goto LABEL_4;
  }

  [v6 originatingContentOffset];
  v16 = v15;
  v18 = v17;
  [v8 contentOffset];
  v20 = v19;
  v22 = v21;
  [v6 resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v25 = v23;
  v26 = v24;
  v69[0] = v23;
  v69[1] = v24;
  if (v4 && v23 == v16 && v24 == v18)
  {
LABEL_3:
    LOBYTE(IsFocusedOrContainsFocus) = 0;
  }

  else
  {
    [(NSHashTable *)self->_stackVisitedScrollingContainers addObject:v8];
    if ([v8 __isKindOfUIScrollView])
    {
      v27 = v8;
    }

    else
    {
      v27 = 0;
    }

    v58 = v18;
    v28 = [v27 delegate];
    [v27 _scrollViewWillBeginDragging];
    [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator velocityToScrollFromOffset:v20 toOffset:v22, v25, v26];
    v30 = v29;
    v32 = v31;
    v33 = objc_opt_respondsToSelector();
    v68 = *v69;
    if (objc_opt_respondsToSelector())
    {
      [v27 _scrollViewWillEndDraggingWithVelocity:v69 targetContentOffset:{v30, v32}];
    }

    v57 = v22;
    if (v33)
    {
      [v28 scrollViewWillEndDragging:v27 withVelocity:v69 targetContentOffset:{v30, v32}];
    }

    v34 = [v8 coordinateSpace];
    [v10 focusedRectInCoordinateSpace:v34];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v70.origin.x = v36;
    v70.origin.y = v38;
    v70.size.width = v40;
    v70.size.height = v42;
    if (CGRectGetMinX(v70) < v69[0] || (v71.origin.x = v36, v71.origin.y = v38, v71.size.width = v40, v71.size.height = v42, v43 = v20, MaxX = CGRectGetMaxX(v71), v45 = v69[0], [v8 visibleSize], v47 = MaxX <= v45 + v46, v20 = v43, !v47) || (v72.origin.x = v36, v72.origin.y = v38, v72.size.width = v40, v72.size.height = v42, CGRectGetMinY(v72) < v69[1]) || (v73.origin.x = v36, v73.origin.y = v38, v73.size.width = v40, v73.size.height = v42, MaxY = CGRectGetMaxY(v73), v49 = v69[1], objc_msgSend(v8, "visibleSize"), v47 = MaxY <= v49 + v50, v20 = v43, !v47))
    {
      *v69 = v68;
    }

    LOBYTE(IsFocusedOrContainsFocus) = v69[1] != v58 || v69[0] != v16;
    if (IsFocusedOrContainsFocus)
    {
      [v27 _scrollViewDidEndDraggingForDelegateWithDeceleration:{1, v58, v69[1]}];
      if (objc_opt_respondsToSelector())
      {
        [v28 scrollViewWillBeginDecelerating:v27];
      }

      v59 = v28;
      v51 = _UIGetFocusEngineScrollConvergence();
      v52 = [(_UIFocusScrollManager *)self screen];
      v53 = [v52 _userInterfaceIdiom];

      if (v53 == 3)
      {
        if ([v27 isPagingEnabled])
        {
          v51 = 0.979;
        }

        else
        {
          v55 = hypot(v69[0] - v20, v69[1] - v57);
          v51 = fmax(_UIGetFocusEngineScrollConvergence() / 10.0, v51 + v55 / -4000.0);
        }
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, v27);
      objc_initWeak(&v65, v8);
      scrollAnimator = self->_scrollAnimator;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __66___UIFocusScrollManager__scrollWithScrollRequest_onlyIfNecessary___block_invoke;
      v60[3] = &unk_1E7109108;
      objc_copyWeak(&v62, &location);
      objc_copyWeak(&v63, &from);
      objc_copyWeak(&v64, &v65);
      v61 = v6;
      [(_UIFocusDisplayLinkScrollAnimator *)scrollAnimator setTargetContentOffset:v7 forEnvironmentScrollableContainer:v60 convergenceRate:*v69 completion:v51];
      [(NSHashTable *)self->_stackVisitedScrollingContainers removeObject:v8];
      v28 = v59;

      objc_destroyWeak(&v64);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&v65);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v54 = [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator isAnimatingScrollableContainer:v8, v58, v69[1]];
      [v27 _scrollViewDidEndDraggingForDelegateWithDeceleration:v54];
      [(_UIFocusScrollManager *)self _ensureFocusItemIsOnscreenForScrollRequest:v6];
      if (v54 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v28 scrollViewWillBeginDecelerating:v27];
      }

      [(NSHashTable *)self->_stackVisitedScrollingContainers removeObject:v8];
    }
  }

LABEL_4:

  return IsFocusedOrContainsFocus;
}

- (void)_ensureFocusItemIsOnscreenForScrollRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 environmentScrollableContainer];
  v6 = [v5 scrollableContainer];

  v7 = [v4 focusItemInfo];
  v8 = [v7 item];
  v9 = [v8 allowsWeakReference];

  if (v9)
  {
    v10 = [v7 item];
    if (v7 && v10)
    {
      v21 = v10;
      v22 = v7;
      [v7 ancestorEnvironmentScrollableContainers];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v26 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v16 scrollableContainer];
            if (_UIFocusEngineScrollableContainerCanScroll(v17))
            {
              v18 = v6 == v17;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [[_UIFocusScrollRequest alloc] initWithBaseRequest:v4 environmentScrollableContainer:v16];
              v20 = [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v19 onlyIfNecessary:1];

              if (v20)
              {

                goto LABEL_19;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v10 = v21;
      v7 = v22;
    }
  }

  else
  {
    v10 = 0;
  }
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

@end