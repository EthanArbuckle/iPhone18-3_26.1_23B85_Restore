@interface SBDeckSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)visible;
- (BOOL)_priorIndex:(unint64_t)index fullyObscuresCardForIndex:(unint64_t)forIndex;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (CGPoint)_adjustedOffsetForIndex:(int64_t)index offset:(CGPoint)offset start:(CGPoint)start originalLocationInView:(CGPoint)view locationInView:(CGPoint)inView;
- (CGPoint)_contentOffsetForScrollProgress:(double)progress;
- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity;
- (CGRect)_frameForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress ignoringScrollOffset:(BOOL)offset;
- (CGRect)_scaleTransformedFrameForIndex:(unint64_t)index withUntransformedFrame:(CGRect)frame scrollProgress:(double)progress;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_contentSize;
- (SBDeckSwitcherModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)offset;
- (double)_cardCornerRadiusInSwitcher;
- (double)_counteractScrollingForOffset:(double)offset scrollProgress:(double)progress;
- (double)_depthForFrameOrigin:(double)origin;
- (double)_preferredVisibleMarginForTopPage;
- (double)_restingScrollProgressForProgress:(double)progress velocity:(CGPoint)velocity;
- (double)_scaleInSwitcherViewForIndex:(unint64_t)index scrollProgress:(double)progress;
- (double)_scaleTransformedXOrigin:(double)origin scrollProgress:(double)progress;
- (double)_scrollMin;
- (double)_scrollProgress;
- (double)_scrollProgressForContentOffset:(CGPoint)offset;
- (double)_scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count depth:(double)depth;
- (double)_switcherCardScale;
- (double)_unscaledCardCornerRadius;
- (double)depthForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress;
- (double)desiredXOriginForQuantizedTopPage;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)leadingOffsetForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress;
- (double)lighteningAlphaForIndex:(unint64_t)index;
- (double)minimumTranslationToKillIndex:(unint64_t)index;
- (double)opacityForIndex:(unint64_t)index scrollProgress:(double)progress;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scrollProgressForIndex:(unint64_t)index;
- (double)scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count frameOrigin:(double)origin;
- (double)scrollRange;
- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index scrollProgress:(double)progress;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (double)wallpaperOverlayAlphaForIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)debugDescription;
- (id)handleRemovalEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleSwitcherSettingsChangedEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)handleTapOutsideToDismissEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)scrollViewAttributes;
- (id)visibleAppLayouts;
- (int64_t)_topIndexForLocationInContainerCoordinateSpace:(CGPoint)space;
- (unint64_t)_directionForRemovingIndex:(unint64_t)index centeredIndex:(unint64_t)centeredIndex;
- (unint64_t)_indexForContentOffset:(CGPoint)offset;
- (unint64_t)_indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count depth:(double)depth;
- (unint64_t)_indexOfCurrentCenteredCard;
- (unint64_t)_newIndexOfItemAtIndex:(unint64_t)index afterRemovingItemAtIndex:(unint64_t)atIndex;
- (unint64_t)indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count frameOrigin:(double)origin;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index;
- (unint64_t)numberOfItems;
- (unint64_t)transactionCompletionOptions;
- (void)_applyPrototypeSettings;
- (void)didMoveToParentModifier:(id)modifier;
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

  isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = 1.0 - v7;
  if (isRTLEnabled)
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
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v3 = [appLayouts count];

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
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings deckSwitcherPageScale];
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
  isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = Width - v5 - v7;
  if (isRTLEnabled)
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
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings aExpLayoutCoeff];
  kExponentialLayoutTranslation = v3;
  [switcherSettings bExpLayoutCoeff];
  kExponentialLayoutCurveExponent = v4;
  [switcherSettings depthPadding];
  kDepthPadding = v5;
  [switcherSettings deckSwitcherDecelerationRate];
  kDecelerationFactor = v6;
  if ([switcherSettings useTitleOpacityPrototypeSettings])
  {
    self->_useTitleOpacityPrototypeSettings = 1;
    [switcherSettings titleOpacityACoeff];
    kATitleOpacityCoefficient = v7;
    [switcherSettings titleOpacityBCoeff];
    kBTitleOpacityCoefficient = v8;
    [switcherSettings titleOpacityCCoeff];
    kCTitleOpacityCoefficient = v9;
    [switcherSettings titleOpacityDCoeff];
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
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  numberOfSnapshotsToCacheInSwitcher = [switcherSettings numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:numberOfSnapshotsToCacheInSwitcher, isScrollingForward];
}

- (id)visibleAppLayouts
{
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBDeckSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = MEMORY[0x277CBEB98];
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v8 = [appLayouts subarrayWithRange:{v3, v5}];
  v9 = [v6 setWithArray:v8];

  return v9;
}

- (unint64_t)transactionCompletionOptions
{
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(SBDeckSwitcherModifier *)self isReduceMotionEnabled];

    if (isReduceMotionEnabled)
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
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenScale
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenScaleForMode:2];
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

  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenAlphaForMode:v3];
  v7 = v6;

  return v7;
}

- (double)homeScreenDimmingAlpha
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenDimmingAlphaForMode:2];
  v5 = v4;

  return v5;
}

- (double)homeScreenBackdropBlurProgress
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenBlurProgressForMode:2];
  v5 = v4;

  return v5;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:appLayouts];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283372110];

  return v6;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBDeckSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBDeckSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleSwitcherSettingsChangedEvent:(id)event
{
  eventCopy = event;
  [(SBDeckSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBDeckSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:eventCopy];

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBDeckSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleRemovalEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    goto LABEL_13;
  }

  if ([eventCopy phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
    if ([appLayouts count])
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

    appLayout = [eventCopy appLayout];
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

- (id)handleTapAppLayoutEvent:(id)event
{
  eventCopy = event;
  v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
  [v5 setRetainsSiri:{-[SBDeckSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v6 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v5 gestureInitiated:0];
  v10.receiver = self;
  v10.super_class = SBDeckSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 handleTapAppLayoutEvent:eventCopy];

  v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v7];

  return v8;
}

- (id)handleTapOutsideToDismissEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBDeckSwitcherModifier;
  eventCopy = event;
  v4 = [(SBSwitcherModifier *)&v11 handleTapOutsideToDismissEvent:eventCopy];
  isHandled = [eventCopy isHandled];

  if ((isHandled & 1) == 0)
  {
    v6 = [SBPerformTransitionSwitcherEventResponse alloc];
    v7 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
    v8 = [(SBPerformTransitionSwitcherEventResponse *)v6 initWithTransitionRequest:v7 gestureInitiated:0];

    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v4];

    v4 = v9;
  }

  return v4;
}

- (id)handleScrollEvent:(id)event
{
  eventCopy = event;
  [eventCopy contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  v11.receiver = self;
  v11.super_class = SBDeckSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:eventCopy];

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy toEnvironmentMode] == 2 && objc_msgSend(eventCopy, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  toAppLayout = [eventCopy toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = toAppLayout;

  v9.receiver = self;
  v9.super_class = SBDeckSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:eventCopy];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  v7 = v6;
  [(SBDeckSwitcherModifier *)self _frameForIndex:index displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:1 ignoringScrollOffset:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings switcherCenterYOffsetPercentOfScreenHeight];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v31 = NSStringFromCGRect(v39);
    [(SBDeckSwitcherModifier *)self containerViewBounds];
    v32 = NSStringFromCGRect(v40);
    numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
    [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
    v35 = v34;
    [(SBDeckSwitcherModifier *)self scrollRange];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeckSwitcherModifier.m" lineNumber:230 description:{@"Deck switcher computed an invalid frame:%@ based on containerFrame:%@ scrollProgress:%.2f index:%lu numItems:%lu scrollViewXoffset: %.2f scrollRange :%.2f", v31, v32, *&v7, index, numberOfItems, v35, v36}];
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

- (double)scaleForIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:index scrollProgress:?];
  v6 = v5;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return v6 * v7;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  homeGrabberSettings = [(SBDeckSwitcherModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

- (CGRect)frameForShelf:(id)shelf
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

- (BOOL)_isIndexVisible:(unint64_t)visible
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings switcherCardShadowRadius];
  v7 = v6;
  [switcherSettings deckSwitcherPageScale];
  v9 = v7 / v8;
  [(SBDeckSwitcherModifier *)self scaleForIndex:visible];
  v11 = v9 * v10;
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  v26 = CGRectInset(v25, v11 * -2.8, v11 * -2.8);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  v17 = v16;
  [(SBDeckSwitcherModifier *)self frameForIndex:visible];
  [SBDeckSwitcherModifier _scaleTransformedFrameForIndex:"_scaleTransformedFrameForIndex:withUntransformedFrame:scrollProgress:" withUntransformedFrame:visible scrollProgress:?];
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
    [(SBDeckSwitcherModifier *)self opacityForIndex:visible scrollProgress:v17];
    v23 = v22 > 0.01;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  layoutSettings = [animationSettings layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:layoutSettings];

  opacitySettings = [animationSettings opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:opacitySettings];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self frameForIndex:?];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v9 = CGRectGetWidth(v23);
  if ([(SBDeckSwitcherModifier *)self clipsToUnobscuredMarginAtIndex:index])
  {
    v10 = 1;
    while (![(SBDeckSwitcherModifier *)self _priorIndex:v10 fullyObscuresCardForIndex:index])
    {
      if (++v10 == 5)
      {
        goto LABEL_9;
      }
    }

    [(SBDeckSwitcherModifier *)self _cardCornerRadiusInSwitcher];
    v12 = v11;
    [(SBDeckSwitcherModifier *)self scaleForIndex:index];
    v14 = v13;
    [(SBDeckSwitcherModifier *)self frameForIndex:index - v10];
    v16 = v15;
    v18 = v17;
    isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
    v20 = x + width - (v16 + v18);
    if (!isRTLEnabled)
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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _scrollProgress:role];

  [(SBDeckSwitcherModifier *)self opacityForIndex:index scrollProgress:?];
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [appLayouts indexOfObject:layoutCopy];

  if (!v7)
  {
    return 0.0;
  }

  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:v7 aCoefficient:? bCoefficient:?];
  return result;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)index
{
  if (!index)
  {
    return 0.0;
  }

  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:index aCoefficient:? bCoefficient:?];
  return result;
}

- (double)lighteningAlphaForIndex:(unint64_t)index
{
  numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [(SBDeckSwitcherModifier *)self depthForIndex:index displayItemsCount:numberOfItems scrollProgress:?];
  return fmin(fmax((v6 + 0.144) * 0.75, 0.0), 1.0);
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];
  [SBDeckSwitcherModifier _valueAlongDepthCurveForIndex:"_valueAlongDepthCurveForIndex:scrollProgress:aCoefficient:bCoefficient:" scrollProgress:index aCoefficient:? bCoefficient:?];
  return 1.0 - v5;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _scrollProgress];

  [(SBDeckSwitcherModifier *)self titleOpacityForIndex:index scrollProgress:?];
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self _unscaledCardCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
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

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
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

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index
{
  result = [(SBDeckSwitcherModifier *)self _indexOfCurrentCenteredCard];
  if (result < index)
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

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index
{
  _indexOfCurrentCenteredCard = [(SBDeckSwitcherModifier *)self _indexOfCurrentCenteredCard];
  if (![(SBDeckSwitcherModifier *)self _isIndexVisible:index])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [appLayouts count];

  if (![(SBDeckSwitcherModifier *)self _directionForRemovingIndex:index centeredIndex:_indexOfCurrentCenteredCard])
  {
    if (!index)
    {
      if (_indexOfCurrentCenteredCard <= 1)
      {
        _indexOfCurrentCenteredCard = 1;
      }

      if (v7 <= 1)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_13;
    }

    if (_indexOfCurrentCenteredCard != index)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v7 - 1 != index)
  {
LABEL_8:
    _indexOfCurrentCenteredCard = index + 1;
    if (index + 1 >= v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  if (v7 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  _indexOfCurrentCenteredCard -= _indexOfCurrentCenteredCard == index;
LABEL_13:
  if (_indexOfCurrentCenteredCard == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBDeckSwitcherModifier *)self _newIndexOfItemAtIndex:_indexOfCurrentCenteredCard afterRemovingItemAtIndex:index];
}

- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  [(SBDeckSwitcherModifier *)self _switcherCardScale:role];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 0.5;
    if (userInterfaceIdiom == 1)
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if (![currentDevice userInterfaceIdiom])
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
            mainScreen = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen _referenceBounds];
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

- (double)minimumTranslationToKillIndex:(unint64_t)index
{
  [(SBDeckSwitcherModifier *)self frameForIndex:?];
  [(SBDeckSwitcherModifier *)self scaleForIndex:index];
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

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  [(SBDeckSwitcherModifier *)self scrollProgressForIndex:index, alignment];

  [(SBDeckSwitcherModifier *)self _contentOffsetForScrollProgress:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity
{
  [(SBDeckSwitcherModifier *)self _scrollProgressForContentOffset:offset.x, offset.y];
  [SBDeckSwitcherModifier _restingScrollProgressForProgress:"_restingScrollProgressForProgress:velocity:" velocity:?];

  [(SBDeckSwitcherModifier *)self _contentOffsetForScrollProgress:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search
{
  switcherSettings = [(SBDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings switcherCardShadowRadius];
  v7 = v6;
  [switcherSettings deckSwitcherPageScale];
  v9 = v7 / v8;
  [(SBDeckSwitcherModifier *)self scaleForIndex:search];
  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:search numberOfRows:1 padding:0 layoutDirection:v9 * v10 * 2.8];
  v12 = v11;

  return v12;
}

- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  y = view.y;
  x = view.x;
  v12 = point.y;
  v13 = point.x;
  v14 = translation.y;
  v15 = translation.x;
  v16 = offset.y;
  v17 = offset.x;
  if (velocity)
  {
    if (verticalVelocity)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDeckSwitcherModifier adjustedOffsetForOffset:a2 translation:self startPoint:? locationInView:? horizontalVelocity:? verticalVelocity:?];
    if (verticalVelocity)
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
    if (velocity && v36 * *velocity > 0.0)
    {
      *velocity = v36;
    }

    if (verticalVelocity && v37 * *verticalVelocity > 0.0)
    {
      *verticalVelocity = v37;
    }
  }

  v38 = v17;
  v39 = v16;
  result.y = v39;
  result.x = v38;
  return result;
}

- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)offset
{
  [(SBDeckSwitcherModifier *)self scrollViewContentOffset:offset.x];
  v4 = [(SBDeckSwitcherModifier *)self _indexForContentOffset:?];
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v6 = [appLayouts count];
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

- (unint64_t)_indexForContentOffset:(CGPoint)offset
{
  [(SBDeckSwitcherModifier *)self _scrollProgressForContentOffset:offset.x, offset.y];
  v5 = v4;
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [appLayouts count];
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
  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v4 = [appLayouts count];

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
    appLayouts2 = [(SBDeckSwitcherModifier *)self appLayouts];
    v25 = [appLayouts2 count];

    if (v5 >= v25)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (unint64_t)_directionForRemovingIndex:(unint64_t)index centeredIndex:(unint64_t)centeredIndex
{
  if (!index)
  {
    return 0;
  }

  appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
  v7 = [appLayouts count] - 1;

  return v7 == index || index < centeredIndex;
}

- (unint64_t)_newIndexOfItemAtIndex:(unint64_t)index afterRemovingItemAtIndex:(unint64_t)atIndex
{
  if (atIndex < index)
  {
    return index - 1;
  }

  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (atIndex > index)
  {
    appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
    if ([appLayouts count] > index)
    {
      indexCopy = index;
    }
  }

  return indexCopy;
}

- (CGPoint)_contentOffsetForScrollProgress:(double)progress
{
  [(SBDeckSwitcherModifier *)self scrollRange];
  [(SBDeckSwitcherModifier *)self isRTLEnabled];
  [(SBDeckSwitcherModifier *)self screenScale];

  BSPointRoundForScale();
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)_scrollProgressForContentOffset:(CGPoint)offset
{
  x = offset.x;
  [(SBDeckSwitcherModifier *)self scrollRange:offset.x];
  v6 = v5;
  if (BSFloatIsZero())
  {
    v7 = 0.0;
  }

  else
  {
    v7 = x / v6;
  }

  isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  result = 1.0 - v7;
  if (isRTLEnabled)
  {
    return v7;
  }

  return result;
}

- (double)_restingScrollProgressForProgress:(double)progress velocity:(CGPoint)velocity
{
  x = velocity.x;
  v7 = [(SBDeckSwitcherModifier *)self numberOfItems:progress];
  if (progress > 1.0)
  {
    return progress;
  }

  v8 = v7;
  if (progress < 0.0 || v7 < 2)
  {
    return progress;
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
    v18 = vabdd_f64(progress, v16);
    isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
    if (v18 < v15)
    {
      v20 = isRTLEnabled ? -x : x;
      if ((progress - v17) * v20 >= 0.0)
      {
        v13 = 1;
        v15 = v18;
        v12 = v14;
      }
    }

    ++v14;
  }

  while (v8 != v14);
  if ((fabs(progress) >= v15) | v13 & 1)
  {

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:v12 displayItemsCount:v8 frameOrigin:v11];
  }

  else
  {
    if (v12)
    {
      return progress;
    }

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:0 displayItemsCount:v8 frameOrigin:v11];
    if (progress <= 0.0 || v22 <= progress)
    {
      return progress;
    }

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:0];
  }

  return result;
}

- (double)depthForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress
{
  v7 = -(*&kDepthPadding - count * *&kDepthPadding);
  [(SBDeckSwitcherModifier *)self _scrollMin];
  return v8 + v7 * progress - *&kDepthPadding * index;
}

- (double)_scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count depth:(double)depth
{
  if (count == 1)
  {

    [(SBDeckSwitcherModifier *)self _scrollMin:index];
  }

  else
  {
    v8 = depth + *&kDepthPadding * index;
    [(SBDeckSwitcherModifier *)self _scrollMin];
    return (v8 - v9) / -(*&kDepthPadding - count * *&kDepthPadding);
  }

  return result;
}

- (unint64_t)_indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count depth:(double)depth
{
  if (count < 2)
  {
    return 0;
  }

  v5 = -(depth - *&kDepthPadding * (count - 1) * progress);
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

- (double)scrollProgressForIndex:(unint64_t)index
{
  numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
  if (!index)
  {
    return 0.0;
  }

  v6 = numberOfItems;
  if (numberOfItems > 2 || (result = 1.0, numberOfItems - 1 != index))
  {
    [(SBDeckSwitcherModifier *)self desiredXOriginForQuantizedTopPage];

    [(SBDeckSwitcherModifier *)self scrollProgressForIndex:index - 1 displayItemsCount:v6 frameOrigin:?];
  }

  return result;
}

- (CGRect)_frameForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress ignoringScrollOffset:(BOOL)offset
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  [(SBDeckSwitcherModifier *)self leadingOffsetForIndex:index displayItemsCount:count scrollProgress:progress];
  if (isRTLEnabled)
  {
    v18 = -v18;
  }

  if (!offset)
  {
    [(SBDeckSwitcherModifier *)self _counteractScrollingForOffset:v18 scrollProgress:progress];
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

- (double)scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count frameOrigin:(double)origin
{
  [(SBDeckSwitcherModifier *)self _depthForFrameOrigin:origin];

  [(SBDeckSwitcherModifier *)self _scrollProgressForIndex:index displayItemsCount:count depth:?];
  return result;
}

- (unint64_t)indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count frameOrigin:(double)origin
{
  [(SBDeckSwitcherModifier *)self _depthForFrameOrigin:origin];

  return [(SBDeckSwitcherModifier *)self _indexForScrollProgress:count displayItemsCount:progress depth:v8];
}

- (double)_depthForFrameOrigin:(double)origin
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v12);
  if ([(SBDeckSwitcherModifier *)self isRTLEnabled])
  {
    origin = Width - origin;
  }

  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  v7 = v6;
  result = 0.0;
  if (Width > 0.0)
  {
    v9 = origin + Width * ((1.0 - v7) * 0.5);
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

- (double)_counteractScrollingForOffset:(double)offset scrollProgress:(double)progress
{
  if (![(SBDeckSwitcherModifier *)self isRTLEnabled])
  {
    progress = 1.0 - progress;
  }

  [(SBDeckSwitcherModifier *)self scrollRange];
  return offset + progress * v7;
}

- (double)leadingOffsetForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress
{
  [(SBDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v21);
  [(SBDeckSwitcherModifier *)self depthForIndex:index displayItemsCount:count scrollProgress:progress];
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
      isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
      [(SBDeckSwitcherModifier *)self scrollViewContentOffset];
      if (isRTLEnabled)
      {
        v18 = -v18;
      }

      v16 = v16 - v18;
    }
  }

  [(SBDeckSwitcherModifier *)self scaleForIndex:index];
  return v16 * v19;
}

- (int64_t)_topIndexForLocationInContainerCoordinateSpace:(CGPoint)space
{
  x = space.x;
  v5 = [(SBDeckSwitcherModifier *)self numberOfItems:space.x];
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

- (CGPoint)_adjustedOffsetForIndex:(int64_t)index offset:(CGPoint)offset start:(CGPoint)start originalLocationInView:(CGPoint)view locationInView:(CGPoint)inView
{
  x = view.x;
  y = offset.y;
  v7 = start.x;
  v35 = offset.x;
  [(SBDeckSwitcherModifier *)self containerViewBounds:offset.x];
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

  [(SBDeckSwitcherModifier *)self _scaleTransformedXOrigin:index scrollProgress:v15];
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
  [(SBDeckSwitcherModifier *)self _scaleInSwitcherViewForIndex:index scrollProgress:v15];
  v23 = v22;
  [(SBDeckSwitcherModifier *)self _scaleInSwitcherViewForIndex:index scrollProgress:v14];
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

  [(SBDeckSwitcherModifier *)self scrollProgressForIndex:index displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] frameOrigin:v28];
  v30 = v29;
  isRTLEnabled = [(SBDeckSwitcherModifier *)self isRTLEnabled];
  v32 = 1.0 - v30;
  if (isRTLEnabled)
  {
    v32 = v30;
  }

  v33 = y;
  v34 = v38 * v32;
  result.y = v33;
  result.x = v34;
  return result;
}

- (double)_scaleTransformedXOrigin:(double)origin scrollProgress:(double)progress
{
  originCopy = origin;
  [(SBDeckSwitcherModifier *)self _frameForIndex:origin displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:0 ignoringScrollOffset:progress];
  [SBDeckSwitcherModifier _scaleTransformedFrameForIndex:"_scaleTransformedFrameForIndex:withUntransformedFrame:scrollProgress:" withUntransformedFrame:originCopy scrollProgress:?];

  return CGRectGetMinX(*&v6);
}

- (CGRect)_scaleTransformedFrameForIndex:(unint64_t)index withUntransformedFrame:(CGRect)frame scrollProgress:(double)progress
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:index scrollProgress:progress];
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

- (double)_scaleInSwitcherViewForIndex:(unint64_t)index scrollProgress:(double)progress
{
  [(SBDeckSwitcherModifier *)self _scaleForTransformForIndex:index scrollProgress:progress];
  v6 = v5 + -1.0;
  [(SBDeckSwitcherModifier *)self _switcherCardScale];
  return v6 + v7;
}

- (double)opacityForIndex:(unint64_t)index scrollProgress:(double)progress
{
  if (!index)
  {
    return 1.0;
  }

  [(SBDeckSwitcherModifier *)self _valueAlongDepthCurveForIndex:progress scrollProgress:0.41 aCoefficient:8.0 bCoefficient:?];
  return 1.0 - v4;
}

- (BOOL)_priorIndex:(unint64_t)index fullyObscuresCardForIndex:(unint64_t)forIndex
{
  numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
  v8 = 0;
  v9 = forIndex - index;
  if (forIndex >= index && forIndex != 0x7FFFFFFFFFFFFFFFLL && numberOfItems > index)
  {
    appLayouts = [(SBDeckSwitcherModifier *)self appLayouts];
    index = [appLayouts objectAtIndex:forIndex - index];

    [(SBDeckSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:index atIndex:v9];
    v8 = v12 >= 1.0;
  }

  return v8;
}

- (double)titleOpacityForIndex:(unint64_t)index scrollProgress:(double)progress
{
  [(SBDeckSwitcherModifier *)self depthForIndex:index displayItemsCount:[(SBDeckSwitcherModifier *)self numberOfItems] scrollProgress:progress];
  v7 = -v6;
  if (index)
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
    switcherInterfaceOrientation = [(SBDeckSwitcherModifier *)self switcherInterfaceOrientation];
    v9 = dbl_21F8A8620[(switcherInterfaceOrientation - 1) < 2];
    v10 = 75.0;
    if ((switcherInterfaceOrientation - 1) < 2)
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