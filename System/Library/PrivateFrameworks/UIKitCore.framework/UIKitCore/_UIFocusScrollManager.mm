@interface _UIFocusScrollManager
- (BOOL)_scrollWithScrollRequest:(id)request onlyIfNecessary:(BOOL)necessary;
- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item targetOffset:(CGPoint)offset;
- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)container toShowRect:(CGRect)rect targetOffset:(CGPoint)offset;
- (CGPoint)currentVelocityForScrollableContainer:(id)container;
- (CGPoint)targetContentOffsetForScrollableContainer:(id)container;
- (UIScreen)screen;
- (_UIFocusScrollManager)initWithScreen:(id)screen;
- (void)_ensureFocusItemIsOnscreenForScrollRequest:(id)request;
- (void)animateOffsetOfEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item;
- (void)animateOffsetOfScrollableContainersInParentEnvironmentContainer:(id)container toShowFocusItem:(id)item;
- (void)performScrollingIfNeededForFocusUpdateInContext:(id)context;
@end

@implementation _UIFocusScrollManager

- (_UIFocusScrollManager)initWithScreen:(id)screen
{
  screenCopy = screen;
  v12.receiver = self;
  v12.super_class = _UIFocusScrollManager;
  v5 = [(_UIFocusScrollManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_screen, screenCopy);
    if (screenCopy)
    {
      v7 = [[_UIFocusDisplayLinkScrollAnimator alloc] initWithScreen:screenCopy];
      scrollAnimator = v6->_scrollAnimator;
      v6->_scrollAnimator = v7;

      [(_UIFocusDisplayLinkScrollAnimator *)v6->_scrollAnimator setDefaultConvergenceRate:_UIGetFocusEngineScrollConvergence()];
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      stackVisitedScrollingContainers = v6->_stackVisitedScrollingContainers;
      v6->_stackVisitedScrollingContainers = weakObjectsHashTable;
    }
  }

  return v6;
}

- (void)performScrollingIfNeededForFocusUpdateInContext:(id)context
{
  contextCopy = context;
  _commonEnvironmentScrollableContainer = [contextCopy _commonEnvironmentScrollableContainer];
  _sourceItemInfo = [contextCopy _sourceItemInfo];
  item = [_sourceItemInfo item];
  v7 = [_UIFocusItemInfo infoWithItem:item useFallbackAncestorScroller:1];

  _destinationItemInfo = [contextCopy _destinationItemInfo];
  item2 = [_destinationItemInfo item];
  v10 = [_UIFocusItemInfo infoWithItem:item2 useFallbackAncestorScroller:1];

  _request = [contextCopy _request];
  focusSystem = [_request focusSystem];
  behavior = [focusSystem behavior];

  enforcesStrictTargetContentOffsetAdjustmentBehavior = [behavior enforcesStrictTargetContentOffsetAdjustmentBehavior];
  scrollingMode = [behavior scrollingMode];
  if (scrollingMode)
  {
    if (scrollingMode == 1)
    {
      _request2 = [contextCopy _request];
      isMovementRequest = [_request2 isMovementRequest];

      if (!isMovementRequest)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (scrollingMode != 2)
      {
        goto LABEL_12;
      }

      _request3 = [contextCopy _request];
      shouldScrollIfNecessary = [_request3 shouldScrollIfNecessary];

      if ((shouldScrollIfNecessary & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  if (!_commonEnvironmentScrollableContainer)
  {
    _commonEnvironmentScrollableContainer = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(v7, v10);
    if (!_commonEnvironmentScrollableContainer)
    {
      _commonEnvironmentScrollableContainer = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(v10);
    }
  }

  scrollableContainer = [_commonEnvironmentScrollableContainer scrollableContainer];
  CanScroll = _UIFocusEngineScrollableContainerCanScroll(scrollableContainer);

  if (CanScroll)
  {
    v22 = [[_UIFocusScrollRequest alloc] initWithEnvironmentScrollableContainer:_commonEnvironmentScrollableContainer focusItemInfo:v10 focusUpdateContext:contextCopy];
    [(_UIFocusScrollManager *)self _ensureFocusItemIsOnscreenForScrollRequest:v22];
    [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v22 onlyIfNecessary:enforcesStrictTargetContentOffsetAdjustmentBehavior];
  }

LABEL_12:
}

- (CGPoint)targetContentOffsetForScrollableContainer:(id)container
{
  containerCopy = container;
  if ([(_UIFocusScrollManager *)self isScrollingScrollableContainer:containerCopy])
  {
    [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator targetContentOffsetForScrollableContainer:containerCopy];
  }

  else
  {
    [containerCopy contentOffset];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)currentVelocityForScrollableContainer:(id)container
{
  [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator currentVelocityForScrollableContainer:container];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)animateOffsetOfEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item
{
  containerCopy = container;
  itemCopy = item;
  if (containerCopy)
  {
    if (itemCopy)
    {
      owningEnvironment = [containerCopy owningEnvironment];
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(owningEnvironment, itemCopy);

      if (IsAncestorOfEnvironment)
      {
        v9 = [_UIFocusItemInfo infoWithItem:itemCopy useFallbackAncestorScroller:1];
        v10 = [[_UIFocusScrollRequest alloc] initWithEnvironmentScrollableContainer:containerCopy focusItemInfo:v9 targetContentOffsetValue:0];
        [(_UIFocusScrollManager *)self _scrollWithScrollRequest:v10 onlyIfNecessary:1];
      }
    }
  }
}

- (void)animateOffsetOfScrollableContainersInParentEnvironmentContainer:(id)container toShowFocusItem:(id)item
{
  containerCopy = container;
  v7 = [_UIFocusItemInfo infoWithItem:item useFallbackAncestorScroller:1];
  ancestorEnvironmentScrollableContainers = [v7 ancestorEnvironmentScrollableContainers];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105___UIFocusScrollManager_animateOffsetOfScrollableContainersInParentEnvironmentContainer_toShowFocusItem___block_invoke;
  v17[3] = &unk_1E7108440;
  v9 = containerCopy;
  v18 = v9;
  v10 = [ancestorEnvironmentScrollableContainers indexOfObjectPassingTest:v17];
  if (v10 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0;
    v12 = v10 + 1;
    do
    {
      v13 = [ancestorEnvironmentScrollableContainers objectAtIndexedSubscript:v11];
      scrollableContainer = [v13 scrollableContainer];
      CanScroll = _UIFocusEngineScrollableContainerCanScroll(scrollableContainer);

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

- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)container toShowFocusItem:(id)item targetOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  containerCopy = container;
  v9 = [_UIFocusItemInfo infoWithItem:item useFallbackAncestorScroller:1];
  v10 = [_UIFocusScrollRequest alloc];
  v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  v12 = [(_UIFocusScrollRequest *)v10 initWithEnvironmentScrollableContainer:containerCopy focusItemInfo:v9 targetContentOffsetValue:v11];

  [(_UIFocusScrollRequest *)v12 resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)contentOffsetForEnvironmentScrollableContainer:(id)container toShowRect:(CGRect)rect targetOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  containerCopy = container;
  v12 = [_UIFocusScrollRequest alloc];
  v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  height = [(_UIFocusScrollRequest *)v12 initWithEnvironmentScrollableContainer:containerCopy focusItemFrame:v13 targetContentOffsetValue:v10, v9, width, height];

  [(_UIFocusScrollRequest *)height resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_scrollWithScrollRequest:(id)request onlyIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  requestCopy = request;
  environmentScrollableContainer = [requestCopy environmentScrollableContainer];
  scrollableContainer = [environmentScrollableContainer scrollableContainer];
  owningEnvironment = [environmentScrollableContainer owningEnvironment];
  focusItemInfo = [requestCopy focusItemInfo];
  v11 = _UIFocusEnvironmentRootAncestorEnvironment(owningEnvironment);

  if (!v11 || [(NSHashTable *)self->_stackVisitedScrollingContainers containsObject:scrollableContainer])
  {
    goto LABEL_3;
  }

  item = [focusItemInfo item];
  IsFocusedOrContainsFocus = _UIFocusEnvironmentIsFocusedOrContainsFocus(item);

  if (!IsFocusedOrContainsFocus)
  {
    goto LABEL_4;
  }

  [requestCopy originatingContentOffset];
  v16 = v15;
  v18 = v17;
  [scrollableContainer contentOffset];
  v20 = v19;
  v22 = v21;
  [requestCopy resolveTargetContentOffsetUsingScrollOffsetResolverClamped:1];
  v25 = v23;
  v26 = v24;
  v69[0] = v23;
  v69[1] = v24;
  if (necessaryCopy && v23 == v16 && v24 == v18)
  {
LABEL_3:
    LOBYTE(IsFocusedOrContainsFocus) = 0;
  }

  else
  {
    [(NSHashTable *)self->_stackVisitedScrollingContainers addObject:scrollableContainer];
    if ([scrollableContainer __isKindOfUIScrollView])
    {
      v27 = scrollableContainer;
    }

    else
    {
      v27 = 0;
    }

    v58 = v18;
    delegate = [v27 delegate];
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
      [delegate scrollViewWillEndDragging:v27 withVelocity:v69 targetContentOffset:{v30, v32}];
    }

    coordinateSpace = [scrollableContainer coordinateSpace];
    [focusItemInfo focusedRectInCoordinateSpace:coordinateSpace];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v70.origin.x = v36;
    v70.origin.y = v38;
    v70.size.width = v40;
    v70.size.height = v42;
    if (CGRectGetMinX(v70) < v69[0] || (v71.origin.x = v36, v71.origin.y = v38, v71.size.width = v40, v71.size.height = v42, v43 = v20, MaxX = CGRectGetMaxX(v71), v45 = v69[0], [scrollableContainer visibleSize], v47 = MaxX <= v45 + v46, v20 = v43, !v47) || (v72.origin.x = v36, v72.origin.y = v38, v72.size.width = v40, v72.size.height = v42, CGRectGetMinY(v72) < v69[1]) || (v73.origin.x = v36, v73.origin.y = v38, v73.size.width = v40, v73.size.height = v42, MaxY = CGRectGetMaxY(v73), v49 = v69[1], objc_msgSend(scrollableContainer, "visibleSize"), v47 = MaxY <= v49 + v50, v20 = v43, !v47))
    {
      *v69 = v68;
    }

    LOBYTE(IsFocusedOrContainsFocus) = v69[1] != v58 || v69[0] != v16;
    if (IsFocusedOrContainsFocus)
    {
      [v27 _scrollViewDidEndDraggingForDelegateWithDeceleration:{1, v58, v69[1]}];
      if (objc_opt_respondsToSelector())
      {
        [delegate scrollViewWillBeginDecelerating:v27];
      }

      v59 = delegate;
      v51 = _UIGetFocusEngineScrollConvergence();
      screen = [(_UIFocusScrollManager *)self screen];
      _userInterfaceIdiom = [screen _userInterfaceIdiom];

      if (_userInterfaceIdiom == 3)
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
      objc_initWeak(&v65, scrollableContainer);
      scrollAnimator = self->_scrollAnimator;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __66___UIFocusScrollManager__scrollWithScrollRequest_onlyIfNecessary___block_invoke;
      v60[3] = &unk_1E7109108;
      objc_copyWeak(&v62, &location);
      objc_copyWeak(&v63, &from);
      objc_copyWeak(&v64, &v65);
      v61 = requestCopy;
      [(_UIFocusDisplayLinkScrollAnimator *)scrollAnimator setTargetContentOffset:environmentScrollableContainer forEnvironmentScrollableContainer:v60 convergenceRate:*v69 completion:v51];
      [(NSHashTable *)self->_stackVisitedScrollingContainers removeObject:scrollableContainer];
      delegate = v59;

      objc_destroyWeak(&v64);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&v65);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v54 = [(_UIFocusDisplayLinkScrollAnimator *)self->_scrollAnimator isAnimatingScrollableContainer:scrollableContainer, v58, v69[1]];
      [v27 _scrollViewDidEndDraggingForDelegateWithDeceleration:v54];
      [(_UIFocusScrollManager *)self _ensureFocusItemIsOnscreenForScrollRequest:requestCopy];
      if (v54 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate scrollViewWillBeginDecelerating:v27];
      }

      [(NSHashTable *)self->_stackVisitedScrollingContainers removeObject:scrollableContainer];
    }
  }

LABEL_4:

  return IsFocusedOrContainsFocus;
}

- (void)_ensureFocusItemIsOnscreenForScrollRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  environmentScrollableContainer = [requestCopy environmentScrollableContainer];
  scrollableContainer = [environmentScrollableContainer scrollableContainer];

  focusItemInfo = [requestCopy focusItemInfo];
  item = [focusItemInfo item];
  allowsWeakReference = [item allowsWeakReference];

  if (allowsWeakReference)
  {
    item2 = [focusItemInfo item];
    if (focusItemInfo && item2)
    {
      v21 = item2;
      v22 = focusItemInfo;
      [focusItemInfo ancestorEnvironmentScrollableContainers];
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
            scrollableContainer2 = [v16 scrollableContainer];
            if (_UIFocusEngineScrollableContainerCanScroll(scrollableContainer2))
            {
              v18 = scrollableContainer == scrollableContainer2;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [[_UIFocusScrollRequest alloc] initWithBaseRequest:requestCopy environmentScrollableContainer:v16];
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

      item2 = v21;
      focusItemInfo = v22;
    }
  }

  else
  {
    item2 = 0;
  }
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

@end