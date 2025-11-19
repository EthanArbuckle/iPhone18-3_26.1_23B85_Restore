@interface SBDeckSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)a3;
- (BOOL)_priorIndex:(unint64_t)a3 fullyObscuresCardForIndex:(unint64_t)a4;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (CGPoint)_adjustedOffsetForIndex:(int64_t)a3 offset:(CGPoint)a4 start:(CGPoint)a5 originalLocationInView:(CGPoint)a6 locationInView:(CGPoint)a7;
- (CGPoint)_contentOffsetForScrollProgress:(double)a3;
- (CGPoint)adjustedOffsetForOffset:(CGPoint)a3 translation:(CGPoint)a4 startPoint:(CGPoint)a5 locationInView:(CGPoint)a6 horizontalVelocity:(double *)a7 verticalVelocity:(double *)a8;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4;
- (CGRect)_frameForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5 ignoringScrollOffset:(BOOL)a6;
- (CGRect)_scaleTransformedFrameForIndex:(unint64_t)a3 withUntransformedFrame:(CGRect)a4 scrollProgress:(double)a5;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_contentSize;
- (SBDeckSwitcherModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3;
- (double)_cardCornerRadiusInSwitcher;
- (double)_counteractScrollingForOffset:(double)a3 scrollProgress:(double)a4;
- (double)_depthForFrameOrigin:(double)a3;
- (double)_preferredVisibleMarginForTopPage;
- (double)_restingScrollProgressForProgress:(double)a3 velocity:(CGPoint)a4;
- (double)_scaleInSwitcherViewForIndex:(unint64_t)a3 scrollProgress:(double)a4;
- (double)_scaleTransformedXOrigin:(double)a3 scrollProgress:(double)a4;
- (double)_scrollMin;
- (double)_scrollProgress;
- (double)_scrollProgressForContentOffset:(CGPoint)a3;
- (double)_scrollProgressForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 depth:(double)a5;
- (double)_switcherCardScale;
- (double)_unscaledCardCornerRadius;
- (double)depthForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5;
- (double)desiredXOriginForQuantizedTopPage;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)leadingOffsetForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5;
- (double)lighteningAlphaForIndex:(unint64_t)a3;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)opacityForIndex:(unint64_t)a3 scrollProgress:(double)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scrollProgressForIndex:(unint64_t)a3;
- (double)scrollProgressForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 frameOrigin:(double)a5;
- (double)scrollRange;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3 scrollProgress:(double)a4;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)debugDescription;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)scrollViewAttributes;
- (id)visibleAppLayouts;
- (int64_t)_topIndexForLocationInContainerCoordinateSpace:(CGPoint)a3;
- (unint64_t)_directionForRemovingIndex:(unint64_t)a3 centeredIndex:(unint64_t)a4;
- (unint64_t)_indexForContentOffset:(CGPoint)a3;
- (unint64_t)_indexForScrollProgress:(double)a3 displayItemsCount:(unint64_t)a4 depth:(double)a5;
- (unint64_t)_indexOfCurrentCenteredCard;
- (unint64_t)_newIndexOfItemAtIndex:(unint64_t)a3 afterRemovingItemAtIndex:(unint64_t)a4;
- (unint64_t)indexForScrollProgress:(double)a3 displayItemsCount:(unint64_t)a4 frameOrigin:(double)a5;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)numberOfItems;
- (unint64_t)transactionCompletionOptions;
- (void)_applyPrototypeSettings;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBDeckSwitcherModifier

- (double)_scrollProgress
{
  [(SBDeckSwitcherModifier *)self scrollRange];
  v4 = v3;
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
  v6 = v5;
  if (BSFloatIsZero())
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6 / v4;
  }

  v8 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = 1.0 - v7;
  if (v8)
  {
    return v7;
  }

  return result;
}

- (double)scrollRange
{
  [(SBDeckSwitcherModifier *)self _contentSize];
  v4 = v3;
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  return v4 - v5;
}

- (CGSize)_contentSize
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  v6 = v5 * [(SBDeckSwitcherModifier *)self numberOfItems];
  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (unint64_t)numberOfItems
{
  v2 = [(SBDeckSwitcherModifier *)self appLayouts];
  v3 = [v2 count];

  return v3;
}

- (double)_scrollMin
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v6);
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return log(-(*&kExponentialLayoutTranslation - Width * ((1.0 - v4) * 0.5)) / Width) / *&kExponentialLayoutCurveExponent;
}

- (double)_switcherCardScale
{
  v2 = [(SBDeckSwitcherModifier *)self switcherSettings];
  [v2 deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*&kDecelerationFactor];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:1];
  [(SBDeckSwitcherModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBDeckSwitcherModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (SBDeckSwitcherModifier)init
{
  v6.receiver = self;
  v6.super_class = SBDeckSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_grabbedDraggingIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v3 addChildModifier:v4];
  }

  return v3;
}

- (double)desiredXOriginForQuantizedTopPage
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v10);
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v5 = (Width - Width * v4) * 0.5;
  [(SBDeckSwitcherModifier *)self _preferredVisibleMarginForTopPage];
  v7 = v6;
  v8 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = Width - v5 - v7;
  if (v8)
  {
    return v7 + v5;
  }

  return result;
}

- (double)_preferredVisibleMarginForTopPage
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];

  [SBFluidSwitcherItemContainer preferredRestingVisibleMarginForBounds:?];
  return result;
}

- (void)_applyPrototypeSettings
{
  v11 = [(SBDeckSwitcherModifier *)self switcherSettings];
  [v11 aExpLayoutCoeff];
  kExponentialLayoutTranslation = v3;
  [v11 bExpLayoutCoeff];
  kExponentialLayoutCurveExponent = v4;
  [v11 depthPadding];
  kDepthPadding = v5;
  [v11 deckSwitcherDecelerationRate];
  kDecelerationFactor = v6;
  if ([v11 useTitleOpacityPrototypeSettings])
  {
    self->_useTitleOpacityPrototypeSettings = 1;
    [v11 titleOpacityACoeff];
    kATitleOpacityCoefficient = v7;
    [v11 titleOpacityBCoeff];
    kBTitleOpacityCoefficient = v8;
    [v11 titleOpacityCCoeff];
    kCTitleOpacityCoefficient = v9;
    [v11 titleOpacityDCoeff];
    kDTitleOpacityCoefficient = v10;
  }

  else
  {
    self->_useTitleOpacityPrototypeSettings = 0;
  }
}

- (id)appLayoutsToCacheSnapshots
{
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBDeckSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v7 = [v6 numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:v7, isScrollingForward];
}

- (id)visibleAppLayouts
{
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBDeckSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [(SBDeckSwitcherModifier *)self appLayouts];
  v8 = [v7 subarrayWithRange:{v3, v5}];
  v9 = [v6 setWithArray:v8];

  return v9;
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(SBDeckSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBDeckSwitcherModifier *)self isReduceMotionEnabled];

    if (v4)
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 6;
  }
}

- (double)_unscaledCardCornerRadius
{
  [(SBDeckSwitcherModifier *)self displayCornerRadius];
  if (result <= 0.0)
  {
    [(SBDeckSwitcherModifier *)self _switcherCardScale];
    return 5.0 / v4;
  }

  return result;
}

- (CGRect)shelfBackgroundBlurFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)wallpaperScale
{
  v2 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenScale
{
  v2 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenAlpha
{
  if ([(SBDeckSwitcherModifier *)self isShowingSpotlightOrTodayView])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v5 = [v4 animationSettings];
  [v5 homeScreenAlphaForMode:v3];
  v7 = v6;

  return v7;
}

- (double)homeScreenDimmingAlpha
{
  v2 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenDimmingAlphaForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenBackdropBlurProgress
{
  v2 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenBlurProgressForMode:2];
  v5 = v4;

  return v5;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBDeckSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283372110];

  return v6;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDeckSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBDeckSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBDeckSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBDeckSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBDeckSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleRemovalEvent:v4];
  if ([v4 phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    goto LABEL_13;
  }

  if ([v4 phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    v6 = [(SBDeckSwitcherModifier *)self appLayouts];
    if ([v6 count])
    {
    }

    else
    {
      ongoingAppLayoutRemovals = self->_ongoingAppLayoutRemovals;

      if (!ongoingAppLayoutRemovals)
      {
        v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v12 = +[SBAppLayout homeScreenAppLayout];
        [(SBSwitcherTransitionRequest *)v10 setAppLayout:v12];

        [(SBSwitcherTransitionRequest *)v10 setAutoPIPDisabled:1];
LABEL_12:
        v13 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
        v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:v5];

        v5 = v14;
        goto LABEL_13;
      }
    }

    v8 = [v4 appLayout];
    if (!BSEqualObjects())
    {

      goto LABEL_13;
    }

    v9 = self->_ongoingAppLayoutRemovals;

    if (v9)
    {
      goto LABEL_13;
    }

    v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v11 = +[SBAppLayout homeScreenAppLayout];
    [(SBSwitcherTransitionRequest *)v10 setAppLayout:v11];

    [(SBSwitcherTransitionRequest *)v10 setUnlockedEnvironmentMode:2];
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v4];
  [v5 setRetainsSiri:{-[SBDeckSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v6 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v5 gestureInitiated:0];
  v10.receiver = self;
  v10.super_class = SBDeckSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 handleTapAppLayoutEvent:v4];

  v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v7];

  return v8;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBDeckSwitcherModifier;
  v3 = a3;
  v4 = [(SBSwitcherModifier *)&v11 handleTapOutsideToDismissEvent:v3];
  v5 = [v3 isHandled];

  if ((v5 & 1) == 0)
  {
    v6 = [SBPerformTransitionSwitcherEventResponse alloc];
    v7 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
    v8 = [(SBPerformTransitionSwitcherEventResponse *)v6 initWithTransitionRequest:v7 gestureInitiated:0];

    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v4];

    v4 = v9;
  }

  return v4;
}

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  v11.receiver = self;
  v11.super_class = SBDeckSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:v4];

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 toEnvironmentMode] == 2 && objc_msgSend(v4, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v5 = [v4 toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = v5;

  v9.receiver = self;
  v9.super_class = SBDeckSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:v4];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  v7 = v6;
  [(SBDeckSwitcherModifier *)self _frameForIndex:a3 displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:1 ignoringScrollOffset:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SBDeckSwitcherModifier *)self switcherSettings];
  [v16 switcherCenterYOffsetPercentOfScreenHeight];

  [(SBDeckSwitcherModifier *)self containerViewBounds];
  [(SBDeckSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v18 = v17;
  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  v38 = CGRectOffset(v37, 0.0, v18);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  if ((UIRectIsDiscrete() & 1) == 0)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v31 = NSStringFromCGRect(v39);
    [(SBDeckSwitcherModifier *)self containerViewBounds];
    v32 = NSStringFromCGRect(v40);
    v33 = [(SBDeckSwitcherModifier *)self numberOfItems];
    [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
    v35 = v34;
    [(SBDeckSwitcherModifier *)self scrollRange];
    [v30 handleFailureInMethod:a2 object:self file:@"SBDeckSwitcherModifier.m" lineNumber:230 description:{@"Deck switcher computed an invalid frame:%@ based on containerFrame:%@ scrollProgress:%.2f index:%lu numItems:%lu scrollViewXoffset: %.2f scrollRange :%.2f", v31, v32, *&v7, a3, v33, v35, v36}];
  }

  [(SBDeckSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v24 = v23;
  BSFloatRoundForScale();
  v26 = v25;
  v27 = v24;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v26;
  result.origin.x = v27;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:a3 scrollProgress:?];
  v6 = v5;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return v6 * v7;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  v3 = [(SBDeckSwitcherModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (CGRect)frameForShelf:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isIndexVisible:(unint64_t)a3
{
  v5 = [(SBDeckSwitcherModifier *)self switcherSettings];
  [v5 switcherCardShadowRadius];
  v7 = v6;
  [v5 deckSwitcherPageScale];
  v9 = v7 / v8;
  [(SBDeckSwitcherModifier *)self scaleForIndex:a3];
  v11 = v9 * v10;
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  v26 = CGRectInset(v25, v11 * -2.8, v11 * -2.8);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  v17 = v16;
  [(SBDeckSwitcherModifier *)self frameForIndex:a3];
  [SBDeckSwitcherModifier _scaleTransformedFrameForIndex:"_scaleTransformedFrameForIndex:withUntransformedFrame:scrollProgress:" withUntransformedFrame:a3 scrollProgress:?];
  v28.origin.x = v18;
  v28.origin.y = v19;
  v28.size.width = v20;
  v28.size.height = v21;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectIntersectsRect(v27, v28))
  {
    [(SBDeckSwitcherModifier *)self opacityForIndex:a3 scrollProgress:v17];
    v23 = v22 > 0.01;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(SBDeckSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self frameForIndex:?];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v9 = CGRectGetWidth(v23);
  if ([(SBDeckSwitcherModifier *)self clipsToUnobscuredMarginAtIndex:a3])
  {
    v10 = 1;
    while (![(SBDeckSwitcherModifier *)self _priorIndex:v10 fullyObscuresCardForIndex:a3])
    {
      if (++v10 == 5)
      {
        goto LABEL_9;
      }
    }

    [(SBDeckSwitcherModifier *)self _cardCornerRadiusInSwitcher];
    v12 = v11;
    [(SBDeckSwitcherModifier *)self scaleForIndex:a3];
    v14 = v13;
    [(SBDeckSwitcherModifier *)self frameForIndex:a3 - v10];
    v16 = v15;
    v18 = v17;
    v19 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
    v20 = x + width - (v16 + v18);
    if (!v19)
    {
      v20 = v16 - x;
    }

    v9 = (v12 + v20) / v14;
LABEL_9:
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v21 = CGRectGetWidth(v24);
    if (v9 >= v21)
    {
      return v21;
    }
  }

  return v9;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  [(SBDeckSwitcherModifier *)self _scrollProgress:a3];

  [(SBDeckSwitcherModifier *)self opacityForIndex:a5 scrollProgress:?];
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [v6 indexOfObject:v5];

  if (!v7)
  {
    return 0.0;
  }

  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:v7 aCoefficient:? bCoefficient:?];
  return result;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:a3 aCoefficient:? bCoefficient:?];
  return result;
}

- (double)lighteningAlphaForIndex:(unint64_t)a3
{
  v5 = [(SBDeckSwitcherModifier *)self numberOfItems];
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [(SBDeckSwitcherModifier *)self depthForIndex:a3 displayItemsCount:v5 scrollProgress:?];
  return fmin(fmax((v6 + 0.144) * 0.75, 0.0), 1.0);
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:a3 aCoefficient:? bCoefficient:?];
  return 1.0 - v5;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [(SBDeckSwitcherModifier *)self titleOpacityForIndex:a3 scrollProgress:?];
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self _unscaledCardCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  result = [(SBDeckSwitcherModifier *)self _indexOfCurrentCenteredCard];
  if (result < a3)
  {
    v5 = result;
  }

  else
  {
    v5 = result + 1;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v5;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v5 = [(SBDeckSwitcherModifier *)self _indexOfCurrentCenteredCard];
  if (![(SBDeckSwitcherModifier *)self _isIndexVisible:a3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [v6 count];

  if (![(SBDeckSwitcherModifier *)self _directionForRemovingIndex:a3 centeredIndex:v5])
  {
    if (!a3)
    {
      if (v5 <= 1)
      {
        v5 = 1;
      }

      if (v7 <= 1)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_13;
    }

    if (v5 != a3)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v7 - 1 != a3)
  {
LABEL_8:
    v5 = a3 + 1;
    if (a3 + 1 >= v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  if (v7 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 -= v5 == a3;
LABEL_13:
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBDeckSwitcherModifier *)self _newIndexOfItemAtIndex:v5 afterRemovingItemAtIndex:a3];
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  [(SBDeckSwitcherModifier *)self _switcherCardScale:a3];
  v8 = v7;
  if (__sb__runningInSpringBoard())
  {
    v9 = SBFEffectiveDeviceClass();
    result = 0.5;
    if (v9 == 2)
    {
      return result;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v4 userInterfaceIdiom];

    result = 0.5;
    if (v11 == 1)
    {
      return result;
    }
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom])
    {

      goto LABEL_16;
    }

    v12 = SBFEffectiveHomeButtonType();

    if (v12 != 2)
    {
LABEL_16:
      v13 = __sb__runningInSpringBoard();
      v14 = v13;
      if (v13)
      {
        if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if (![v4 userInterfaceIdiom])
        {
LABEL_23:
          v15 = __sb__runningInSpringBoard();
          v16 = v15;
          if (v15)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v5 = [MEMORY[0x277D759A0] mainScreen];
            [v5 _referenceBounds];
          }

          BSSizeRoundForScale();
          v18 = v17 >= *(MEMORY[0x277D66E30] + 56);
          if ((v16 & 1) == 0)
          {
          }

          if (v14)
          {
            result = v8;
            if (!v18)
            {
              return result;
            }
          }

          else
          {

            result = v8;
            if (!v18)
            {
              return result;
            }
          }

          return 0.5;
        }
      }

      return v8;
    }
  }

  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return result;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBDeckSwitcherModifier *)self frameForIndex:?];
  [(SBDeckSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (double)_cardCornerRadiusInSwitcher
{
  [(SBDeckSwitcherModifier *)self _unscaledCardCornerRadius];
  v4 = v3;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return v4 * v5;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  [(SBDeckSwitcherModifier *)self scrollProgressForIndex:a3, a4];

  [(SBDeckSwitcherModifier *)self _contentOffsetForScrollProgress:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4
{
  [(SBDeckSwitcherModifier *)self _scrollProgressForContentOffset:a3.x, a3.y];
  [SBDeckSwitcherModifier _restingScrollProgressForProgress:"_restingScrollProgressForProgress:velocity:" velocity:?];

  [(SBDeckSwitcherModifier *)self _contentOffsetForScrollProgress:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v5 = [(SBDeckSwitcherModifier *)self switcherSettings];
  [v5 switcherCardShadowRadius];
  v7 = v6;
  [v5 deckSwitcherPageScale];
  v9 = v7 / v8;
  [(SBDeckSwitcherModifier *)self scaleForIndex:a3];
  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:a3 numberOfRows:1 padding:0 layoutDirection:v9 * v10 * 2.8];
  v12 = v11;

  return v12;
}

- (CGPoint)adjustedOffsetForOffset:(CGPoint)a3 translation:(CGPoint)a4 startPoint:(CGPoint)a5 locationInView:(CGPoint)a6 horizontalVelocity:(double *)a7 verticalVelocity:(double *)a8
{
  y = a6.y;
  x = a6.x;
  v12 = a5.y;
  v13 = a5.x;
  v14 = a4.y;
  v15 = a4.x;
  v16 = a3.y;
  v17 = a3.x;
  if (a7)
  {
    if (a8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDeckSwitcherModifier adjustedOffsetForOffset:a2 translation:self startPoint:? locationInView:? horizontalVelocity:? verticalVelocity:?];
    if (a8)
    {
      goto LABEL_3;
    }
  }

  [SBDeckSwitcherModifier adjustedOffsetForOffset:a2 translation:self startPoint:? locationInView:? horizontalVelocity:? verticalVelocity:?];
LABEL_3:
  if ([(SBDeckSwitcherModifier *)self numberOfItems]>= 2)
  {
    [(SBDeckSwitcherModifier *)self scrollableQueryModifier:self convertScrollViewPointToContainerViewCoordinateSpace:x, y];
    v22 = v20;
    v23 = v21;
    if (self->_grabbedDraggingIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_grabbedDraggingIndex = [(SBDeckSwitcherModifier *)self _topIndexForLocationInContainerCoordinateSpace:v20, v21];
      self->_outputContentOffsetAdjustmentForIndexChange = 0.0;
      self->_inputContentOffsetAdjustmentForIndexChange = 0.0;
      self->_start.x = v13;
      self->_start.y = v12;
      self->_originalLocationInView.x = v22 - v15;
      self->_originalLocationInView.y = v23 - v14;
      self->_initialTranslationAdjustment = v13 - v17;
    }

    v24 = [(SBDeckSwitcherModifier *)self _topIndexForLocationInContainerCoordinateSpace:v22, v23];
    if (self->_grabbedDraggingIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      grabbedDraggingIndex = 0;
    }

    else
    {
      grabbedDraggingIndex = self->_grabbedDraggingIndex;
    }

    p_start = &self->_start;
    p_originalLocationInView = &self->_originalLocationInView;
    [(SBDeckSwitcherModifier *)self _adjustedOffsetForIndex:grabbedDraggingIndex offset:v17 start:v16 originalLocationInView:self->_start.x locationInView:self->_start.y, self->_originalLocationInView.x, self->_originalLocationInView.y, v22, v23];
    v30 = v29;
    if (v24 >= grabbedDraggingIndex)
    {
      outputContentOffsetAdjustmentForIndexChange = self->_outputContentOffsetAdjustmentForIndexChange;
      v16 = v28;
    }

    else
    {
      self->_grabbedDraggingIndex = v24;
      [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
      p_start->x = v31;
      self->_start.y = v32;
      p_originalLocationInView->x = v22;
      self->_originalLocationInView.y = v23;
      self->_inputContentOffsetAdjustmentForIndexChange = p_start->x - v17;
      [(SBDeckSwitcherModifier *)self _adjustedOffsetForIndex:v24 offset:v17 start:v16 originalLocationInView:p_start->x locationInView:self->_start.y, p_originalLocationInView->x, self->_originalLocationInView.y, v22, v23];
      v16 = v33;
      outputContentOffsetAdjustmentForIndexChange = self->_outputContentOffsetAdjustmentForIndexChange + v34 - v30;
      self->_outputContentOffsetAdjustmentForIndexChange = outputContentOffsetAdjustmentForIndexChange;
      v30 = v34;
    }

    v17 = v30 - outputContentOffsetAdjustmentForIndexChange;
    [(SBDeckSwitcherModifier *)self scrollableQueryModifier:self contentOffsetVelocityConsideringNextContentOffset:v30 - outputContentOffsetAdjustmentForIndexChange, v16];
    if (a7 && v36 * *a7 > 0.0)
    {
      *a7 = v36;
    }

    if (a8 && v37 * *a8 > 0.0)
    {
      *a8 = v37;
    }
  }

  v38 = v17;
  v39 = v16;
  result.y = v39;
  result.x = v38;
  return result;
}

- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3
{
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset:a3.x];
  v4 = [(SBDeckSwitcherModifier *)self _indexForContentOffset:?];
  v5 = [(SBDeckSwitcherModifier *)self appLayouts];
  v6 = [v5 count];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = v4 - v6;
  if (v4 >= v6)
  {
    goto LABEL_26;
  }

  v10 = 0;
  do
  {
    if ([(SBDeckSwitcherModifier *)self _isIndexVisible:v4])
    {
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v4;
      }

      v8 = v4;
    }

    else if (v10)
    {
      break;
    }

    ++v4;
    --v10;
  }

  while (v9 != v10);
  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_26:
    if ([(SBDeckSwitcherModifier *)self _isIndexVisible:v7])
    {
      while (v7-- >= 1)
      {
        if (![(SBDeckSwitcherModifier *)self _isIndexVisible:v7])
        {
          ++v7;
          goto LABEL_15;
        }
      }

      v7 = 0;
    }
  }

LABEL_15:
  v12 = v7 != 0x7FFFFFFFFFFFFFFFLL;
  v13 = v8 != 0x7FFFFFFFFFFFFFFFLL;
  if (v12 && v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  if (v12 && v13)
  {
    v15 = v8 - v7 + 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (unint64_t)_indexForContentOffset:(CGPoint)a3
{
  [(SBDeckSwitcherModifier *)self _scrollProgressForContentOffset:a3.x, a3.y];
  v5 = v4;
  v6 = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [v6 count];
  [(SBDeckSwitcherModifier *)self desiredXOriginForQuantizedTopPage];
  v9 = [(SBDeckSwitcherModifier *)self indexForScrollProgress:v7 displayItemsCount:v5 frameOrigin:v8];

  return v9;
}

- (id)debugDescription
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"grabbedIndex %ld", self->_grabbedDraggingIndex];
  v4 = MEMORY[0x277CCACA8];
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  v6 = [v4 stringWithFormat:@"scrollProgress: %0.2f", v5];
  v7 = MEMORY[0x277CCACA8];
  [(SBDeckSwitcherModifier *)self scrollRange];
  v9 = [v7 stringWithFormat:@"scrollRange: %0.2f", v8];
  v20[0] = v3;
  v20[1] = v6;
  v20[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_283094718];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__SBDeckSwitcherModifier_debugDescription__block_invoke;
  v17[3] = &unk_2783C1840;
  v12 = v11;
  v18 = v12;
  v19 = v10;
  v13 = v10;
  [v13 enumerateObjectsUsingBlock:v17];
  v14 = v19;
  v15 = v12;

  return v12;
}

void __42__SBDeckSwitcherModifier_debugDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  if ([v6 count] - 1 == a3)
  {
    v8 = &stru_283094718;
  }

  else
  {
    v8 = @"\n";
  }

  v9 = [v4 stringWithFormat:@"%@%@", v7, v8];

  [v5 appendString:v9];
}

- (unint64_t)_indexOfCurrentCenteredCard
{
  v3 = [(SBDeckSwitcherModifier *)self appLayouts];
  v4 = [v3 count];

  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    if ([(SBDeckSwitcherModifier *)self _isIndexVisible:v5])
    {
      [(SBDeckSwitcherModifier *)self frameForIndex:v5];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(SBDeckSwitcherModifier *)self scaleForIndex:v5];
      v15 = v14;
      UIRectGetCenter();
      CGAffineTransformMakeScale(&v27, v15, v15);
      v28.origin.x = v7;
      v28.origin.y = v9;
      v28.size.width = v11;
      v28.size.height = v13;
      CGRectApplyAffineTransform(v28, &v27);
      SBUnintegralizedRectCenteredAboutPoint();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [(SBDeckSwitcherModifier *)self containerViewBounds];
      v30.origin.x = v17;
      v30.origin.y = v19;
      v30.size.width = v21;
      v30.size.height = v23;
      if (CGRectContainsRect(v29, v30))
      {
        break;
      }
    }

    ++v5;
    v24 = [(SBDeckSwitcherModifier *)self appLayouts];
    v25 = [v24 count];

    if (v5 >= v25)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (unint64_t)_directionForRemovingIndex:(unint64_t)a3 centeredIndex:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [v6 count] - 1;

  return v7 == a3 || a3 < a4;
}

- (unint64_t)_newIndexOfItemAtIndex:(unint64_t)a3 afterRemovingItemAtIndex:(unint64_t)a4
{
  if (a4 < a3)
  {
    return a3 - 1;
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 > a3)
  {
    v6 = [(SBDeckSwitcherModifier *)self appLayouts];
    if ([v6 count] > a3)
    {
      v5 = a3;
    }
  }

  return v5;
}

- (CGPoint)_contentOffsetForScrollProgress:(double)a3
{
  [(SBDeckSwitcherModifier *)self scrollRange];
  [(SBDeckSwitcherModifier *)self isRTLEnabled];
  [(SBDeckSwitcherModifier *)self screenScale];

  BSPointRoundForScale();
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)_scrollProgressForContentOffset:(CGPoint)a3
{
  x = a3.x;
  [(SBDeckSwitcherModifier *)self scrollRange:a3.x];
  v6 = v5;
  if (BSFloatIsZero())
  {
    v7 = 0.0;
  }

  else
  {
    v7 = x / v6;
  }

  v8 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = 1.0 - v7;
  if (v8)
  {
    return v7;
  }

  return result;
}

- (double)_restingScrollProgressForProgress:(double)a3 velocity:(CGPoint)a4
{
  x = a4.x;
  v7 = [(SBDeckSwitcherModifier *)self numberOfItems:a3];
  if (a3 > 1.0)
  {
    return a3;
  }

  v8 = v7;
  if (a3 < 0.0 || v7 < 2)
  {
    return a3;
  }

  [(SBDeckSwitcherModifier *)self desiredXOriginForQuantizedTopPage];
  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1.0;
  do
  {
    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:v14 displayItemsCount:v8 frameOrigin:v11];
    v17 = v16;
    v18 = vabdd_f64(a3, v16);
    v19 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
    if (v18 < v15)
    {
      v20 = v19 ? -x : x;
      if ((a3 - v17) * v20 >= 0.0)
      {
        v13 = 1;
        v15 = v18;
        v12 = v14;
      }
    }

    ++v14;
  }

  while (v8 != v14);
  if ((fabs(a3) >= v15) | v13 & 1)
  {

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:v12 displayItemsCount:v8 frameOrigin:v11];
  }

  else
  {
    if (v12)
    {
      return a3;
    }

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:0 displayItemsCount:v8 frameOrigin:v11];
    if (a3 <= 0.0 || v22 <= a3)
    {
      return a3;
    }

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:0];
  }

  return result;
}

- (double)depthForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5
{
  v7 = -(*&kDepthPadding - a4 * *&kDepthPadding);
  [(SBDeckSwitcherModifier *)self _scrollMin];
  return v8 + v7 * a5 - *&kDepthPadding * a3;
}

- (double)_scrollProgressForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 depth:(double)a5
{
  if (a4 == 1)
  {

    [(SBDeckSwitcherModifier *)self _scrollMin:a3];
  }

  else
  {
    v8 = a5 + *&kDepthPadding * a3;
    [(SBDeckSwitcherModifier *)self _scrollMin];
    return (v8 - v9) / -(*&kDepthPadding - a4 * *&kDepthPadding);
  }

  return result;
}

- (unint64_t)_indexForScrollProgress:(double)a3 displayItemsCount:(unint64_t)a4 depth:(double)a5
{
  if (a4 < 2)
  {
    return 0;
  }

  v5 = -(a5 - *&kDepthPadding * (a4 - 1) * a3);
  [(SBDeckSwitcherModifier *)self _scrollMin];
  v7 = (v6 + v5) / *&kDepthPadding;
  v8 = BSFloatLessThanOrEqualToFloat();
  v9 = vcvtmd_u64_f64(v7);
  if (v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (double)scrollProgressForIndex:(unint64_t)a3
{
  v5 = [(SBDeckSwitcherModifier *)self numberOfItems];
  if (!a3)
  {
    return 0.0;
  }

  v6 = v5;
  if (v5 > 2 || (result = 1.0, v5 - 1 != a3))
  {
    [(SBDeckSwitcherModifier *)self desiredXOriginForQuantizedTopPage];

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:a3 - 1 displayItemsCount:v6 frameOrigin:?];
  }

  return result;
}

- (CGRect)_frameForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5 ignoringScrollOffset:(BOOL)a6
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  [(SBDeckSwitcherModifier *)self leadingOffsetForIndex:a3 displayItemsCount:a4 scrollProgress:a5];
  if (v17)
  {
    v18 = -v18;
  }

  if (!a6)
  {
    [(SBDeckSwitcherModifier *)self _counteractScrollingForOffset:v18 scrollProgress:a5];
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)scrollProgressForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 frameOrigin:(double)a5
{
  [(SBDeckSwitcherModifier *)self _depthForFrameOrigin:a5];

  [(SBDeckSwitcherModifier *)self _scrollProgressForIndex:a3 displayItemsCount:a4 depth:?];
  return result;
}

- (unint64_t)indexForScrollProgress:(double)a3 displayItemsCount:(unint64_t)a4 frameOrigin:(double)a5
{
  [(SBDeckSwitcherModifier *)self _depthForFrameOrigin:a5];

  return [(SBDeckSwitcherModifier *)self _indexForScrollProgress:a4 displayItemsCount:a3 depth:v8];
}

- (double)_depthForFrameOrigin:(double)a3
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v12);
  if ([(SBDeckSwitcherModifier *)self isRTLEnabled])
  {
    a3 = Width - a3;
  }

  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v7 = v6;
  result = 0.0;
  if (Width > 0.0)
  {
    v9 = a3 + Width * ((1.0 - v7) * 0.5);
    v11 = *&kExponentialLayoutCurveExponent;
    if (v9 <= *&kExponentialLayoutTranslation + 1.0)
    {
      v10 = *&kExponentialLayoutTranslation + 1.0;
      return v9 / Width + log((v10 - *&kExponentialLayoutTranslation) / Width) / v11 - v10 / Width;
    }

    else
    {
      return log((v9 - *&kExponentialLayoutTranslation) / Width) / v11;
    }
  }

  return result;
}

- (double)_counteractScrollingForOffset:(double)a3 scrollProgress:(double)a4
{
  if (![(SBDeckSwitcherModifier *)self isRTLEnabled])
  {
    a4 = 1.0 - a4;
  }

  [(SBDeckSwitcherModifier *)self scrollRange];
  return a3 + a4 * v7;
}

- (double)leadingOffsetForIndex:(unint64_t)a3 displayItemsCount:(unint64_t)a4 scrollProgress:(double)a5
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v21);
  [(SBDeckSwitcherModifier *)self depthForIndex:a3 displayItemsCount:a4 scrollProgress:a5];
  v10 = *&kExponentialLayoutTranslation;
  v12 = v10 + Width * exp(v11 * *&kExponentialLayoutCurveExponent);
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v14 = v12 + Width * ((1.0 - v13) * -0.5);
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v16 = v14 / v15;
  [(SBDeckSwitcherModifier *)self scrollRange];
  if (BSFloatIsZero())
  {
    [(SBDeckSwitcherModifier *)self _scrollProgress];
    if (BSFloatEqualToFloat())
    {
      v17 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
      [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
      if (v17)
      {
        v18 = -v18;
      }

      v16 = v16 - v18;
    }
  }

  [(SBDeckSwitcherModifier *)self scaleForIndex:a3];
  return v16 * v19;
}

- (int64_t)_topIndexForLocationInContainerCoordinateSpace:(CGPoint)a3
{
  x = a3.x;
  v5 = [(SBDeckSwitcherModifier *)self numberOfItems:a3.x];
  if (v5 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - 1;
  }

  if (v5)
  {
    v7 = v5;
    v8 = 0;
    while (1)
    {
      if ([(SBDeckSwitcherModifier *)self _isIndexVisible:v8])
      {
        [(SBDeckSwitcherModifier *)self frameForIndex:v8];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [(SBDeckSwitcherModifier *)self scaleForIndex:v8];
        v18 = v17;
        UIRectGetCenter();
        CGAffineTransformMakeScale(&v21, v18, v18);
        v22.origin.x = v10;
        v22.origin.y = v12;
        v22.size.width = v14;
        v22.size.height = v16;
        CGRectApplyAffineTransform(v22, &v21);
        SBUnintegralizedRectCenteredAboutPoint();
        if (v19 < x)
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        return v6;
      }
    }

    return v8;
  }

  return v6;
}

- (CGPoint)_adjustedOffsetForIndex:(int64_t)a3 offset:(CGPoint)a4 start:(CGPoint)a5 originalLocationInView:(CGPoint)a6 locationInView:(CGPoint)a7
{
  x = a6.x;
  y = a4.y;
  v7 = a5.x;
  v35 = a4.x;
  [(SBDeckSwitcherModifier *)self containerViewBounds:a4.x];
  Width = CGRectGetWidth(v40);
  [(SBDeckSwitcherModifier *)self _contentSize];
  v12 = v11;
  [(SBDeckSwitcherModifier *)self scrollRange];
  v38 = v13;
  v14 = 0.0;
  v15 = 0.0;
  if (v12 > Width)
  {
    if ([(SBDeckSwitcherModifier *)self isRTLEnabled])
    {
      v15 = v7 / v38;
    }

    else
    {
      v15 = 1.0 - v7 / v38;
    }
  }

  [(SBDeckSwitcherModifier *)self _scaleTransformedXOrigin:a3 scrollProgress:v15];
  v17 = v16;
  initialTranslationAdjustment = self->_initialTranslationAdjustment;
  inputContentOffsetAdjustmentForIndexChange = self->_inputContentOffsetAdjustmentForIndexChange;
  if (v12 > Width)
  {
    if ([(SBDeckSwitcherModifier *)self isRTLEnabled])
    {
      v14 = v35 / v38;
    }

    else
    {
      v14 = 1.0 - v35 / v38;
    }
  }

  v20 = x + v7 - v35 - initialTranslationAdjustment - inputContentOffsetAdjustmentForIndexChange;
  v21 = v7 + x - v17;
  [(SBDeckSwitcherModifier *)self _scaleInSwitcherViewForIndex:a3 scrollProgress:v15];
  v23 = v22;
  [(SBDeckSwitcherModifier *)self _scaleInSwitcherViewForIndex:a3 scrollProgress:v14];
  v25 = v24;
  v26 = v21 / v23 * v24;
  v27 = Width * 0.5 * (v24 + -1.0);
  if ([(SBDeckSwitcherModifier *)self isRTLEnabled])
  {
    v28 = v20 - (v26 - Width * v25) - v27;
  }

  else
  {
    v28 = v20 - v26 + v27;
  }

  [(SBDeckSwitcherModifier *)self scrollProgressForIndex:a3 displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] frameOrigin:v28];
  v30 = v29;
  v31 = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  v32 = 1.0 - v30;
  if (v31)
  {
    v32 = v30;
  }

  v33 = y;
  v34 = v38 * v32;
  result.y = v33;
  result.x = v34;
  return result;
}

- (double)_scaleTransformedXOrigin:(double)a3 scrollProgress:(double)a4
{
  v5 = a3;
  [(SBDeckSwitcherModifier *)self _frameForIndex:a3 displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:0 ignoringScrollOffset:a4];
  [SBDeckSwitcherModifier _scaleTransformedFrameForIndex:"_scaleTransformedFrameForIndex:withUntransformedFrame:scrollProgress:" withUntransformedFrame:v5 scrollProgress:?];

  return CGRectGetMinX(*&v6);
}

- (CGRect)_scaleTransformedFrameForIndex:(unint64_t)a3 withUntransformedFrame:(CGRect)a4 scrollProgress:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:a3 scrollProgress:a5];
  v11 = v10 + -1.0;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v13 = v11 + v12;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v15 = v14 - CGRectGetWidth(v23) * v13;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetHeight(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v17 = v16 - CGRectGetHeight(v25) * v13;
  v18 = x + v15 * 0.5;
  v19 = y + v17 * 0.5;
  v20 = width * v13;
  v21 = height * v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)_scaleInSwitcherViewForIndex:(unint64_t)a3 scrollProgress:(double)a4
{
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:a3 scrollProgress:a4];
  v6 = v5 + -1.0;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return v6 + v7;
}

- (double)opacityForIndex:(unint64_t)a3 scrollProgress:(double)a4
{
  if (!a3)
  {
    return 1.0;
  }

  [(SBDeckSwitcherModifier *)self _valueAlongDepthCurveForIndex:a4 scrollProgress:0.41 aCoefficient:8.0 bCoefficient:?];
  return 1.0 - v4;
}

- (BOOL)_priorIndex:(unint64_t)a3 fullyObscuresCardForIndex:(unint64_t)a4
{
  v7 = [(SBDeckSwitcherModifier *)self numberOfItems];
  v8 = 0;
  v9 = a4 - a3;
  if (a4 >= a3 && a4 != 0x7FFFFFFFFFFFFFFFLL && v7 > a3)
  {
    v10 = [(SBDeckSwitcherModifier *)self appLayouts];
    v11 = [v10 objectAtIndex:a4 - a3];

    [(SBDeckSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:v11 atIndex:v9];
    v8 = v12 >= 1.0;
  }

  return v8;
}

- (double)titleOpacityForIndex:(unint64_t)a3 scrollProgress:(double)a4
{
  [(SBDeckSwitcherModifier *)self depthForIndex:a3 displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:a4];
  v7 = -v6;
  if (a3)
  {
    v8 = 1.0 - fmin(fmax((v7 - *&kATitleOpacityCoefficient) * *&kBTitleOpacityCoefficient, 0.0), 1.0);
  }

  else
  {
    v8 = 1.0;
  }

  if (self->_useTitleOpacityPrototypeSettings)
  {
    v9 = *&kCTitleOpacityCoefficient;
    v10 = *&kDTitleOpacityCoefficient;
  }

  else
  {
    v11 = [(SBDeckSwitcherModifier *)self switcherInterfaceOrientation];
    v9 = dbl_21F8A8620[(v11 - 1) < 2];
    v10 = 75.0;
    if ((v11 - 1) < 2)
    {
      v10 = 40.0;
    }
  }

  return v8 * fmin(fmax(v10 * (v7 - v9), 0.0), 1.0);
}

- (void)adjustedOffsetForOffset:(uint64_t)a1 translation:(uint64_t)a2 startPoint:locationInView:horizontalVelocity:verticalVelocity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeckSwitcherModifier.m" lineNumber:907 description:{@"Invalid parameter not satisfying: %@", @"hv != nil"}];
}

- (void)adjustedOffsetForOffset:(uint64_t)a1 translation:(uint64_t)a2 startPoint:locationInView:horizontalVelocity:verticalVelocity:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeckSwitcherModifier.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"vv != nil"}];
}

@end