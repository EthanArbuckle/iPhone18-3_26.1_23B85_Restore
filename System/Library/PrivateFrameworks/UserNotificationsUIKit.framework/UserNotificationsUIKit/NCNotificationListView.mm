@interface NCNotificationListView
- (BOOL)_animateVisibleRectAdjustmentIfNecessaryWithVisibleRect:(CGRect)rect;
- (BOOL)_isAlwaysPresentedAtTopOfScreenForView:(id)view;
- (BOOL)_isAnimatingForParentNotificationListView;
- (BOOL)_isCurrentlyInDisplayListAsStackMode;
- (BOOL)_isFeaturedLeadingViewAtIndex:(unint64_t)index;
- (BOOL)_isGrouping;
- (BOOL)_isLayoutFromBottomUp;
- (BOOL)_isPerformingContentModification;
- (BOOL)_isPerformingRollUnderListLayoutForView:(id)view atIndex:(unint64_t)index viewHeight:(double)height atLayoutOffset:(double)MinY targetTransform:(CGAffineTransform *)transform targetAlpha:(double *)alpha viewFrame:(CGRect *)frame;
- (BOOL)_isShowingFeaturedLeadingViews;
- (BOOL)_isTopSubviewHeightLessThanVisibleRect;
- (BOOL)_isViewWithinVisibleRectForHeight:(double)height layoutOffset:(double)offset;
- (BOOL)_isVisibleView:(id)view;
- (BOOL)_shouldAnimateListLayoutForView:(id)view atIndex:(unint64_t)index isExistingView:(BOOL)existingView isPerformingRollUnderLayout:(BOOL)layout shouldUpdateTransformedView:(BOOL)transformedView;
- (BOOL)_shouldPerformClipping;
- (BOOL)_shouldRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset;
- (BOOL)_shouldUpdateTransformedView:(id)view toFrame:(CGRect)frame alpha:(double)alpha transform:(CGAffineTransform *)transform;
- (BOOL)containsVisibleView:(id)view;
- (BOOL)isNotificationListViewCurrentlyVisible;
- (BOOL)isPerformingRemovalAnimation;
- (BOOL)isRolledUnderView:(id)view atIndex:(unint64_t)index;
- (BOOL)isVisibleForViewAtIndex:(unint64_t)index;
- (CGAffineTransform)_scaleTransformForGroupingAnimationForViewAtIndex:(SEL)index leadingViewHeight:(unint64_t)height;
- (CGAffineTransform)_transformForRollUnderForView:(SEL)view withHeight:(id)height layoutOffset:(double)offset;
- (CGAffineTransform)overrideTopViewDimmingTransform;
- (CGRect)_frameForViewAtIndex:(unint64_t)index;
- (CGRect)_visibleRect;
- (CGRect)visibleRect;
- (CGSize)_scaleForRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset;
- (CGSize)cachedSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListView)initWithModelType:(Class)type purpose:(id)purpose purposeWithSensitiveTextHashed:(id)hashed;
- (NCNotificationListViewDataSource)dataSource;
- (NSNumber)distanceScrolledBeyondBottomOfContent;
- (double)_adjustedFrictionForRevealAnimation;
- (double)_adjustedTensionForRevealAnimation;
- (double)_alphaForRollUnderForView:(id)view withHeight:(double)height layoutOffset:(double)offset;
- (double)_animationFriction;
- (double)_animationTension;
- (double)_bottomSpacingForItemAtIndex:(unint64_t)index;
- (double)_calculateSizeForGrouped:(BOOL)grouped size:(CGSize)size ignoreFeaturedLeadingView:(BOOL)view ignoreExpandedGroupStack:(BOOL)stack inDisplayListAsStackMode:(BOOL)mode dynamicGroupedOverlapHeightMultiple:(id)multiple;
- (double)_footerViewHeight;
- (double)_headerViewHeight;
- (double)_heightForFeaturedLeadingView;
- (double)_heightForFeaturedLeadingViewInRect:(CGRect)rect;
- (double)_initialLayoutOffset;
- (double)_layoutViewIfNecessaryAtIndex:(unint64_t)index layoutOffset:(double)offset startingLayoutOffset:(double)layoutOffset;
- (double)_positionOffsetForRevealHintingForItemAtIndex:(unint64_t)index;
- (double)_resolvedViewOverlap;
- (double)_revealAnimationDelayForObjectAtIndex:(unint64_t)index;
- (double)_rollUnderThresholdOffset;
- (double)_rollUnderTranslationTopMargin;
- (double)_targetContentHeightForProposedHeight:(double)height;
- (double)_topSpacingForItemAtIndex:(unint64_t)index;
- (double)_unclampedTranslationProgressForView:(id)view withHeight:(double)height layoutOffset:(double)offset;
- (double)_verticalTranslationForRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset scale:(CGSize)scale;
- (double)_verticalTranslationProgressForView:(id)view withHeight:(double)height layoutOffset:(double)offset;
- (double)_verticalVelocityForSuperview;
- (double)_widthForFeaturedLeadingView;
- (double)_widthForFeaturedLeadingViewInRect:(CGRect)rect;
- (double)_widthForListViewInRect:(CGRect)rect;
- (double)calculateSizeForGrouped:(BOOL)grouped ignoreFeaturedLeadingView:(BOOL)view ignoreExpandedGroupStack:(BOOL)stack inDisplayListAsStackMode:(BOOL)mode dynamicGroupedOverlapHeightMultiple:(id)multiple;
- (double)firstItemOffset;
- (double)layoutOffsetForViewAtIndex:(unint64_t)index;
- (double)stackedItemSizes;
- (id)_anySuperNotificationListView;
- (id)_backgroundGlassFromDataSource;
- (id)_backgroundViewFromDataSource;
- (id)_currentAnimator;
- (id)_currentHighFrameRateAnimator;
- (id)_directSuperListView;
- (id)_footerViewFromDataSource;
- (id)_getDepth;
- (id)_headerViewFromDataSource;
- (id)_hoverViewFromDataSource;
- (id)_listViewForView:(id)view;
- (id)_overlayViewFromDataSource;
- (id)_rootSuperListView;
- (id)_viewForItemAtIndex:(unint64_t)index;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)purposeHashed:(BOOL)hashed;
- (id)succinctDescription;
- (id)visibleViewAtIndex:(unint64_t)index;
- (int64_t)_cachedApparentZDepthOfCoplanarViews;
- (int64_t)_cachedApparentZDepthOfLastCoplanarView;
- (int64_t)_cachedApparentZDepthOfNonCoplanarViews;
- (int64_t)_uncachedApparentZDepthOfCoplanarViews;
- (int64_t)_uncachedApparentZDepthOfLastCoplanarView;
- (int64_t)_uncachedApparentZDepthOfNonCoplanarViews;
- (unint64_t)_bottomTransitionTransformerForView:(id)view;
- (unint64_t)count;
- (unint64_t)effectiveGlassModeFromExistingMode:(unint64_t)mode shouldHideGlass:(BOOL)glass;
- (void)_adjustContentSizeHeightIfNecessaryForUpdatedHeight:(double)height;
- (void)_adjustContentSizeWidthIfNecessary;
- (void)_animateVisibleRectHeight:(double)height;
- (void)_appendBaseDescriptionToBuilder:(id)builder;
- (void)_configureClippingIfNecessary;
- (void)_configureStackDimmingForGroupedView:(id)view transform:(CGAffineTransform *)transform;
- (void)_currentAnimator;
- (void)_decrementRemovalAnimationCount;
- (void)_drawRollUnderAreaInDebugViewIfNecessaryWithTopY:(double)y;
- (void)_giveDataSourceUpdatedTransformWhichIncludesSubviewsXTranslation;
- (void)_incrementRemovalAnimationCount;
- (void)_invalidateCachedApparentZDepths;
- (void)_layoutBackgroundViewIfNecessary;
- (void)_layoutFooterViewForGroupingIfNecessary;
- (void)_layoutFooterViewIfNecessaryAtLayoutOffset:(double)offset;
- (void)_layoutForGrouping;
- (void)_layoutForList;
- (void)_layoutGroupedViewForGroupingLayout:(id)layout atIndex:(unint64_t)index isExistingView:(BOOL)view leadingViewHeight:(double)height alpha:(double)alpha;
- (void)_layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset:(double)offset;
- (void)_layoutHeaderViewIfNecessaryAtLayoutOffset:(double)offset;
- (void)_layoutHiddenViewsForGroupingLayoutIfNecessaryWithLeadingViewHeight:(double)height;
- (void)_layoutHoverViewIfNecessary;
- (void)_layoutLeadingViewForGroupingLayoutIfNecessary:(id)necessary hasShadow:(BOOL)shadow isExistingView:(BOOL)view;
- (void)_layoutOverlayViewIfNecessary;
- (void)_notifyDataSourceViewWillBeRemoved:(id)removed;
- (void)_performInsertionAnimationForView:(id)view;
- (void)_performRemovalAnimationForView:(id)view index:(unint64_t)index isHorizontallyDisplaced:(BOOL)displaced;
- (void)_performRetargetableAnimationForView:(id)view type:(unint64_t)type animationBlock:(id)block completionBlock:(id)completionBlock;
- (void)_performViewAnimationBlock:(id)block completionBlock:(id)completionBlock type:(unint64_t)type;
- (void)_performViewAnimationBlock:(id)block completionBlock:(id)completionBlock withTension:(double)tension friction:(double)friction type:(unint64_t)type;
- (void)_recycleViewIfNecessary:(id)necessary withDataSource:(id)source;
- (void)_removeAllStoredVisibleViews;
- (void)_removeStoredVisibleViewAtIndex:(unint64_t)index;
- (void)_resetClipping;
- (void)_setContentHiddenForView:(id)view contentHidden:(BOOL)hidden;
- (void)_setHiddenBelowStackForView:(id)view hiddenBelowStack:(BOOL)stack;
- (void)_setNeedsUpdateOfApparentZPositionsOfListCells;
- (void)_setRevealAlphaForView:(id)view desiredAlpha:(double)alpha;
- (void)_setVisibleRectWithoutAlteringAnimations:(CGRect)animations;
- (void)_setVisibleView:(id)view atIndex:(unint64_t)index;
- (void)_setupClipping;
- (void)_setupVisibleRectHeightFloatAnimatablePropertyWithStartingValue:(double)value;
- (void)_updateBlurFilterForHeaderView:(id)view translation:(double)translation;
- (void)_updateBottomMarginAdjustmentAnimationForView:(id)view isPerformingRollUnderLayout:(BOOL)layout;
- (void)_updateDebugViewFrame;
- (void)_updateLayoutParametersForHiddenGroupListViewAnimationForView:(id)view targetTransform:(CGAffineTransform *)transform targetAlpha:(double *)alpha;
- (void)_updateStackedViewsForGrouping:(BOOL)grouping;
- (void)_updateStoredVisibleViewsForViewInsertedAtIndex:(unint64_t)index;
- (void)_updateStoredVisibleViewsForViewRemovedAtIndex:(unint64_t)index;
- (void)_updateSuperViewLayoutForSizeChangeIfNeeded;
- (void)_updateTransformedView:(id)view toFrame:(CGRect)frame;
- (void)_updateTransformedView:(id)view toFrame:(CGRect)frame withTransform:(CGAffineTransform *)transform;
- (void)_updateVisibleViewsForUpdatedVisibleRect:(CGRect)rect;
- (void)addSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)didExitAlwaysOn;
- (void)didMoveToSuperview;
- (void)insertViewAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)invalidateData;
- (void)layoutSubviews;
- (void)recycleVisibleViews;
- (void)reloadFooterViewAnimated:(BOOL)animated;
- (void)reloadHeaderView;
- (void)reloadHoverView;
- (void)reloadViewAtIndex:(unint64_t)index;
- (void)removeViewAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced;
- (void)revealNotificationContentBelowGroupedViewIfNecessary:(id)necessary;
- (void)setActiveRevealTransitioning:(BOOL)transitioning;
- (void)setAdditionalYOffset:(double)offset;
- (void)setAnimatingAdditionalYOffset:(BOOL)offset;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setContentSize:(CGSize)size;
- (void)setFeaturedLeadingViewOcclusionTranslation:(double)translation;
- (void)setFrame:(CGRect)frame;
- (void)setGrouped:(BOOL)grouped;
- (void)setGroupedTranslation:(double)translation;
- (void)setGroupingViewOverlapCompressionFactor:(double)factor;
- (void)setHiddenBelowStack:(BOOL)stack;
- (void)setInteractionTranslation:(double)translation;
- (void)setInteractionTranslationPercentage:(double)percentage;
- (void)setInteractionVelocity:(double)velocity;
- (void)setMaximumLeadingViewHeight:(double)height;
- (void)setNeedsUpdateOfApparentZPositionsOfListCells;
- (void)setOverrideLeadingViewHeight:(double)height;
- (void)setOverrideTopViewDimmingTransform:(CGAffineTransform *)transform;
- (void)setPerformingContentRevealAnimation:(BOOL)animation;
- (void)setPreferredBottomTransitionTransformer:(unint64_t)transformer;
- (void)setRevealPercentage:(double)percentage;
- (void)setRevealed:(BOOL)revealed;
- (void)setShowContentForGroupedViews:(BOOL)views;
- (void)setSublistsRevealed:(BOOL)revealed;
- (void)setSubviewPerformingGroupingAnimation:(BOOL)animation;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setVisibleRect:(CGRect)rect;
- (void)setVisibleRectBottomMarginForRollUnder:(double)under;
- (void)subviewDidLayout;
- (void)updateApparentZPositionsOfListCellsGivenApparentZPositionForListView:(int64_t)view withRootScrollVelocity:(double)velocity andGlassVisibility:(BOOL)visibility;
- (void)updateBottomViewTransitionStyleWithTraitCollection:(id)collection;
- (void)updateSubviewTranslation:(double)translation;
@end

@implementation NCNotificationListView

- (NCNotificationListViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (double)_rollUnderTranslationTopMargin
{
  [(NCNotificationListView *)self bounds];
  MaxY = CGRectGetMaxY(v9);
  [(NCNotificationListView *)self _visibleRect];
  v4 = MaxY - CGRectGetMaxY(v10);
  if (v4 >= 104.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4 / 104.0;
  }

  [(NCNotificationListView *)self _rollUnderThresholdOffset];
  v7 = v6 + v5 * v5 * -52.0;
  [(NCNotificationListView *)self _drawRollUnderAreaInDebugViewIfNecessaryWithTopY:v7];
  return v7;
}

- (double)_rollUnderThresholdOffset
{
  [(NCNotificationListView *)self visibleRect];
  MaxY = CGRectGetMaxY(v6);
  [(NCNotificationListView *)self visibleRectBottomMarginForRollUnder];
  return MaxY - v4;
}

- (double)_footerViewHeight
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    [dataSource footerViewHeightForNotificationList:self withWidth:?];
    v4 = v5;
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = NCNotificationListView;
  [(NCNotificationListView *)&v15 layoutSubviews];
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource notificationListWillLayoutSubviews];
  }

  coplanarViewIndices = [(NCNotificationListView *)self coplanarViewIndices];
  nonCoplanarViewIndices = [(NCNotificationListView *)self nonCoplanarViewIndices];
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(NCNotificationListView *)self setCoplanarViewIndices:v6];

  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(NCNotificationListView *)self setNonCoplanarViewIndices:v7];

  if ([(NCNotificationListView *)self _isGrouping])
  {
    [(NCNotificationListView *)self _layoutForGrouping];
  }

  else
  {
    [(NCNotificationListView *)self _layoutForList];
  }

  coplanarViewIndices2 = [(NCNotificationListView *)self coplanarViewIndices];
  nonCoplanarViewIndices2 = [(NCNotificationListView *)self nonCoplanarViewIndices];
  if (self->_needsForcedGlassUpdate || ![coplanarViewIndices2 isEqual:coplanarViewIndices] || (objc_msgSend(nonCoplanarViewIndices2, "isEqual:", nonCoplanarViewIndices) & 1) == 0)
  {
    [(NCNotificationListView *)self _invalidateCachedApparentZDepths];
    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
  }

  [(NCNotificationListView *)self alpha];
  v11 = v10 < 1.0 && [(NCNotificationListView *)self _isGrouping]&& [(NCNotificationListView *)self count]> 1;
  layer = [(NCNotificationListView *)self layer];
  [layer setAllowsGroupOpacity:v11];

  [(NCNotificationListView *)self _adjustContentSizeWidthIfNecessary];
  [(NCNotificationListView *)self _layoutBackgroundViewIfNecessary];
  [(NCNotificationListView *)self _layoutHoverViewIfNecessary];
  insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
  [insertedViewIndices removeAllObjects];

  reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
  [reloadedViewIndices removeAllObjects];

  [(NCNotificationListView *)self setRemovedViewIndex:0x7FFFFFFFFFFFFFFFLL];
  [(NCNotificationListView *)self setPerformingGroupingAnimation:0];
  [(NCNotificationListView *)self setSubviewPerformingGroupingAnimation:0];
  [(NCNotificationListView *)self setPerformingRevealAnimation:0];
  [(NCNotificationListView *)self setPerformingHeaderReloadAnimation:0];
  [(NCNotificationListView *)self setPerformingContentRevealAnimation:0];
  [(NCNotificationListView *)self setPerformingVisibleRectAdjustment:0];
  [(NCNotificationListView *)self setPerformingStackVisibilityAnimation:0];
  [(NCNotificationListView *)self setPerformingInteractiveTranslationAnimation:0];
  [(NCNotificationListView *)self setPerformingRevealTransitionAnimation:0];
  [(NCNotificationListView *)self setPerformingBottomMarginAdjustmentAnimation:0];
  [(NCNotificationListView *)self setPerformingInteractionVelocityAnimation:0];
  [(NCNotificationListView *)self setPerformingOverrideLeadingViewHeightAdjustment:0];
  [(NCNotificationListView *)self visibleRect];
  [(NCNotificationListView *)self _updateVisibleViewsForUpdatedVisibleRect:?];
  [(NCNotificationListView *)self _layoutOverlayViewIfNecessary];
  [(NCNotificationListView *)self setPerformedFirstLayout:1];
  if (objc_opt_respondsToSelector())
  {
    [dataSource notificationListDidLayoutSubviews];
  }
}

- (BOOL)_isGrouping
{
  isGrouped = [(NCNotificationListView *)self isGrouped];
  if (isGrouped)
  {

    LOBYTE(isGrouped) = [(NCNotificationListView *)self supportsGrouping];
  }

  return isGrouped;
}

- (void)_layoutForList
{
  [(NCNotificationListView *)self _initialLayoutOffset];
  v4 = v3;
  [(NCNotificationListView *)self _layoutHeaderViewIfNecessaryAtLayoutOffset:?];
  [(NCNotificationListView *)self _headerViewHeight];
  v5 = 0.0;
  v7 = v6 <= 0.0;
  v8 = 0.0;
  if (!v7)
  {
    [(NCNotificationListView *)self _headerViewHeight];
    v10 = v9;
    [(NCListAnimationSettings *)self->_animationSettings headerSpacing];
    v8 = v10 + v11;
  }

  v12 = v4 + v8;
  v13 = [(NCNotificationListView *)self count];
  if (v13)
  {
    v14 = v13;
    [(NCNotificationListView *)self _topSpacingForItemAtIndex:0];
    v15 = 0;
    v16 = 0;
    v12 = v12 + v17;
    MinY = v12;
    do
    {
      v19 = [(NCNotificationListView *)self visibleViewAtIndex:v15];
      v20 = [(NCNotificationListView *)self _listViewForView:v19];
      v21 = v20;
      if (v20 && ([v20 isRevealed] & 1) == 0 && !-[NCNotificationListView isActiveRevealTransitioning](self, "isActiveRevealTransitioning"))
      {
        _isTopSubviewHeightLessThanVisibleRect = [(NCNotificationListView *)self _isTopSubviewHeightLessThanVisibleRect];
        v23 = 100.0;
        if (_isTopSubviewHeightLessThanVisibleRect)
        {
          v23 = 0.0;
        }

        v24 = v12 + v23;
        [(NCNotificationListView *)self _topSpacingForItemAtIndex:v15];
        v5 = v24 - v25;
        v16 = 1;
      }

      if (!v15)
      {
        [v19 frame];
        MinY = CGRectGetMinY(v43);
      }

      [(NCNotificationListView *)self _layoutViewIfNecessaryAtIndex:v15 layoutOffset:v12 startingLayoutOffset:MinY];
      v27 = v26;
      if (v26 > v12 + 0.001)
      {
        [(NCNotificationListView *)self _bottomSpacingForItemAtIndex:v15];
        v29 = v27 + v28;
        [v21 additionalBottomSpace];
        v12 = v29 + v30;
      }

      [(NCNotificationListView *)self sendSubviewToBack:v19];

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v16 = 0;
  }

  [(NCNotificationListView *)self footerViewVerticalMargin];
  [(NCNotificationListView *)self _layoutFooterViewIfNecessaryAtLayoutOffset:v12 + v31];
  [(NCNotificationListView *)self _footerViewHeight];
  v32 = 0.0;
  if (v33 > 0.0)
  {
    [(NCNotificationListView *)self _footerViewHeight];
    v35 = v34;
    [(NCNotificationListView *)self footerViewVerticalMargin];
    v32 = v35 + v36;
  }

  isPerformingHeaderGroupingAnimation = [(NCNotificationListView *)self isPerformingHeaderGroupingAnimation];
  headerView = [(NCNotificationListView *)self headerView];
  if (isPerformingHeaderGroupingAnimation)
  {
    [(NCNotificationListView *)self sendSubviewToBack:headerView];
  }

  else
  {
    [(NCNotificationListView *)self bringSubviewToFront:headerView];
  }

  v39 = v12 + v32;
  footerView = [(NCNotificationListView *)self footerView];
  [(NCNotificationListView *)self sendSubviewToBack:footerView];

  if (v16)
  {
    v41 = v5;
  }

  else
  {
    v41 = v39;
  }

  if (v41 < 0.0)
  {
    v41 = 0.0;
  }

  [(NCNotificationListView *)self _adjustContentSizeHeightIfNecessaryForUpdatedHeight:v41];
}

- (double)_initialLayoutOffset
{
  if (![(NCNotificationListView *)self layoutFromBottom])
  {
    return 0.0;
  }

  dataSource = [(NCNotificationListView *)self dataSource];
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _widthForListViewInRect:?];
  v5 = v4;
  if ([(NCNotificationListView *)self areSublistsRevealed]&& ![(NCNotificationListView *)self isActiveRevealTransitioning])
  {
    indexForReveal = [(NCNotificationListView *)self count];
  }

  else
  {
    indexForReveal = [(NCNotificationListView *)self indexForReveal];
  }

  v8 = indexForReveal;
  v9 = 0.0;
  if (indexForReveal)
  {
    v10 = 0;
    do
    {
      [dataSource notificationListView:self heightForItemAtIndex:v10 withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v5}];
      if (v11 > 0.0)
      {
        v12 = v11;
        if (!v10)
        {
          [(NCNotificationListView *)self _topSpacingForItemAtIndex:0];
          v9 = v9 + v13;
        }

        [(NCNotificationListView *)self _bottomSpacingForItemAtIndex:v10];
        v9 = v9 + v12 + v14;
      }

      ++v10;
    }

    while (v8 != v10);
  }

  [(NCNotificationListView *)self visibleRectBottomMarginForRollUnder];
  [(NCNotificationListView *)self bounds];
  CGRectGetHeight(v18);
  [(NCNotificationListView *)self contentInset];
  [(NCNotificationListView *)self interactionTranslation];
  traitCollection = [(NCNotificationListView *)self traitCollection];
  [traitCollection displayScale];
  UIFloorToScale();
  v17 = v16;

  return v17;
}

- (double)_headerViewHeight
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    [dataSource headerViewHeightForNotificationList:self withWidth:?];
    v4 = v5;
  }

  return v4;
}

- (CGRect)visibleRect
{
  if (self->_visibleRectIsBounds)
  {
    [(NCNotificationListView *)self bounds];
  }

  else
  {
    [(NCNotificationListView *)self _visibleRect];
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_visibleRect
{
  x = self->__visibleRect.origin.x;
  y = self->__visibleRect.origin.y;
  width = self->__visibleRect.size.width;
  height = self->__visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_headerViewFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource headerViewForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)count
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v4 = [dataSource notificationListViewNumberOfItems:self];

  return v4;
}

- (BOOL)_isCurrentlyInDisplayListAsStackMode
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource isCurrentlyInDisplayListAsStackMode:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)cachedSize
{
  width = self->_cachedSize.width;
  height = self->_cachedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_giveDataSourceUpdatedTransformWhichIncludesSubviewsXTranslation
{
  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  dataSource = [_directSuperListView dataSource];
  if (dataSource && (objc_opt_respondsToSelector() & 1) != 0)
  {
    memset(&v9, 0, sizeof(v9));
    [(NCNotificationListView *)self groupedTranslation];
    CGAffineTransformMakeTranslation(&v9, v5, 0.0);
    memset(&v8, 0, sizeof(v8));
    [(NCNotificationListView *)self transform];
    v6 = v9;
    CGAffineTransformConcat(&v8, &t1, &v6);
    t1 = v8;
    [dataSource notificationListView:_directSuperListView changingTransformOfView:self toTransform:&t1];
  }
}

- (id)_directSuperListView
{
  superview = [(NCNotificationListView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = superview;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_invalidateCachedApparentZDepths
{
  self->_cachedApparentZDepthOfLastCoplanarView = 0x8000000000000000;
  self->_cachedApparentZDepthOfCoplanarViews = 0x8000000000000000;
  self->_cachedApparentZDepthOfNonCoplanarViews = 0x8000000000000000;
  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  [_directSuperListView _invalidateCachedApparentZDepths];
}

- (void)setNeedsUpdateOfApparentZPositionsOfListCells
{
  _rootSuperListView = [(NCNotificationListView *)self _rootSuperListView];
  v4 = _rootSuperListView;
  if (_rootSuperListView)
  {
    selfCopy = _rootSuperListView;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  [(NCNotificationListView *)v6 _setNeedsUpdateOfApparentZPositionsOfListCells];
}

- (id)_rootSuperListView
{
  superview = [(NCNotificationListView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _rootSuperListView = [superview _rootSuperListView];
    v4 = _rootSuperListView;
    if (_rootSuperListView)
    {
      v5 = _rootSuperListView;
    }

    else
    {
      v5 = superview;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_adjustContentSizeWidthIfNecessary
{
  [(NCNotificationListView *)self frame];
  Width = CGRectGetWidth(v6);
  [(NCNotificationListView *)self contentSize];
  if (vabdd_f64(v4, Width) >= 2.22044605e-16)
  {

    [(NCNotificationListView *)self setContentSize:Width];
  }
}

- (void)_layoutBackgroundViewIfNecessary
{
  _backgroundGlassFromDataSource = [(NCNotificationListView *)self _backgroundGlassFromDataSource];
  backgroundGlass = self->_backgroundGlass;
  self->_backgroundGlass = _backgroundGlassFromDataSource;

  [(NCNotificationListView *)self _setBackground:self->_backgroundGlass];

  [(NCNotificationListView *)self _setContinuousCornerRadius:28.0];
}

- (id)_backgroundViewFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource backgroundViewForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_layoutHoverViewIfNecessary
{
  if (self->_hoverView)
  {
    goto LABEL_6;
  }

  if (![(NCNotificationListView *)self isGrouped])
  {
    _hoverViewFromDataSource = [(NCNotificationListView *)self _hoverViewFromDataSource];
    hoverView = self->_hoverView;
    self->_hoverView = _hoverViewFromDataSource;

    if (!self->_hoverView)
    {
      return;
    }

    [(NCNotificationListView *)self addSubview:?];
  }

  if (self->_hoverView)
  {
LABEL_6:
    isGrouped = [(NCNotificationListView *)self isGrouped];
    v6 = self->_hoverView;
    if (isGrouped)
    {
      v7 = v6;
      v8 = self->_hoverView;
      self->_hoverView = 0;

      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __53__NCNotificationListView__layoutHoverViewIfNecessary__block_invoke_2;
      v65[3] = &unk_27836F6A8;
      v66 = v7;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __53__NCNotificationListView__layoutHoverViewIfNecessary__block_invoke_3;
      v62[3] = &unk_27836F560;
      v63 = v66;
      selfCopy = self;
      v9 = v66;
      [(NCNotificationListView *)self _performViewAnimationBlock:v65 completionBlock:v62 type:0];
    }

    else
    {
      [(NCNotificationListView *)self bringSubviewToFront:v6];
      [(NCNotificationListView *)self bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(NCNotificationListView *)self visibleRect];
      v60 = v19;
      v61 = v18;
      v58 = v21;
      v59 = v20;
      [(UIView *)self->_hoverView frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      if ([(NCNotificationListView *)self _shouldReverseLayoutDirection])
      {
        [(NCNotificationListView *)self horizontalInsetMargin];
        v31 = v30;
        [(NCListAnimationSettings *)self->_animationSettings hoverViewTrailingMargin];
        v33 = v31 + v32;
      }

      else
      {
        v68.origin.x = v11;
        v68.origin.y = v13;
        v68.size.width = v15;
        v68.size.height = v17;
        Width = CGRectGetWidth(v68);
        [(NCNotificationListView *)self horizontalInsetMargin];
        v36 = Width - v35;
        v69.origin.x = v23;
        v69.origin.y = v25;
        v69.size.width = v27;
        v69.size.height = v29;
        v37 = v36 - CGRectGetWidth(v69);
        [(NCListAnimationSettings *)self->_animationSettings hoverViewTrailingMargin];
        v33 = v37 - v38;
      }

      isHoverViewHidden = [(NCNotificationListView *)self isHoverViewHidden];
      v70.origin.x = v61;
      v70.origin.y = v60;
      v70.size.width = v59;
      v70.size.height = v58;
      MinY = CGRectGetMinY(v70);
      [(NCListAnimationSettings *)self->_animationSettings hoverViewMovingTopMargin];
      v42 = MinY > v41;
      self->_hoverViewHidden = MinY <= v41;
      v43 = 1.0;
      if (!v42)
      {
        v43 = 0.0;
      }

      [(UIView *)self->_hoverView setAlpha:v43];
      v71.origin.x = v61;
      v71.origin.y = v60;
      v71.size.width = v59;
      v71.size.height = v58;
      v44 = CGRectGetMinY(v71);
      [(NCListAnimationSettings *)self->_animationSettings hoverViewMovingTopMargin];
      v46 = v44 + v45;
      height = self->_cachedSize.height;
      [(NCListAnimationSettings *)self->_animationSettings hoverViewBottomMarginMinimum];
      v49 = height - v48;
      if (v46 >= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v46;
      }

      v51 = isHoverViewHidden && !self->_hoverViewHidden;
      [(UIView *)self->_hoverView frame];
      v73.origin.x = v52;
      v73.origin.y = v53;
      v73.size.width = v54;
      v73.size.height = v55;
      v72.origin.x = v33;
      v72.origin.y = v50;
      v72.size.width = v27;
      v72.size.height = v29;
      if (!CGRectEqualToRect(v72, v73))
      {
        hoverView = [(NCNotificationListView *)self hoverView];
        [hoverView setFrame:{v33, v50, v27, v29}];

        if (v51)
        {
          hoverView2 = [(NCNotificationListView *)self hoverView];
          [hoverView2 setAlpha:0.0];

          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __53__NCNotificationListView__layoutHoverViewIfNecessary__block_invoke;
          v67[3] = &unk_27836F6A8;
          v67[4] = self;
          [(NCNotificationListView *)self _performViewAnimationBlock:v67 completionBlock:0 type:0];
        }
      }
    }
  }
}

- (id)_hoverViewFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource hoverViewForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isNotificationListViewCurrentlyVisible
{
  superview = [(NCNotificationListView *)self superview];
  if (superview)
  {
    if ([(NCNotificationListView *)self isRevealed])
    {
      v4 = 1;
    }

    else
    {
      [(NCNotificationListView *)self revealPercentage];
      v4 = v5 > 0.0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isShowingFeaturedLeadingViews
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource isShowingFeaturedLeadingViewsForNotificationListView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_layoutOverlayViewIfNecessary
{
  if (self->_overlayView)
  {
    goto LABEL_6;
  }

  if (![(NCNotificationListView *)self isGrouped])
  {
    _overlayViewFromDataSource = [(NCNotificationListView *)self _overlayViewFromDataSource];
    overlayView = self->_overlayView;
    self->_overlayView = _overlayViewFromDataSource;

    v5 = self->_overlayView;
    if (!v5)
    {
      return;
    }

    [(NCNotificationListView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(NCNotificationListView *)self addSubview:self->_overlayView];
  }

  if (self->_overlayView)
  {
LABEL_6:
    [(NCNotificationListView *)self bringSubviewToFront:?];
    [(NCNotificationListView *)self bounds];
    x = v6;
    y = v8;
    width = v10;
    height = v12;
    [(NCNotificationListView *)self overrideLeadingViewHeight];
    if (v14 > 0.0)
    {
      [(NCNotificationListView *)self overrideLeadingViewHeight];
      height = v15;
    }

    [(NCNotificationListView *)self frame];
    v17 = v16;
    if (![(NCNotificationListView *)self isGrouped])
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v30 = CGRectInset(v29, -v17, 0.0);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
    }

    if ([(NCNotificationListView *)self isRevealed])
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    [(UIView *)self->_overlayView frame];
    v32.origin.x = v19;
    v32.origin.y = v20;
    v32.size.width = v21;
    v32.size.height = v22;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectEqualToRect(v31, v32) || ([(UIView *)self->_overlayView alpha], v18 != v23))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__NCNotificationListView__layoutOverlayViewIfNecessary__block_invoke;
      aBlock[3] = &unk_278370E90;
      aBlock[4] = self;
      *&aBlock[5] = v18;
      *&aBlock[6] = x;
      *&aBlock[7] = y;
      *&aBlock[8] = width;
      *&aBlock[9] = height;
      v24 = _Block_copy(aBlock);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __55__NCNotificationListView__layoutOverlayViewIfNecessary__block_invoke_2;
      v27[3] = &unk_27836F6A8;
      v27[4] = self;
      v25 = _Block_copy(v27);
      if ([(NCNotificationListView *)self isPerformingOverrideLeadingViewHeightAdjustment]|| [(NCNotificationListView *)self isReactiveLayout])
      {
        _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
        [_currentAnimator performAnimationType:0 withoutAnimation:v24];

        v25[2](v25);
      }

      else
      {
        [(NCNotificationListView *)self _performViewAnimationBlock:v24 completionBlock:v25 type:0];
      }
    }
  }
}

- (id)_overlayViewFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource overlayViewForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_footerViewFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource footerViewForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_layoutForGrouping
{
  if (![(NCNotificationListView *)self _isGrouping])
  {
    return;
  }

  dataSource = [(NCNotificationListView *)self dataSource];
  v4 = [dataSource notificationListViewNumberOfItems:self];
  if (![(NCNotificationListView *)self showStackBelowLeadingView])
  {
    v6 = 1;
LABEL_10:
    v9 = 0;
    Height = 0.0;
    v10 = MEMORY[0x277CBF2C0];
    while (1)
    {
      v11 = [(NCNotificationListView *)self visibleViewAtIndex:v9];
      if (v11)
      {
        [(NCNotificationListView *)self sendSubviewToBack:v11];
        v12 = v11;
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v12 = [(NCNotificationListView *)self _viewForItemAtIndex:v9];
        [(NCNotificationListView *)self _setHiddenBelowStackForView:v12 hiddenBelowStack:v9 != 0];
        [(NCNotificationListView *)self _setVisibleView:v12 atIndex:v9];
        [(NCNotificationListView *)self addSubview:v12];
        [v12 setAlpha:0.0];
        v17 = v10[1];
        v19 = *v10;
        v18 = v19;
        v20 = v17;
        v21 = v10[2];
        v16 = v21;
        [v12 setTransform:&v19];
        v19 = v18;
        v20 = v17;
        v21 = v16;
        [(NCNotificationListView *)self _configureStackDimmingForGroupedView:v12 transform:&v19];
        [(NCNotificationListView *)self sendSubviewToBack:v12];
        if (!v9)
        {
          [(NCNotificationListView *)self setCachedSizeValid:0];
LABEL_23:
          [(NCNotificationListView *)self bringSubviewToFront:v12];
          [(NCNotificationListView *)self _layoutLeadingViewForGroupingLayoutIfNecessary:v12 hasShadow:v4 > 1 isExistingView:v11 != 0];
          [v12 frame];
          Height = CGRectGetHeight(v23);
          v14 = 1;
          if (v11)
          {
            goto LABEL_17;
          }

LABEL_16:
          [v12 setAlpha:1.0];
          goto LABEL_17;
        }
      }

      [(NCNotificationListView *)self groupingViewOverlapAlphaFactor];
      [(NCNotificationListView *)self _layoutGroupedViewForGroupingLayout:v12 atIndex:v9 isExistingView:v11 != 0 leadingViewHeight:Height alpha:v13];
      v14 = 0;
      if (!v11)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v14)
      {
        [(NCNotificationListView *)self coplanarViewIndices];
      }

      else
      {
        [(NCNotificationListView *)self groupingViewOverlapAlphaFactor];
        [v12 setAlpha:?];
        [(NCNotificationListView *)self nonCoplanarViewIndices];
      }
      v15 = ;
      [v15 addIndex:v9];

      [v12 frame];
      MaxY = CGRectGetMaxY(v22);

      if (v6 == ++v9)
      {
        goto LABEL_7;
      }
    }
  }

  [(NCListAnimationSettings *)self->_animationSettings groupListMaxViewCount];
  if (v5 > v4)
  {
    v5 = v4;
  }

  v6 = v5;
  if (v5)
  {
    goto LABEL_10;
  }

  Height = 0.0;
  MaxY = 0.0;
LABEL_7:
  [(NCNotificationListView *)self _layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset:Height];
  [(NCNotificationListView *)self _layoutFooterViewForGroupingIfNecessary];
  [(NCNotificationListView *)self _layoutHiddenViewsForGroupingLayoutIfNecessaryWithLeadingViewHeight:Height];
  [(NCNotificationListView *)self _adjustContentSizeHeightIfNecessaryForUpdatedHeight:MaxY];
}

- (double)_animationTension
{
  [(NCListAnimationSettings *)self->_animationSettings animationTension];
  v4 = v3;
  if ([(NCNotificationListView *)self isPerformingRevealAnimation])
  {

    [(NCNotificationListView *)self _adjustedTensionForRevealAnimation];
  }

  else if ([(NCNotificationListView *)self isPerformingInteractionVelocityAnimation])
  {
    [(NCListAnimationSettings *)self->_animationSettings animationTension];
    v7 = v6;
    [(NCListAnimationSettings *)self->_animationSettings animationTensionVelocityFactor];
    v9 = v8;
    [(NCNotificationListView *)self interactionVelocity];
    return v7 + v9 * v10;
  }

  else
  {
    return v4;
  }

  return result;
}

- (double)_animationFriction
{
  [(NCListAnimationSettings *)self->_animationSettings animationFriction];
  v4 = v3;
  if ([(NCNotificationListView *)self isPerformingRevealAnimation])
  {

    [(NCNotificationListView *)self _adjustedFrictionForRevealAnimation];
  }

  else if ([(NCNotificationListView *)self isPerformingInteractionVelocityAnimation])
  {
    [(NCListAnimationSettings *)self->_animationSettings animationFriction];
    v7 = v6;
    [(NCListAnimationSettings *)self->_animationSettings animationFrictionVelocityFactor];
    v9 = v8;
    [(NCNotificationListView *)self interactionVelocity];
    return v7 + v9 * v10;
  }

  else
  {
    return v4;
  }

  return result;
}

- (id)_currentHighFrameRateAnimator
{
  v3 = [NCHighFrameRateAnimator alloc];
  _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
  v5 = [(NCHighFrameRateAnimator *)v3 initWithAnimator:_currentAnimator];

  return v5;
}

- (id)_currentAnimator
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    animator = [dataSource animator];
  }

  else
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
    {
      [(NCNotificationListView *)dataSource _currentAnimator];
    }

    animator = NCDefaultAnimator();
  }

  v6 = animator;

  return v6;
}

- (CGAffineTransform)overrideTopViewDimmingTransform
{
  v3 = *&self[56].ty;
  *&retstr->a = *&self[56].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[57].b;
  return self;
}

- (void)_layoutFooterViewForGroupingIfNecessary
{
  footerView = [(NCNotificationListView *)self footerView];
  if (footerView)
  {
    viewsPerformingAnimation = [(NCNotificationListView *)self viewsPerformingAnimation];
    v5 = [viewsPerformingAnimation containsObject:footerView];

    if ((v5 & 1) == 0)
    {
      viewsPerformingAnimation2 = [(NCNotificationListView *)self viewsPerformingAnimation];
      [viewsPerformingAnimation2 addObject:footerView];

      [footerView frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(NCNotificationListView *)self sendSubviewToBack:footerView];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__NCNotificationListView__layoutFooterViewForGroupingIfNecessary__block_invoke;
      v15[3] = &unk_27836FDF8;
      v16 = footerView;
      v17 = v8;
      v18 = 0;
      v19 = v10;
      v20 = v12;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__NCNotificationListView__layoutFooterViewForGroupingIfNecessary__block_invoke_2;
      v13[3] = &unk_27836F560;
      v13[4] = self;
      v14 = v16;
      [(NCNotificationListView *)self _performViewAnimationBlock:v15 completionBlock:v13 type:0];
    }
  }
}

- (void)_updateDebugViewFrame
{
  debugView = self->_debugView;
  if (debugView)
  {
    [(NCNotificationListView *)self bounds];

    [(NCNotificationListDebugView *)debugView setFrame:?];
  }
}

- (void)didExitAlwaysOn
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v3 = [dataSource notificationListViewNumberOfItems:self];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NCNotificationListView *)self _viewForItemAtIndex:i];
      [v6 layoutIfNeeded];
    }
  }
}

- (void)_removeAllStoredVisibleViews
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allValues = [visibleViews allValues];

  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        superview = [v9 superview];

        if (superview == self)
        {
          [v9 removeFromSuperview];
          [(NCNotificationListView *)self _recycleViewIfNecessary:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  visibleViews2 = [(NCNotificationListView *)self visibleViews];
  [visibleViews2 removeAllObjects];
}

- (void)recycleVisibleViews
{
  [(NCNotificationListView *)self _removeAllStoredVisibleViews];
  headerView = self->_headerView;
  if (headerView)
  {
    [(UIView *)headerView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_headerView];
    v4 = self->_headerView;
    self->_headerView = 0;
  }

  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_footerView];
    v6 = self->_footerView;
    self->_footerView = 0;
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_backgroundView];
    v8 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
}

- (double)_resolvedViewOverlap
{
  [(NCListAnimationSettings *)self->_animationSettings viewOverlap];
  v4 = v3;
  [(NCNotificationListView *)self groupingViewOverlapCompressionFactor];
  return v4 * v5;
}

- (NCNotificationListView)initWithModelType:(Class)type purpose:(id)purpose purposeWithSensitiveTextHashed:(id)hashed
{
  v42[1] = *MEMORY[0x277D85DE8];
  purposeCopy = purpose;
  hashedCopy = hashed;
  v41.receiver = self;
  v41.super_class = NCNotificationListView;
  v11 = [(NCNotificationListView *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_purpose, purpose);
    objc_storeStrong(&v12->_purposeWithSensitiveTextHashed, hashed);
    v13 = NSStringFromClass(type);
    model = v12->_model;
    v12->_model = v13;

    v15 = +[NCUNUIKitPrototypeDomain rootSettings];
    v12->_animationSettings = [v15 listAnimationSettings];

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    insertedViewIndices = v12->_insertedViewIndices;
    v12->_insertedViewIndices = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reloadedViewIndices = v12->_reloadedViewIndices;
    v12->_reloadedViewIndices = v18;

    v20 = objc_alloc_init(MEMORY[0x277CCAB58]);
    coplanarViewIndices = v12->_coplanarViewIndices;
    v12->_coplanarViewIndices = v20;

    v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
    nonCoplanarViewIndices = v12->_nonCoplanarViewIndices;
    v12->_nonCoplanarViewIndices = v22;

    [(NCNotificationListView *)v12 setRemovedViewIndex:0x7FFFFFFFFFFFFFFFLL];
    [(NCNotificationListView *)v12 setShowsHorizontalScrollIndicator:0];
    [(NCNotificationListView *)v12 setAlwaysBounceVertical:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NCNotificationListView *)v12 setBackgroundColor:clearColor];

    [(NCNotificationListView *)v12 setClipsToBounds:0];
    layer = [(NCNotificationListView *)v12 layer];
    [layer setAllowsGroupOpacity:0];

    [(NCNotificationListView *)v12 setRevealed:1];
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleViews = v12->_visibleViews;
    v12->_visibleViews = v26;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    viewsPerformingAnimation = v12->_viewsPerformingAnimation;
    v12->_viewsPerformingAnimation = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    viewsPerformingBottomMarginAdjustmentAnimation = v12->_viewsPerformingBottomMarginAdjustmentAnimation;
    v12->_viewsPerformingBottomMarginAdjustmentAnimation = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    viewsPerformingRollUnderLayout = v12->_viewsPerformingRollUnderLayout;
    v12->_viewsPerformingRollUnderLayout = weakObjectsHashTable3;

    [(NCNotificationListView *)v12 _setIgnoresLayerTransformForSafeAreaInsets:1];
    v12->_performedFirstLayout = 0;
    v12->_hiddenBelowStack = 0;
    v12->_hoverViewHidden = 1;
    v12->_groupingAnimationStyle = 0;
    v12->_horizontalInsetMargin = 0.0;
    v12->_backgroundViewHorizontalOutsetMargin = 0.0;
    [(NCListAnimationSettings *)v12->_animationSettings viewSpacing];
    v12->_footerViewVerticalMargin = v34;
    v12->_numberOfFeaturedLeadingViews = 0;
    *&v12->_showStackBelowLeadingView = 1;
    v12->_leadingContentShouldFillList = 0;
    v12->_groupedOverlapHeightMultiple = 1.0;
    v12->_interactionTranslationPercentage = 0.0;
    v12->_preferredBottomTransitionTransformer = 1;
    v12->_shouldLimitViewHeightForRollUnder = 0;
    v12->_groupingViewOverlapCompressionFactor = 1.0;
    v12->_groupingViewOverlapAlphaFactor = 1.0;
    v12->_shadowAlphaFactor = 1.0;
    v12->_useAnimatorForHeightChangeAnimation = 0;
    v12->_performingScrollingAnimation = 0;
    v12->_supportsHeaderViewRollUnder = 1;
    v12->_rootScrollVelocity = 1.79769313e308;
    v12->_needsForcedGlassUpdate = 0;
    v12->_needsUpdateOfApparentZPositionsOfListCells = 0;
    [(NCNotificationListView *)v12 setScrollEnabled:0];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@('%@')", v12->_model, v12->_purpose];
    [(NCNotificationListView *)v12 setAccessibilityIdentifier:v35];

    traitCollection = [(NCNotificationListView *)v12 traitCollection];
    [(NCNotificationListView *)v12 updateBottomViewTransitionStyleWithTraitCollection:traitCollection];
  }

  v37 = objc_opt_self();
  v42[0] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v39 = [(NCNotificationListView *)v12 registerForTraitChanges:v38 withTarget:v12 action:sel__layoutBackgroundViewIfNecessary];

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(NCNotificationListView *)self isCachedSizeValid])
  {

    [(NCNotificationListView *)self cachedSize];
  }

  else
  {
    [(NCNotificationListView *)self _calculateSizeForGrouped:[(NCNotificationListView *)self _isGrouping] size:0 ignoreFeaturedLeadingView:0 ignoreExpandedGroupStack:[(NCNotificationListView *)self _isCurrentlyInDisplayListAsStackMode] inDisplayListAsStackMode:0 dynamicGroupedOverlapHeightMultiple:width, height];
    v9 = v8;
    [(NCNotificationListView *)self setCachedSize:width, v8];
    [(NCNotificationListView *)self setCachedSizeValid:1];
    v6 = width;
    v7 = v9;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (double)calculateSizeForGrouped:(BOOL)grouped ignoreFeaturedLeadingView:(BOOL)view ignoreExpandedGroupStack:(BOOL)stack inDisplayListAsStackMode:(BOOL)mode dynamicGroupedOverlapHeightMultiple:(id)multiple
{
  modeCopy = mode;
  stackCopy = stack;
  viewCopy = view;
  groupedCopy = grouped;
  multipleCopy = multiple;
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _calculateSizeForGrouped:groupedCopy size:viewCopy ignoreFeaturedLeadingView:stackCopy ignoreExpandedGroupStack:modeCopy inDisplayListAsStackMode:multipleCopy dynamicGroupedOverlapHeightMultiple:v13, v14];
  v16 = v15;

  return v16;
}

- (double)_calculateSizeForGrouped:(BOOL)grouped size:(CGSize)size ignoreFeaturedLeadingView:(BOOL)view ignoreExpandedGroupStack:(BOOL)stack inDisplayListAsStackMode:(BOOL)mode dynamicGroupedOverlapHeightMultiple:(id)multiple
{
  modeCopy = mode;
  stackCopy = stack;
  viewCopy = view;
  height = size.height;
  width = size.width;
  groupedCopy = grouped;
  multipleCopy = multiple;
  dataSource = [(NCNotificationListView *)self dataSource];
  v17 = [dataSource notificationListViewNumberOfItems:self];
  [(NCNotificationListView *)self _widthForListViewInRect:0.0, 0.0, width, height];
  v19 = v18;
  if (multipleCopy)
  {
    [multipleCopy bs_CGFloatValue];
  }

  else
  {
    [(NCNotificationListView *)self groupedOverlapHeightMultiple];
  }

  v21 = v20;
  if (groupedCopy)
  {
    if (v17)
    {
      [dataSource notificationListView:self heightForItemAtIndex:0 withWidth:modeCopy inDisplayListAsStackMode:stackCopy ignoreExpandedGroupStack:v19];
      showStackBelowLeadingView = [(NCNotificationListView *)self showStackBelowLeadingView];
      v20 = 0.0;
      if (showStackBelowLeadingView)
      {
        if (v17 == 2)
        {
          v20 = 1.0;
        }

        if (v17 <= 2)
        {
          v23 = v20;
        }

        else
        {
          v23 = 2.0;
        }

        [(NCNotificationListView *)self _resolvedViewOverlap];
        v20 = v23 * (v21 * v24);
      }
    }
  }

  else
  {
    [(NCNotificationListView *)self _headerViewHeight];
    v25 = 0.0;
    if (v26 > 0.0)
    {
      [(NCNotificationListView *)self _headerViewHeight];
      v28 = v27;
      [(NCListAnimationSettings *)self->_animationSettings headerSpacing];
      v25 = v28 + v29 + 0.0;
    }

    if (v17)
    {
      _isShowingFeaturedLeadingViews = [(NCNotificationListView *)self _isShowingFeaturedLeadingViews];
      numberOfFeaturedLeadingViews = 0;
      if (!viewCopy && _isShowingFeaturedLeadingViews)
      {
        [(NCNotificationListView *)self _heightForFeaturedLeadingViewInRect:0.0, 0.0, width, height];
        v33 = v25 + v32;
        [(NCListAnimationSettings *)self->_animationSettings viewSpacing];
        v25 = v33 + v34;
        numberOfFeaturedLeadingViews = [(NCNotificationListView *)self numberOfFeaturedLeadingViews];
      }

      if (numberOfFeaturedLeadingViews < v17)
      {
        do
        {
          [dataSource notificationListView:self heightForItemAtIndex:numberOfFeaturedLeadingViews withWidth:modeCopy inDisplayListAsStackMode:stackCopy ignoreExpandedGroupStack:v19];
          if (v35 <= 0.0)
          {
            [(NCListAnimationSettings *)self->_animationSettings viewSpacing];
            v25 = v25 - v42;
          }

          else
          {
            v36 = v35;
            if (!numberOfFeaturedLeadingViews)
            {
              [(NCNotificationListView *)self _topSpacingForItemAtIndex:0];
              v25 = v25 + v37;
            }

            isRevealed = [(NCNotificationListView *)self isRevealed];
            v39 = 0.0;
            if (!isRevealed)
            {
              [(NCNotificationListView *)self _positionOffsetForRevealHintingForItemAtIndex:numberOfFeaturedLeadingViews, 0.0];
            }

            v40 = v36 + v25 + v39;
            [(NCNotificationListView *)self _bottomSpacingForItemAtIndex:numberOfFeaturedLeadingViews];
            v25 = v40 + v41;
          }

          ++numberOfFeaturedLeadingViews;
        }

        while (v17 != numberOfFeaturedLeadingViews);
      }
    }

    [(NCNotificationListView *)self _footerViewHeight];
    v44 = v43;
    v20 = 0.0;
    if (v44 > 0.0)
    {
      [(NCNotificationListView *)self footerViewVerticalMargin];
      v20 = v44 + v45;
    }
  }

  traitCollection = [(NCNotificationListView *)self traitCollection];
  [traitCollection displayScale];
  UICeilToScale();
  v48 = v47;

  return v48;
}

- (void)subviewDidLayout
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource notificationListDidLayoutSubviews];
  }
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = NCNotificationListView;
  [(NCNotificationListView *)&v4 addSubview:subview];
  if (self->_debugView)
  {
    [(NCNotificationListView *)self bringSubviewToFront:?];
  }
}

- (void)bringSubviewToFront:(id)front
{
  v6.receiver = self;
  v6.super_class = NCNotificationListView;
  frontCopy = front;
  [(NCNotificationListView *)&v6 bringSubviewToFront:frontCopy];
  debugView = self->_debugView;

  if (debugView != frontCopy)
  {
    [(NCNotificationListView *)self bringSubviewToFront:debugView, v6.receiver, v6.super_class];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = NCNotificationListView;
  [(NCNotificationListView *)&v10 setFrame:?];
  if (![(NCNotificationListView *)self hasPerformedFirstLayout])
  {
    [(NCNotificationListView *)self layoutIfNeeded];
  }

  [(NCNotificationListView *)self _updateDebugViewFrame];
  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  dataSource = [_directSuperListView dataSource];
  if (dataSource && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [dataSource notificationListView:_directSuperListView changingFrameOfView:self toFrame:{x, y, width, height}];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NCNotificationListView *)self bounds];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (!CGRectEqualToRect(v15, v16))
  {
    v14.receiver = self;
    v14.super_class = NCNotificationListView;
    [(NCNotificationListView *)&v14 setBounds:x, y, width, height];
    [(NCNotificationListView *)self _updateDebugViewFrame];
    _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
    dataSource = [_directSuperListView dataSource];
    if (dataSource)
    {
      if (objc_opt_respondsToSelector())
      {
        [dataSource notificationListView:_directSuperListView changingBoundsOfView:self toBounds:{x, y, width, height}];
      }
    }
  }
}

- (void)setAdditionalYOffset:(double)offset
{
  if (self->_additionalYOffset != offset)
  {
    self->_additionalYOffset = offset;
    [(NCNotificationListView *)self setAnimatingAdditionalYOffset:fabs(offset) > 0.001];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(NCNotificationListView *)self center];
  if (x != v7 || y != v6)
  {
    v11.receiver = self;
    v11.super_class = NCNotificationListView;
    [(NCNotificationListView *)&v11 setCenter:x, y];
    _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
    dataSource = [_directSuperListView dataSource];
    if (dataSource)
    {
      if (objc_opt_respondsToSelector())
      {
        [dataSource notificationListView:_directSuperListView changingCenterOfView:self toCenter:{x, y}];
      }
    }
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v6.receiver = self;
  v6.super_class = NCNotificationListView;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(NCNotificationListView *)&v6 setTransform:v5];
  [(NCNotificationListView *)self _giveDataSourceUpdatedTransformWhichIncludesSubviewsXTranslation];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = NCNotificationListView;
  [(NCNotificationListView *)&v5 didMoveToSuperview];
  superview = [(NCNotificationListView *)self superview];

  if (superview)
  {
    _getDepth = [(NCNotificationListView *)self _getDepth];
    [(NCNotificationListView *)self setDepth:_getDepth];

    [(NCNotificationListView *)self setCachedSizeValid:0];
    [(NCNotificationListView *)self _invalidateCachedApparentZDepths];
    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
    [NCNotificationListDebugView configureDebugGuidesIfNecessaryForView:self];
  }
}

- (void)setPreferredBottomTransitionTransformer:(unint64_t)transformer
{
  if (self->_preferredBottomTransitionTransformer != transformer)
  {
    self->_preferredBottomTransitionTransformer = transformer;
    traitCollection = [(NCNotificationListView *)self traitCollection];
    [(NCNotificationListView *)self updateBottomViewTransitionStyleWithTraitCollection:traitCollection];
  }
}

- (void)setGroupingViewOverlapCompressionFactor:(double)factor
{
  if (self->_groupingViewOverlapCompressionFactor != factor)
  {
    self->_groupingViewOverlapCompressionFactor = factor;
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)updateBottomViewTransitionStyleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  preferredBottomTransitionTransformer = self->_preferredBottomTransitionTransformer;
  if (preferredBottomTransitionTransformer)
  {
    if (_NCIsNotVerticalSpaceConstrained(collectionCopy) && ([v5 preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7), v7, !IsAccessibilityCategory))
    {
      preferredBottomTransitionTransformer = self->_preferredBottomTransitionTransformer;
    }

    else
    {
      preferredBottomTransitionTransformer = 0;
    }
  }

  self->_currentBottomTransitionTransformer = preferredBottomTransitionTransformer;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allValues = [visibleViews allValues];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __77__NCNotificationListView_updateBottomViewTransitionStyleWithTraitCollection___block_invoke;
  v15 = &unk_278370E08;
  selfCopy = self;
  v17 = v5;
  v11 = v5;
  [allValues enumerateObjectsUsingBlock:&v12];

  if ([(NCNotificationListView *)self hasPerformedFirstLayout:v12])
  {
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

void __77__NCNotificationListView_updateBottomViewTransitionStyleWithTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _listViewForView:v4];
  [v5 updateTraitsIfNeeded];

  v6 = [*(a1 + 32) _listViewForView:v4];

  [v6 updateBottomViewTransitionStyleWithTraitCollection:*(a1 + 40)];
}

- (double)firstItemOffset
{
  if ([(NCNotificationListView *)self count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NCNotificationListView *)self visibleViewAtIndex:v3];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NCNotificationListView *)self _isAlwaysPresentedAtTopOfScreenForView:v4])
      {
        break;
      }

      if (++v3 >= [(NCNotificationListView *)self count])
      {
        goto LABEL_6;
      }
    }

    [v4 frame];
    v11 = v10;

    return v11;
  }

  else
  {
LABEL_6:
    [(NCNotificationListView *)self frame];

    return CGRectGetHeight(*&v5);
  }
}

- (double)stackedItemSizes
{
  v3 = [(NCNotificationListView *)self count];
  v4 = 0.0;
  if (v3 == 2)
  {
    v4 = 1.0;
  }

  if (v3 <= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  [(NCNotificationListView *)self groupedOverlapHeightMultiple];
  v7 = v6;
  [(NCListAnimationSettings *)self->_animationSettings viewOverlap];
  return v5 * (v7 * v8);
}

- (NSNumber)distanceScrolledBeyondBottomOfContent
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  Height = CGRectGetHeight(v14);

  [(NCNotificationListView *)self contentSize];
  v6 = Height - v5;
  [(NCNotificationListView *)self _footerViewHeight];
  v8 = v6 - v7;
  [(NCNotificationListView *)self contentOffset];
  v10 = v8 + v9;
  if (v8 + v9 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    *&v10 = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  }

  return v11;
}

- (id)purposeHashed:(BOOL)hashed
{
  v3 = &OBJC_IVAR___NCNotificationListView__purpose;
  if (hashed)
  {
    v3 = &OBJC_IVAR___NCNotificationListView__purposeWithSensitiveTextHashed;
  }

  return *(&self->super.super.super.super.isa + *v3);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__NCNotificationListView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_27836F560;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationListView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationListView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setUseDebugDescription:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__NCNotificationListView_debugDescriptionWithMultilinePrefix___block_invoke;
  v20[3] = &unk_27836F560;
  v20[4] = self;
  v7 = v6;
  v21 = v7;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v20];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __62__NCNotificationListView_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v17 = &unk_27836F560;
  selfCopy = self;
  v19 = v7;
  v8 = v7;
  [v8 appendBodySectionWithName:@"Data" multilinePrefix:prefixCopy block:&v14];
  v9 = [(NCNotificationListView *)self subviews:v14];
  v10 = [v9 bs_compactMap:&__block_literal_global_11];

  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_62];

  [v8 appendArraySection:v11 withName:@"Subview" multilinePrefix:prefixCopy skipIfEmpty:1];
  build = [v8 build];

  return build;
}

id __62__NCNotificationListView_debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) depth];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) depth];
    v5 = [v3 appendUnsignedInteger:objc_msgSend(v4 withName:{"unsignedIntegerValue"), @"ListDepth"}];
  }

  else
  {
    [*(a1 + 40) appendString:@"<nil>" withName:@"ListDepth"];
  }

  v6 = [*(a1 + 32) index];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [*(a1 + 32) index];
    v9 = [v7 appendUnsignedInteger:objc_msgSend(v8 withName:{"unsignedIntegerValue"), @"Index"}];
  }

  else
  {
    [*(a1 + 40) appendString:@"<nil>" withName:@"Index"];
  }

  return [*(a1 + 40) appendInteger:objc_msgSend(*(a1 + 32) withName:{"count"), @"ItemCount"}];
}

void *__62__NCNotificationListView_debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __62__NCNotificationListView_debugDescriptionWithMultilinePrefix___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 frame];
  v7 = v6;
  [v5 frame];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    [v4 frame];
    v11 = v10;
    [v5 frame];
    if (v11 >= v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (id)_getDepth
{
  superview = [(NCNotificationListView *)self superview];
  if (superview)
  {
    v3 = superview;
    v4 = 0;
    do
    {
      objc_opt_class();
      v4 += objc_opt_isKindOfClass() & 1;
      superview2 = [v3 superview];

      v3 = superview2;
    }

    while (superview2);
  }

  else
  {
    v4 = 0;
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithUnsignedInteger:v4];
}

- (void)_appendBaseDescriptionToBuilder:(id)builder
{
  purpose = self->_purpose;
  builderCopy = builder;
  [builderCopy appendString:purpose withName:@"Purpose"];
  [builderCopy appendString:self->_model withName:@"Model"];
  [(NCNotificationListView *)self _visibleRect];
  v6 = [builderCopy appendRect:@"VisibleRect" withName:?];
  [(NCNotificationListView *)self frame];
  v7 = [builderCopy appendRect:@"Frame" withName:?];
  [(NCNotificationListView *)self contentSize];
  v8 = [builderCopy appendSize:@"ContentSize" withName:?];
  [(NCNotificationListView *)self contentOffset];
  v9 = [builderCopy appendPoint:@"ContentOffset" withName:?];
  v10 = [builderCopy appendBool:-[NCNotificationListView isHidden](self withName:{"isHidden"), @"IsHidden"}];
  [(NCNotificationListView *)self alpha];
  v11 = [builderCopy appendFloat:@"Alpha" withName:?];
  [(NCNotificationListView *)self transform];
  v12 = NSStringFromCGAffineTransform(&v13);
  [builderCopy appendString:v12 withName:@"Transform"];
}

- (BOOL)_isViewWithinVisibleRectForHeight:(double)height layoutOffset:(double)offset
{
  [(NCNotificationListView *)self visibleRect];
  MinY = CGRectGetMinY(v12);
  [(NCNotificationListView *)self visibleRect];
  Height = CGRectGetHeight(v13);
  [(NCListAnimationSettings *)self->_animationSettings viewVisibilityMargin];
  if (height + offset < MinY - v9)
  {
    return 0;
  }

  [(NCListAnimationSettings *)self->_animationSettings viewVisibilityMargin];
  return MinY + Height + v11 > offset;
}

- (double)_targetContentHeightForProposedHeight:(double)height
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource targetContentHeightForNotificationList:self];
    height = v6;
  }

  return height;
}

- (void)_adjustContentSizeHeightIfNecessaryForUpdatedHeight:(double)height
{
  [(NCNotificationListView *)self _targetContentHeightForProposedHeight:height];
  v5 = v4;
  [(NCNotificationListView *)self contentSize];
  if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    [(NCNotificationListView *)self setCachedSizeValid:0];
    if ([(NCNotificationListView *)self isScrollEnabled])
    {
      if (([(NCNotificationListView *)self isTracking]& 1) == 0 && ([(NCNotificationListView *)self isDecelerating]& 1) == 0)
      {
        [(NCNotificationListView *)self bounds];
        v7 = v5 - v6;
        [(NCNotificationListView *)self contentInset];
        v9 = v8 + v7;
        [(NCNotificationListView *)self contentOffset];
        if (v10 >= v9)
        {
          [(NCNotificationListView *)self contentInset];
          v12 = -v11;
          if (v9 <= v12)
          {
            v9 = v12;
          }

          if ([(NCNotificationListView *)self useAnimatorForHeightChangeAnimation])
          {
            if ([(NCNotificationListView *)self isScrollAnimating])
            {
              _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __78__NCNotificationListView__adjustContentSizeHeightIfNecessaryForUpdatedHeight___block_invoke;
              v17[3] = &unk_27836FDD0;
              v17[4] = self;
              *&v17[5] = v9;
              [_currentAnimator animateByRetargetingType:5 animations:v17 completion:&__block_literal_global_97];
            }

            else
            {
              v16[0] = MEMORY[0x277D85DD0];
              v16[1] = 3221225472;
              v16[2] = __78__NCNotificationListView__adjustContentSizeHeightIfNecessaryForUpdatedHeight___block_invoke_3;
              v16[3] = &unk_27836FDD0;
              v16[4] = self;
              *&v16[5] = v9;
              [(NCNotificationListView *)self _performViewAnimationBlock:v16 completionBlock:&__block_literal_global_99 type:5];
            }
          }

          else
          {
            [(NCNotificationListView *)self _setContentOffsetWithDecelerationAnimation:0.0, v9];
          }

          superview = [(NCNotificationListView *)self superview];
          [superview setNeedsLayout];
        }
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__NCNotificationListView__adjustContentSizeHeightIfNecessaryForUpdatedHeight___block_invoke_5;
    v15[3] = &unk_27836FDD0;
    v15[4] = self;
    *&v15[5] = v5;
    [(NCNotificationListView *)self _performViewAnimationBlock:v15 completionBlock:0 type:0];
    [(NCNotificationListView *)self _updateSuperViewLayoutForSizeChangeIfNeeded];
  }
}

uint64_t __78__NCNotificationListView__adjustContentSizeHeightIfNecessaryForUpdatedHeight___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 frame];
  Width = CGRectGetWidth(v7);
  v4 = *(a1 + 40);

  return [v2 setContentSize:{Width, v4}];
}

- (void)_updateSuperViewLayoutForSizeChangeIfNeeded
{
  traitCollection = [(NCNotificationListView *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (_backlightLuminance == 2)
  {
    _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
    if ([_directSuperListView isDecelerating])
    {
      [_directSuperListView isPerformingScrollingAnimation];
    }

    else
    {
      isDragging = [_directSuperListView isDragging];
      if (([_directSuperListView isPerformingScrollingAnimation] & 1) == 0 && (isDragging & 1) == 0)
      {
        superview = [(NCNotificationListView *)self superview];
        [superview setNeedsLayout];
      }
    }
  }

  else
  {
    _directSuperListView = [(NCNotificationListView *)self superview];
    [_directSuperListView setNeedsLayout];
  }
}

- (void)setContentSize:(CGSize)size
{
  v3 = fmax(size.height, self->_minimumContentHeight);
  v4.receiver = self;
  v4.super_class = NCNotificationListView;
  [(NCNotificationListView *)&v4 setContentSize:size.width, v3];
}

void __55__NCNotificationListView__layoutOverlayViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) overlayView];
  [v2 setAlpha:*(a1 + 40)];

  v3 = [*(a1 + 32) overlayView];
  [v3 setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

uint64_t __55__NCNotificationListView__layoutOverlayViewIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isGrouped];
  if (result)
  {
    [*(*(a1 + 32) + 2584) removeFromSuperview];
    v3 = *(a1 + 32);

    return [v3 setOverlayView:0];
  }

  return result;
}

void __53__NCNotificationListView__layoutHoverViewIfNecessary__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hoverView];
  [v1 setAlpha:1.0];
}

uint64_t __53__NCNotificationListView__layoutHoverViewIfNecessary__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) hoverView];

  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v7 = [*(a1 + 40) isHoverViewHidden];
    v8 = 1.0;
    if (v7)
    {
      v8 = 0.0;
    }

    return [v4 setAlpha:v8];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 removeFromSuperview];
  }
}

- (void)_layoutHeaderViewIfNecessaryAtLayoutOffset:(double)offset
{
  [(NCNotificationListView *)self _headerViewHeight];
  v6 = v5;
  if ([NCNotificationListView _isViewWithinVisibleRectForHeight:"_isViewWithinVisibleRectForHeight:layoutOffset:" layoutOffset:?])
  {
    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    v8 = v7;
    headerView = self->_headerView;
    if (headerView)
    {
      v10 = headerView;
LABEL_11:
      [(NCNotificationListView *)self sendSubviewToBack:v10];
      if ([(NCNotificationListView *)self isPerformingHeaderReloadAnimation])
      {
        [(UIView *)v10 setAlpha:0.0];
      }

      if ([(NCNotificationListView *)self supportsHeaderViewRollUnder])
      {
        v21 = [(NCNotificationListView *)self _shouldRollUnderView:v10 withHeight:v6 layoutOffset:offset];
      }

      else
      {
        v21 = 0;
      }

      [(NCNotificationListView *)self horizontalInsetMargin];
      v23 = v22;
      v24 = 1.0;
      if (![(NCNotificationListView *)self isRevealed])
      {
        [(NCListAnimationSettings *)self->_animationSettings headerViewRevealAlphaPercentage];
        v26 = v25;
        [(NCNotificationListView *)self revealPercentage];
        v24 = v26 * v27;
      }

      v28 = *(MEMORY[0x277CBF2C0] + 16);
      *&v56.a = *MEMORY[0x277CBF2C0];
      *&v56.c = v28;
      *&v56.tx = *(MEMORY[0x277CBF2C0] + 32);
      if ([(NCNotificationListView *)self count])
      {
        visibleViews = [(NCNotificationListView *)self visibleViews];
        v30 = [visibleViews objectForKey:&unk_283015440];

        dataSource = [(NCNotificationListView *)self dataSource];
        [dataSource notificationListView:self heightForItemAtIndex:0 withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v8}];
        v33 = v32;

        [(NCNotificationListView *)self layoutOffsetForViewAtIndex:0];
        v35 = v34;
        if ([(NCNotificationListView *)self supportsHeaderViewRollUnder]&& v30 && [(NCNotificationListView *)self _shouldRollUnderView:v30 withHeight:v33 layoutOffset:v35])
        {
          [(NCListAnimationSettings *)self->_animationSettings rollUnderLimitHeightMax];
          if (v33 >= v36)
          {
            v33 = v36;
          }

          [(NCNotificationListView *)self _visibleRect];
          if (v6 + offset > CGRectGetMaxY(v58))
          {
            v24 = 0.0;
            [(UIView *)v10 setAlpha:0.0];
          }

          [(NCNotificationListView *)self _alphaForRollUnderForView:v10 withHeight:v6 layoutOffset:offset];
          v24 = v24 * v37;
          memset(&v55, 0, sizeof(v55));
          [(NCNotificationListView *)self _transformForRollUnderForView:v30 withHeight:v33 layoutOffset:v35];
          CGAffineTransformMakeTranslation(&v56, 0.0, fmin(v35 + 0.0 - (v6 + offset), 0.0));
        }

        else if (v21)
        {
          [(NCNotificationListView *)self _alphaForRollUnderForView:v10 withHeight:v6 layoutOffset:offset];
          v24 = v24 * v38;
          [(NCNotificationListView *)self _transformForRollUnderForView:v10 withHeight:v6 layoutOffset:offset];
        }

        _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __69__NCNotificationListView__layoutHeaderViewIfNecessaryAtLayoutOffset___block_invoke;
        v52[3] = &unk_278370EB8;
        v52[4] = self;
        v53 = v10;
        v54 = v56;
        [_currentAnimator performAnimationType:0 withoutAnimation:v52];
      }

      else if (v21)
      {
        [(NCNotificationListView *)self _alphaForRollUnderForView:v10 withHeight:v6 layoutOffset:offset];
        v24 = v24 * v40;
        [(NCNotificationListView *)self _transformForRollUnderForView:v10 withHeight:v6 layoutOffset:offset];
      }

      v55 = v56;
      if ([(NCNotificationListView *)self _shouldUpdateTransformedView:v10 toFrame:&v55 alpha:v23 transform:offset, v8, v6, v24])
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __69__NCNotificationListView__layoutHeaderViewIfNecessaryAtLayoutOffset___block_invoke_2;
        aBlock[3] = &unk_278370EE0;
        aBlock[4] = self;
        v45 = v10;
        v46 = v23;
        offsetCopy = offset;
        v48 = v8;
        v49 = v6;
        v50 = v56;
        v51 = v24;
        v41 = _Block_copy(aBlock);
        if ([(NCNotificationListView *)self isPerformingGroupingAnimation]&& ![(NCNotificationListView *)self _isAnimationStyleDissolve]|| [(NCNotificationListView *)self isPerformingRevealAnimation])
        {
          [(NCNotificationListView *)self setPerformingHeaderGroupingAnimation:[(NCNotificationListView *)self isPerformingGroupingAnimation]];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __69__NCNotificationListView__layoutHeaderViewIfNecessaryAtLayoutOffset___block_invoke_3;
          v43[3] = &unk_27836F6A8;
          v43[4] = self;
          [(NCNotificationListView *)self _performViewAnimationBlock:v41 completionBlock:v43 type:0];
        }

        else
        {
          _currentAnimator2 = [(NCNotificationListView *)self _currentAnimator];
          [_currentAnimator2 performAnimationType:0 withoutAnimation:v41];
        }
      }

      return;
    }

    _headerViewFromDataSource = [(NCNotificationListView *)self _headerViewFromDataSource];
    v14 = self->_headerView;
    self->_headerView = _headerViewFromDataSource;

    [(NCNotificationListView *)self _headerViewHeight];
    v6 = v15;
    [(NCNotificationListView *)self horizontalInsetMargin];
    v17 = v16;
    isPerformingGroupingAnimation = [(NCNotificationListView *)self isPerformingGroupingAnimation];
    v19 = 0.0;
    if (isPerformingGroupingAnimation)
    {
      [(NCListAnimationSettings *)self->_animationSettings headerViewInitialOffsetHeightPercentage];
      v19 = v6 * v20;
    }

    [(NCNotificationListView *)self _updateTransformedView:self->_headerView toFrame:v17, v19 + offset, v8, v6];
    [(UIView *)self->_headerView setAlpha:0.0];
    [(NCNotificationListView *)self addSubview:self->_headerView];
    v10 = self->_headerView;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = self->_headerView;
    if (v11)
    {
      [(UIView *)v11 removeFromSuperview];
      [(NCNotificationListView *)self _recycleViewIfNecessary:self->_headerView];
      v12 = self->_headerView;
      self->_headerView = 0;
    }
  }
}

uint64_t __69__NCNotificationListView__layoutHeaderViewIfNecessaryAtLayoutOffset___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isPerformingBottomMarginAdjustmentAnimation] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isPerformingRevealAnimation") & 1) == 0 && (objc_msgSend(*(a1 + 32), "isPerformingGroupingAnimation") & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 64);
    v5[0] = *(a1 + 48);
    v5[1] = v3;
    v5[2] = *(a1 + 80);
    [v2 setTransform:v5];
  }

  return [*(a1 + 32) _updateBlurFilterForHeaderView:*(a1 + 40) translation:fabs(*(a1 + 88))];
}

uint64_t __69__NCNotificationListView__layoutHeaderViewIfNecessaryAtLayoutOffset___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 96);
  v10[0] = *(a1 + 80);
  v10[1] = v8;
  v10[2] = *(a1 + 112);
  [v2 _updateTransformedView:v3 toFrame:v10 withTransform:{v4, v5, v6, v7}];
  return [*(a1 + 40) setAlpha:*(a1 + 128)];
}

- (void)_updateBlurFilterForHeaderView:(id)view translation:(double)translation
{
  v17[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_currentBottomTransitionTransformer == 1 && ((v7 = [(NCNotificationListView *)self supportsHeaderViewRollUnder], translation >= 0.0) ? (v8 = !v7) : (v8 = 1), !v8 && [(NCNotificationListView *)self count]))
  {
    [(NCListAnimationSettings *)self->_animationSettings headerViewRevealBlurTranslationDistance];
    v10 = translation / v9;
    [(NCListAnimationSettings *)self->_animationSettings headerViewRevealBlurRadiusMax];
    v12 = v10 * v11;
    layer2 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [layer2 setName:@"gaussianBlur"];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [layer2 setValue:v14 forKey:@"inputRadius"];

    layer = [viewCopy layer];
    v17[0] = layer2;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [layer setFilters:v16];
  }

  else
  {
    layer2 = [viewCopy layer];
    [layer2 setFilters:MEMORY[0x277CBEBF8]];
  }
}

- (void)_layoutFooterViewIfNecessaryAtLayoutOffset:(double)offset
{
  [(NCNotificationListView *)self _footerViewHeight];
  v6 = v5;
  v7 = [NCNotificationListView _isViewWithinVisibleRectForHeight:"_isViewWithinVisibleRectForHeight:layoutOffset:" layoutOffset:?];
  footerView = self->_footerView;
  if (v7)
  {
    if (footerView)
    {
      v9 = footerView;
    }

    else
    {
      _footerViewFromDataSource = [(NCNotificationListView *)self _footerViewFromDataSource];
      v12 = self->_footerView;
      self->_footerView = _footerViewFromDataSource;

      [(NCNotificationListView *)self addSubview:self->_footerView];
      v9 = self->_footerView;
      if (!v9)
      {
        return;
      }
    }

    [(NCNotificationListView *)self sendSubviewToBack:v9];
    [(NCNotificationListView *)self horizontalInsetMargin];
    v14 = v13;
    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    v16 = v15;
    if ([(NCNotificationListView *)self _shouldRollUnderView:v9 withHeight:v6 layoutOffset:offset])
    {
      [(NCNotificationListView *)self _alphaForRollUnderForView:v9 withHeight:v6 layoutOffset:offset];
      v18 = v17;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      [(NCNotificationListView *)self _transformForRollUnderForView:v9 withHeight:v6 layoutOffset:offset];
    }

    else
    {
      v19 = *(MEMORY[0x277CBF2C0] + 16);
      v35 = *MEMORY[0x277CBF2C0];
      v36 = v19;
      v37 = *(MEMORY[0x277CBF2C0] + 32);
      v18 = 1.0;
    }

    v20 = self->_footerView;
    v32 = v35;
    v33 = v36;
    v34 = v37;
    if ([(NCNotificationListView *)self _shouldUpdateTransformedView:v20 toFrame:&v32 alpha:v14 transform:offset, v16, v6, v18])
    {
      if ([(NCNotificationListView *)self isPerformingVisibleRectAdjustment])
      {
        v21 = self->_footerView;
        v32 = v35;
        v33 = v36;
        v34 = v37;
        [(NCNotificationListView *)self _updateTransformedView:v21 toFrame:&v32 withTransform:v14, offset, v16, v6];
        [(UIView *)v9 setAlpha:v18];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __69__NCNotificationListView__layoutFooterViewIfNecessaryAtLayoutOffset___block_invoke;
        v22[3] = &unk_278370EE0;
        v22[4] = self;
        v23 = v9;
        v24 = v14;
        offsetCopy = offset;
        v26 = v16;
        v27 = v6;
        v28 = v35;
        v29 = v36;
        v30 = v37;
        v31 = v18;
        [(NCNotificationListView *)self _performViewAnimationBlock:v22 completionBlock:0 type:0];
      }
    }
  }

  else if (footerView)
  {
    [(UIView *)footerView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_footerView];
    v10 = self->_footerView;
    self->_footerView = 0;
  }
}

uint64_t __69__NCNotificationListView__layoutFooterViewIfNecessaryAtLayoutOffset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 96);
  v10[0] = *(a1 + 80);
  v10[1] = v8;
  v10[2] = *(a1 + 112);
  [v2 _updateTransformedView:v3 toFrame:v10 withTransform:{v4, v5, v6, v7}];
  return [*(a1 + 40) setAlpha:*(a1 + 128)];
}

- (BOOL)_isAlwaysPresentedAtTopOfScreenForView:(id)view
{
  viewCopy = view;
  purpose = [viewCopy purpose];
  if ([purpose isEqualToString:@"clock"])
  {
    v5 = 1;
  }

  else
  {
    purpose2 = [viewCopy purpose];
    v5 = [purpose2 isEqualToString:@"AdjunctTopSticky"];
  }

  return v5;
}

- (double)_layoutViewIfNecessaryAtIndex:(unint64_t)index layoutOffset:(double)offset startingLayoutOffset:(double)layoutOffset
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v10 = [(NCNotificationListView *)self _isFeaturedLeadingViewAtIndex:index];
  if (v10)
  {
    [(NCNotificationListView *)self _widthForFeaturedLeadingView];
    v12 = v11;
    [(NCNotificationListView *)self _heightForFeaturedLeadingView];
  }

  else
  {
    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    v12 = v14;
    [dataSource notificationListView:self heightForItemAtIndex:index withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v14}];
  }

  v15 = v13;
  v16 = [NCNotificationListView _isViewWithinVisibleRectForHeight:"_isViewWithinVisibleRectForHeight:layoutOffset:" layoutOffset:?];
  v17 = [(NCNotificationListView *)self visibleViewAtIndex:index];
  v18 = v17;
  if (v16)
  {
    v124 = v10;
    v19 = objc_opt_class();
    v20 = v18;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v33 = v21;

    v34 = 0.0;
    v123 = dataSource;
    if (v33)
    {
      if ([(NCNotificationListView *)self _isAlwaysPresentedAtTopOfScreenForView:v33])
      {
        [v33 setUserInteractionEnabled:0];
      }

      else
      {
        [(NCNotificationListView *)self additionalYOffset];
        v34 = v35;
      }
    }

    v36 = v34 + offset;
    _isAnimationStyleDissolve = [(NCNotificationListView *)self _isAnimationStyleDissolve];
    v38 = [(NCNotificationListView *)self _hasBottomTransitionTransformerForView:v20];
    v39 = MEMORY[0x277CBF2C0];
    if (v20)
    {
      LOBYTE(v122) = v38;
      v18 = v20;
    }

    else
    {
      v40 = [(NCNotificationListView *)self _viewForItemAtIndex:index];
      v122 = [(NCNotificationListView *)self _hasBottomTransitionTransformerForView:v40];
      v41 = objc_opt_class();
      v18 = v40;
      if (v41)
      {
        if (objc_opt_isKindOfClass())
        {
          v42 = v18;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v45 = v42;

      [(NCNotificationListView *)self _setHiddenBelowStackForView:v18 hiddenBelowStack:0];
      [v123 notificationListView:self heightForItemAtIndex:index withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v12}];
      v15 = v46;
      [(NCNotificationListView *)self _setVisibleView:v18 atIndex:index];
      [(NCNotificationListView *)self addSubview:v18];
      if ([(NCNotificationListView *)self isPerformingGroupingAnimation])
      {
        _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke;
        v155[3] = &unk_27836F6A8;
        v156 = v18;
        [_currentAnimator performAnimationType:0 withoutAnimation:v155];
      }

      isRevealed = [(NCNotificationListView *)self isRevealed];
      v49 = 0.0;
      if (isRevealed)
      {
        v49 = 1.0;
      }

      [(NCNotificationListView *)self _setRevealAlphaForView:v18 desiredAlpha:v49];
      [(NCNotificationListView *)self horizontalInsetMargin];
      v51 = v50;
      if (v10)
      {
        _shouldReverseLayoutDirection = [(NCNotificationListView *)self _shouldReverseLayoutDirection];
        indexCopy = index;
        if (_shouldReverseLayoutDirection)
        {
          indexCopy = [(NCNotificationListView *)self numberOfFeaturedLeadingViews]+ ~index;
        }

        v54 = indexCopy;
        [(NCListAnimationSettings *)self->_animationSettings featuredLeadingViewSpacing];
        v51 = v51 + v54 * (v12 + v55);
      }

      v119 = v39[1];
      v121 = *v39;
      *&v154.a = *v39;
      *&v154.c = v119;
      v117 = v39[2];
      *&v154.tx = v117;
      if (index && [(NCNotificationListView *)self isPerformingGroupingAnimation])
      {
        v56 = 1.0;
        layoutOffsetCopy = v36;
        if (!_isAnimationStyleDissolve)
        {
          [v123 notificationListView:self heightForItemAtIndex:0 withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v12}];
          [(NCNotificationListView *)self _scaleTransformForGroupingAnimationForViewAtIndex:index leadingViewHeight:?];
          v56 = 0.0;
          layoutOffsetCopy = layoutOffset;
        }
      }

      else
      {
        v56 = 1.0;
        layoutOffsetCopy = v36;
        if (!_isAnimationStyleDissolve)
        {
          if ([(NCNotificationListView *)self isSubviewPerformingGroupingAnimation]&& ([(NCNotificationListView *)self visibleRect], v36 < CGRectGetMaxY(v160)))
          {
            [(NCNotificationListView *)self visibleRect];
            MaxY = CGRectGetMaxY(v161);
            v59 = index * 100.0;
            v56 = 0.0;
            if (v122)
            {
              v59 = 0.0;
            }

            layoutOffsetCopy = v59 + MaxY;
            if (v122)
            {
              [(NCListAnimationSettings *)self->_animationSettings rollUnderScaleMinimum];
              v61 = v60;
              [(NCListAnimationSettings *)self->_animationSettings rollUnderScaleMinimum];
              CGAffineTransformMakeScale(&v153, v61, v62);
              *&v154.a = *&v153.a;
              *&v154.c = *&v153.c;
              v63 = *&v153.tx;
            }

            else
            {
              *&v154.a = v121;
              *&v154.c = v119;
              v63 = v117;
            }

            *&v154.tx = v63;
          }

          else
          {
            v56 = 0.0;
            if (v122 && ([(NCNotificationListView *)self _isAnimatingForParentNotificationListView]|| [(NCNotificationListView *)self isPerformingRevealAnimation]|| [(NCNotificationListView *)self isPerformingRevealTransitionAnimation]))
            {
              [(NCNotificationListView *)self _transformForRollUnderForView:v18 withHeight:v15 layoutOffset:v36, v117, v119];
              v154 = v153;
            }

            layoutOffsetCopy = v36;
          }
        }
      }

      *&v153.a = v121;
      *&v153.c = v119;
      *&v153.tx = v117;
      [v18 setTransform:{&v153, v117, v119}];
      [v18 setFrame:{v51, layoutOffsetCopy, v12, v15}];
      v153 = v154;
      [v18 setTransform:&v153];
      [v18 setAlpha:v56];
      *&v153.a = v121;
      *&v153.c = v120;
      *&v153.tx = v118;
      [(NCNotificationListView *)self _configureStackDimmingForGroupedView:v18 transform:&v153];
      v33 = v45;
    }

    if (!v10)
    {
      [(NCNotificationListView *)self sendSubviewToBack:v18];
    }

    [(NCNotificationListView *)self _setHiddenBelowStackForView:v18 hiddenBelowStack:0];
    [(NCNotificationListView *)self _setContentHiddenForView:v18 contentHidden:0];
    if ([(NCNotificationListView *)self isReactiveLayout])
    {
      v64 = v39[1];
      *&v154.a = *v39;
      *&v154.c = v64;
      *&v154.tx = v39[2];
      [v18 setTransform:&v154];
    }

    if (v10)
    {
      [(NCNotificationListView *)self _heightForFeaturedLeadingView];
      v15 = v65;
      [(NCNotificationListView *)self horizontalInsetMargin];
      v67 = v66;
      _shouldReverseLayoutDirection2 = [(NCNotificationListView *)self _shouldReverseLayoutDirection];
      indexCopy2 = index;
      if (_shouldReverseLayoutDirection2)
      {
        indexCopy2 = [(NCNotificationListView *)self numberOfFeaturedLeadingViews]+ ~index;
      }

      v70 = indexCopy2;
      [(NCListAnimationSettings *)self->_animationSettings featuredLeadingViewSpacing];
      v72 = (v12 + v71) * v70;
    }

    else
    {
      [(NCNotificationListView *)self horizontalInsetMargin];
      v67 = v73;
      v72 = 0.0;
    }

    isRevealed2 = [(NCNotificationListView *)self isRevealed];
    v75 = 0.0;
    v76 = 0.0;
    if (!isRevealed2)
    {
      [(NCNotificationListView *)self _positionOffsetForRevealHintingForItemAtIndex:index, 0.0];
    }

    v77 = v67 + v72;
    v78 = v36 + v76;
    [(NCNotificationListView *)self interactionTranslationPercentage];
    v80 = v79;
    [(NCNotificationListView *)self interactionTranslationFocalPointY];
    v82 = -(v80 * (v81 - v36));
    [(NCListAnimationSettings *)self->_animationSettings interactionTranslationCollapseVerticalOffsetFactor];
    v84 = v78 + v82 * v83;
    if (![(NCNotificationListView *)self isRevealed])
    {
      if ([(NCNotificationListView *)self isPerformingRevealAnimation])
      {
        v75 = 150.0;
      }

      else
      {
        v75 = 0.0;
      }
    }

    v137.a = v77;
    v137.b = v84 + v75;
    v137.c = v12;
    v137.d = v15;
    isRevealed3 = [(NCNotificationListView *)self isRevealed];
    v86 = 1.0;
    if (!isRevealed3)
    {
      [(NCNotificationListView *)self revealPercentage];
      v86 = v87 / (index * 0.5 + 1.0);
    }

    t1.a = v86;
    v88 = v39[1];
    *&v154.a = *v39;
    *&v154.c = v88;
    *&v154.tx = v39[2];
    v89 = [(NCNotificationListView *)self _isPerformingRollUnderListLayoutForView:v18 atIndex:index viewHeight:&v154 atLayoutOffset:&t1 targetTransform:&v137 targetAlpha:v15 viewFrame:v36];
    [(NCNotificationListView *)self _updateBottomMarginAdjustmentAnimationForView:v18 isPerformingRollUnderLayout:v89];
    [(NCNotificationListView *)self _updateLayoutParametersForHiddenGroupListViewAnimationForView:v18 targetTransform:&v154 targetAlpha:&t1];
    if ([(NCNotificationListView *)self isPerformingGroupingAnimation]&& _isAnimationStyleDissolve)
    {
      _currentAnimator2 = [(NCNotificationListView *)self _currentAnimator];
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_2;
      v148[3] = &unk_278370F08;
      v148[4] = self;
      v149 = v18;
      v150 = *&v137.a;
      v151 = *&v137.c;
      v152 = v20 != 0;
      [_currentAnimator2 performAnimationType:0 withoutAnimation:v148];
    }

    ty = v154.ty;
    animationSettings = [(NCNotificationListView *)self animationSettings];
    [animationSettings animationYTranslationThresholdForRollUnderGlassTransition];
    v94 = v93;

    if (ty < v94 && v89)
    {
      goto LABEL_86;
    }

    coplanarViewIndices = [v33 coplanarViewIndices];
    if ([coplanarViewIndices count])
    {
    }

    else
    {
      nonCoplanarViewIndices = [v33 nonCoplanarViewIndices];
      v109 = [nonCoplanarViewIndices count];

      if (v109)
      {
LABEL_86:
        nonCoplanarViewIndices2 = [(NCNotificationListView *)self nonCoplanarViewIndices];
        goto LABEL_90;
      }
    }

    nonCoplanarViewIndices2 = [(NCNotificationListView *)self coplanarViewIndices];
LABEL_90:
    v98 = nonCoplanarViewIndices2;
    [nonCoplanarViewIndices2 addIndex:index];

    v153 = v154;
    if (![(NCNotificationListView *)self _shouldUpdateTransformedView:v18 toFrame:&v153 alpha:v137.a transform:v137.b, v137.c, v137.d, t1.a])
    {
LABEL_108:
      insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
      v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      v115 = [insertedViewIndices containsObject:v114];

      dataSource = v123;
      if (v115)
      {
        [(NCNotificationListView *)self _performInsertionAnimationForView:v18];
      }

      if (!v124 || [(NCNotificationListView *)self numberOfFeaturedLeadingViews]- 1 <= index)
      {
        v36 = v36 + v15;
      }

      offset = v36 - v34;

      goto LABEL_114;
    }

    v99 = [(NCNotificationListView *)self _shouldAnimateListLayoutForView:v18 atIndex:index isExistingView:v20 != 0 isPerformingRollUnderLayout:v89 shouldUpdateTransformedView:1];
    if ([(NCNotificationListView *)self isPerformingContentRevealAnimation])
    {
      if (!index)
      {
LABEL_96:
        v101 = 1;
        goto LABEL_98;
      }
    }

    else
    {
      isPerformingGroupingAnimation = [(NCNotificationListView *)self isPerformingGroupingAnimation];
      if (!index && isPerformingGroupingAnimation)
      {
        goto LABEL_96;
      }
    }

    reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
    v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v101 = [reloadedViewIndices containsObject:v103];

LABEL_98:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_3;
    aBlock[3] = &unk_278370F30;
    aBlock[4] = self;
    v104 = v18;
    v142 = v104;
    v143 = *&v137.a;
    v144 = *&v137.c;
    v145 = v154;
    a = t1.a;
    v147 = v101;
    v105 = _Block_copy(aBlock);
    if (v99)
    {
      if (!(v122 | ![(NCNotificationListView *)self isPerformingRevealAnimation]))
      {
        [(NCNotificationListView *)self _revealAnimationDelayForObjectAtIndex:index];
        v111 = dispatch_time(0, (v110 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_4;
        block[3] = &unk_278370B58;
        block[4] = self;
        v139 = v104;
        v140 = v105;
        dispatch_after(v111, MEMORY[0x277D85CD0], block);

        goto LABEL_107;
      }
    }

    else
    {
      viewsPerformingAnimation = [(NCNotificationListView *)self viewsPerformingAnimation];
      v107 = [viewsPerformingAnimation containsObject:v104];

      if (!v107)
      {
        _currentAnimator3 = [(NCNotificationListView *)self _currentAnimator];
        [_currentAnimator3 performAnimationType:0 withoutAnimation:v105];

        goto LABEL_107;
      }
    }

    [(NCNotificationListView *)self _performRetargetableAnimationForView:v104 type:0 animationBlock:v105 completionBlock:0];
LABEL_107:

    goto LABEL_108;
  }

  if (v17)
  {
    v22 = [(NCNotificationListView *)self _listViewForView:v17];
    [(NCNotificationListView *)self visibleRect];
    if (CGRectGetMinY(v157) < offset && (-[NCNotificationListView _isAnimatingForParentNotificationListView](self, "_isAnimatingForParentNotificationListView") || [v22 isGrouped] && (objc_msgSend(v18, "center"), (BSFloatApproximatelyEqualToFloat() & 1) == 0)))
    {
      [(NCNotificationListView *)self sendSubviewToBack:v18];
      [(NCNotificationListView *)self horizontalInsetMargin];
      v24 = v23;
      offsetCopy = offset;
      if ([(NCNotificationListView *)self _hasBottomTransitionTransformerForView:v18])
      {
        [(NCNotificationListView *)self visibleRect];
        v26 = CGRectGetMaxY(v158);
        [(NCListAnimationSettings *)self->_animationSettings notRevealedPlacementOffset];
        offsetCopy = v26 + v27;
      }

      [(NCNotificationListView *)self _visibleRect];
      v28 = offsetCopy - CGRectGetMaxY(v159);
      [(NCListAnimationSettings *)self->_animationSettings rollUnderNotVisibleTranslation];
      memset(&v154, 0, sizeof(v154));
      CGAffineTransformMakeTranslation(&v154, 0.0, v28 - v29);
      memset(&v153, 0, sizeof(v153));
      [(NCListAnimationSettings *)self->_animationSettings rollUnderScaleMinimum];
      v31 = v30;
      [(NCListAnimationSettings *)self->_animationSettings rollUnderScaleMinimum];
      CGAffineTransformMakeScale(&v153, v31, v32);
      t1 = v153;
      memset(&v137, 0, sizeof(v137));
      t2 = v154;
      CGAffineTransformConcat(&v137, &t1, &t2);
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_5;
      v128[3] = &unk_278370F58;
      v128[4] = self;
      v129 = v18;
      v130 = v24;
      v131 = offsetCopy;
      v132 = v12;
      v133 = v15;
      v134 = v137;
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_6;
      v125[3] = &unk_278370F80;
      v125[4] = self;
      v126 = v129;
      indexCopy3 = index;
      [(NCNotificationListView *)self _performRetargetableAnimationForView:v126 type:0 animationBlock:v128 completionBlock:v125];
    }

    else
    {
      viewsPerformingAnimation2 = [(NCNotificationListView *)self viewsPerformingAnimation];
      v44 = [viewsPerformingAnimation2 containsObject:v18];

      if ((v44 & 1) == 0)
      {
        [(NCNotificationListView *)self _removeStoredVisibleViewAtIndex:index];
      }
    }
  }

  if (![(NCNotificationListView *)self _isShowingFeaturedLeadingViews]|| [(NCNotificationListView *)self numberOfFeaturedLeadingViews]- 1 <= index)
  {
    offset = v15 + offset;
  }

LABEL_114:

  return offset;
}

uint64_t __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 traitCollection];
  [v4 displayScale];
  UIRectRoundToScale();
  [v2 _updateTransformedView:v3 toFrame:?];

  result = [*(a1 + 40) setAlpha:0.0];
  if ((*(a1 + 80) & 1) == 0)
  {
    v6 = *(a1 + 40);

    return [v6 layoutIfNeeded];
  }

  return result;
}

uint64_t __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v8;
  v15 = *(a1 + 112);
  [v2 _updateTransformedView:v3 toFrame:&v13 withTransform:{v4, v5, v6, v7}];
  [*(a1 + 32) _setRevealAlphaForView:*(a1 + 40) desiredAlpha:*(a1 + 128)];
  if (*(a1 + 136) == 1)
  {
    [*(a1 + 40) layoutIfNeeded];
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v11;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  return [v9 _configureStackDimmingForGroupedView:v10 transform:&v13];
}

uint64_t __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 96);
  v10[0] = *(a1 + 80);
  v10[1] = v8;
  v10[2] = *(a1 + 112);
  [v2 _updateTransformedView:v3 toFrame:v10 withTransform:{v4, v5, v6, v7}];
  return [*(a1 + 40) setAlpha:0.0];
}

uint64_t __90__NCNotificationListView__layoutViewIfNecessaryAtIndex_layoutOffset_startingLayoutOffset___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) viewsPerformingAnimation];
  [v2 removeObject:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 _removeStoredVisibleViewAtIndex:v4];
}

- (BOOL)_isPerformingRollUnderListLayoutForView:(id)view atIndex:(unint64_t)index viewHeight:(double)height atLayoutOffset:(double)MinY targetTransform:(CGAffineTransform *)transform targetAlpha:(double *)alpha viewFrame:(CGRect *)frame
{
  viewCopy = view;
  v16 = [(NCNotificationListView *)self _listViewForView:viewCopy];
  v17 = [(NCNotificationListView *)self _shouldRollUnderView:viewCopy withHeight:height layoutOffset:MinY];
  if (!v17)
  {
    height = 0.0;
LABEL_15:
    [v16 setOverrideLeadingViewHeight:height];
    goto LABEL_16;
  }

  heightCopy2 = height;
  if ([(NCNotificationListView *)self currentBottomTransitionTransformer]!= 2)
  {
    [(NCListAnimationSettings *)self->_animationSettings rollUnderLimitHeightMax];
    if (v19 <= height)
    {
      heightCopy2 = v19;
    }

    else
    {
      heightCopy2 = height;
    }
  }

  v20 = *alpha;
  [(NCNotificationListView *)self _alphaForRollUnderForView:viewCopy withHeight:heightCopy2 layoutOffset:MinY];
  *alpha = v20 * v21;
  [(NCNotificationListView *)self _transformForRollUnderForView:viewCopy withHeight:heightCopy2 layoutOffset:MinY];
  *&transform->a = v32;
  *&transform->c = v33;
  *&transform->tx = v34;
  height = 0.0;
  if (heightCopy2 < height)
  {
    [(NCNotificationListView *)self _rollUnderThresholdOffset];
    height = v23 - (transform->ty + MinY);
  }

  if (height > height)
  {
    height = height;
  }

  if (v16)
  {
    goto LABEL_15;
  }

  if (height <= 0.0)
  {
    height = frame->size.height;
  }

  frame->size.height = height;
LABEL_16:
  v24 = 0.0;
  if ([(NCNotificationListView *)self _hasBottomTransitionTransformerForView:viewCopy])
  {
    [(NCNotificationListView *)self maximumLeadingViewHeight];
    if (v25 <= 0.0)
    {
      if (![(NCNotificationListView *)self shouldLimitViewHeightForRollUnder])
      {
        goto LABEL_27;
      }

      [(NCNotificationListView *)self _rollUnderThresholdOffset];
      v29 = v28;
      if (([v16 isGrouped] & 1) == 0)
      {
        [(NCNotificationListView *)self visibleRect];
        MinY = CGRectGetMinY(v35);
      }

      v27 = v29 - MinY;
    }

    else
    {
      [(NCNotificationListView *)self maximumLeadingViewHeight];
      v27 = v26;
    }

    if (v27 > 0.0)
    {
      [(NCListAnimationSettings *)self->_animationSettings rollUnderLimitHeightMax];
      if (v27 >= v30)
      {
        v24 = v27;
      }

      else
      {
        v24 = v30;
      }
    }
  }

LABEL_27:
  [v16 setMaximumLeadingViewHeight:v24];

  return v17;
}

- (void)_updateBottomMarginAdjustmentAnimationForView:(id)view isPerformingRollUnderLayout:(BOOL)layout
{
  layoutCopy = layout;
  viewCopy = view;
  if (layoutCopy)
  {
    if ([(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation])
    {
      viewsPerformingBottomMarginAdjustmentAnimation = [(NCNotificationListView *)self viewsPerformingBottomMarginAdjustmentAnimation];
      [viewsPerformingBottomMarginAdjustmentAnimation addObject:viewCopy];
LABEL_6:
    }
  }

  else
  {
    viewsPerformingBottomMarginAdjustmentAnimation2 = [(NCNotificationListView *)self viewsPerformingBottomMarginAdjustmentAnimation];
    v8 = [viewsPerformingBottomMarginAdjustmentAnimation2 containsObject:viewCopy];

    if (v8)
    {
      viewsPerformingBottomMarginAdjustmentAnimation = [(NCNotificationListView *)self viewsPerformingBottomMarginAdjustmentAnimation];
      [viewsPerformingBottomMarginAdjustmentAnimation removeObject:viewCopy];
      goto LABEL_6;
    }
  }

  v9 = [(NCNotificationListView *)self _listViewForView:viewCopy];
  if (v9 && [(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation])
  {
    [v9 setPerformingBottomMarginAdjustmentAnimation:1];
  }
}

- (void)_updateLayoutParametersForHiddenGroupListViewAnimationForView:(id)view targetTransform:(CGAffineTransform *)transform targetAlpha:(double *)alpha
{
  viewCopy = view;
  v9 = [(NCNotificationListView *)self _listViewForView:viewCopy];
  if (!-[NCNotificationListView isReactiveLayout](self, "isReactiveLayout") && v9 && ([v9 isRevealed] & 1) == 0 && objc_msgSend(v9, "isGrouped") && -[NCNotificationListView _hasBottomTransitionTransformerForView:](self, "_hasBottomTransitionTransformerForView:", viewCopy))
  {
    memset(&v19, 0, sizeof(v19));
    [(NCListAnimationSettings *)self->_animationSettings rollUnderNotRevealedTranslationY];
    CGAffineTransformMakeTranslation(&v19, 0.0, v10);
    memset(&v18, 0, sizeof(v18));
    [(NCListAnimationSettings *)self->_animationSettings rollUnderNotRevealedScale];
    v12 = v11;
    [(NCListAnimationSettings *)self->_animationSettings rollUnderNotRevealedScale];
    CGAffineTransformMakeScale(&v18, v12, v13);
    t1 = v19;
    v15 = v18;
    CGAffineTransformConcat(&v17, &t1, &v15);
    v14 = *&v17.c;
    *&transform->a = *&v17.a;
    *&transform->c = v14;
    *&transform->tx = *&v17.tx;
    *alpha = 0.0;
  }
}

- (BOOL)_shouldAnimateListLayoutForView:(id)view atIndex:(unint64_t)index isExistingView:(BOOL)existingView isPerformingRollUnderLayout:(BOOL)layout shouldUpdateTransformedView:(BOOL)transformedView
{
  transformedViewCopy = transformedView;
  layoutCopy = layout;
  viewCopy = view;
  insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v15 = [insertedViewIndices containsObject:v14];

  reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v18 = [reloadedViewIndices containsObject:v17];

  insertedViewIndices2 = !existingView && [(NCNotificationListView *)self isPerformingGroupingAnimation];
  if ([(NCNotificationListView *)self isPerformingInteractiveTranslationAnimation])
  {
    [(NCNotificationListView *)self interactionTranslation];
    v21 = v20 == 0.0;
  }

  else
  {
    v21 = 0;
  }

  if (![(NCNotificationListView *)self isPerformingVisibleRectAdjustment]|| [(NCNotificationListView *)self isPerformingGroupingAnimation]|| [(NCNotificationListView *)self _isPerformingContentModification])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = ![(NCNotificationListView *)self isListRevealTargetContentOffsetClamped]&& !v21;
  }

  v23 = 0;
  if (!(v15 & 1 | !existingView) && (v22 & 1) == 0)
  {
    v23 = transformedViewCopy & ~[(NCNotificationListView *)self isActiveRevealTransitioning];
  }

  if ([(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation])
  {
    v24 = 1;
  }

  else
  {
    viewsPerformingBottomMarginAdjustmentAnimation = [(NCNotificationListView *)self viewsPerformingBottomMarginAdjustmentAnimation];
    v24 = [viewsPerformingBottomMarginAdjustmentAnimation containsObject:viewCopy];
  }

  v26 = [(NCNotificationListView *)self _listViewForView:viewCopy];
  v27 = v26;
  if (v26)
  {
    isPerformingRevealAnimation = [v26 isPerformingRevealAnimation];
  }

  else
  {
    isPerformingRevealAnimation = 0;
  }

  if ([(NCNotificationListView *)self isPerformingRevealAnimation]|| [(NCNotificationListView *)self isActiveRevealTransitioning])
  {
    v29 = ![(NCNotificationListView *)self _hasBottomTransitionTransformerForView:viewCopy];
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_26:
    if (insertedViewIndices2)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v29 = 0;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (insertedViewIndices2 & 1 | ![(NCNotificationListView *)self isAnimatingAdditionalYOffset])
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((-[NCNotificationListView isSubviewPerformingGroupingAnimation](self, "isSubviewPerformingGroupingAnimation") | isPerformingRevealAnimation | v18) & 1) != 0 || (([v27 isPerformingRemovalAnimation] | v29))
  {
LABEL_29:
    isPerformingRemovalAnimation = 1;
    if (!layoutCopy)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  isPerformingRemovalAnimation = [(NCNotificationListView *)self isPerformingRemovalAnimation];
  if (!layoutCopy)
  {
    goto LABEL_36;
  }

LABEL_30:
  if (!-[NCNotificationListView isPerformingGroupingAnimation](self, "isPerformingGroupingAnimation") && ((-[NCNotificationListView isSubviewPerformingGroupingAnimation](self, "isSubviewPerformingGroupingAnimation") | v24) & 1) == 0 && ([v27 isPerformingRemovalAnimation] & 1) == 0)
  {
    isPerformingRemovalAnimation2 = [(NCNotificationListView *)self isPerformingRemovalAnimation];
    goto LABEL_37;
  }

LABEL_36:
  isPerformingRemovalAnimation2 = 1;
LABEL_37:
  [(NCNotificationListView *)self contentLayoutOffset];
  v33 = v32 <= 0.0 || v27 == 0;
  v34 = !v33;
  if (!v33)
  {
    insertedViewIndices2 = [v27 insertedViewIndices];
    if ([insertedViewIndices2 count])
    {
      v35 = 0;
LABEL_52:

      goto LABEL_53;
    }

    if (![(NCNotificationListView *)self _isLayoutFromBottomUp])
    {
      v35 = 1;
      goto LABEL_52;
    }

LABEL_49:
    insertedViewIndices3 = [(NCNotificationListView *)self insertedViewIndices];
    v35 = [insertedViewIndices3 count] == 0;

    if (!v34)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if ([(NCNotificationListView *)self _isLayoutFromBottomUp])
  {
    goto LABEL_49;
  }

  v35 = 1;
LABEL_53:

  return isPerformingRemovalAnimation && isPerformingRemovalAnimation2 && v35;
}

- (BOOL)_isPerformingContentModification
{
  insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
  if ([insertedViewIndices count])
  {
    v4 = 1;
  }

  else
  {
    reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
    if ([reloadedViewIndices count])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(NCNotificationListView *)self removedViewIndex]!= 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (double)_positionOffsetForRevealHintingForItemAtIndex:(unint64_t)index
{
  v5 = [(NCNotificationListView *)self _viewForItemAtIndex:?];
  v6 = [(NCNotificationListView *)self _hasBottomTransitionTransformerForView:v5];

  result = 0.0;
  if (!v6)
  {
    [(NCNotificationListView *)self revealPercentage];
    return pow(v8, (index + 1)) * 8.0;
  }

  return result;
}

- (void)setAnimatingAdditionalYOffset:(BOOL)offset
{
  v17 = *MEMORY[0x277D85DE8];
  animatingAdditionalYOffset = self->_animatingAdditionalYOffset;
  self->_animatingAdditionalYOffset = offset;
  if (animatingAdditionalYOffset != offset)
  {
    offsetCopy = offset;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleViews = [(NCNotificationListView *)self visibleViews];
    allValues = [visibleViews allValues];

    v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 setAnimatingAdditionalYOffset:offsetCopy];
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset:(double)offset
{
  headerView = [(NCNotificationListView *)self headerView];
  if (headerView)
  {
    viewsPerformingAnimation = [(NCNotificationListView *)self viewsPerformingAnimation];
    v7 = [viewsPerformingAnimation containsObject:headerView];

    if ((v7 & 1) == 0)
    {
      viewsPerformingAnimation2 = [(NCNotificationListView *)self viewsPerformingAnimation];
      [viewsPerformingAnimation2 addObject:headerView];

      [headerView frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      if (![(NCNotificationListView *)self _isAnimationStyleDissolve])
      {
        v27.origin.x = v10;
        v27.origin.y = v12;
        v27.size.width = v14;
        v27.size.height = v16;
        v17 = offset - CGRectGetHeight(v27);
        v28.origin.x = v10;
        v28.origin.y = v12;
        v28.size.width = v14;
        v28.size.height = v16;
        v18 = CGRectGetMaxY(v28) * 0.5;
        if (v17 >= v18)
        {
          v12 = v18;
        }

        else
        {
          v12 = v17;
        }
      }

      [(NCNotificationListView *)self sendSubviewToBack:headerView];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__NCNotificationListView__layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset___block_invoke;
      v21[3] = &unk_27836FDF8;
      v22 = headerView;
      v23 = v10;
      v24 = v12;
      v25 = v14;
      v26 = v16;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __80__NCNotificationListView__layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset___block_invoke_2;
      v19[3] = &unk_27836F560;
      v19[4] = self;
      v20 = v22;
      [(NCNotificationListView *)self _performViewAnimationBlock:v21 completionBlock:v19 type:0];
    }
  }
}

uint64_t __80__NCNotificationListView__layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __80__NCNotificationListView__layoutHeaderViewForGroupingIfNecessaryWithMaxYOffset___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewsPerformingAnimation];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 32) _recycleViewIfNecessary:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 setHeaderView:0];
}

uint64_t __65__NCNotificationListView__layoutFooterViewForGroupingIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __65__NCNotificationListView__layoutFooterViewForGroupingIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewsPerformingAnimation];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 32) _recycleViewIfNecessary:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 setFooterView:0];
}

- (CGRect)_frameForViewAtIndex:(unint64_t)index
{
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _widthForListViewInRect:?];
  v6 = v5;
  dataSource = [(NCNotificationListView *)self dataSource];
  [dataSource notificationListView:self heightForItemAtIndex:index withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v6}];
  Height = v8;

  if ([(NCNotificationListView *)self leadingContentShouldFillList]&& [(NCNotificationListView *)self count]== 1 && ![(NCNotificationListView *)self isPerformingGroupingAnimation])
  {
    [(NCNotificationListView *)self bounds];
    Height = CGRectGetHeight(v20);
  }

  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  v11 = [_directSuperListView visibleViewAtIndex:0];

  if (!index && v11 != self)
  {
    [(NCNotificationListView *)self overrideLeadingViewHeight];
    if (v12 > 0.0)
    {
      [(NCNotificationListView *)self overrideLeadingViewHeight];
      if (v13 < Height)
      {
        Height = v13;
      }
    }

    [(NCNotificationListView *)self maximumLeadingViewHeight];
    if (v14 > 0.0)
    {
      [(NCNotificationListView *)self maximumLeadingViewHeight];
      if (v15 < Height)
      {
        Height = v15;
      }
    }
  }

  [(NCNotificationListView *)self horizontalInsetMargin];
  v17 = 0.0;
  v18 = v6;
  v19 = Height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_layoutLeadingViewForGroupingLayoutIfNecessary:(id)necessary hasShadow:(BOOL)shadow isExistingView:(BOOL)view
{
  necessaryCopy = necessary;
  [(NCNotificationListView *)self _frameForViewAtIndex:0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!view)
  {
    _currentAnimator = [(NCNotificationListView *)self _currentAnimator];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __98__NCNotificationListView__layoutLeadingViewForGroupingLayoutIfNecessary_hasShadow_isExistingView___block_invoke;
    v74[3] = &unk_27836FDF8;
    v75 = necessaryCopy;
    v76 = v9;
    v77 = v11;
    v78 = v13;
    v79 = v15;
    [_currentAnimator performAnimationType:0 withoutAnimation:v74];
  }

  insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
  v18 = [insertedViewIndices containsObject:&unk_283015440];

  reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
  v20 = [reloadedViewIndices containsObject:&unk_283015440];

  if ((v18 & 1) != 0 || v20)
  {
    [(NCNotificationListView *)self setCachedSizeValid:0];
  }

  [(NCNotificationListView *)self interactionTranslationPercentage];
  v22 = v21;
  [(NCListAnimationSettings *)self->_animationSettings interactionTranslationVerticalOffsetMax];
  v24 = v23;
  [(NCNotificationListView *)self interactionTranslationPercentage];
  v26 = v25;
  [(NCListAnimationSettings *)self->_animationSettings interactionTranslationOffsetMax];
  v28 = -(v26 * v27) - v22 * v24;
  if (v11 != v28 || ([necessaryCopy frame], v83.origin.x = v29, v83.origin.y = v30, v83.size.width = v31, v83.size.height = v32, v80.origin.x = v9, v80.origin.y = v11, v80.size.width = v13, v80.size.height = v15, v18 & 1 | !CGRectEqualToRect(v80, v83) | v20 & 1) || -[NCNotificationListView isPerformingStackVisibilityAnimation](self, "isPerformingStackVisibilityAnimation") || -[NCNotificationListView isPerformingInteractiveTranslationAnimation](self, "isPerformingInteractiveTranslationAnimation") || (objc_msgSend(necessaryCopy, "alpha"), v33 != 1.0))
  {
    v34 = MEMORY[0x277CBF2C0];
    if (v18 && (v81.origin.x = v9, v81.origin.y = v28, v81.size.width = v13, v81.size.height = v15, [(NCNotificationListView *)self _isViewWithinVisibleRectForHeight:CGRectGetHeight(v81) layoutOffset:0.0]))
    {
      [necessaryCopy setFrame:{v9, v28, v13, v15}];
      [(NCListAnimationSettings *)self->_animationSettings animationInsertionStartAlpha];
      [necessaryCopy setAlpha:?];
      if ([(NCNotificationListView *)self isPerformingGroupingAnimation])
      {
        v35 = 1.0;
        if (![(NCNotificationListView *)self _isAnimationStyleDissolve])
        {
          [(NCListAnimationSettings *)self->_animationSettings animationScaleWhileGrouping];
          v35 = v36;
        }

        memset(&v73, 0, sizeof(v73));
        CGAffineTransformMakeScale(&v73, v35, v35);
        _isAnimationStyleDissolve = [(NCNotificationListView *)self _isAnimationStyleDissolve];
        v38 = 0.0;
        if (!_isAnimationStyleDissolve)
        {
          [(NCListAnimationSettings *)self->_animationSettings animationTranslation];
          v40 = v39;
          v82.origin.x = v9;
          v82.origin.y = v28;
          v82.size.width = v13;
          v82.size.height = v15;
          v38 = v40 + (1.0 - v35) * -0.5 * CGRectGetHeight(v82);
        }

        memset(&v72, 0, sizeof(v72));
        CGAffineTransformMakeTranslation(&v72, 0.0, v38);
        t1 = v73;
        memset(&v71, 0, sizeof(v71));
        t2 = v72;
        CGAffineTransformConcat(&v71, &t1, &t2);
        t1 = v71;
        p_t1 = &t1;
      }

      else
      {
        v45 = [(NCNotificationListView *)self count];
        animationSettings = self->_animationSettings;
        if (v45 < 2)
        {
          [(NCListAnimationSettings *)animationSettings animationScale];
        }

        else
        {
          [(NCListAnimationSettings *)animationSettings animationScaleGroupInsertion];
        }

        memset(&v73, 0, sizeof(v73));
        CGAffineTransformMakeScale(&v73, v47, v47);
        v72 = v73;
        p_t1 = &v72;
      }

      [necessaryCopy setTransform:p_t1];
    }

    else
    {
      [necessaryCopy setAlpha:1.0];
      if (![(NCNotificationListView *)self isPerformingGroupingAnimation]&& ![(NCNotificationListView *)self isPerformingContentRevealAnimation])
      {
        removedViewIndex = [(NCNotificationListView *)self removedViewIndex];
        v43 = v28 == 0.0 ? 1 : v20;
        if (removedViewIndex && (v43 & 1) == 0)
        {
          v44 = v34[1];
          *&v73.a = *v34;
          *&v73.c = v44;
          *&v73.tx = v34[2];
          [(NCNotificationListView *)self _updateTransformedView:necessaryCopy toFrame:&v73 withTransform:v9, v28, v13, v15];
        }
      }
    }

    if ([(NCNotificationListView *)self isHiddenBelowStack])
    {
      v48 = [(NCNotificationListView *)self showContentForGroupedViews]^ 1;
    }

    else
    {
      v48 = 0;
    }

    if ([(NCNotificationListView *)self isPerformingGroupingAnimation]|| [(NCNotificationListView *)self isPerformingContentRevealAnimation])
    {
      v49 = 1;
    }

    else
    {
      v49 = ([(NCNotificationListView *)self removedViewIndex]== 0) | v20;
    }

    v57 = v34[1];
    *&v73.a = *v34;
    *&v73.c = v57;
    *&v73.tx = v34[2];
    if ([(NCNotificationListView *)self _shouldUpdateTransformedView:necessaryCopy toFrame:&v73 alpha:v9 transform:v28, v13, v15, 1.0, *&v73.tx, *&v73.ty, v57, *&v73.a, *&v73.b]|| [(NCNotificationListView *)self isPerformingStackVisibilityAnimation]|| [(NCNotificationListView *)self isPerformingInteractiveTranslationAnimation])
    {
      v50 = ![(NCNotificationListView *)self isPerformingOverrideLeadingViewHeightAdjustment]|| [(NCNotificationListView *)self isPerformingGroupingAnimation]|| [(NCNotificationListView *)self isPerformingContentRevealAnimation]|| [(NCNotificationListView *)self isPerformingRevealAnimation]|| [(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation];
      insertedViewIndices2 = [(NCNotificationListView *)self insertedViewIndices];
      v52 = [insertedViewIndices2 containsObject:&unk_283015440];

      if (v52 && v50)
      {
        [(NCNotificationListView *)self _performInsertionAnimationForView:necessaryCopy];
      }

      else
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__NCNotificationListView__layoutLeadingViewForGroupingLayoutIfNecessary_hasShadow_isExistingView___block_invoke_2;
        aBlock[3] = &unk_278370FA8;
        aBlock[4] = self;
        v61 = necessaryCopy;
        v62 = v9;
        v63 = v28;
        v64 = v13;
        v65 = v15;
        v66 = 0x3FF0000000000000;
        v67 = v49 & 1;
        v68 = v48;
        v53 = _Block_copy(aBlock);
        if ([(NCNotificationListView *)self isPerformingContentRevealAnimation])
        {
          if ([(NCNotificationListView *)self isDeviceAuthenticated])
          {
            v54 = 4;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        if (v50)
        {
          [(NCNotificationListView *)self _performViewAnimationBlock:v53 completionBlock:0 type:v54];
        }

        else
        {
          _currentAnimator2 = [(NCNotificationListView *)self _currentAnimator];
          [_currentAnimator2 performAnimationType:v54 withoutAnimation:v53];
        }
      }
    }

    else
    {
      [(NCNotificationListView *)self _setContentHiddenForView:necessaryCopy contentHidden:v48];
      *&v73.a = v59;
      *&v73.c = v58;
      *&v73.tx = v56;
      [(NCNotificationListView *)self _configureStackDimmingForGroupedView:necessaryCopy transform:&v73];
    }
  }
}

uint64_t __98__NCNotificationListView__layoutLeadingViewForGroupingLayoutIfNecessary_hasShadow_isExistingView___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v14 = *MEMORY[0x277CBF2C0];
  v15 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v13 = v8;
  v16 = v8;
  v17 = v12;
  [v2 _updateTransformedView:v3 toFrame:&v15 withTransform:{v4, v5, v6, v7}];
  [*(a1 + 40) setAlpha:*(a1 + 80)];
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 40) layoutIfNeeded];
  }

  [*(a1 + 32) _setContentHiddenForView:*(a1 + 40) contentHidden:*(a1 + 89)];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v14;
  v16 = v13;
  v17 = v12;
  return [v9 _configureStackDimmingForGroupedView:v10 transform:&v15];
}

- (void)_layoutGroupedViewForGroupingLayout:(id)layout atIndex:(unint64_t)index isExistingView:(BOOL)view leadingViewHeight:(double)height alpha:(double)alpha
{
  viewCopy = view;
  layoutCopy = layout;
  [(NCNotificationListView *)self _frameForViewAtIndex:index];
  y = v61.origin.y;
  x = v61.origin.x;
  width = v61.size.width;
  height = v61.size.height;
  v13 = CGRectGetHeight(v61);
  [(NCNotificationListView *)self groupedOverlapHeightMultiple];
  v15 = v14;
  [(NCNotificationListView *)self _resolvedViewOverlap];
  v17 = v16;
  [(NCNotificationListView *)self interactionTranslationPercentage];
  v19 = v18;
  [(NCListAnimationSettings *)self->_animationSettings interactionTranslationOffsetMax];
  v21 = v20;
  v22 = 0.0;
  if (![(NCNotificationListView *)self isHiddenBelowStack]&& [(NCNotificationListView *)self showStackBelowLeadingView])
  {
    v22 = (v19 * v21 + v15 * v17) * index;
  }

  [(NCNotificationListView *)self interactionTranslationPercentage];
  v24 = v23;
  [(NCListAnimationSettings *)self->_animationSettings interactionTranslationVerticalOffsetMax];
  v26 = dbl_21E9463D0[index == 1];
  v27 = v22 - v24 * v25 + v41;
  [(NCNotificationListView *)self overrideLeadingViewHeight];
  if (v28 > 0.0)
  {
    [(NCNotificationListView *)self overrideLeadingViewHeight];
    if (v29 < v27)
    {
      v27 = v29;
    }
  }

  memset(&v60.c, 0, 32);
  if (v27 >= v13)
  {
    v30 = v26;
  }

  else
  {
    v30 = v27 / v13;
  }

  *&v60.a = 0uLL;
  CGAffineTransformMakeScale(&v60, v26, v30);
  [(NCNotificationListView *)self groupedTranslation];
  v31 = v27 - (v30 * 0.5 + 0.5) * v13;
  memset(&v59, 0, sizeof(v59));
  CGAffineTransformMakeTranslation(&v59, v32, v31);
  t1 = v60;
  memset(&v58, 0, sizeof(v58));
  t2 = v59;
  CGAffineTransformConcat(&v58, &t1, &t2);
  t1 = v58;
  if ([(NCNotificationListView *)self _shouldUpdateTransformedView:layoutCopy toFrame:&t1 alpha:x transform:y, width, height, 1.0])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__NCNotificationListView__layoutGroupedViewForGroupingLayout_atIndex_isExistingView_leadingViewHeight_alpha___block_invoke;
    aBlock[3] = &unk_278370FD0;
    v33 = layoutCopy;
    v46 = v33;
    selfCopy = self;
    v48 = v40;
    v49 = x;
    v50 = y;
    v51 = width;
    heightCopy = height;
    v53 = v58;
    v54 = v60;
    indexCopy = index;
    v34 = _Block_copy(aBlock);
    if (![(NCNotificationListView *)self isPerformingOverrideLeadingViewHeightAdjustment]|| [(NCNotificationListView *)self isPerformingGroupingAnimation]|| [(NCNotificationListView *)self isPerformingContentRevealAnimation]|| ([(NCNotificationListView *)self overrideLeadingViewHeight], v35 == 0.0) || [(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation])
    {
      v36 = 1;
      if (!viewCopy)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v36 = [(NCNotificationListView *)self _hasBottomTransitionTransformerForView:v33];
      if (!viewCopy)
      {
        goto LABEL_29;
      }
    }

    if (v36)
    {
      if ([(NCNotificationListView *)self isPerformingGroupingAnimation]|| [(NCNotificationListView *)self isPerformingContentRevealAnimation]|| [(NCNotificationListView *)self isPerformingStackVisibilityAnimation]|| [(NCNotificationListView *)self isPerformingInteractiveTranslationAnimation]|| [(NCNotificationListView *)self removedViewIndex]< 3)
      {
        goto LABEL_27;
      }

      reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
      if ([reloadedViewIndices count])
      {
LABEL_26:

LABEL_27:
        [(NCNotificationListView *)self _performViewAnimationBlock:v34 completionBlock:0 type:0];
LABEL_30:

        goto LABEL_31;
      }

      insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
      if ([insertedViewIndices count])
      {

        goto LABEL_26;
      }

      if (v33)
      {
        [v33 transform];
        v39 = v44;
      }

      else
      {
        v39 = 0.0;
      }

      if (v31 != v39)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v34[2](v34);
    goto LABEL_30;
  }

LABEL_31:
}

uint64_t __109__NCNotificationListView__layoutGroupedViewForGroupingLayout_atIndex_isExistingView_leadingViewHeight_alpha___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 104);
  v13 = *(a1 + 88);
  v14 = v8;
  v15 = *(a1 + 120);
  [v2 _updateTransformedView:v3 toFrame:&v13 withTransform:{v4, v5, v6, v7}];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 152);
  v13 = *(a1 + 136);
  v14 = v11;
  v15 = *(a1 + 168);
  [v9 _configureStackDimmingForGroupedView:v10 transform:&v13];
  return [*(a1 + 40) _setContentHiddenForGroupedView:*(a1 + 32) atIndex:*(a1 + 184)];
}

- (void)_setContentHiddenForView:(id)view contentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  viewCopy = view;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = viewCopy;
  if (v5)
  {
    v6 = 0;
  }

  notificationViewController = [v6 notificationViewController];
  v8 = notificationViewController;
  if (notificationViewController && [notificationViewController isNotificationContentViewHidden] != hiddenCopy)
  {
    [v8 setNotificationContentViewHidden:hiddenCopy];
  }
}

- (void)revealNotificationContentBelowGroupedViewIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v9 = [visibleViews objectForKey:&unk_283015440];

  v6 = v9;
  if (v9 == necessaryCopy)
  {
    visibleViews2 = [(NCNotificationListView *)self visibleViews];
    v8 = [visibleViews2 objectForKey:&unk_283015458];

    [(NCNotificationListView *)self _setContentHiddenForView:v8 contentHidden:0];
    v6 = v9;
  }
}

- (void)_configureStackDimmingForGroupedView:(id)view transform:(CGAffineTransform *)transform
{
  viewCopy = view;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v8 = [visibleViews objectForKey:&unk_283015440];

  if (v8 == viewCopy)
  {
    [(NCNotificationListView *)self overrideTopViewDimmingTransform];
    v9 = v18;
    *&transform->a = v17;
    *&transform->c = v9;
    *&transform->tx = v19;
  }

  v10 = viewCopy;
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = *&transform->c;
    v17 = *&transform->a;
    v18 = v11;
    v19 = *&transform->tx;
    [v10 configureStackDimmingForTransform:&v17];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v10 && (isKindOfClass & 1) != 0)
  {
    v13 = v10;
    if (![(NCNotificationListView *)self _isGrouping])
    {
      v14 = MEMORY[0x277CBF2C0];
      v15 = *(MEMORY[0x277CBF2C0] + 16);
      *&transform->a = *MEMORY[0x277CBF2C0];
      *&transform->c = v15;
      *&transform->tx = *(v14 + 32);
    }

    v16 = *&transform->c;
    v17 = *&transform->a;
    v18 = v16;
    v19 = *&transform->tx;
    [v13 setOverrideTopViewDimmingTransform:&v17];
  }
}

- (void)_layoutHiddenViewsForGroupingLayoutIfNecessaryWithLeadingViewHeight:(double)height
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allKeys = [visibleViews allKeys];

  v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_123];

  dataSource = [(NCNotificationListView *)self dataSource];
  v9 = [dataSource notificationListViewNumberOfItems:self];
  if ([(NCNotificationListView *)self showStackBelowLeadingView])
  {
    [(NCListAnimationSettings *)self->_animationSettings groupListMaxViewCount];
    if (v10 > v9)
    {
      v10 = v9;
    }

    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__NCNotificationListView__layoutHiddenViewsForGroupingLayoutIfNecessaryWithLeadingViewHeight___block_invoke_2;
  v12[3] = &unk_278371018;
  v12[4] = self;
  v12[5] = v11;
  *&v12[6] = height;
  [v7 enumerateObjectsUsingBlock:v12];
}

void __94__NCNotificationListView__layoutHiddenViewsForGroupingLayoutIfNecessaryWithLeadingViewHeight___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  if (v4 >= *(a1 + 40))
  {
    v5 = v4;
    v6 = [*(a1 + 32) visibleViews];
    v7 = [v6 objectForKey:v3];

    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [*(a1 + 32) horizontalInsetMargin];
    v15 = v14;
    if (([*(a1 + 32) _isAnimationStyleDissolve] & 1) == 0)
    {
      v28.origin.x = v15;
      v28.origin.y = v9;
      v28.size.width = v11;
      v28.size.height = v13;
      v9 = fmax(*(a1 + 48) - CGRectGetHeight(v28), 0.0);
    }

    [*(a1 + 32) sendSubviewToBack:v7];
    v16 = [*(a1 + 32) nonCoplanarViewIndices];
    [v16 addIndex:v5];

    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    if ([*(a1 + 32) _isAnimationStyleDissolve])
    {
      v17 = *(MEMORY[0x277CBF2C0] + 16);
      v25 = *MEMORY[0x277CBF2C0];
      v26 = v17;
      v27 = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = [v3 unsignedIntegerValue];
      if (v18)
      {
        [v18 _scaleTransformForGroupingAnimationForViewAtIndex:v19 leadingViewHeight:*(a1 + 48)];
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }
    }

    v20 = *(a1 + 32);
    v22 = v25;
    v23 = v26;
    v24 = v27;
    [v20 _updateTransformedView:v7 toFrame:&v22 withTransform:{v15, v9, v11, v13}];
    v21 = *(a1 + 32);
    v22 = v25;
    v23 = v26;
    v24 = v27;
    [v21 _configureStackDimmingForGroupedView:v7 transform:&v22];
    [*(a1 + 32) _removeStoredVisibleViewAtIndex:{objc_msgSend(v3, "unsignedIntegerValue")}];
  }
}

- (void)setVisibleRect:(CGRect)rect
{
  if (self->_visibleRectIsBounds)
  {
    [(NCNotificationListView *)self bounds:rect.origin.x];
  }

  UIRoundToViewScale();
  v5 = v4;
  UIRoundToViewScale();
  v7 = v6;
  UIRoundToViewScale();
  v9 = v8;
  UIRoundToViewScale();
  v11 = v10;
  [(NCNotificationListView *)self _visibleRect];
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  if (!CGRectEqualToRect(v13, v14))
  {
    if (![(NCNotificationListView *)self _animateVisibleRectAdjustmentIfNecessaryWithVisibleRect:v5, v7, v9, v11])
    {
      [(NCNotificationListView *)self _setVisibleRectWithoutAlteringAnimations:v5, v7, v9, v11];
    }

    [(NCNotificationListView *)self setPerformingVisibleRectAdjustment:1];
    [(NCNotificationListView *)self setNeedsLayout];
    [(NCNotificationListView *)self _visibleRect];

    [(NCNotificationListView *)self _updateVisibleViewsForUpdatedVisibleRect:?];
  }
}

- (void)_setVisibleRectWithoutAlteringAnimations:(CGRect)animations
{
  height = animations.size.height;
  width = animations.size.width;
  y = animations.origin.y;
  x = animations.origin.x;
  [(NCNotificationListView *)self willChangeValueForKey:@"visibleRect"];
  self->__visibleRect.origin.x = x;
  self->__visibleRect.origin.y = y;
  self->__visibleRect.size.width = width;
  self->__visibleRect.size.height = height;

  [(NCNotificationListView *)self didChangeValueForKey:@"visibleRect"];
}

- (void)setRevealPercentage:(double)percentage
{
  if (vabdd_f64(self->_revealPercentage, percentage) >= 2.22044605e-16)
  {
    self->_revealPercentage = percentage;
    [(NCNotificationListView *)self setCachedSizeValid:0];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setRevealed:(BOOL)revealed
{
  if (self->_revealed != revealed)
  {
    self->_revealed = revealed;
    [(NCNotificationListView *)self setPerformingRevealAnimation:1];
    [(NCNotificationListView *)self setCachedSizeValid:0];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setPerformingContentRevealAnimation:(BOOL)animation
{
  animationCopy = animation;
  isNotificationListViewCurrentlyVisible = [(NCNotificationListView *)self isNotificationListViewCurrentlyVisible];
  self->_performingContentRevealAnimation = isNotificationListViewCurrentlyVisible && animationCopy;
  if (isNotificationListViewCurrentlyVisible && animationCopy)
  {
    [(NCNotificationListView *)self setCachedSizeValid:0];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setSubviewPerformingGroupingAnimation:(BOOL)animation
{
  animationCopy = animation;
  isNotificationListViewCurrentlyVisible = [(NCNotificationListView *)self isNotificationListViewCurrentlyVisible];
  self->_subviewPerformingGroupingAnimation = isNotificationListViewCurrentlyVisible && animationCopy;
  if (isNotificationListViewCurrentlyVisible && animationCopy)
  {
    superview = [(NCNotificationListView *)self superview];
    v7 = [(NCNotificationListView *)self _listViewForView:superview];
    [v7 setSubviewPerformingGroupingAnimation:1];

    [(NCNotificationListView *)self setCachedSizeValid:0];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setGrouped:(BOOL)grouped
{
  if (self->_grouped != grouped)
  {
    groupedCopy = grouped;
    isNotificationListViewCurrentlyVisible = [(NCNotificationListView *)self isNotificationListViewCurrentlyVisible];
    dataSource = [(NCNotificationListView *)self dataSource];
    if (objc_opt_respondsToSelector())
    {
      isNotificationListViewCurrentlyVisible = isNotificationListViewCurrentlyVisible & [dataSource isEligibleToPerformGroupAnimationForNotificationList:self toGrouped:groupedCopy];
    }

    [(NCNotificationListView *)self setGroupedTranslation:0.0];
    [(NCNotificationListView *)self setPerformingGroupingAnimation:isNotificationListViewCurrentlyVisible];
    superview = [(NCNotificationListView *)self superview];
    v7 = [(NCNotificationListView *)self _listViewForView:superview];
    [v7 setSubviewPerformingGroupingAnimation:isNotificationListViewCurrentlyVisible];

    self->_grouped = groupedCopy;
    [(NCNotificationListView *)self setCachedSizeValid:0];
    [(NCNotificationListView *)self _updateStackedViewsForGrouping:groupedCopy];
    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)insertViewAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  insertedViewIndices = [(NCNotificationListView *)self insertedViewIndices];
  v8 = [insertedViewIndices copy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__NCNotificationListView_insertViewAtIndex_animated___block_invoke;
  v12[3] = &unk_278371040;
  v12[4] = self;
  v12[5] = index;
  [v8 enumerateObjectsUsingBlock:v12];
  if (animatedCopy)
  {
    insertedViewIndices2 = [(NCNotificationListView *)self insertedViewIndices];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [insertedViewIndices2 addObject:v10];
  }

  [(NCNotificationListView *)self _updateStoredVisibleViewsForViewInsertedAtIndex:index];
  [(NCNotificationListView *)self setCachedSizeValid:0];
  [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
  [(NCNotificationListView *)self setNeedsLayout];
  superview = [(NCNotificationListView *)self superview];
  [superview setNeedsLayout];
}

void __53__NCNotificationListView_insertViewAtIndex_animated___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 unsignedIntegerValue];
  if (v3 > *(a1 + 40))
  {
    v4 = v3;
    v5 = [*(a1 + 32) insertedViewIndices];
    [v5 removeObject:v8];

    v6 = [*(a1 + 32) insertedViewIndices];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 1];
    [v6 addObject:v7];
  }
}

- (void)removeViewAtIndex:(unint64_t)index animated:(BOOL)animated isHorizontallyDisplaced:(BOOL)displaced
{
  displacedCopy = displaced;
  animatedCopy = animated;
  v10 = [(NCNotificationListView *)self visibleViewAtIndex:?];
  [(NCNotificationListView *)self _updateStoredVisibleViewsForViewRemovedAtIndex:index];
  if (v10)
  {
    if (animatedCopy && [(NCNotificationListView *)self isNotificationListViewCurrentlyVisible])
    {
      [(NCNotificationListView *)self _performRemovalAnimationForView:v10 index:index isHorizontallyDisplaced:displacedCopy];
    }

    else
    {
      dataSource = [(NCNotificationListView *)self dataSource];
      [(NCNotificationListView *)self _notifyDataSourceViewWillBeRemoved:v10];
      [v10 removeFromSuperview];
      [(NCNotificationListView *)self _recycleViewIfNecessary:v10];
      if (objc_opt_respondsToSelector())
      {
        [dataSource notificationListView:self didRemoveView:v10];
      }
    }
  }

  [(NCNotificationListView *)self setRemovedViewIndex:index];
  if (displacedCopy)
  {
    [(NCNotificationListView *)self _configureClippingIfNecessary];
  }

  [(NCNotificationListView *)self setCachedSizeValid:0];
  [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
  [(NCNotificationListView *)self setNeedsLayout];
}

- (void)reloadViewAtIndex:(unint64_t)index
{
  if ([(NCNotificationListView *)self isNotificationListViewCurrentlyVisible])
  {
    reloadedViewIndices = [(NCNotificationListView *)self reloadedViewIndices];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [reloadedViewIndices addObject:v6];
  }

  [(NCNotificationListView *)self setCachedSizeValid:0];
  [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
  [(NCNotificationListView *)self setNeedsLayout];
  superview = [(NCNotificationListView *)self superview];
  [superview setNeedsLayout];
}

- (void)invalidateData
{
  [(NCNotificationListView *)self _removeAllStoredVisibleViews];
  headerView = self->_headerView;
  if (headerView)
  {
    [(UIView *)headerView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_headerView];
    v4 = self->_headerView;
    self->_headerView = 0;
  }

  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:self->_footerView];
    v6 = self->_footerView;
    self->_footerView = 0;
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    v8 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  hoverView = self->_hoverView;
  if (hoverView)
  {
    [(UIView *)hoverView removeFromSuperview];
    v10 = self->_hoverView;
    self->_hoverView = 0;
  }

  [(NCNotificationListView *)self setCachedSizeValid:0];
  [(NCNotificationListView *)self _invalidateCachedApparentZDepths];

  [(NCNotificationListView *)self setNeedsLayout];
}

- (void)reloadHeaderView
{
  if (self->_headerView)
  {
    [(NCNotificationListView *)self setPerformingHeaderReloadAnimation:1];
    v3 = self->_headerView;
    headerView = self->_headerView;
    self->_headerView = 0;

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__NCNotificationListView_reloadHeaderView__block_invoke;
    v13[3] = &unk_27836F560;
    v14 = v3;
    selfCopy = self;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __42__NCNotificationListView_reloadHeaderView__block_invoke_2;
    v9 = &unk_278371068;
    v5 = v14;
    v10 = v5;
    objc_copyWeak(&v12, &location);
    selfCopy2 = self;
    [(NCNotificationListView *)self _performViewAnimationBlock:v13 completionBlock:&v6 type:0];
    [(NCNotificationListView *)self setCachedSizeValid:0, v6, v7, v8, v9];
    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
    [(NCNotificationListView *)self setNeedsLayout];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

uint64_t __42__NCNotificationListView_reloadHeaderView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) animationSettings];
  [v3 headerViewRemoveAnimationTransform];
  v5 = v4;
  v6 = [*(a1 + 40) animationSettings];
  [v6 headerViewRemoveAnimationTransform];
  CGAffineTransformMakeScale(&v9, v5, v7);
  [v2 setTransform:&v9];

  return [*(a1 + 32) setAlpha:0.0];
}

void __42__NCNotificationListView_reloadHeaderView__block_invoke_2(id *a1)
{
  v2 = a1[4];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained headerView];

  if (v2 != v4)
  {
    [a1[4] removeFromSuperview];
    [a1[4] setAlpha:1.0];
    v5 = a1[4];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    v7[0] = *MEMORY[0x277CBF2C0];
    v7[1] = v6;
    v7[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v5 setTransform:v7];
    [a1[5] _recycleViewIfNecessary:a1[4]];
  }
}

- (void)reloadFooterViewAnimated:(BOOL)animated
{
  footerView = self->_footerView;
  if (footerView)
  {
    animatedCopy = animated;
    v6 = footerView;
    v7 = self->_footerView;
    self->_footerView = 0;

    objc_initWeak(&location, self);
    if (animatedCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__NCNotificationListView_reloadFooterViewAnimated___block_invoke;
      v12[3] = &unk_27836F6A8;
      v13 = v6;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__NCNotificationListView_reloadFooterViewAnimated___block_invoke_2;
      v8[3] = &unk_278371068;
      v9 = v13;
      objc_copyWeak(&v11, &location);
      selfCopy = self;
      [(NCNotificationListView *)self _performViewAnimationBlock:v12 completionBlock:v8 type:0];
      objc_destroyWeak(&v11);
    }

    else
    {
      [(UIView *)v6 removeFromSuperview];
      [(UIView *)v6 setAlpha:1.0];
      [(NCNotificationListView *)self _recycleViewIfNecessary:v6];
    }

    [(NCNotificationListView *)self setCachedSizeValid:0];
    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
    [(NCNotificationListView *)self setNeedsLayout];
    objc_destroyWeak(&location);
  }
}

void __51__NCNotificationListView_reloadFooterViewAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained footerView];

  if (v2 != v4)
  {
    [*(a1 + 32) removeFromSuperview];
    [*(a1 + 32) setAlpha:1.0];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v5 _recycleViewIfNecessary:v6];
  }
}

- (void)reloadHoverView
{
  hoverView = self->_hoverView;
  if (hoverView)
  {
    self->_hoverView = 0;
    v4 = hoverView;

    [(UIView *)v4 removeFromSuperview];
    [(NCNotificationListView *)self _recycleViewIfNecessary:v4];

    [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setActiveRevealTransitioning:(BOOL)transitioning
{
  if (self->_activeRevealTransitioning != transitioning)
  {
    transitioningCopy = transitioning;
    self->_activeRevealTransitioning = transitioning;
    [(NCNotificationListView *)self setPerformingRevealTransitionAnimation:1];
    [(NCNotificationListView *)self setCachedSizeValid:0];
    [(NCNotificationListView *)self setNeedsLayout];
    if (transitioningCopy)
    {

      [(NCNotificationListView *)self layoutIfNeeded];
    }
  }
}

- (double)layoutOffsetForViewAtIndex:(unint64_t)index
{
  [(NCNotificationListView *)self _initialLayoutOffset];
  v6 = v5;
  if ([(NCNotificationListView *)self count]> index)
  {
    dataSource = [(NCNotificationListView *)self dataSource];
    [(NCNotificationListView *)self _headerViewHeight];
    v8 = 0.0;
    if (v9 > 0.0)
    {
      [(NCNotificationListView *)self _headerViewHeight];
      v11 = v10;
      [(NCListAnimationSettings *)self->_animationSettings viewSpacing];
      v8 = v11 + v12;
    }

    v6 = v6 + v8;
    if ([(NCNotificationListView *)self _isShowingFeaturedLeadingViews])
    {
      if ([(NCNotificationListView *)self numberOfFeaturedLeadingViews]<= index)
      {
        [(NCNotificationListView *)self _heightForFeaturedLeadingView];
        v14 = v6 + v13;
        [(NCListAnimationSettings *)self->_animationSettings viewSpacing];
        v6 = v14 + v15;
      }

      numberOfFeaturedLeadingViews = [(NCNotificationListView *)self numberOfFeaturedLeadingViews];
    }

    else
    {
      numberOfFeaturedLeadingViews = 0;
    }

    [(NCNotificationListView *)self bounds];
    [(NCNotificationListView *)self _widthForListViewInRect:?];
    if (numberOfFeaturedLeadingViews < index)
    {
      v18 = v17;
      do
      {
        [dataSource notificationListView:self heightForItemAtIndex:numberOfFeaturedLeadingViews withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v18}];
        if (v19 > 0.0)
        {
          v20 = v19;
          if (!numberOfFeaturedLeadingViews)
          {
            [(NCNotificationListView *)self _topSpacingForItemAtIndex:0];
            v6 = v6 + v21;
          }

          isRevealed = [(NCNotificationListView *)self isRevealed];
          v23 = 0.0;
          if (!isRevealed)
          {
            [(NCNotificationListView *)self _positionOffsetForRevealHintingForItemAtIndex:numberOfFeaturedLeadingViews, 0.0];
          }

          v24 = v20 + v6 + v23;
          [(NCNotificationListView *)self _bottomSpacingForItemAtIndex:numberOfFeaturedLeadingViews];
          v6 = v24 + v25;
        }

        ++numberOfFeaturedLeadingViews;
      }

      while (index != numberOfFeaturedLeadingViews);
    }
  }

  return v6;
}

- (BOOL)isVisibleForViewAtIndex:(unint64_t)index
{
  if ([(NCNotificationListView *)self count]<= index)
  {
    return 0;
  }

  [(NCNotificationListView *)self layoutOffsetForViewAtIndex:index];
  v6 = v5;
  dataSource = [(NCNotificationListView *)self dataSource];
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _widthForListViewInRect:?];
  [dataSource notificationListView:self heightForItemAtIndex:index withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v8}];
  v10 = v9;

  [(NCNotificationListView *)self visibleRect];
  if (v6 >= CGRectGetMaxY(v12))
  {
    return 0;
  }

  [(NCNotificationListView *)self visibleRect];
  return v6 + v10 > CGRectGetMinY(v13);
}

- (void)updateSubviewTranslation:(double)translation
{
  if (![(NCNotificationListView *)self isGrouped]|| [(NCNotificationListView *)self isPerformingGroupingAnimation])
  {
    translation = 0.0;
  }

  [(NCNotificationListView *)self setGroupedTranslation:translation];
}

- (void)setHiddenBelowStack:(BOOL)stack
{
  if (self->_hiddenBelowStack != stack)
  {
    self->_hiddenBelowStack = stack;
    self->_performingStackVisibilityAnimation = 1;
    [(NCNotificationListView *)self setCachedSizeValid:0];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setOverrideTopViewDimmingTransform:(CGAffineTransform *)transform
{
  p_overrideTopViewDimmingTransform = &self->_overrideTopViewDimmingTransform;
  v6 = *&self->_overrideTopViewDimmingTransform.c;
  *&t1.a = *&self->_overrideTopViewDimmingTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_overrideTopViewDimmingTransform.tx;
  v7 = *&transform->c;
  *&v13.a = *&transform->a;
  *&v13.c = v7;
  *&v13.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v13))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_overrideTopViewDimmingTransform->c = *&transform->c;
    *&p_overrideTopViewDimmingTransform->tx = v9;
    *&p_overrideTopViewDimmingTransform->a = v8;
    visibleViews = [(NCNotificationListView *)self visibleViews];
    v11 = [visibleViews objectForKey:&unk_283015440];

    if (v11)
    {
      v12 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v12;
      *&t1.tx = *&transform->tx;
      [(NCNotificationListView *)self _configureStackDimmingForGroupedView:v11 transform:&t1];
    }
  }
}

- (void)setFeaturedLeadingViewOcclusionTranslation:(double)translation
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v15 = [visibleViews objectForKey:&unk_283015440];

  if (v15)
  {
    v6 = [(NCNotificationListView *)self _isFeaturedLeadingViewAtIndex:0];
    if (v6)
    {
      [(NCNotificationListView *)self _widthForFeaturedLeadingView];
      v8 = v7;
      _shouldReverseLayoutDirection = [(NCNotificationListView *)self _shouldReverseLayoutDirection];
      translationCopy = -translation;
      if (!_shouldReverseLayoutDirection)
      {
        translationCopy = translation;
      }

      v11 = v8 + translationCopy;
      [(NCListAnimationSettings *)self->_animationSettings featuredViewOcclusionMinimumAlpha];
      v13 = v12;
      [(NCListAnimationSettings *)self->_animationSettings featuredViewOcclusionMinimumAlpha];
      v6 = [v15 setAlpha:v13 + (1.0 - v14) * (v11 / v8)];
    }
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)setShowContentForGroupedViews:(BOOL)views
{
  if (self->_showContentForGroupedViews != views)
  {
    self->_showContentForGroupedViews = views;
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setInteractionTranslationPercentage:(double)percentage
{
  if (vabdd_f64(self->_interactionTranslationPercentage, percentage) >= 2.22044605e-16)
  {
    [(NCNotificationListView *)self setPerformingInteractiveTranslationAnimation:1];
    self->_interactionTranslationPercentage = percentage;

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setVisibleRectBottomMarginForRollUnder:(double)under
{
  if (vabdd_f64(under, self->_visibleRectBottomMarginForRollUnder) >= 2.22044605e-16)
  {
    [(NCNotificationListView *)self setPerformingBottomMarginAdjustmentAnimation:1];
    self->_visibleRectBottomMarginForRollUnder = under;

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setInteractionTranslation:(double)translation
{
  if (vabdd_f64(translation, self->_interactionTranslation) >= 2.22044605e-16)
  {
    [(NCNotificationListView *)self setPerformingInteractiveTranslationAnimation:1];
    self->_interactionTranslation = translation;

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setInteractionVelocity:(double)velocity
{
  if (vabdd_f64(velocity, self->_interactionVelocity) >= 2.22044605e-16)
  {
    [(NCNotificationListView *)self setPerformingInteractionVelocityAnimation:1];
    self->_interactionVelocity = velocity;

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (BOOL)isRolledUnderView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  [(NCNotificationListView *)self layoutOffsetForViewAtIndex:index];
  v8 = v7;
  dataSource = [(NCNotificationListView *)self dataSource];
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _widthForListViewInRect:?];
  [dataSource notificationListView:self heightForItemAtIndex:index withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v10}];
  v12 = v11;

  LOBYTE(index) = [(NCNotificationListView *)self _shouldRollUnderView:viewCopy withHeight:v12 layoutOffset:v8];
  return index;
}

- (void)setSublistsRevealed:(BOOL)revealed
{
  if (self->_sublistsRevealed != revealed)
  {
    self->_sublistsRevealed = revealed;
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setOverrideLeadingViewHeight:(double)height
{
  if (vabdd_f64(self->_overrideLeadingViewHeight, height) >= 2.22044605e-16)
  {
    [(NCNotificationListView *)self setPerformingOverrideLeadingViewHeightAdjustment:1];
    self->_overrideLeadingViewHeight = height;

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (void)setMaximumLeadingViewHeight:(double)height
{
  if (vabdd_f64(self->_maximumLeadingViewHeight, height) >= 2.22044605e-16)
  {
    self->_maximumLeadingViewHeight = height;
    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (BOOL)isPerformingRemovalAnimation
{
  if ([(NCNotificationListView *)self removalAnimationCount]> 0)
  {
    return 1;
  }

  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  isPerformingRemovalAnimation = [_directSuperListView isPerformingRemovalAnimation];

  return isPerformingRemovalAnimation;
}

- (void)_incrementRemovalAnimationCount
{
  v3 = [(NCNotificationListView *)self removalAnimationCount]+ 1;

  [(NCNotificationListView *)self setRemovalAnimationCount:v3];
}

- (void)_decrementRemovalAnimationCount
{
  removalAnimationCount = [(NCNotificationListView *)self removalAnimationCount];
  if (removalAnimationCount <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = removalAnimationCount;
  }

  [(NCNotificationListView *)self setRemovalAnimationCount:v4 - 1];
}

- (id)visibleViewAtIndex:(unint64_t)index
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v6 = [visibleViews objectForKey:v5];

  return v6;
}

- (BOOL)containsVisibleView:(id)view
{
  v16 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(NCNotificationListView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v9 == viewCopy || (objc_opt_respondsToSelector() & 1) != 0 && ([v9 containsVisibleView:viewCopy] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (BOOL)_isVisibleView:(id)view
{
  viewCopy = view;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allValues = [visibleViews allValues];
  v7 = [allValues containsObject:viewCopy];

  return v7;
}

- (void)_setVisibleView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  if (viewCopy)
  {
    v15 = viewCopy;
    visibleViews = [(NCNotificationListView *)self visibleViews];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [visibleViews setObject:v15 forKey:v8];

    v9 = [(NCNotificationListView *)self _listViewForView:v15];
    traitCollection = [(NCNotificationListView *)self traitCollection];
    [v9 updateBottomViewTransitionStyleWithTraitCollection:traitCollection];

    v11 = objc_opt_class();
    v12 = v15;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [v14 _setNeedsUpdateOfApparentZPositionsOfListCells];
    }
  }

  MEMORY[0x2821F96F8](viewCopy);
}

- (void)_updateStoredVisibleViewsForViewInsertedAtIndex:(unint64_t)index
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allKeys = [visibleViews allKeys];
  v7 = [allKeys copy];

  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_136];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__NCNotificationListView__updateStoredVisibleViewsForViewInsertedAtIndex___block_invoke_2;
  v9[3] = &unk_278371090;
  v9[4] = self;
  v9[5] = index;
  [v8 enumerateObjectsUsingBlock:v9];
}

void __74__NCNotificationListView__updateStoredVisibleViewsForViewInsertedAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 unsignedIntegerValue];
  if (v3 >= *(a1 + 40))
  {
    v4 = v3;
    v5 = [*(a1 + 32) visibleViews];
    v6 = [v5 objectForKey:v10];

    v7 = [*(a1 + 32) visibleViews];
    [v7 removeObjectForKey:v10];

    v8 = [*(a1 + 32) visibleViews];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 1];
    [v8 setObject:v6 forKey:v9];
  }
}

- (void)_updateStoredVisibleViewsForViewRemovedAtIndex:(unint64_t)index
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [visibleViews removeObjectForKey:v6];

  visibleViews2 = [(NCNotificationListView *)self visibleViews];
  allKeys = [visibleViews2 allKeys];
  v9 = [allKeys copy];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_138];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NCNotificationListView__updateStoredVisibleViewsForViewRemovedAtIndex___block_invoke_2;
  v11[3] = &unk_278371090;
  v11[4] = self;
  v11[5] = index;
  [v10 enumerateObjectsUsingBlock:v11];
}

void __73__NCNotificationListView__updateStoredVisibleViewsForViewRemovedAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 unsignedIntegerValue];
  if (v3 >= *(a1 + 40))
  {
    v4 = v3;
    v5 = [*(a1 + 32) visibleViews];
    v6 = [v5 objectForKey:v10];

    v7 = [*(a1 + 32) visibleViews];
    [v7 removeObjectForKey:v10];

    v8 = [*(a1 + 32) visibleViews];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 - 1];
    [v8 setObject:v6 forKey:v9];
  }
}

- (void)_removeStoredVisibleViewAtIndex:(unint64_t)index
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v9 = [visibleViews objectForKey:v6];

  if (v9)
  {
    [v9 removeFromSuperview];
    visibleViews2 = [(NCNotificationListView *)self visibleViews];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [visibleViews2 removeObjectForKey:v8];

    [(NCNotificationListView *)self _recycleViewIfNecessary:v9];
  }
}

- (void)_updateVisibleViewsForUpdatedVisibleRect:(CGRect)rect
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  visibleViews = [(NCNotificationListView *)self visibleViews];
  allValues = [visibleViews allValues];

  v6 = [allValues countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = [(NCNotificationListView *)self _listViewForView:*(*(&v37 + 1) + 8 * i)];
        v11 = v10;
        if (v10)
        {
          [v10 frame];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          [(NCNotificationListView *)self visibleRectBottomMarginForRollUnder];
          UIRectInset();
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
          v52.origin.x = v13;
          v52.origin.y = v15;
          v52.size.width = v17;
          v52.size.height = v19;
          if (CGRectIntersectsRect(v43, v52))
          {
            v44.origin.x = x;
            v44.origin.y = y;
            v44.size.width = width;
            v44.size.height = height;
            v53.origin.x = v13;
            v53.origin.y = v15;
            v53.size.width = v17;
            rect = v19;
            v53.size.height = v19;
            v45 = CGRectIntersection(v44, v53);
            v36 = v45.origin.x;
            v33 = v45.origin.y;
            v34 = v45.size.width;
            v24 = v45.size.height;
            if ([v11 isPerformingGroupingAnimation])
            {
              v46.origin.x = x;
              v46.origin.y = y;
              v46.size.width = width;
              v46.size.height = height;
              MaxY = CGRectGetMaxY(v46);
              v47.origin.x = v13;
              v47.origin.y = v15;
              v47.size.width = v17;
              v47.size.height = rect;
              v26 = MaxY - CGRectGetMinY(v47);
              if (v24 < v26)
              {
                v24 = v26;
              }
            }

            v27 = v34;
            v28 = v33 - v15;
          }

          else
          {
            v48.origin.x = v13;
            v48.origin.y = v15;
            v48.size.width = v17;
            v48.size.height = v19;
            v35 = v13;
            v29 = v17;
            v30 = v19;
            MinY = CGRectGetMinY(v48);
            v49.origin.x = x;
            v49.origin.y = y;
            v49.size.width = width;
            v49.size.height = height;
            v36 = 0.0;
            v28 = 0.0;
            if (MinY <= CGRectGetMaxY(v49))
            {
              v50.origin.x = v35;
              v50.origin.y = v15;
              v50.size.width = v29;
              v50.size.height = v30;
              v28 = CGRectGetHeight(v50);
            }

            v51.origin.x = v35;
            v51.origin.y = v15;
            v51.size.width = v29;
            v51.size.height = v30;
            v27 = CGRectGetWidth(v51);
            v24 = 0.0;
          }

          [v11 setVisibleRect:{v36, v28, v27, v24, *&rect}];
          if ([(NCNotificationListView *)self isPerformingBottomMarginAdjustmentAnimation])
          {
            [v11 setPerformingBottomMarginAdjustmentAnimation:1];
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }
}

- (BOOL)_isTopSubviewHeightLessThanVisibleRect
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v4 = [visibleViews objectForKey:&unk_283015440];

  if (v4)
  {
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(NCNotificationListView *)self visibleRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    Height = CGRectGetHeight(v24);
    v25.origin.x = v14;
    v25.origin.y = v16;
    v25.size.width = v18;
    v25.size.height = v20;
    v22 = Height < CGRectGetHeight(v25);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_setRevealAlphaForView:(id)view desiredAlpha:(double)alpha
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = viewCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 && ([v7 isRevealed] & 1) == 0 && objc_msgSend(v8, "_isGrouping"))
  {
    [v8 revealPercentage];
    alpha = v9;
  }

  [viewCopy alpha];
  if (alpha * v10 == 0.0)
  {
    [viewCopy alpha];
    if (v11 != 0.0 || alpha != 0.0)
    {
      [(NCNotificationListView *)self setNeedsForcedGlassUpdate:1];
    }
  }

  [viewCopy setAlpha:alpha];
}

- (void)_performInsertionAnimationForView:(id)view
{
  v29[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([(NCNotificationListView *)self groupingAnimationStyle]== 1)
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v5;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    v6 = &v28;
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
    [(NCListAnimationSettings *)self->_animationSettings animationScale];
    v8 = v7;
    [(NCListAnimationSettings *)self->_animationSettings animationScale];
    CGAffineTransformMakeScale(&v28, v8, v9);
    v27 = v28;
    v6 = &v27;
  }

  [viewCopy setTransform:v6];
  isRevealed = [(NCNotificationListView *)self isRevealed];
  v11 = 0.0;
  if (isRevealed)
  {
    v11 = 1.0;
  }

  [viewCopy setAlpha:v11];
  v12 = [NCDecomposedAnimation alloc];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__NCNotificationListView__performInsertionAnimationForView___block_invoke;
  v25[3] = &unk_27836F6A8;
  v13 = viewCopy;
  v26 = v13;
  insertionAnimation_scaleX = [(NCListAnimationSettings *)self->_animationSettings insertionAnimation_scaleX];
  v15 = [(NCDecomposedAnimation *)v12 initWithAnimationBlock:v25 settings:insertionAnimation_scaleX name:@"scale.x"];

  v16 = [NCDecomposedAnimation alloc];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__NCNotificationListView__performInsertionAnimationForView___block_invoke_2;
  v23[3] = &unk_27836F6A8;
  v24 = v13;
  animationSettings = self->_animationSettings;
  v18 = v13;
  v19 = [(NCListAnimationSettings *)animationSettings insertionAnimation_scaleY:v23[0]];
  v20 = [(NCDecomposedAnimation *)v16 initWithAnimationBlock:v23 settings:v19 name:@"scale.y"];

  _currentHighFrameRateAnimator = [(NCNotificationListView *)self _currentHighFrameRateAnimator];
  v29[0] = v15;
  v29[1] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [_currentHighFrameRateAnimator animateWithDecomposedAnimations:v22 completion:0];

  [(NCNotificationListView *)self setNeedsUpdateOfApparentZPositionsOfListCells];
}

void __60__NCNotificationListView__performInsertionAnimationForView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setValue:&unk_283015458 forKeyPath:@"transform.scale.x"];
}

void __60__NCNotificationListView__performInsertionAnimationForView___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setValue:&unk_283015458 forKeyPath:@"transform.scale.y"];
}

- (void)_performRemovalAnimationForView:(id)view index:(unint64_t)index isHorizontallyDisplaced:(BOOL)displaced
{
  viewCopy = view;
  dataSource = [(NCNotificationListView *)self dataSource];
  _rootSuperListView = [(NCNotificationListView *)self _rootSuperListView];
  [(NCNotificationListView *)self _incrementRemovalAnimationCount];
  [_rootSuperListView _incrementRemovalAnimationCount];
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__NCNotificationListView__performRemovalAnimationForView_index_isHorizontallyDisplaced___block_invoke;
  v20[3] = &unk_2783710B8;
  v10 = viewCopy;
  v21 = v10;
  objc_copyWeak(&v23, &location);
  displacedCopy = displaced;
  selfCopy = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__NCNotificationListView__performRemovalAnimationForView_index_isHorizontallyDisplaced___block_invoke_2;
  v14[3] = &unk_2783710E0;
  objc_copyWeak(&v19, &location);
  v11 = v10;
  v15 = v11;
  selfCopy2 = self;
  v12 = dataSource;
  v17 = v12;
  v13 = _rootSuperListView;
  v18 = v13;
  [(NCNotificationListView *)self _performViewAnimationBlock:v20 completionBlock:v14 type:3];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __88__NCNotificationListView__performRemovalAnimationForView_index_isHorizontallyDisplaced___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained _isAnimationStyleDissolve])
  {
    v11 = *(a1 + 32);
    v12 = 0.0;
    goto LABEL_25;
  }

  if (*(a1 + 56) != 1 || (v13 = 1.0, [WeakRetained isPerformingGroupingAnimation]))
  {
    v14 = [WeakRetained animationSettings];
    [v14 animationScaleWhileGrouping];
    v13 = v15;
  }

  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, v13, v13);
  if (*(a1 + 56) == 1 && [WeakRetained _isLayoutFromBottomUp])
  {
    if (![WeakRetained isGrouped])
    {
      if ([WeakRetained isPerformingGroupingAnimation])
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v16 = [WeakRetained count] == 0;
  }

  else
  {
    v16 = 0;
  }

  if ([WeakRetained isPerformingGroupingAnimation])
  {
LABEL_12:
    v17 = [WeakRetained animationSettings];
    [v17 animationTranslationWhileGrouping];
    v19 = v18;
    v31.origin.x = v3;
    v31.origin.y = v5;
    v31.size.width = v7;
    v31.size.height = v9;
    v20 = v19 + (1.0 - v13) * -0.5 * CGRectGetHeight(v31);
LABEL_15:

    goto LABEL_18;
  }

  if (!v16)
  {
    v17 = [WeakRetained animationSettings];
    [v17 animationTranslation];
    v20 = -v21;
    goto LABEL_15;
  }

LABEL_17:
  [*(a1 + 32) bounds];
  v20 = -CGRectGetHeight(v32);
LABEL_18:
  v22 = 0.0;
  if (*(a1 + 56) == 1 && ([WeakRetained isPerformingGroupingAnimation] & 1) == 0)
  {
    [WeakRetained bounds];
    v22 = CGRectGetWidth(v33) * 1.5;
  }

  v23 = [WeakRetained _shouldReverseLayoutDirection];
  v24 = -v22;
  memset(&v29.c, 0, 32);
  if (v23)
  {
    v24 = v22;
  }

  *&v29.a = 0uLL;
  CGAffineTransformMakeTranslation(&v29, v24, v20);
  t1 = v30;
  memset(&v28, 0, sizeof(v28));
  v26 = v29;
  CGAffineTransformConcat(&v28, &t1, &v26);
  v25 = *(a1 + 32);
  t1 = v28;
  [v25 setTransform:&t1];
  v11 = *(a1 + 32);
  v12 = 1.0;
  if (!*(a1 + 56))
  {
    v12 = 0.0;
  }

LABEL_25:
  [v11 setAlpha:v12];
  [*(a1 + 40) _notifyDataSourceViewWillBeRemoved:*(a1 + 32)];
}

void __88__NCNotificationListView__performRemovalAnimationForView_index_isHorizontallyDisplaced___block_invoke_2(id *a1)
{
  v2 = *MEMORY[0x277D77DD0];
  if (os_signpost_enabled(*MEMORY[0x277D77DD0]))
  {
    LOWORD(v9[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NC_NOTIFICATION_DISMISSAL_END", " enableTelemetry=YES ", v9, 2u);
  }

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v4 = [a1[4] superview];
  v5 = v4;
  if (v4 == WeakRetained)
  {
    v6 = [a1[5] _isVisibleView:a1[4]];

    if ((v6 & 1) == 0)
    {
      [a1[4] removeFromSuperview];
      v7 = a1[4];
      v8 = *(MEMORY[0x277CBF2C0] + 16);
      v9[0] = *MEMORY[0x277CBF2C0];
      v9[1] = v8;
      v9[2] = *(MEMORY[0x277CBF2C0] + 32);
      [v7 setTransform:v9];
      [a1[5] _recycleViewIfNecessary:a1[4] withDataSource:a1[6]];
    }
  }

  else
  {
  }

  [a1[5] _decrementRemovalAnimationCount];
  [a1[7] _decrementRemovalAnimationCount];
  [WeakRetained _configureClippingIfNecessary];
  if (objc_opt_respondsToSelector())
  {
    [a1[6] notificationListView:a1[5] didRemoveView:a1[4]];
  }

  [a1[5] setNeedsUpdateOfApparentZPositionsOfListCells];
}

- (void)_notifyDataSourceViewWillBeRemoved:(id)removed
{
  removedCopy = removed;
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource notificationListView:self willRemoveView:removedCopy];
  }
}

- (void)_performViewAnimationBlock:(id)block completionBlock:(id)completionBlock type:(unint64_t)type
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  [(NCNotificationListView *)self _animationTension];
  v10 = v9;
  [(NCNotificationListView *)self _animationFriction];
  [(NCNotificationListView *)self _performViewAnimationBlock:blockCopy completionBlock:completionBlockCopy withTension:type friction:v10 type:v11];
}

- (void)_performViewAnimationBlock:(id)block completionBlock:(id)completionBlock withTension:(double)tension friction:(double)friction type:(unint64_t)type
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  _currentHighFrameRateAnimator = [(NCNotificationListView *)self _currentHighFrameRateAnimator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__NCNotificationListView__performViewAnimationBlock_completionBlock_withTension_friction_type___block_invoke;
  v16[3] = &unk_27836F8E8;
  v17 = completionBlockCopy;
  v15 = completionBlockCopy;
  [_currentHighFrameRateAnimator animateUsingSpringWithTension:0 friction:type interactive:blockCopy type:v16 animations:tension completion:friction];
}

uint64_t __95__NCNotificationListView__performViewAnimationBlock_completionBlock_withTension_friction_type___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performRetargetableAnimationForView:(id)view type:(unint64_t)type animationBlock:(id)block completionBlock:(id)completionBlock
{
  viewCopy = view;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  viewsPerformingAnimation = [(NCNotificationListView *)self viewsPerformingAnimation];
  v14 = [viewsPerformingAnimation containsObject:viewCopy];

  if (v14)
  {
    _currentHighFrameRateAnimator = [(NCNotificationListView *)self _currentHighFrameRateAnimator];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __99__NCNotificationListView__performRetargetableAnimationForView_type_animationBlock_completionBlock___block_invoke_2;
    v23[3] = &unk_278371130;
    v16 = &v25;
    v24[1] = self;
    v25 = completionBlockCopy;
    v17 = v24;
    v24[0] = viewCopy;
    v18 = viewCopy;
    v19 = completionBlockCopy;
    [_currentHighFrameRateAnimator animateByRetargetingType:type animations:blockCopy completion:v23];
  }

  else
  {
    if (viewCopy)
    {
      viewsPerformingAnimation2 = [(NCNotificationListView *)self viewsPerformingAnimation];
      [viewsPerformingAnimation2 addObject:viewCopy];
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __99__NCNotificationListView__performRetargetableAnimationForView_type_animationBlock_completionBlock___block_invoke;
    v26[3] = &unk_278371108;
    v16 = &v28;
    v27[1] = self;
    v28 = completionBlockCopy;
    v17 = v27;
    v27[0] = viewCopy;
    v21 = viewCopy;
    v22 = completionBlockCopy;
    [(NCNotificationListView *)self _performViewAnimationBlock:blockCopy completionBlock:v26 type:type];
  }
}

void __99__NCNotificationListView__performRetargetableAnimationForView_type_animationBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) viewsPerformingAnimation];
    [v3 removeObject:*(a1 + 32)];
  }
}

void __99__NCNotificationListView__performRetargetableAnimationForView_type_animationBlock_completionBlock___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2 && a3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))();
    }

    if (*(a1 + 32))
    {
      v5 = [*(a1 + 40) viewsPerformingAnimation];
      [v5 removeObject:*(a1 + 32)];
    }
  }
}

- (double)_adjustedTensionForRevealAnimation
{
  [(NCNotificationListView *)self _verticalVelocityForSuperview];
  v4 = v3;
  [(NCListAnimationSettings *)self->_animationSettings revealHintingAnimationTension];
  v6 = v5;
  [(NCListAnimationSettings *)self->_animationSettings revealHintingAnimationTensionVelocityFactor];
  return v6 + v7 * v4;
}

- (double)_adjustedFrictionForRevealAnimation
{
  [(NCNotificationListView *)self _verticalVelocityForSuperview];
  v4 = v3;
  [(NCListAnimationSettings *)self->_animationSettings revealHintingAnimationFriction];
  v6 = v5;
  [(NCListAnimationSettings *)self->_animationSettings revealHintingAnimationFrictionVelocityFactor];
  return v6 + v7 * v4;
}

- (double)_verticalVelocityForSuperview
{
  superview = [(NCNotificationListView *)self superview];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [superview _verticalVelocity];
    v3 = fabs(v4);
  }

  return v3;
}

- (double)_revealAnimationDelayForObjectAtIndex:(unint64_t)index
{
  v4 = ([(NCNotificationListView *)self revealIndexOffset]+ index);
  [(NCListAnimationSettings *)self->_animationSettings revealGestureAnimationRevealDelayStep];
  return fmin(fmax(v5 * v4, 0.0), 1.0);
}

- (void)_configureClippingIfNecessary
{
  if ([(NCNotificationListView *)self _shouldPerformClipping])
  {

    [(NCNotificationListView *)self _setupClipping];
  }

  else
  {

    [(NCNotificationListView *)self _resetClipping];
  }
}

- (void)_setupClipping
{
  layer = [(NCNotificationListView *)self layer];
  [layer setMaskedCorners:15];

  [(NCNotificationListView *)self _setContinuousCornerRadius:13.0];

  [(NCNotificationListView *)self setClipsToBounds:1];
}

- (void)_resetClipping
{
  layer = [(NCNotificationListView *)self layer];
  [layer setMaskedCorners:0];

  [(NCNotificationListView *)self setClipsToBounds:0];
}

- (BOOL)_shouldPerformClipping
{
  traitCollection = [(NCNotificationListView *)self traitCollection];
  v4 = _NCShouldPlatterClipped();

  if (!v4)
  {
    return 0;
  }

  if ([(NCNotificationListView *)self _isGrouping])
  {
    [(NCNotificationListView *)self groupedTranslation];
    v6 = fabs(v5);
    [(NCNotificationListView *)self horizontalInsetMargin];
    if (v6 > v7)
    {
      return 1;
    }
  }

  return [(NCNotificationListView *)self removedViewIndex]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_bottomTransitionTransformerForView:(id)view
{
  viewCopy = view;
  currentBottomTransitionTransformer = [(NCNotificationListView *)self currentBottomTransitionTransformer];
  if (currentBottomTransitionTransformer - 1 > 1)
  {
    currentBottomTransitionTransformer2 = 0;
  }

  else
  {
    currentBottomTransitionTransformer2 = currentBottomTransitionTransformer;
    v7 = [(NCNotificationListView *)self _listViewForView:viewCopy];
    v8 = v7;
    if (v7)
    {
      currentBottomTransitionTransformer2 = [v7 currentBottomTransitionTransformer];
    }
  }

  return currentBottomTransitionTransformer2;
}

- (id)_backgroundGlassFromDataSource
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource backgroundGlassForNotificationList:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_listViewForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_recycleViewIfNecessary:(id)necessary withDataSource:(id)source
{
  necessaryCopy = necessary;
  sourceCopy = source;
  v7 = sourceCopy;
  if (sourceCopy)
  {
    dataSource = sourceCopy;
  }

  else
  {
    dataSource = [(NCNotificationListView *)self dataSource];
    if (!dataSource)
    {
      goto LABEL_6;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(NCNotificationListView *)self _listViewForView:necessaryCopy];
    [v9 recycleVisibleViews];

    [dataSource recycleView:necessaryCopy];
  }

LABEL_6:
}

- (CGAffineTransform)_scaleTransformForGroupingAnimationForViewAtIndex:(SEL)index leadingViewHeight:(unint64_t)height
{
  dataSource = [(NCNotificationListView *)self dataSource];
  [(NCNotificationListView *)self bounds];
  [(NCNotificationListView *)self _widthForListViewInRect:?];
  [dataSource notificationListView:self heightForItemAtIndex:height withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v10}];
  v12 = v11;

  v13 = 0.0;
  if (![(NCNotificationListView *)self isHiddenBelowStack]&& [(NCNotificationListView *)self showStackBelowLeadingView])
  {
    [(NCNotificationListView *)self groupedOverlapHeightMultiple];
    v15 = v14;
    [(NCNotificationListView *)self _resolvedViewOverlap];
    v17 = v15 * v16;
    v18 = 0.0;
    if (height)
    {
      v18 = 1.0;
    }

    v13 = v17 * v18;
  }

  v19 = pow(0.94, height);
  if (v13 + a5 >= v12)
  {
    v20 = v19;
  }

  else
  {
    v20 = (v13 + a5) / v12;
  }

  if (v20 >= v19)
  {
    v20 = v19;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;

  return CGAffineTransformMakeScale(retstr, v19, v20);
}

- (void)_setHiddenBelowStackForView:(id)view hiddenBelowStack:(BOOL)stack
{
  stackCopy = stack;
  v5 = [(NCNotificationListView *)self _listViewForView:view];
  if (v5)
  {
    v6 = v5;
    [v5 setHiddenBelowStack:stackCopy];
    v5 = v6;
  }
}

- (void)_updateStackedViewsForGrouping:(BOOL)grouping
{
  visibleViews = [(NCNotificationListView *)self visibleViews];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NCNotificationListView__updateStackedViewsForGrouping___block_invoke;
  v6[3] = &unk_278371158;
  groupingCopy = grouping;
  v6[4] = self;
  [visibleViews enumerateKeysAndObjectsUsingBlock:v6];
}

void __57__NCNotificationListView__updateStackedViewsForGrouping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = v11;
  v7 = *(a1 + 40);
  if (v7 == 1 && v5 != 0)
  {
    goto LABEL_9;
  }

  if ((v7 & 1) == 0)
  {
    v9 = v5;
    [*(*(a1 + 32) + 2624) groupListMaxViewCount];
    if (v10 > v9)
    {
      LOBYTE(v7) = *(a1 + 40);
      v6 = v11;
LABEL_9:
      [*(a1 + 32) _setHiddenBelowStackForView:v6 hiddenBelowStack:v7 & 1];
    }
  }
}

- (double)_widthForListViewInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(NCNotificationListView *)self horizontalInsetMargin];
  v8 = v7;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, v8, 0.0);

  return CGRectGetWidth(v12);
}

- (void)setGroupedTranslation:(double)translation
{
  if (self->_groupedTranslation != translation)
  {
    self->_groupedTranslation = translation;
    [(NCNotificationListView *)self _configureClippingIfNecessary];
    [(NCNotificationListView *)self _giveDataSourceUpdatedTransformWhichIncludesSubviewsXTranslation];

    [(NCNotificationListView *)self setNeedsLayout];
  }
}

- (BOOL)_isAnimatingForParentNotificationListView
{
  _directSuperListView = [(NCNotificationListView *)self _directSuperListView];
  v4 = _directSuperListView;
  if (_directSuperListView)
  {
    viewsPerformingAnimation = [_directSuperListView viewsPerformingAnimation];
    v6 = [viewsPerformingAnimation containsObject:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isLayoutFromBottomUp
{
  _anySuperNotificationListView = [(NCNotificationListView *)self _anySuperNotificationListView];
  v3 = _anySuperNotificationListView;
  if (_anySuperNotificationListView)
  {
    traitCollection = [_anySuperNotificationListView traitCollection];
    v5 = _NCIsNotVerticalSpaceConstrained(traitCollection);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_anySuperNotificationListView
{
  superview = [(NCNotificationListView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
    do
    {
      v4 = superview;

      superview = [v4 superview];

      objc_opt_class();
      v3 = v4;
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_animateVisibleRectAdjustmentIfNecessaryWithVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  isListRevealTargetContentOffsetClamped = [(NCNotificationListView *)self isListRevealTargetContentOffsetClamped];
  if (isListRevealTargetContentOffsetClamped)
  {
    [(NCNotificationListView *)self _visibleRect];
    v9 = CGRectGetHeight(v13);
    [(NCNotificationListView *)self _setVisibleRectWithoutAlteringAnimations:x, y, width, height];
    [(NCNotificationListView *)self _setupVisibleRectHeightFloatAnimatablePropertyWithStartingValue:v9];
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    [(NCNotificationListView *)self _animateVisibleRectHeight:CGRectGetHeight(v14)];
  }

  else
  {
    visibleRectHeightAnimatableProperty = [(NCNotificationListView *)self visibleRectHeightAnimatableProperty];

    if (visibleRectHeightAnimatableProperty)
    {
      visibleRectHeightAnimatableProperty2 = [(NCNotificationListView *)self visibleRectHeightAnimatableProperty];
      [visibleRectHeightAnimatableProperty2 invalidate];

      [(NCNotificationListView *)self setVisibleRectHeightAnimatableProperty:0];
    }
  }

  return isListRevealTargetContentOffsetClamped;
}

- (void)_animateVisibleRectHeight:(double)height
{
  visibleRectHeightAnimatableProperty = [(NCNotificationListView *)self visibleRectHeightAnimatableProperty];

  if (visibleRectHeightAnimatableProperty)
  {
    visibleRectHeightAnimatableProperty2 = [(NCNotificationListView *)self visibleRectHeightAnimatableProperty];
    [visibleRectHeightAnimatableProperty2 value];
    v8 = v7;

    if (v8 != height)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__NCNotificationListView__animateVisibleRectHeight___block_invoke;
      v13[3] = &unk_27836FDD0;
      v13[4] = self;
      *&v13[5] = height;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__NCNotificationListView__animateVisibleRectHeight___block_invoke_2;
      v12[3] = &unk_27836F6A8;
      v12[4] = self;
      [(NCNotificationListView *)self _adjustedTensionForRevealAnimation];
      v10 = v9;
      [(NCNotificationListView *)self _adjustedFrictionForRevealAnimation];
      [(NCNotificationListView *)self _performViewAnimationBlock:v13 completionBlock:v12 withTension:0 friction:v10 type:v11];
    }
  }
}

void __52__NCNotificationListView__animateVisibleRectHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleRectHeightAnimatableProperty];
  [v2 setValue:*(a1 + 40)];
}

- (void)_setupVisibleRectHeightFloatAnimatablePropertyWithStartingValue:(double)value
{
  v13[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  visibleRectHeightAnimatableProperty = self->_visibleRectHeightAnimatableProperty;
  if (!visibleRectHeightAnimatableProperty)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75D38]);
    v7 = self->_visibleRectHeightAnimatableProperty;
    self->_visibleRectHeightAnimatableProperty = v6;

    [(UIViewFloatAnimatableProperty *)self->_visibleRectHeightAnimatableProperty setVelocityUsableForVFD:1];
    visibleRectHeightAnimatableProperty = self->_visibleRectHeightAnimatableProperty;
  }

  [(UIViewFloatAnimatableProperty *)visibleRectHeightAnimatableProperty setValue:value];
  v8 = MEMORY[0x277D75D18];
  v13[0] = self->_visibleRectHeightAnimatableProperty;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__NCNotificationListView__setupVisibleRectHeightFloatAnimatablePropertyWithStartingValue___block_invoke;
  v10[3] = &unk_27836F498;
  objc_copyWeak(&v11, &location);
  [v8 _createTransformerWithInputAnimatableProperties:v9 presentationValueChangedCallback:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __90__NCNotificationListView__setupVisibleRectHeightFloatAnimatablePropertyWithStartingValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = WeakRetained[326];
    if (v2 && [v11 isRevealed])
    {
      [v2 presentationValue];
      v4 = v3;
      [v11 visibleRect];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [v11 _setVisibleRectWithoutAlteringAnimations:?];
      [v11 setPerformingVisibleRectAdjustment:1];
      [v11 setNeedsLayout];
      [v11 _updateVisibleViewsForUpdatedVisibleRect:{v6, v8, v10, v4}];
    }

    WeakRetained = v11;
  }
}

- (BOOL)_isFeaturedLeadingViewAtIndex:(unint64_t)index
{
  if ([(NCNotificationListView *)self numberOfFeaturedLeadingViews]<= index)
  {
    return 0;
  }

  return [(NCNotificationListView *)self _isShowingFeaturedLeadingViews];
}

- (double)_widthForFeaturedLeadingViewInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(NCNotificationListView *)self horizontalInsetMargin];
  v9 = v8;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectInset(v14, v9, 0.0);
  v10 = CGRectGetWidth(v15);
  v11 = ([(NCNotificationListView *)self numberOfFeaturedLeadingViews]- 1);
  [(NCListAnimationSettings *)self->_animationSettings featuredLeadingViewSpacing];
  return (v10 - v11 * v12) / [(NCNotificationListView *)self numberOfFeaturedLeadingViews];
}

- (double)_widthForFeaturedLeadingView
{
  [(NCNotificationListView *)self bounds];

  [(NCNotificationListView *)self _widthForFeaturedLeadingViewInRect:?];
  return result;
}

- (double)_heightForFeaturedLeadingViewInRect:(CGRect)rect
{
  [(NCNotificationListView *)self _widthForFeaturedLeadingViewInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = v4;
  dataSource = [(NCNotificationListView *)self dataSource];
  if ([(NCNotificationListView *)self numberOfFeaturedLeadingViews])
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      [dataSource notificationListView:self heightForItemAtIndex:v7 withWidth:-[NCNotificationListView _isCurrentlyInDisplayListAsStackMode](self inDisplayListAsStackMode:"_isCurrentlyInDisplayListAsStackMode") ignoreExpandedGroupStack:{0, v5}];
      if (v8 < v9)
      {
        v8 = v9;
      }

      ++v7;
    }

    while ([(NCNotificationListView *)self numberOfFeaturedLeadingViews]> v7);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)_heightForFeaturedLeadingView
{
  [(NCNotificationListView *)self bounds];

  [(NCNotificationListView *)self _heightForFeaturedLeadingViewInRect:?];
  return result;
}

- (void)_updateTransformedView:(id)view toFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  viewCopy = view;
  UIRectGetCenter();
  traitCollection = [(NCNotificationListView *)self traitCollection];
  [traitCollection displayScale];
  UIPointRoundToScale();
  v9 = v8;
  v11 = v10;

  [viewCopy frame];
  UIRectGetCenter();
  if (v9 != v13 || v11 != v12)
  {
    [viewCopy setCenter:{v9, v11}];
  }

  [viewCopy bounds];
  v22.origin.x = v15;
  v22.origin.y = v16;
  v22.size.width = v17;
  v22.size.height = v18;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  if (!CGRectEqualToRect(v21, v22))
  {
    [viewCopy setBounds:{0.0, 0.0, width, height}];
  }
}

- (void)_updateTransformedView:(id)view toFrame:(CGRect)frame withTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [(NCNotificationListView *)self _updateTransformedView:viewCopy toFrame:x, y, width, height];
  if (viewCopy)
  {
    [viewCopy transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v12 = *&transform->c;
  *&v14.a = *&transform->a;
  *&v14.c = v12;
  *&v14.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v13 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v13;
    *&t1.tx = *&transform->tx;
    [viewCopy setTransform:&t1];
  }
}

- (BOOL)_shouldUpdateTransformedView:(id)view toFrame:(CGRect)frame alpha:(double)alpha transform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [viewCopy bounds];
  v13 = CGRectGetWidth(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (v13 == CGRectGetWidth(v28) && ([viewCopy bounds], v14 = CGRectGetHeight(v29), v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, v14 == CGRectGetHeight(v30)))
  {
    [viewCopy center];
    v18 = v17;
    v20 = v19;
    UIRectGetCenter();
    LOBYTE(v15) = 1;
    if (v18 == v22 && v20 == v21)
    {
      [viewCopy alpha];
      if (v23 == alpha)
      {
        if (viewCopy)
        {
          [viewCopy transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v24 = *&transform->c;
        *&v25.a = *&transform->a;
        *&v25.c = v24;
        *&v25.tx = *&transform->tx;
        v15 = !CGAffineTransformEqualToTransform(&t1, &v25);
      }
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (BOOL)_shouldRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset
{
  viewCopy = view;
  v7 = [(NCNotificationListView *)self _listViewForView:viewCopy];
  traitCollection = [(NCNotificationListView *)self traitCollection];
  [traitCollection displayScale];

  LODWORD(traitCollection) = [(NCNotificationListView *)self _hasBottomTransitionTransformerForView:viewCopy];
  if (!traitCollection)
  {
    goto LABEL_7;
  }

  UIRoundToScale();
  v10 = v9;
  [(NCNotificationListView *)self _visibleRect];
  if (v10 < CGRectGetMinY(v16))
  {
    goto LABEL_7;
  }

  UIRoundToScale();
  v12 = v11;
  [(NCNotificationListView *)self _rollUnderTranslationTopMargin];
  UICeilToScale();
  if (v12 <= v13)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    isRevealed = 1;
    goto LABEL_8;
  }

  if ([v7 isGrouped])
  {
    isRevealed = [v7 isRevealed];
  }

  else
  {
LABEL_7:
    isRevealed = 0;
  }

LABEL_8:

  return isRevealed;
}

- (void)_drawRollUnderAreaInDebugViewIfNecessaryWithTopY:(double)y
{
  if (self->_debugView && [(NSNumber *)self->_depth unsignedIntegerValue]== 1)
  {
    debugView = self->_debugView;
    [(NCNotificationListView *)self frame];
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Depth=%lu, Index=%lu]: Roll Under Area: %@", -[NSNumber unsignedIntegerValue](self->_depth, "unsignedIntegerValue"), -[NSNumber unsignedIntegerValue](self->_index, "unsignedIntegerValue"), self->_purpose];
    [(NCNotificationListDebugView *)debugView displayRect:v8 withName:0.0, y, v7, 156.0];
  }
}

- (double)_unclampedTranslationProgressForView:(id)view withHeight:(double)height layoutOffset:(double)offset
{
  v6 = height + offset;
  [(NCNotificationListView *)self _rollUnderTranslationTopMargin];
  v8 = v7;
  [(NCNotificationListView *)self _rollUnderTranslationBottomMargin];
  v10 = v9;
  result = 0.0;
  if (v6 > v8)
  {
    return (v6 - v8) / (v10 - v8);
  }

  return result;
}

- (double)_verticalTranslationProgressForView:(id)view withHeight:(double)height layoutOffset:(double)offset
{
  [(NCNotificationListView *)self _unclampedTranslationProgressForView:view withHeight:height layoutOffset:offset];
  v6 = v5;
  v7 = sin(v5 * 3.14159265 * 0.5);
  v8 = 0.0;
  if (v6 >= 0.0)
  {
    v8 = v6;
  }

  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  return v7 + (v8 - v7) * 0.4;
}

- (CGSize)_scaleForRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset
{
  viewCopy = view;
  [(NCNotificationListView *)self _unclampedTranslationProgressForView:viewCopy withHeight:height layoutOffset:offset];
  v10 = v9;
  v11 = [(NCNotificationListView *)self _bottomTransitionTransformerForView:viewCopy];

  if (v11 == 1)
  {
    v12 = (1.0 - cos(v10)) * -0.3 + 1.0;
    v13 = v12;
  }

  else
  {
    v12 = 1.0;
    v13 = 1.0;
    if (v11 == 2)
    {
      v12 = fmax(fmin(1.0 - (v10 * 0.95 / 0.4 + 0.0), 1.0), 0.05);
      v13 = fmax(fmin(1.0 - (v10 * 0.95 + v10 * 0.95 + 0.0), 1.0), 0.05);
    }
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (double)_verticalTranslationForRollUnderView:(id)view withHeight:(double)height layoutOffset:(double)offset scale:(CGSize)scale
{
  height = scale.height;
  viewCopy = view;
  [(NCNotificationListView *)self _verticalTranslationProgressForView:viewCopy withHeight:height layoutOffset:offset];
  v12 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11;
    v14 = [(NCNotificationListView *)self _bottomTransitionTransformerForView:viewCopy];
    if (v14 == 1)
    {
      [(NCNotificationListView *)self _rollUnderTranslationTopMargin];
      v19 = v18;
      [(NCNotificationListView *)self _rollUnderThresholdOffset];
      v12 = height + offset - (v19 + v13 * (v20 - v19)) + (1.0 - height) * height * -0.5;
    }

    else if (v14 == 2)
    {
      footerCenterY = self->_footerCenterY;
      v16 = 0.0;
      if (footerCenterY)
      {
        [(NSNumber *)footerCenterY bs_CGFloatValue];
        v16 = v17;
      }

      [(NCNotificationListView *)self visibleRect];
      v12 = -fmin(v16 + CGRectGetMinY(v22) - (height * 0.5 + offset), 0.0);
    }
  }

  return v12;
}

- (double)_alphaForRollUnderForView:(id)view withHeight:(double)height layoutOffset:(double)offset
{
  viewCopy = view;
  [(NCNotificationListView *)self _unclampedTranslationProgressForView:viewCopy withHeight:height layoutOffset:offset];
  v10 = v9;
  v11 = [(NCNotificationListView *)self _bottomTransitionTransformerForView:viewCopy];

  if (v11 == 1)
  {
    v12 = (v10 + -1.2) / -0.2 + 1.0;
  }

  else
  {
    v12 = 1.0;
    if (v11 == 2)
    {
      v12 = 1.0 - ((v10 + -0.2) / 0.2 + 0.0);
    }
  }

  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  [(NCNotificationListView *)self _visibleRect];
  if (CGRectGetHeight(v15) == 0.0)
  {
    return 0.0;
  }

  else
  {
    return v13;
  }
}

- (CGAffineTransform)_transformForRollUnderForView:(SEL)view withHeight:(id)height layoutOffset:(double)offset
{
  heightCopy = height;
  [(NCNotificationListView *)self _scaleForRollUnderView:heightCopy withHeight:offset layoutOffset:a6];
  v12 = v11;
  v14 = v13;
  [(NCNotificationListView *)self _verticalTranslationForRollUnderView:heightCopy withHeight:offset layoutOffset:a6 scale:v11, v13];
  v16 = v15;

  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeTranslation(&v21, 0.0, -v16);
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeScale(&v20, v12, v14);
  t1 = v20;
  v18 = v21;
  return CGAffineTransformConcat(retstr, &t1, &v18);
}

- (double)_topSpacingForItemAtIndex:(unint64_t)index
{
  dataSource = [(NCNotificationListView *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([dataSource notificationListView:self topSpacingForItemAtIndex:index], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v6 floatValue];
    v9 = v8;
  }

  else if (index)
  {
    [(NCListAnimationSettings *)self->_animationSettings viewSpacing];
    v9 = v10;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)_bottomSpacingForItemAtIndex:(unint64_t)index
{
  if ([(NCNotificationListView *)self count]- 1 <= index)
  {
    return 0.0;
  }

  [(NCNotificationListView *)self _topSpacingForItemAtIndex:index + 1];
  return result;
}

- (id)_viewForItemAtIndex:(unint64_t)index
{
  dataSource = [(NCNotificationListView *)self dataSource];
  v6 = [dataSource notificationListView:self viewForItemAtIndex:index];

  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [v10 setIndex:v11];

  return v8;
}

- (int64_t)_cachedApparentZDepthOfLastCoplanarView
{
  result = self->_cachedApparentZDepthOfLastCoplanarView;
  if (result == 0x8000000000000000)
  {
    result = [(NCNotificationListView *)self _uncachedApparentZDepthOfLastCoplanarView];
    self->_cachedApparentZDepthOfLastCoplanarView = result;
  }

  return result;
}

- (int64_t)_cachedApparentZDepthOfCoplanarViews
{
  result = self->_cachedApparentZDepthOfCoplanarViews;
  if (result == 0x8000000000000000)
  {
    result = [(NCNotificationListView *)self _uncachedApparentZDepthOfCoplanarViews];
    self->_cachedApparentZDepthOfCoplanarViews = result;
  }

  return result;
}

- (int64_t)_cachedApparentZDepthOfNonCoplanarViews
{
  result = self->_cachedApparentZDepthOfNonCoplanarViews;
  if (result == 0x8000000000000000)
  {
    result = [(NCNotificationListView *)self _uncachedApparentZDepthOfNonCoplanarViews];
    self->_cachedApparentZDepthOfNonCoplanarViews = result;
  }

  return result;
}

- (int64_t)_uncachedApparentZDepthOfLastCoplanarView
{
  coplanarViewIndices = [(NCNotificationListView *)self coplanarViewIndices];
  v4 = -[NCNotificationListView visibleViewAtIndex:](self, "visibleViewAtIndex:", [coplanarViewIndices lastIndex]);
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    apparentZDepth = [v8 apparentZDepth];
  }

  else
  {
    apparentZDepth = 1;
  }

  v10 = objc_opt_class();
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = objc_opt_class();
  v15 = v11;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v14 | v13)
  {
    apparentZDepth = 1;
  }

  return apparentZDepth;
}

- (int64_t)_uncachedApparentZDepthOfCoplanarViews
{
  coplanarViewIndices = [(NCNotificationListView *)self coplanarViewIndices];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NCNotificationListView__uncachedApparentZDepthOfCoplanarViews__block_invoke;
  v6[3] = &unk_278371180;
  v6[4] = self;
  v6[5] = &v7;
  [coplanarViewIndices enumerateIndexesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__NCNotificationListView__uncachedApparentZDepthOfCoplanarViews__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) visibleViewAtIndex:a2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 apparentZDepth];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_class();
  v10 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_opt_class();
  v17 = v10;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14 | v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  v16 = *(*(a1 + 40) + 8);
  if (*(v16 + 24) > v15)
  {
    v15 = *(v16 + 24);
  }

  *(v16 + 24) = v15;
}

- (int64_t)_uncachedApparentZDepthOfNonCoplanarViews
{
  nonCoplanarViewIndices = [(NCNotificationListView *)self nonCoplanarViewIndices];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__NCNotificationListView__uncachedApparentZDepthOfNonCoplanarViews__block_invoke;
  v6[3] = &unk_278371180;
  v6[4] = self;
  v6[5] = &v7;
  [nonCoplanarViewIndices enumerateIndexesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__NCNotificationListView__uncachedApparentZDepthOfNonCoplanarViews__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) visibleViewAtIndex:a2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 apparentZDepth];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_class();
  v10 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = objc_opt_class();
  v17 = v10;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15 | v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  *(*(*(a1 + 40) + 8) + 24) += v16;
}

- (void)_setNeedsUpdateOfApparentZPositionsOfListCells
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_needsUpdateOfApparentZPositionsOfListCells)
  {
    self->_needsUpdateOfApparentZPositionsOfListCells = 1;
    [(NCNotificationListView *)self didSetNeedsUpdateOfApparentZPositionsOfListCells];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    visibleViews = [(NCNotificationListView *)self visibleViews];
    allValues = [visibleViews allValues];

    v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = objc_opt_class();
          v11 = v9;
          if (v10)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            [v13 _setNeedsUpdateOfApparentZPositionsOfListCells];
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateApparentZPositionsOfListCellsGivenApparentZPositionForListView:(int64_t)view withRootScrollVelocity:(double)velocity andGlassVisibility:(BOOL)visibility
{
  if (self->_needsUpdateOfApparentZPositionsOfListCells)
  {
    self->_needsUpdateOfApparentZPositionsOfListCells = 0;
    self->_needsForcedGlassUpdate = 0;
    coplanarViewIndices = [(NCNotificationListView *)self coplanarViewIndices];
    nonCoplanarViewIndices = [(NCNotificationListView *)self nonCoplanarViewIndices];
    _rootSuperListView = [(NCNotificationListView *)self _rootSuperListView];
    apparentZDepth = [_rootSuperListView apparentZDepth];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __137__NCNotificationListView_updateApparentZPositionsOfListCellsGivenApparentZPositionForListView_withRootScrollVelocity_andGlassVisibility___block_invoke;
    v16[3] = &unk_2783711A8;
    visibility ^= 1u;
    v16[4] = self;
    v16[5] = view;
    *&v16[6] = velocity;
    visibilityCopy = visibility;
    v16[7] = apparentZDepth;
    [coplanarViewIndices enumerateIndexesUsingBlock:v16];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = view - [(NCNotificationListView *)self _cachedApparentZDepthOfLastCoplanarView];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __137__NCNotificationListView_updateApparentZPositionsOfListCellsGivenApparentZPositionForListView_withRootScrollVelocity_andGlassVisibility___block_invoke_2;
    v13[3] = &unk_2783711D0;
    v13[4] = self;
    v13[5] = v15;
    *&v13[6] = velocity;
    visibilityCopy2 = visibility;
    v13[7] = apparentZDepth;
    v13[8] = view;
    [nonCoplanarViewIndices enumerateIndexesUsingBlock:v13];
    _Block_object_dispose(v15, 8);
  }
}

void __137__NCNotificationListView_updateApparentZPositionsOfListCellsGivenApparentZPositionForListView_withRootScrollVelocity_andGlassVisibility___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) visibleViewAtIndex:a2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 updateApparentZPositionsOfListCellsGivenApparentZPositionForListView:*(a1 + 40) withRootScrollVelocity:(*(a1 + 64) & 1) == 0 andGlassVisibility:*(a1 + 48)];
  }

  v8 = objc_opt_class();
  v9 = v5;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [v11 setGlassMode:{objc_msgSend(*(a1 + 32), "effectiveGlassModeFromExistingMode:shouldHideGlass:", objc_msgSend(v11, "glassMode"), *(a1 + 64))}];
    [v11 setRootScrollVelocity:*(a1 + 48)];
    [v11 setApparentZDistanceToUser:*(a1 + 56) - *(a1 + 40)];
  }

  v12 = objc_opt_class();
  v15 = v9;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    [v14 setGlassMode:{objc_msgSend(*(a1 + 32), "effectiveGlassModeFromExistingMode:shouldHideGlass:", objc_msgSend(v14, "glassMode"), *(a1 + 64))}];
    [v14 setRootScrollVelocity:*(a1 + 48)];
    [v14 setApparentZDistanceToUser:*(a1 + 56) - *(a1 + 40)];
  }
}

void __137__NCNotificationListView_updateApparentZPositionsOfListCellsGivenApparentZPositionForListView_withRootScrollVelocity_andGlassVisibility___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) visibleViewAtIndex:a2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 updateApparentZPositionsOfListCellsGivenApparentZPositionForListView:*(*(*(a1 + 40) + 8) + 24) withRootScrollVelocity:(*(a1 + 72) & 1) == 0 andGlassVisibility:*(a1 + 48)];
    v8 = [v7 apparentZDepth];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_class();
  v10 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    [v12 setGlassMode:{objc_msgSend(*(a1 + 32), "effectiveGlassModeFromExistingMode:shouldHideGlass:", objc_msgSend(v12, "glassMode"), *(a1 + 72))}];
    [v12 setRootScrollVelocity:*(a1 + 48)];
    [v12 setApparentZDistanceToUser:*(a1 + 56) - *(*(*(a1 + 40) + 8) + 24)];
    v8 = 1;
  }

  v13 = objc_opt_class();
  v16 = v10;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [v15 setGlassMode:{objc_msgSend(*(a1 + 32), "effectiveGlassModeFromExistingMode:shouldHideGlass:", objc_msgSend(v15, "glassMode"), *(a1 + 72))}];
    [v15 setRootScrollVelocity:*(a1 + 48)];
    [v15 setApparentZDistanceToUser:*(a1 + 56) - *(a1 + 64)];
    v8 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) -= v8;
}

- (unint64_t)effectiveGlassModeFromExistingMode:(unint64_t)mode shouldHideGlass:(BOOL)glass
{
  if (mode == 1)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  if (glass)
  {
    return 1;
  }

  else
  {
    return modeCopy;
  }
}

- (void)_currentAnimator
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 purposeHashed:1];
  v7 = 138412802;
  selfCopy = self;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  _os_log_fault_impl(&dword_21E77E000, v5, OS_LOG_TYPE_FAULT, "Unexpectedly didn't receive animator from data source: %@, for object: %@[%@]", &v7, 0x20u);
}

@end