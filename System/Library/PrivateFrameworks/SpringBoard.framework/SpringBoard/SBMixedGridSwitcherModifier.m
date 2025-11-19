@interface SBMixedGridSwitcherModifier
- (BOOL)_isDoubleStackingFullScreenCards;
- (BOOL)_isIndexFullScreen:(unint64_t)a3;
- (BOOL)isIndexFullyVisible:(unint64_t)a3;
- (BOOL)isIndexVisible:(unint64_t)a3;
- (BOOL)isLayoutRoleDraggable:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleKillable:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)_adjustedFrame:(CGRect)a3 forFloatingAppIndex:(unint64_t)a4;
- (CGRect)_frameForIndex:(unint64_t)a3 applyScrollViewContentOffset:(BOOL)a4;
- (CGRect)_unpaddedCoplanarFrameForIndex:(unint64_t)a3 doubleStack:(BOOL)a4 count:(unint64_t)a5 cardSize:(CGSize)a6 scale:(double)a7 contentWidth:(double)a8;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (CGSize)_fittedFloatingContentSize;
- (CGSize)_fittedFullScreenContentSize;
- (CGSize)_minimumFullScreenContentSize;
- (CGSize)_scaledCardSizeForIndex:(unint64_t)a3;
- (CGSize)floatingCardSize;
- (CGSize)fullScreenCardSize;
- (SBMixedGridSwitcherModifier)initWithFullScreenCardSize:(CGSize)a3 floatingCardSize:(CGSize)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)_floatingAppsStackRange;
- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3;
- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3 lastVisibleIndex:(unint64_t)a4;
- (_NSRange)rangeOfVisibleAppLayouts;
- (double)_cachedFullScreenCardScale;
- (double)_cardCornerRadiusInSwitcher;
- (double)_cardHeaderHeight;
- (double)_floatingCardScale;
- (double)_fullScreenCardScale;
- (double)_horizontalSpacing;
- (double)_verticalSpacing;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)firstFloatingCardPeekingWidth;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)splitViewInnerCornerRadius;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)unadjustedScaleForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)_appLayoutWithPrimaryLeafAppLayout:(id)a3 sideLeafAppLayout:(id)a4 configuration:(int64_t)a5;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)copyWithZone:(_NSZone *)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (id)scrollViewAttributes;
- (id)switcherDropRegionContextForDraggingLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atLocation:(CGPoint)a5;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)_indexOfFirstFloatingLayoutFromAppLayouts:(id)a3;
- (unint64_t)_indexOfLeadingCard;
- (unint64_t)_numberOfFullScreenAppLayouts;
- (unint64_t)_numberOfFullScreenColumns;
- (unint64_t)_numberOfFullScreenRows;
- (unint64_t)_numberOfOffScreenTrailingFloatingCardsForContentOffset:(CGPoint)a3;
- (unint64_t)_numberOfOffScreenTrailingFullScreenCardsForContentOffset:(CGPoint)a3;
- (unint64_t)_subtreeIndexForIndex:(unint64_t)a3 indexOfFirstMainAppLayout:(unint64_t)a4;
- (unint64_t)indexOfFirstMainAppLayoutFromAppLayouts:(id)a3;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)numberOfFloatingAppLayouts;
- (unint64_t)slideOverTongueDirection;
- (void)_invalidateCachesIfNeeded;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBMixedGridSwitcherModifier

- (SBMixedGridSwitcherModifier)initWithFullScreenCardSize:(CGSize)a3 floatingCardSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v13.receiver = self;
  v13.super_class = SBMixedGridSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_reversesFloatingCardDirection = 1;
    v8->_fullScreenCardSize.width = v7;
    v8->_fullScreenCardSize.height = v6;
    v8->_maximumNumberOfFullScreenCardsForSingleRow = 0;
    v8->_lowDensityGridLayoutAlignment = 0;
    v8->_floatingCardSize.width = width;
    v8->_floatingCardSize.height = height;
    v8->_cachedVisibleAppsRangeIsValid = 0;
    v8->_lastAppLayoutsGenerationCount = 0x7FFFFFFFFFFFFFFFLL;
    v10 = objc_opt_new();
    cachedFrameForIndex = v9->_cachedFrameForIndex;
    v9->_cachedFrameForIndex = v10;
  }

  return v9;
}

- (void)didMoveToParentModifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMixedGridSwitcherModifier;
  [(SBChainableModifier *)&v8 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_gridModifier)
    {
      v5 = objc_alloc_init(SBGridSwitcherModifier);
      gridModifier = self->_gridModifier;
      self->_gridModifier = &v5->super;

      [(SBChainableModifier *)self addChildModifier:self->_gridModifier];
      v7 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
      [(SBChainableModifier *)self addChildModifier:v7];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SBMixedGridSwitcherModifier;
  v4 = [(SBChainableModifier *)&v7 copyWithZone:a3];
  *(v4 + 280) = self->_fullScreenCardSize;
  *(v4 + 296) = self->_floatingCardSize;
  v4[260] = self->_reversesFloatingCardDirection;
  *(v4 + 33) = self->_lowDensityGridLayoutAlignment;
  *(v4 + 34) = self->_maximumNumberOfFullScreenCardsForSingleRow;
  v4[162] = self->_cachedVisibleAppsRangeIsValid;
  *(v4 + 168) = self->_cachedVisibleAppsRange;
  cachedFullScreenCardScale = self->_cachedFullScreenCardScale;
  *(v4 + 25) = self->_lastAppLayoutsGenerationCount;
  *(v4 + 26) = self->_cachedIndexOfFirstMainAppLayout;
  *(v4 + 27) = cachedFullScreenCardScale;
  *(v4 + 14) = self->_cachedContentSize;
  objc_storeStrong(v4 + 30, self->_cachedFrameForIndex);
  *(v4 + 64) = self->_cachesValidity;
  return v4;
}

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  self->_isScrolling = [v4 phase] == 0;
  [v4 contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  self->_cachedVisibleAppsRangeIsValid = 0;
  v11.receiver = self;
  v11.super_class = SBMixedGridSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:v4];

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBMixedGridSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleTransitionEvent:v4];
  if ([v4 toEnvironmentMode] == 2 && objc_msgSend(v4, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
    self->_floatingConfiguration = [v4 fromFloatingConfiguration];
    if ([v4 phase] == 2 && !-[SBMixedGridSwitcherModifier _numberOfFullScreenAppLayouts](self, "_numberOfFullScreenAppLayouts") && -[SBMixedGridSwitcherModifier numberOfFloatingAppLayouts](self, "numberOfFloatingAppLayouts"))
    {
      v6 = [(SBMixedGridSwitcherModifier *)self appLayouts];
      v7 = [v6 lastObject];

      v8 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v7 alignment:0 animated:1];
      v9 = SBAppendSwitcherModifierResponse(v8, v5);

      v5 = v9;
    }
  }

  v10 = [v4 toAppLayout];
  self->_hasForegroundFullScreenApp = v10 != 0;

  self->_isSwitcherVisible = [v4 toEnvironmentMode] == 2;

  return v5;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = SBMixedGridSwitcherModifier;
  v9 = [(SBChainableModifier *)&v15 responseForProposedChildResponse:a3 childModifier:a4 event:v8];
  if (v9 && [v8 type] == 17)
  {
    v10 = [v8 appLayout];
    if ([v10 environment] == 2 && !self->_hasForegroundFullScreenApp)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__SBMixedGridSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
      v13[3] = &unk_2783AFC80;
      v13[4] = self;
      v14 = v10;
      v11 = [v9 responseByTransformingResponseWithTransformer:v13];

      v9 = v11;
    }
  }

  return v9;
}

SBPerformTransitionSwitcherEventResponse *__84__SBMixedGridSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(SBPerformTransitionSwitcherEventResponse *)v3 type]== 1)
  {
    v4 = *(a1 + 32);
    if (v4[161] == 1)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v5 = [v4 appLayouts];
      v6 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v6)
      {
        v7 = *v40;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v39 + 1) + 8 * v8);
          if ([v9 environment] == 1)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v6)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v10 = v9;

        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__23;
        v37 = __Block_byref_object_dispose__23;
        v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __84__SBMixedGridSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_15;
        v32[3] = &unk_2783AFC58;
        v32[4] = &v33;
        [v10 enumerate:v32];
        v12 = v34[5];
        v13 = [*(a1 + 40) itemForLayoutRole:1];
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        [v12 setObject:v13 forKey:v14];

        v15 = [SBAppLayout alloc];
        v16 = -[SBAppLayout initWithItemsForLayoutRoles:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:](v15, "initWithItemsForLayoutRoles:configuration:centerConfiguration:environment:hidden:preferredDisplayOrdinal:", v34[5], [v10 configuration], objc_msgSend(v10, "centerConfiguration"), objc_msgSend(v10, "environment"), objc_msgSend(v10, "isHidden"), objc_msgSend(*(a1 + 32), "displayOrdinal"));
        [(SBSwitcherTransitionRequest *)v11 setAppLayout:v16];
        [(SBSwitcherTransitionRequest *)v11 setAppLayoutEnvironment:1];
        v17 = objc_opt_class();
        v18 = v3;
        if (v17)
        {
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v29 = v19;

        v30 = [(SBPerformTransitionSwitcherEventResponse *)v29 transitionRequest];
        v31 = [v30 activatingDisplayItem];
        [(SBSwitcherTransitionRequest *)v11 setActivatingDisplayItem:v31];

        v3 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v11 gestureInitiated:0];
        _Block_object_dispose(&v33, 8);

        goto LABEL_23;
      }

LABEL_11:
    }

LABEL_17:
    v10 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
    v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v11 setAppLayout:*(a1 + 40)];
    [(SBSwitcherTransitionRequest *)v11 setAppLayoutEnvironment:1];
    v20 = objc_opt_class();
    v21 = v3;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = [(SBPerformTransitionSwitcherEventResponse *)v23 transitionRequest];

    v25 = [v24 activatingDisplayItem];
    [(SBSwitcherTransitionRequest *)v11 setActivatingDisplayItem:v25];

    v26 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
    v27 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v11 gestureInitiated:0];
    [(SBChainableModifierEventResponse *)v27 setDelay:0 withValidator:0.2];
    v3 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v27 toResponse:v26];

LABEL_23:
  }

  return v3;
}

void __84__SBMixedGridSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  [v4 setObject:v6 forKey:v7];
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(SBMixedGridSwitcherModifier *)self reversesFloatingCardDirection];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 environment] != 3 && -[SBMixedGridSwitcherModifier isAppLayoutMostRecentRepresentationOfDisplayItems:](self, "isAppLayoutMostRecentRepresentationOfDisplayItems:", v13))
        {
          if ([v13 environment] == 1)
          {
            v14 = v5;
          }

          else
          {
            v14 = v6;
            if (v7)
            {
              [v6 insertObject:v13 atIndex:0];
              continue;
            }
          }

          [v14 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v6 addObjectsFromArray:v5];

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:1];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (![(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:a3])
  {
    [(SBMixedGridSwitcherModifier *)self _adjustedFrame:a3 forFloatingAppIndex:v6, v8, v10, v12];
  }

  UIRectGetCenter();
  [(SBMixedGridSwitcherModifier *)self screenScale];

  UIRectCenteredAboutPointScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_adjustedFrame:(CGRect)a3 forFloatingAppIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
  v11 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v12 = [(SBMixedGridSwitcherModifier *)self _floatingAppsStackRange];
  if (!v13)
  {
    goto LABEL_35;
  }

  v14 = v12;
  if (a4 < v12)
  {
    goto LABEL_35;
  }

  v15 = v13;
  if (a4 - v12 >= v13)
  {
    goto LABEL_35;
  }

  [(SBMixedGridSwitcherModifier *)self floatingCardSize];
  v17 = v16;
  [(SBMixedGridSwitcherModifier *)self unadjustedScaleForIndex:a4];
  v19 = v18;
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v21 = v20;
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
  v23 = v22;
  v24 = [(SBMixedGridSwitcherModifier *)self _indexOfFirstFloatingLayoutFromAppLayouts:v11];
  if (v24 == a4)
  {
    goto LABEL_35;
  }

  v25 = v24;
  v26 = v17 * v19 + v21;
  v27 = v24 - 1;
  [(SBMixedGridSwitcherModifier *)self contentOffsetForIndex:a4 alignment:0];
  v29 = v28;
  if (v27 == a4)
  {
    v30 = v28 - v26 + 20.0;
    if (v10)
    {
      v30 = v26 + v29 + -20.0;
    }
  }

  else
  {
    v31 = v15 - a4 + v14;
    if (v27 < v14 || v27 - v14 >= v15 || v25 < v14 || v25 - v14 >= v15)
    {
      v32 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
      v33 = -v26;
      if (!v32)
      {
        v33 = v26;
      }

      v30 = v29 - v33 * v31;
    }

    else
    {
      v30 = v28 + v26 * v31 + -20.0;
      if (!v10)
      {
        v30 = v29 - v26 * v31 + 20.0;
      }
    }
  }

  if (v23 <= v30)
  {
    v34 = v23;
  }

  else
  {
    v34 = v30;
  }

  if (v23 >= v30)
  {
    v30 = v23;
  }

  if (v10)
  {
    v30 = v34;
  }

  v35 = x - (v29 - v30);
  [(SBMixedGridSwitcherModifier *)self _frameForIndex:v25 applyScrollViewContentOffset:1];
  if (v10)
  {
    if (v35 >= x)
    {
      x = v35;
    }

    if (x <= v36)
    {
      goto LABEL_35;
    }

LABEL_34:
    x = v36;
    goto LABEL_35;
  }

  if (v35 < x)
  {
    x = v35;
  }

  if (x < v36)
  {
    goto LABEL_34;
  }

LABEL_35:

  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (_NSRange)_floatingAppsStackRange
{
  v3 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v4 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 count];
  }

  if (v4 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    if (self->_cachedVisibleAppsRangeIsValid)
    {
      location = self->_cachedVisibleAppsRange.location;
    }

    else
    {
      [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
      v7 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
      v9 = v7 == 1;
      if (v7 <= 1)
      {
        location = 0;
      }

      else
      {
        v9 = 2;
        location = v7 - 2;
      }

      self->_cachedVisibleAppsRange.location = location;
      self->_cachedVisibleAppsRange.length = v8 + v9;
      self->_cachedVisibleAppsRangeIsValid = 1;
    }
  }

  else
  {
    location = 0;
    v5 = 0;
  }

  v10 = location;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

- (double)unadjustedScaleForIndex:(unint64_t)a3
{
  if ([(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:a3])
  {

    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  }

  else
  {

    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
  }

  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:?])
  {

    [(SBMixedGridSwitcherModifier *)self _cachedFullScreenCardScale];
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
    v7 = v6;
    v8 = v6 * 0.899999976;
    v9 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    [(SBMixedGridSwitcherModifier *)self _indexOfFirstFloatingLayoutFromAppLayouts:v9];

    [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
    v11 = v10;
    [(SBMixedGridSwitcherModifier *)self containerViewBounds];
    v13 = v12;
    if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    v15 = v11 + v14;
    [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:0];
    x = v24.origin.x;
    v17 = v7 * CGRectGetWidth(v24);
    [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
    v19 = v17 + v18 * 2.0;
    if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = x + v20;
    if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v19;
    }

    result = v8 + (v7 - v8) * (v15 - v21) / (x + v22 - v21);
    if (v8 >= result)
    {
      result = v7 * 0.899999976;
    }

    if (v7 <= result)
    {
      return v7;
    }
  }

  return result;
}

- (id)visibleAppLayouts
{
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v8 = [v7 subarrayWithRange:{v3, v5}];
  v9 = [v6 setWithArray:v8];

  return v9;
}

- (_NSRange)rangeOfVisibleAppLayouts
{
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];

  v3 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  [(SBSwitcherAnimationAttributes *)v5 setCornerRadiusUpdateMode:3];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || [v5 count] < 3)
  {
    v11 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAB58] indexSet];
    v8 = v7;
    if (v6)
    {
      [v7 addIndex:v6 - 1];
      if (v6 != 1)
      {
        [v8 addIndex:v6 - 2];
      }
    }

    if (v6 < [v5 count] - 1)
    {
      [v8 addIndex:v6 + 1];
    }

    if (v6 < [v5 count] - 2)
    {
      [v8 addIndex:v6 + 2];
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = [v5 objectsAtIndexes:v8];
    v11 = [v9 setWithArray:v10];
  }

  return v11;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = 1.0;
  if (![(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:?])
  {
    v6 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    v7 = [(SBSwitcherModifier *)self indexOfFirstFloatingAppFromAppLayouts:v6];

    if (v7 != a3)
    {
      [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
      v9 = v8;
      [(SBMixedGridSwitcherModifier *)self containerViewBounds];
      v11 = v10;
      if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v11;
      }

      v13 = v9 + v12;
      [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:0];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
      v23 = v22;
      v34.origin.x = v15;
      v34.origin.y = v17;
      v34.size.width = v19;
      v34.size.height = v21;
      v24 = v23 * CGRectGetWidth(v34);
      [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
      v26 = v24 + v25;
      v27 = v25 * 1.5;
      if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      v29 = v15 + v28;
      if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
      {
        v30 = v27;
      }

      else
      {
        v30 = v26;
      }

      v31 = (v13 - v29) / (v15 + v30 - v29);
      if (v31 <= 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v31 + 0.0;
      }

      return fmin(v32, 1.0);
    }
  }

  return v5;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if (a3 == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self _cardCornerRadiusInSwitcher];
  [(SBMixedGridSwitcherModifier *)self scaleForIndex:a3];

  SBRectCornerRadiiForRadius();
  result.topRight = v8;
  result.bottomRight = v7;
  result.bottomLeft = v6;
  result.topLeft = v5;
  return result;
}

- (double)splitViewInnerCornerRadius
{
  v11.receiver = self;
  v11.super_class = SBMixedGridSwitcherModifier;
  [(SBMixedGridSwitcherModifier *)&v11 splitViewInnerCornerRadius];
  v4 = v3;
  [(SBMixedGridSwitcherModifier *)self displayCornerRadius];
  v6 = v5;
  if ((BSFloatIsZero() & 1) == 0)
  {
    [(SBMixedGridSwitcherModifier *)self _cardCornerRadiusInSwitcher];
    v8 = v7;
    [(SBMixedGridSwitcherModifier *)self _cachedFullScreenCardScale];
    return v4 * (v8 / v9 / v6);
  }

  return v4;
}

- (id)appLayoutsToCacheSnapshots
{
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  v7 = [v6 numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:v7, isScrollingForward];
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  if ([(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards])
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(SBMixedGridSwitcherModifier *)self appLayoutsToCacheSnapshots];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__SBMixedGridSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
    v8[3] = &unk_2783AE4E0;
    v6 = v4;
    v9 = v6;
    v10 = self;
    [v5 enumerateObjectsUsingBlock:v8];

    v3 = v6;
  }

  return v3;
}

void __65__SBMixedGridSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  if ([v7 environment] == 1)
  {
    [*(a1 + 32) addObject:v7];
  }

  v6 = [*(a1 + 32) count];
  *a4 = v6 == [*(a1 + 40) maximumNumberOfFullScreenCardsForSingleRow];
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  result = [(SBMixedGridSwitcherModifier *)self _indexOfLeadingCard];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v4 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v5 = [v4 count];

  if (v5 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(SBMixedGridSwitcherModifier *)self _indexOfLeadingCard];
  v8 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
  if (v7 >= v5 - 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v7 - v9;
}

- (unint64_t)indexOfFirstMainAppLayoutFromAppLayouts:(id)a3
{
  v4 = a3;
  [(SBMixedGridSwitcherModifier *)self _invalidateCachesIfNeeded];
  if (*&self->_cachesValidity)
  {
    cachedIndexOfFirstMainAppLayout = self->_cachedIndexOfFirstMainAppLayout;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SBMixedGridSwitcherModifier_indexOfFirstMainAppLayoutFromAppLayouts___block_invoke;
    v8[3] = &unk_2783AFC08;
    v8[4] = &v9;
    [v4 enumerateObjectsUsingBlock:v8];
    v5 = v10;
    self->_cachedIndexOfFirstMainAppLayout = v10[3];
    *&self->_cachesValidity |= 1u;
    cachedIndexOfFirstMainAppLayout = v5[3];
    _Block_object_dispose(&v9, 8);
  }

  return cachedIndexOfFirstMainAppLayout;
}

uint64_t __71__SBMixedGridSwitcherModifier_indexOfFirstMainAppLayoutFromAppLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 environment];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)_indexOfFirstFloatingLayoutFromAppLayouts:(id)a3
{
  v4 = a3;
  v5 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v4];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 count];
    if (v7)
    {
      v6 = v7 - 1;
    }
  }

  else
  {
    v6 = v5 - 1;
  }

  return v6;
}

- (unint64_t)numberOfFloatingAppLayouts
{
  v3 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v4 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 count];
  }

  return v4;
}

- (BOOL)isIndexVisible:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:1];
  [(SBMixedGridSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  [v13 switcherCardShadowRadius];
  v15 = v14;

  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v23 = CGRectInset(v22, v15 * -2.8, v15 * -2.8);
  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;

  return CGRectIntersectsRect(v23, *&v16);
}

- (BOOL)isIndexFullyVisible:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:1];
  [(SBMixedGridSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  [v13 switcherCardShadowRadius];
  v15 = v14;

  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v23 = CGRectInset(v22, v15 * -2.8, v15 * -2.8);
  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;

  return CGRectContainsRect(v23, *&v16);
}

- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isCenterOverFull])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMixedGridSwitcherModifier;
    v5 = [(SBMixedGridSwitcherModifier *)&v7 shouldTetherItemsAndAccessoriesInAppLayout:v4];
  }

  return v5;
}

- (double)firstFloatingCardPeekingWidth
{
  v2 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  [v2 spacingBetweenLeadingEdgeAndIcon];
  v4 = v3;
  [v2 iconSideLength];
  v6 = v4 + v5;
  [v2 spacingBetweenLeadingEdgeAndIcon];
  v8 = v6 + v7 * 2.0;

  return v8;
}

- (unint64_t)_indexOfLeadingCard
{
  v3 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
  v4 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v4;
  [(SBSwitcherModifier *)self scaledFrameForIndex:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  if (!CGRectIntersectsRect(v19, v20))
  {
    if (v6)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      --v6;
    }

    else if ((v3 & 1) == 0)
    {
      v17 = [(SBMixedGridSwitcherModifier *)self appLayouts];
      v18 = [v17 count] - 1;

      if (v6 < v18)
      {
        ++v6;
      }
    }
  }

  return v6;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if ([a4 environment] == 1)
  {

    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  }

  else
  {

    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
  }

  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  if ([a3 environment] == 1)
  {

    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  }

  else
  {

    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
  }

  return result;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBMixedGridSwitcherModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:0];
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (double)_cardCornerRadiusInSwitcher
{
  [(SBMixedGridSwitcherModifier *)self displayCornerRadius];
  v3 = v2 <= 0.0;
  result = 7.0;
  if (!v3)
  {
    return 10.0;
  }

  return result;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self frameForIndex:?];
  [(SBMixedGridSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (CGSize)_contentSize
{
  [(SBMixedGridSwitcherModifier *)self _invalidateCachesIfNeeded];
  if ((*&self->_cachesValidity & 4) != 0)
  {
    width = self->_cachedContentSize.width;
    height = self->_cachedContentSize.height;
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self _fittedContentSize];
    v4 = v3;
    v6 = v5;
    [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
    width = v4 + v7 * 2.0;
    [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
    x = v18.origin.x;
    y = v18.origin.y;
    v11 = v18.size.width;
    v12 = v18.size.height;
    v13 = CGRectGetWidth(v18);
    if (width < v13)
    {
      width = v13;
    }

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = v11;
    v19.size.height = v12;
    v14 = CGRectGetHeight(v19);
    if (v6 >= v14)
    {
      height = v6;
    }

    else
    {
      height = v14;
    }

    self->_cachedContentSize.width = width;
    self->_cachedContentSize.height = height;
    *&self->_cachesValidity |= 4u;
  }

  v16 = width;
  result.height = height;
  result.width = v16;
  return result;
}

- (CGSize)_fittedContentSize
{
  [(SBMixedGridSwitcherModifier *)self _fittedFullScreenContentSize];
  v4 = v3;
  [(SBMixedGridSwitcherModifier *)self _fittedFloatingContentSize];
  v6 = v5;
  [(SBMixedGridSwitcherModifier *)self _minimumFullScreenContentSize];
  v8 = v7;
  IsZero = BSFloatIsZero();
  v10 = 0.0;
  if ((IsZero & 1) == 0)
  {
    [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  }

  if (v4 >= v8)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  v12 = v6 + v11 + v10;
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v14 = v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (CGSize)_fittedFullScreenContentSize
{
  v3 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v5 = v4;
  v6 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenColumns];
  width = self->_fullScreenCardSize.width;
  [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  if (v3)
  {
    v9 = -(v5 - v6 * (v5 + width * v8));
  }

  else
  {
    v9 = 0.0;
  }

  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v11 = v10;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)_fittedFloatingContentSize
{
  v3 = [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts];
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v5 = v4;
  v6 = [(SBMixedGridSwitcherModifier *)self _numberOfFloatingColumns];
  width = self->_floatingCardSize.width;
  [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
  if (v3)
  {
    v9 = -(v5 - v6 * (v5 + width * v8));
  }

  else
  {
    v9 = 0.0;
  }

  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v11 = v10;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)_minimumFullScreenContentSize
{
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = CGRectGetWidth(v14);
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v9 = v7 + v8 * -2.0;
  if ([(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts])
  {
    [(SBMixedGridSwitcherModifier *)self firstFloatingCardPeekingWidth];
    v9 = v9 - v10;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetHeight(v15);
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v7 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
  [(SBMixedGridSwitcherModifier *)self _contentSize];
  v9 = v8;
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
  v11 = v10;
  [(SBMixedGridSwitcherModifier *)self _scaledCardSizeForIndex:a3];
  v13 = v12;
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v15 = v14;
  v16 = v13 + v14;
  [(SBMixedGridSwitcherModifier *)self _frameForIndex:a3 applyScrollViewContentOffset:0];
  [(SBMixedGridSwitcherModifier *)self unadjustedScaleForIndex:a3];
  SBTransformedRectWithScale();
  v21 = v17;
  v22 = 0.0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v23 = -(v15 + v16);
      v24 = v16 + v16;
LABEL_23:
      if (v7)
      {
        v22 = v23;
      }

      else
      {
        v22 = v24;
      }

      goto LABEL_26;
    }

    if (a4 == 3)
    {
      if (v7)
      {
        Width = CGRectGetWidth(*&v17);
        [(SBMixedGridSwitcherModifier *)self firstFloatingCardPeekingWidth];
        v22 = Width - v26;
      }

      else
      {
        [(SBMixedGridSwitcherModifier *)self firstFloatingCardPeekingWidth];
        v22 = v37;
      }
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v23 = v16 - v11;
      v24 = v11 - v15;
      goto LABEL_23;
    }
  }

  else
  {
    if (v7)
    {
      v22 = -v15;
    }

    else
    {
      v22 = v16;
    }

    v27 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    v28 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v27];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [v27 count];
    }

    v29 = [v27 objectAtIndex:a3];
    v30 = [(SBMixedGridSwitcherModifier *)self keyboardFocusedAppLayout];
    v31 = v30;
    if (a3 && v30 == v29 && v28 - 1 > a3 && [v29 environment] == 2)
    {
      v32 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
      v33 = 20.0;
      if (v32)
      {
        v33 = -20.0;
      }

      v22 = v22 + v33;
    }
  }

LABEL_26:
  v34 = 0.0;
  if (v7)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v11;
  }

  v36 = fmax(v21 + v22 - v35, 0.0);
  if (v9 - v11 <= v36)
  {
    v36 = v9 - v11;
  }

  result.y = v34;
  result.x = v36;
  return result;
}

- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
    v9 = [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts];
    if ([(SBMixedGridSwitcherModifier *)self isRTLEnabled])
    {
      v10 = [(SBMixedGridSwitcherModifier *)self _numberOfOffScreenTrailingFloatingCardsForContentOffset:x, y];
      if (v10 == v9)
      {
        v11 = x;
        if (v8 && v9)
        {
          [(SBMixedGridSwitcherModifier *)self _fittedFloatingContentSize:v10];
          v13 = v12;
          [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
          v11 = x - (v13 + v14);
        }

        v10 = [(SBMixedGridSwitcherModifier *)self _numberOfOffScreenTrailingFullScreenCardsForContentOffset:v10, v11, y]+ v9;
      }
    }

    else
    {
      v17 = [(SBMixedGridSwitcherModifier *)self _numberOfOffScreenTrailingFullScreenCardsForContentOffset:x, y];
      if (v17 == v8)
      {
        if (v8)
        {
          [(SBMixedGridSwitcherModifier *)self _fittedFullScreenContentSize];
          v19 = v18;
          [(SBMixedGridSwitcherModifier *)self _minimumFullScreenContentSize];
          if (v19 < v20)
          {
            v19 = v20;
          }
        }

        else
        {
          [(SBMixedGridSwitcherModifier *)self _minimumFullScreenContentSize];
          v19 = v21;
        }

        [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
        v17 = [(SBMixedGridSwitcherModifier *)self _numberOfOffScreenTrailingFloatingCardsForContentOffset:x - (v19 + v22), y]+ v8;
      }

      v10 = v7 + ~v17;
    }

    v15 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:v10 lastVisibleIndex:x, y];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  result.length = v16;
  result.location = v15;
  return result;
}

- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBMixedGridSwitcherModifier;
  v5 = a4;
  v6 = [(SBMixedGridSwitcherModifier *)&v10 shouldSuppressHighlightEffectForLayoutRole:a3 inAppLayout:v5];
  v7 = [v5 isCenterOverSplit];

  if (a3 == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return (v8 | v6) & 1;
}

- (BOOL)isLayoutRoleKillable:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SBMixedGridSwitcherModifier;
  v7 = a4;
  v8 = [(SBMixedGridSwitcherModifier *)&v12 isLayoutRoleKillable:a3 inAppLayout:v7 atIndex:a5];
  v9 = [v7 isCenterOverSplit];

  v10 = v9 ^ 1;
  if (a3 == 4)
  {
    v10 = 1;
  }

  return v10 & v8;
}

- (BOOL)isLayoutRoleDraggable:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBMixedGridSwitcherModifier *)self isSplitViewSupported])
  {
    v7 = [v6 itemForLayoutRole:4];
    v8 = v7 == 0;

    v9 = [v6 itemForLayoutRole:a3];
    v10 = [v9 bundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.PrintKit.Print-Center"];

    v12 = v8 & ~v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_appLayoutWithPrimaryLeafAppLayout:(id)a3 sideLeafAppLayout:(id)a4 configuration:(int64_t)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 itemForLayoutRole:1];
  v10 = [v8 itemForLayoutRole:1];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v16[0] = v11;
  v17[0] = v9;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v16[1] = v12;
  v17[1] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v13 configuration:a5 environment:1 preferredDisplayOrdinal:[(SBMixedGridSwitcherModifier *)self displayOrdinal]];

  return v14;
}

- (id)switcherDropRegionContextForDraggingLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atLocation:(CGPoint)a5
{
  point = a5.y;
  x = a5.x;
  v8 = a4;
  v154 = [v8 leafAppLayoutForRole:a3];
  [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
  v9 = [(SBMixedGridSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v11 = v10;
  v12 = [(SBMixedGridSwitcherModifier *)self switcherInterfaceOrientation];
  v13 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v14 = [v13 indexOfObject:v8];

  [(SBSwitcherModifier *)self scaledFrameForLayoutRole:a3 inAppLayout:v8 atIndex:v14];
  v147 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = *MEMORY[0x277CBF3A0];
  v23 = *(MEMORY[0x277CBF3A0] + 8);
  v24 = *(MEMORY[0x277CBF3A0] + 16);
  rect = *(MEMORY[0x277CBF3A0] + 24);
  v138 = a3;
  v151 = v8;
  v150 = [[SBSwitcherDropRegionContext alloc] initWithDraggingLayoutRole:a3 inAppLayout:v8];
  v25 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v26 = [(SBSwitcherModifier *)self indexOfFirstFloatingAppFromAppLayouts:v25];

  v145 = v19;
  v146 = v17;
  v144 = v21;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    v31 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v30];

    [(SBSwitcherModifier *)self scaledFrameForIndex:v31];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    if ((([(SBMixedGridSwitcherModifier *)self isRTLEnabled]& 1) != 0 || (v159.origin.x = v33, v159.origin.y = v35, v159.size.width = v37, v159.size.height = v39, x <= CGRectGetMaxX(v159))) && (![(SBMixedGridSwitcherModifier *)self isRTLEnabled]|| (v160.origin.x = v33, v160.origin.y = v35, v160.size.width = v37, v160.size.height = v39, x >= CGRectGetMinX(v160))))
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v40 = [(SBMixedGridSwitcherModifier *)self appLayouts];
      v41 = [v40 objectAtIndex:v26];

      v42 = v26;
      v28 = v41;
      v29 = 1;
      [(SBSwitcherModifier *)self scaledFrameForIndex:v42];
      v22 = v43;
      v23 = v44;
      v24 = v45;
      rect = v46;
      v27 = SBEffectiveAppLayoutConfigurationForInterfaceOrientation([v28 configuration], v12);
    }

    v19 = v145;
    v17 = v146;
    v21 = v144;
  }

  v47 = 1;
  if (v9 < v9 + v11 && !v28)
  {
    v139 = v22;
    v48 = v23;
    v142 = v29;
    v49 = v11;
    v50 = v9;
    while (1)
    {
      v51 = [(SBMixedGridSwitcherModifier *)self appLayouts];
      v52 = [v51 objectAtIndex:v50];

      [(SBMixedGridSwitcherModifier *)self frameForIndex:v50];
      [(SBMixedGridSwitcherModifier *)self scaleForIndex:v50];
      SBTransformedRectWithScale();
      v53 = v161.origin.x;
      y = v161.origin.y;
      width = v161.size.width;
      height = v161.size.height;
      v157.x = x;
      v157.y = point;
      if (CGRectContainsPoint(v161, v157))
      {
        break;
      }

      ++v50;
      if (!--v49)
      {
        v28 = 0;
        v57 = 1;
        v58 = 0;
        v59 = v150;
        v60 = v151;
        v17 = v146;
        v61 = v147;
        v21 = v144;
        v19 = v145;
        goto LABEL_56;
      }
    }

    v62 = v52;
    v27 = SBEffectiveAppLayoutConfigurationForInterfaceOrientation([v62 configuration], v12);
    if ([v62 environment] == 2)
    {
      v47 = 1;
      rect = height;
      v24 = width;
      v23 = y;
      v22 = v53;
      v58 = 0;
      v60 = v151;
      v28 = v62;
      v29 = 1;
    }

    else
    {
      v60 = v151;
      if ([v62 environment] != 1)
      {
        v47 = 1;
        v58 = 0;
        v28 = v62;
        v29 = v142;
        v19 = v145;
        v17 = v146;
        v21 = v144;
        v23 = v48;
        v22 = v139;
LABEL_45:

        goto LABEL_46;
      }

      v63 = [(SBMixedGridSwitcherModifier *)self appLayouts];
      v64 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v63];

      LODWORD(v63) = [(SBMixedGridSwitcherModifier *)self _subtreeIndexForIndex:v50 indexOfFirstMainAppLayout:v64];
      v65 = [(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards]& v63;
      if ([v62 isSplitConfiguration])
      {
        v66 = v62;
      }

      else
      {
        v66 = [(SBMixedGridSwitcherModifier *)self _appLayoutWithPrimaryLeafAppLayout:v154 sideLeafAppLayout:v62 configuration:3];
      }

      v47 = v65 ^ 1u;
      v67 = v66;
      [SBSwitcherModifier scaledFrameForLayoutRole:"scaledFrameForLayoutRole:inAppLayout:atIndex:" inAppLayout:? atIndex:?];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v135 = v67;
      [SBSwitcherModifier scaledFrameForLayoutRole:"scaledFrameForLayoutRole:inAppLayout:atIndex:" inAppLayout:? atIndex:?];
      v22 = v76;
      v78 = v77;
      v143 = v79;
      v136 = v80;
      v162.origin.x = v69;
      v162.origin.y = v71;
      v162.size.width = v73;
      v162.size.height = v75;
      v158.x = x;
      v158.y = point;
      v81 = CGRectContainsPoint(v162, v158);
      v82 = 1;
      if (!v81)
      {
        v82 = 2;
      }

      v140 = v82;
      v152 = v62;
      if ([v62 isSplitConfiguration] && objc_msgSend(v62, "isOrContainsAppLayout:", v154) && v140 != v138)
      {
        v134 = [v62 appLayoutByModifyingConfiguration:v27];
        v83 = [v134 flippedAppLayout];
        [(SBSwitcherModifier *)self scaledFrameForLayoutRole:1 inAppLayout:v83 atIndex:v50];
        v69 = v84;
        v71 = v85;
        v73 = v86;
        v75 = v87;
        [(SBSwitcherModifier *)self scaledFrameForLayoutRole:2 inAppLayout:v83 atIndex:v50];
        v22 = v88;
        v78 = v89;
        v143 = v90;
        v136 = v91;
      }

      v28 = v152;
      v58 = v140;
      if ([v152 isSplitConfiguration])
      {
        v29 = v140;
      }

      else
      {
        v29 = 1;
      }

      v92 = v136;
      if (v140 == 1)
      {
        v92 = v75;
      }

      rect = v92;
      v93 = v78;
      if (v140 == 1)
      {
        v24 = v73;
      }

      else
      {
        v24 = v143;
      }

      if (v140 == 1)
      {
        v23 = v71;
      }

      else
      {
        v23 = v93;
      }

      if (v140 == 1)
      {
        v22 = v69;
      }
    }

    v19 = v145;
    v17 = v146;
    v21 = v144;
    goto LABEL_45;
  }

  v58 = 0;
  v60 = v151;
LABEL_46:
  v142 = v29;
  if (v28)
  {
    if (!v29)
    {
      [SBMixedGridSwitcherModifier switcherDropRegionContextForDraggingLayoutRole:a2 inAppLayout:self atLocation:?];
    }

    v163.origin.x = v22;
    v163.origin.y = v23;
    v163.size.width = v24;
    v163.size.height = rect;
    if (CGRectIsEmpty(v163))
    {
      [SBMixedGridSwitcherModifier switcherDropRegionContextForDraggingLayoutRole:a2 inAppLayout:self atLocation:?];
    }

    if (!v27)
    {
      [SBMixedGridSwitcherModifier switcherDropRegionContextForDraggingLayoutRole:a2 inAppLayout:self atLocation:?];
    }

    v59 = v150;
    [(SBSwitcherDropRegionContext *)v150 setIntersectingAppLayout:v28];
    [(SBSwitcherDropRegionContext *)v150 setIntersectingLayoutRole:v29];
    [(SBSwitcherDropRegionContext *)v150 setScaledIntersectingAppLayoutSize:v24, rect];
    SBTransformedSizeWithScale();
    [(SBSwitcherDropRegionContext *)v150 setUnscaledIntersectingAppLayoutSize:?];
    [(SBSwitcherDropRegionContext *)v150 setIntersectingAppLayoutConfiguration:v27];
    [(SBSwitcherDropRegionContext *)v150 setIntersectingAppLayoutIsOnFirstRow:v47];
    [(SBSwitcherDropRegionContext *)v150 setTargetRect:v22, v23, v24, rect];
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v59 = v150;
  }

  v61 = v147;
LABEL_56:
  [(SBSwitcherDropRegionContext *)v59 setOriginRect:v61, v17, v19, v21];
  v141 = v58;
  if ([v60 configuration] == 1)
  {
    v94 = 1;
  }

  else
  {
    v94 = v58;
  }

  v153 = v28;
  v95 = [v28 itemForLayoutRole:v94];
  v96 = [v95 uniqueIdentifier];
  v97 = [v154 itemForLayoutRole:1];
  v98 = [v97 uniqueIdentifier];
  v99 = [v96 isEqualToString:v98];

  if (v57 & 1) != 0 || (v99)
  {
    if (v57)
    {
      if (v99)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      goto LABEL_71;
    }

    recta = 0;
    v102 = 1;
    v100 = v153;
  }

  else
  {
    v100 = v153;
    v101 = [v153 itemForLayoutRole:4];

    if (v101)
    {
      recta = 0;
      v102 = 1;
    }

    else
    {
      v102 = 0;
      recta = [v153 environment] == 2;
    }
  }

  v104 = [v100 leafAppLayoutForRole:1];
  v105 = [v104 itemForLayoutRole:1];
  v106 = [(SBMixedGridSwitcherModifier *)self displayItemSupportsMedusa:v105];

  v107 = [v154 itemForLayoutRole:1];
  v108 = [(SBMixedGridSwitcherModifier *)self displayItemSupportsMedusa:v107];

  if (v99)
  {
    v103 = 1;
LABEL_71:
    v109 = v151;
    goto LABEL_79;
  }

  v110 = v102 | v108 ^ 1 | v106 ^ 1 | recta;
  if (((v102 | v108 ^ 1) | v106 ^ 1))
  {
    v103 = 7;
  }

  else
  {
    v103 = 6;
  }

  v109 = v151;
  if ((v110 & 1) == 0)
  {
    if (v141 == 1)
    {
      v103 = 4;
    }

    else
    {
      v103 = 5;
    }
  }

LABEL_79:
  v111 = ([v109 isSplitConfiguration] & 1) == 0 && objc_msgSend(v109, "environment") != 2;
  v112 = v153;
  if (v103 == 2 && !v111)
  {
    v113 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    [v113 indexOfObject:v109];

    if (v9 >= v9 + v11)
    {
      v103 = 3;
    }

    else
    {
      v114 = 9.22337204e18;
      v103 = 3;
      do
      {
        v115 = [(SBMixedGridSwitcherModifier *)self appLayouts];
        v116 = [v115 objectAtIndex:v9];

        if ([v116 environment] == 1)
        {
          [(SBSwitcherModifier *)self scaledFrameForIndex:v9];
          v118 = v117;
          v120 = v119;
          v122 = v121;
          v124 = v123;
          UIRectGetCenter();
          v127 = hypot(x - v125, point - v126);
          if (v127 < v114)
          {
            v128 = v127;
            [(SBSwitcherDropRegionContext *)v150 setTargetRect:v118, v120, v122, v124];
            [(SBSwitcherDropRegionContext *)v150 setClosestVisibleAppLayout:v116];
            v114 = v128;
          }
        }

        ++v9;
        --v11;
      }

      while (v11);
      v112 = v153;
    }
  }

  [(SBSwitcherDropRegionContext *)v150 setCurrentDropRegion:v103];
  if ([v109 isSplitConfiguration] && SBSwitcherDropRegionWarrantsModelUpdate(v103))
  {
    if (v138 == 1)
    {
      v129 = 2;
    }

    else
    {
      v129 = 1;
    }

    v130 = [v109 leafAppLayoutForRole:v129];
    [(SBSwitcherDropRegionContext *)v150 setRemainingAppLayout:v130];
  }

  v131 = [v112 isSplitConfiguration];
  if (v103 == 3 || v131)
  {
    if ((v103 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v132 = [v112 leafAppLayoutForRole:v142];
      [(SBSwitcherDropRegionContext *)v150 setEvictedAppLayout:v132];
    }

    else if (v103 == 3)
    {
      [(SBSwitcherDropRegionContext *)v150 setEvictedAppLayout:v154];
    }
  }

  return v150;
}

- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3 lastVisibleIndex:(unint64_t)a4
{
  if (([(SBMixedGridSwitcherModifier *)self isRTLEnabled:a3.x]& 1) != 0)
  {
    v6 = [(SBMixedGridSwitcherModifier *)self appLayouts];
    v7 = [v6 count];

    if (v7 > a4 && [(SBMixedGridSwitcherModifier *)self isIndexVisible:a4])
    {
      v8 = v7 - 1;
      v9 = a4;
      do
      {
        v10 = v9;
        if (v8 == v9)
        {
          break;
        }

        ++v9;
      }

      while ([(SBMixedGridSwitcherModifier *)self isIndexVisible:v10 + 1]);
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if ((a4 & 0x8000000000000000) != 0 || ![(SBMixedGridSwitcherModifier *)self isIndexVisible:a4])
  {
    v10 = a4;
    a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = a4;
    while (v11-- >= 1)
    {
      if (![(SBMixedGridSwitcherModifier *)self isIndexVisible:v11])
      {
        v10 = a4;
        a4 = v11 + 1;
        goto LABEL_16;
      }
    }

    v10 = a4;
    a4 = 0;
  }

LABEL_16:
  v13 = a4 != 0x7FFFFFFFFFFFFFFFLL;
  v14 = v10 != 0x7FFFFFFFFFFFFFFFLL;
  if (v14 && v13)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  if (v14 && v13)
  {
    v16 = v10 - a4 + 1;
  }

  else
  {
    v16 = 0;
  }

  result.length = v16;
  result.location = v15;
  return result;
}

- (unint64_t)_numberOfOffScreenTrailingFullScreenCardsForContentOffset:(CGPoint)a3
{
  x = a3.x;
  v5 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts:a3.x];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  [(SBMixedGridSwitcherModifier *)self _fittedFullScreenContentSize];
  v8 = v7;
  [(SBMixedGridSwitcherModifier *)self _minimumFullScreenContentSize];
  if (v8 <= v9)
  {
    x = x - (v9 - v8);
  }

  width = self->_fullScreenCardSize.width;
  [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  v12 = width * v11;
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v14 = x / (v12 + v13);
  v15 = BSFloatLessThanOrEqualToFloat();
  v16 = vcvtmd_u64_f64(v14);
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenColumns];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  if (![(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards]|| !v17)
  {
    return v17;
  }

  v19 = 2 * v17;
  if (![(SBMixedGridSwitcherModifier *)self isRTLEnabled])
  {
    return v19 - (v6 & 1);
  }

  result = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
  if (v19 < result)
  {
    return v19;
  }

  return result;
}

- (unint64_t)_numberOfOffScreenTrailingFloatingCardsForContentOffset:(CGPoint)a3
{
  x = a3.x;
  result = [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts:a3.x];
  if (result)
  {
    [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
    v7 = v6;
    width = self->_floatingCardSize.width;
    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
    v10 = x / (v7 + width * v9);
    v11 = BSFloatLessThanOrEqualToFloat();
    v12 = vcvtmd_u64_f64(v10);
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    result = [(SBMixedGridSwitcherModifier *)self _numberOfFloatingColumns];
    if (v13 < result)
    {
      return v13;
    }
  }

  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];

  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:a3 numberOfRows:1 padding:0 layoutDirection:?];
  return result;
}

- (unint64_t)slideOverTongueDirection
{
  if (SBFloatingConfigurationIsLeft(self->_floatingConfiguration))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)topMostLayoutElements
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 environment] == 2)
        {
          [v3 insertObject:v9 atIndex:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (double)_verticalSpacing
{
  v3 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  if (([(SBMixedGridSwitcherModifier *)self switcherInterfaceOrientation]- 1) > 1)
  {
    [v3 gridSwitcherVerticalNaturalSpacingLandscape];
  }

  else
  {
    [v3 gridSwitcherVerticalNaturalSpacingPortrait];
  }

  [(SBMixedGridSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v5 = v4;

  return v5;
}

- (double)_horizontalSpacing
{
  v3 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  if (([(SBMixedGridSwitcherModifier *)self switcherInterfaceOrientation]- 1) > 1)
  {
    [v3 gridSwitcherHorizontalInterpageSpacingLandscape];
  }

  else
  {
    [v3 gridSwitcherHorizontalInterpageSpacingPortrait];
  }

  [(SBMixedGridSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v5 = v4;

  return v5;
}

- (unint64_t)_numberOfFullScreenAppLayouts
{
  v3 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v4 = [v3 count];
  v5 = v4 - [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts];

  return v5;
}

- (unint64_t)_numberOfFullScreenRows
{
  if ([(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_numberOfFullScreenColumns
{
  v3 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
  v4 = [(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards];
  v5 = v3;
  v6 = ceil(vcvtd_n_f64_u64(v3, 1uLL));
  if (v4)
  {
    return v6;
  }

  return v5;
}

- (double)_cachedFullScreenCardScale
{
  [(SBMixedGridSwitcherModifier *)self _invalidateCachesIfNeeded];
  if ((*&self->_cachesValidity & 2) == 0)
  {
    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
    self->_cachedFullScreenCardScale = v3;
    *&self->_cachesValidity |= 2u;
  }

  return self->_cachedFullScreenCardScale;
}

- (double)_fullScreenCardScale
{
  v3 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  if ([(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards])
  {
    [v3 appExposeNonFloatingDoubleRowScale];
  }

  else
  {
    [v3 appExposeNonFloatingSingleRowScale];
  }

  v5 = v4;
  if ([(SBMixedGridSwitcherModifier *)self disableFullScreenCardScaleRounding])
  {
    v6 = v5;
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self containerViewBounds];
    Width = CGRectGetWidth(v9);
    v6 = 0.0;
    if ((BSFloatIsZero() & 1) == 0)
    {
      v6 = round(v5 * Width) / Width;
    }
  }

  return v6;
}

- (double)_floatingCardScale
{
  v3 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  if ([(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards])
  {
    [v3 appExposeFloatingDoubleRowScale];
    v5 = v4;
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self switcherViewBounds];
    v7 = v6;
    [v3 appExposeNonFloatingSingleRowScale];
    v5 = v8 * v7 / self->_floatingCardSize.height;
  }

  return v5;
}

- (CGSize)_scaledCardSizeForIndex:(unint64_t)a3
{
  v4 = [(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:a3];
  v5 = &OBJC_IVAR___SBMixedGridSwitcherModifier__floatingCardSize;
  if (v4)
  {
    v5 = &OBJC_IVAR___SBMixedGridSwitcherModifier__fullScreenCardSize;
  }

  v6 = (self + *v5);
  v7 = *v6;
  v8 = v6[1];
  if (v4)
  {
    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self _floatingCardScale];
  }

  v10 = v8 * v9;
  v11 = v7 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (BOOL)_isDoubleStackingFullScreenCards
{
  if (![(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts])
  {
    return 1;
  }

  v3 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
  return v3 > [(SBMixedGridSwitcherModifier *)self maximumNumberOfFullScreenCardsForSingleRow];
}

- (CGRect)_frameForIndex:(unint64_t)a3 applyScrollViewContentOffset:(BOOL)a4
{
  v4 = a4;
  [(SBMixedGridSwitcherModifier *)self _invalidateCachesIfNeeded];
  v7 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
  v8 = 0x277CCA000uLL;
  if ((*&self->_cachesValidity & 8) != 0)
  {
    cachedFrameForIndex = self->_cachedFrameForIndex;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [(NSMutableDictionary *)cachedFrameForIndex objectForKeyedSubscript:v10];

    if (v11)
    {
      [v11 CGRectValue];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  v21 = v20;
  v22 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v23 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v22];

  if ([(SBMixedGridSwitcherModifier *)self _isIndexFullScreen:a3])
  {
    v24 = [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts];
    v25 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
    [(SBMixedGridSwitcherModifier *)self _contentSize];
    v27 = v26;
    v28 = [(SBMixedGridSwitcherModifier *)self _subtreeIndexForIndex:a3 indexOfFirstMainAppLayout:v23];
    v29 = [(SBMixedGridSwitcherModifier *)self _isDoubleStackingFullScreenCards];
    v30 = [(SBMixedGridSwitcherModifier *)self _numberOfFullScreenAppLayouts];
    [(SBMixedGridSwitcherModifier *)self _fullScreenCardScale];
    [(SBMixedGridSwitcherModifier *)self _unpaddedCoplanarFrameForIndex:v28 doubleStack:v29 count:v30 cardSize:self->_fullScreenCardSize.width scale:self->_fullScreenCardSize.height contentWidth:v31, v27];
    v33 = v32;
    v15 = v34;
    v17 = v35;
    v19 = v36;
    v37 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
    v38 = -v21;
    if (v37)
    {
      v38 = v21;
    }

    v13 = v33 + v38;
    if (v24)
    {
      [(SBMixedGridSwitcherModifier *)self _fittedFloatingContentSize];
      v40 = v21 + v39;
      v41 = v13 + v40;
      v42 = v13 - v40;
      if (v25)
      {
        v13 = v41;
      }

      else
      {
        v13 = v42;
      }
    }

    v8 = 0x277CCA000;
    v7 = &OBJC_IVAR___SBWiFiManager__currentNetworkIsIOSHotspot;
  }

  else
  {
    [(SBMixedGridSwitcherModifier *)self _contentSize];
    v44 = v43;
    v45 = [(SBMixedGridSwitcherModifier *)self _subtreeIndexForIndex:a3 indexOfFirstMainAppLayout:v23];
    v46 = [(SBMixedGridSwitcherModifier *)self numberOfFloatingAppLayouts];
    [(SBMixedGridSwitcherModifier *)self unadjustedScaleForIndex:a3];
    [(SBMixedGridSwitcherModifier *)self _unpaddedCoplanarFrameForIndex:v45 doubleStack:0 count:v46 cardSize:self->_floatingCardSize.width scale:self->_floatingCardSize.height contentWidth:v47, v44];
    v49 = v48;
    v15 = v50;
    v17 = v51;
    v19 = v52;
    v53 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
    v54 = -v21;
    if (v53)
    {
      v54 = v21;
    }

    v13 = v49 + v54;
  }

  if (self->_lowDensityGridLayoutAlignment == 1)
  {
    [(SBMixedGridSwitcherModifier *)self _contentSize];
    v56 = v55;
    [(SBMixedGridSwitcherModifier *)self _fittedContentSize];
    v58 = v57 + v21 * 2.0;
    if (BSFloatLessThanOrEqualToFloat())
    {
      v59 = [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
      v60 = -0.5;
      if (v59)
      {
        v60 = 0.5;
      }

      v13 = v13 + (v56 - v58) * v60;
    }
  }

  v61 = [MEMORY[0x277CCAE60] valueWithRect:{v13, v15, v17, v19}];
  v62 = *(&self->super.super.super.super.isa + v7[202]);
  v63 = [*(v8 + 2992) numberWithUnsignedInteger:a3];
  [v62 setObject:v61 forKeyedSubscript:v63];

  *&self->_cachesValidity |= 8u;
  if (v4)
  {
LABEL_22:
    [(SBMixedGridSwitcherModifier *)self scrollViewContentOffset];
    v13 = v13 - v64;
  }

LABEL_23:
  v65 = v13;
  v66 = v15;
  v67 = v17;
  v68 = v19;
  result.size.height = v68;
  result.size.width = v67;
  result.origin.y = v66;
  result.origin.x = v65;
  return result;
}

- (CGRect)_unpaddedCoplanarFrameForIndex:(unint64_t)a3 doubleStack:(BOOL)a4 count:(unint64_t)a5 cardSize:(CGSize)a6 scale:(double)a7 contentWidth:(double)a8
{
  [(SBMixedGridSwitcherModifier *)self switcherViewBounds:a3];
  [(SBMixedGridSwitcherModifier *)self _horizontalSpacing];
  [(SBMixedGridSwitcherModifier *)self _verticalSpacing];
  [(SBMixedGridSwitcherModifier *)self isRTLEnabled];
  [(SBMixedGridSwitcherModifier *)self _cardHeaderHeight];
  [(SBMixedGridSwitcherModifier *)self floatingDockHeight];
  [(SBMixedGridSwitcherModifier *)self _verticalSpacing];
  SBRectWithSize();

  SBUnintegralizedRectCenteredAboutPoint();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)_cardHeaderHeight
{
  v2 = [(SBMixedGridSwitcherModifier *)self switcherSettings];
  [v2 spacingBetweenSnapshotAndIcon];
  v4 = v3;
  [v2 iconSideLength];
  v6 = v4 + v5;

  return v6;
}

- (BOOL)_isIndexFullScreen:(unint64_t)a3
{
  v5 = [(SBMixedGridSwitcherModifier *)self appLayouts];
  v6 = [(SBMixedGridSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL && v6 <= a3;
}

- (unint64_t)_subtreeIndexForIndex:(unint64_t)a3 indexOfFirstMainAppLayout:(unint64_t)a4
{
  if (a3 < a4 || a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  v6 = a3 - v5;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

- (void)_invalidateCachesIfNeeded
{
  v5.receiver = self;
  v5.super_class = SBMixedGridSwitcherModifier;
  v3 = [(SBMixedGridSwitcherModifier *)&v5 appLayoutsGenerationCount];
  v4 = [(SBMixedGridSwitcherModifier *)self switcherInterfaceOrientation];
  if (self->_lastAppLayoutsGenerationCount != v3 || self->_lastInterfaceOrientation == v4)
  {
    self->_lastAppLayoutsGenerationCount = v3;
    self->_lastInterfaceOrientation = v4;
    *&self->_cachesValidity &= 0xF0u;
    [(NSMutableDictionary *)self->_cachedFrameForIndex removeAllObjects];
  }
}

- (CGSize)fullScreenCardSize
{
  width = self->_fullScreenCardSize.width;
  height = self->_fullScreenCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)floatingCardSize
{
  width = self->_floatingCardSize.width;
  height = self->_floatingCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)switcherDropRegionContextForDraggingLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 atLocation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridSwitcherModifier.m" lineNumber:1140 description:@"intersectingLayoutRole should not be undefined"];
}

- (void)switcherDropRegionContextForDraggingLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 atLocation:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridSwitcherModifier.m" lineNumber:1141 description:@"targetRect should not have an empty size"];
}

- (void)switcherDropRegionContextForDraggingLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 atLocation:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridSwitcherModifier.m" lineNumber:1142 description:@"intersectingLayoutRoleConfiguration should not be undefined"];
}

@end